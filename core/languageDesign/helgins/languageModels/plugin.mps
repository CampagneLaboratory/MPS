<?xml version="1.0" encoding="UTF-8"?>
<model name="jetbrains.mps.bootstrap.helgins.plugin">
  <persistence version="1" />
  <refactoringHistory />
  <language namespace="jetbrains.mps.bootstrap.pluginLanguage">
    <languageAspect modelUID="jetbrains.mps.bootstrap.pluginLanguage.constraints" version="19" />
    <languageAspect modelUID="jetbrains.mps.bootstrap.pluginLanguage.structure" version="14" />
  </language>
  <language namespace="jetbrains.mps.baseLanguage.ext.collections.lang">
    <languageAspect modelUID="jetbrains.mps.baseLanguage.ext.collections.lang.constraints" version="6" />
    <languageAspect modelUID="jetbrains.mps.baseLanguage.ext.collections.lang.structure" version="1" />
  </language>
  <language namespace="jetbrains.mps.bootstrap.smodelLanguage">
    <languageAspect modelUID="jetbrains.mps.bootstrap.smodelLanguage.constraints" version="21" />
    <languageAspect modelUID="jetbrains.mps.bootstrap.smodelLanguage.structure" version="1" />
  </language>
  <language namespace="jetbrains.mps.baseLanguage">
    <languageAspect modelUID="jetbrains.mps.baseLanguage.constraints" version="83" />
    <languageAspect modelUID="jetbrains.mps.baseLanguage.structure" version="0" />
  </language>
  <language namespace="jetbrains.mps.baseLanguage.classifiers">
    <languageAspect modelUID="jetbrains.mps.baseLanguage.classifiers.constraints" version="7" />
  </language>
  <languageAspect modelUID="jetbrains.mps.transformationTest.constraints" version="0" />
  <languageAspect modelUID="jetbrains.mps.closures.structure" version="0" />
  <languageAspect modelUID="jetbrains.mps.patterns.constraints" version="2" />
  <languageAspect modelUID="jetbrains.mps.bootstrap.structureLanguage.constraints" version="11" />
  <languageAspect modelUID="jetbrains.mps.bootstrap.helgins.constraints" version="17" />
  <languageAspect modelUID="jetbrains.mps.baseLanguage.unitTest.constraints" version="1" />
  <languageAspect modelUID="jetbrains.mps.closures.constraints" version="2" />
  <languageAspect modelUID="jetbrains.mps.core.constraints" version="2" />
  <languageAspect modelUID="jetbrains.mps.internal.collections.constraints" version="2" />
  <maxImportIndex value="35" />
  <import index="1" modelUID="jetbrains.mps.bootstrap.helgins.structure" version="-1" />
  <import index="2" modelUID="jetbrains.mps.helgins.uiActions@java_stub" version="-1" />
  <import index="3" modelUID="jetbrains.mps.workbench.actions.nodes@java_stub" version="-1" />
  <import index="4" modelUID="jetbrains.mps.ide.actions" version="-1" />
  <import index="6" modelUID="jetbrains.mps.bootstrap.helgins.dependencies@java_stub" version="-1" />
  <import index="7" modelUID="java.util@java_stub" version="-1" />
  <import index="8" modelUID="jetbrains.mps.smodel@java_stub" version="-1" />
  <import index="9" modelUID="jetbrains.mps.util@java_stub" version="-1" />
  <import index="10" modelUID="jetbrains.mps.nodeEditor@java_stub" version="-1" />
  <import index="12" modelUID="java.awt@java_stub" version="-1" />
  <import index="14" modelUID="jetbrains.mps.project@java_stub" version="-1" />
  <import index="17" modelUID="jetbrains.mps.plugins@java_stub" version="-1" />
  <import index="20" modelUID="javax.swing@java_stub" version="-1" />
  <import index="21" modelUID="jetbrains.mps.helgins.inference@java_stub" version="-1" />
  <import index="22" modelUID="java.lang@java_stub" version="-1" />
  <import index="24" modelUID="jetbrains.mps.logging@java_stub" version="-1" />
  <import index="25" modelUID="jetbrains.mps.helgins.integration@java_stub" version="-1" />
  <import index="27" modelUID="jetbrains.mps.ide.messages@java_stub" version="-1" />
  <import index="28" modelUID="jetbrains.mps.helgins.checking@java_stub" version="-1" />
  <import index="29" modelUID="jetbrains.mps.workbench.tools@java_stub" version="-1" />
  <import index="30" modelUID="jetbrains.mps.workbench.editors@java_stub" version="-1" />
  <import index="31" modelUID="jetbrains.mps.workbench.action@java_stub" version="-1" />
  <import index="32" modelUID="jetbrains.mps.plugins.projectplugins@java_stub" version="-1" />
  <import index="33" modelUID="jetbrains.mps.nodeEditor.cells@java_stub" version="-1" />
  <import index="34" modelUID="jetbrains.mps.workbench@java_stub" version="-1" />
  <import index="35" modelUID="jetbrains.mps.helgins.statistics@java_stub" version="-1" />
  <node type="jetbrains.mps.bootstrap.pluginLanguage.structure.ActionGroupDeclaration" id="1205244087094">
    <property name="name" value="TypesystemActions" />
    <property name="caption" value="Type System" />
    <property name="isPopup" value="true" />
    <property name="mnemonic" value="T" />
    <node role="modifier" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ModificationStatement" id="1205245247513">
      <property name="additionType" value="false" />
      <link role="modifiedGroup" targetNodeId="4.1204991231476" resolveInfo="EditorPopup" />
    </node>
    <node role="contents" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ElementListContents" id="1207148465303">
      <node role="reference" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ParameterizedActionCreator" id="1217518717159">
        <link role="constructorDeclaration" targetNodeId="3.~ShowNodeTypeAction.&lt;init&gt;()" resolveInfo="ShowNodeTypeAction" />
      </node>
      <node role="reference" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ActionReference" id="1206108013514">
        <link role="action" targetNodeId="1206101816406" resolveInfo="GoToTypeErrorRule" />
      </node>
      <node role="reference" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ActionReference" id="1206185060411">
        <link role="action" targetNodeId="1206184013394" resolveInfo="ShowRulesWhichAffectNodeType" />
      </node>
      <node role="reference" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ActionReference" id="1206101742154">
        <link role="action" targetNodeId="1206101064404" resolveInfo="GoToNodeThisDependsOn" />
      </node>
      <node role="reference" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ActionReference" id="1205606669810">
        <link role="action" targetNodeId="1205606256131" resolveInfo="ShowSupertypes" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.pluginLanguage.structure.ActionGroupDeclaration" id="1205244470519">
    <property name="name" value="HelginsNodeActions" />
    <node role="modifier" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ModificationStatement" id="1205245180119">
      <link role="modifiedGroup" targetNodeId="4.1204991215587" resolveInfo="ProjectPaneNodeActions" />
    </node>
    <node role="contents" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ElementListContents" id="1207148360291">
      <node role="reference" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ActionReference" id="1206107912144">
        <link role="action" targetNodeId="1206101816406" resolveInfo="GoToTypeErrorRule" />
      </node>
      <node role="reference" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ActionReference" id="1205606649807">
        <link role="action" targetNodeId="1205605492950" resolveInfo="HighlightDependentLeaves" />
      </node>
      <node role="reference" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ActionReference" id="1206101735997">
        <link role="action" targetNodeId="1206101064404" resolveInfo="GoToNodeThisDependsOn" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.pluginLanguage.structure.ActionGroupDeclaration" id="1205245331359">
    <property name="name" value="HelginsEditorPopupInternal" />
    <node role="modifier" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ModificationStatement" id="1205245368690">
      <link role="modifiedGroup" targetNodeId="4.1204991231476" resolveInfo="EditorPopup" />
    </node>
    <node role="contents" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ElementListContents" id="1207148358868">
      <node role="reference" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ActionReference" id="1205606657683">
        <link role="action" targetNodeId="1205605492950" resolveInfo="HighlightDependentLeaves" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.pluginLanguage.structure.ActionDeclaration" id="1205605492950">
    <property name="name" value="HighlightDependentLeaves" />
    <property name="caption" value="Highlight Dependent Leaves" />
    <property name="package" value="Actions" />
    <property name="isAlwaysVisible" value="true" />
    <node role="executeFunction" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ExecuteBlock" id="1205605492953">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1205605492954">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1205605688760">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1205605688761">
            <property name="name" value="dependenciesCollector" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1205605688762">
              <link role="classifier" targetNodeId="6.~DependenciesCollector" resolveInfo="DependenciesCollector" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1213727693448">
              <node role="creator" type="jetbrains.mps.baseLanguage.structure.ClassCreator" id="1213727693450">
                <link role="baseMethodDeclaration" targetNodeId="6.~DependenciesCollector.&lt;init&gt;()" resolveInfo="DependenciesCollector" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1205605714892">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1205605714893">
            <property name="name" value="leaves" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1205605714894">
              <link role="classifier" targetNodeId="7.~HashSet" resolveInfo="HashSet" />
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1205605762663">
                <link role="classifier" targetNodeId="8.~SNode" resolveInfo="SNode" />
              </node>
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1213727698882">
              <node role="creator" type="jetbrains.mps.baseLanguage.structure.ClassCreator" id="1213727698885">
                <link role="baseMethodDeclaration" targetNodeId="7.~HashSet.&lt;init&gt;()" resolveInfo="HashSet" />
                <node role="typeParameter" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1205605771401">
                  <link role="classifier" targetNodeId="8.~SNode" resolveInfo="SNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1205605775325">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205605776983">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1205605775326">
              <link role="variableDeclaration" targetNodeId="1205605688761" resolveInfo="dependenciesCollector" />
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1205605778032">
              <link role="baseMethodDeclaration" targetNodeId="6.~DependenciesCollector.collectDependencies(jetbrains.mps.smodel.SNode,java.util.Map,java.util.Set):void" resolveInfo="collectDependencies" />
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205870938914">
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetContainingRootOperation" id="1205870940603" />
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206094523674">
                  <node role="operand" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpresson" id="1206094522548" />
                  <node role="operation" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ActionParameterReferenceOperation" id="1206094524504">
                    <link role="member" targetNodeId="1205870649330" resolveInfo="node" />
                  </node>
                </node>
              </node>
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1213727691740">
                <node role="creator" type="jetbrains.mps.baseLanguage.structure.ClassCreator" id="1213727691742">
                  <link role="baseMethodDeclaration" targetNodeId="7.~HashMap.&lt;init&gt;()" resolveInfo="HashMap" />
                  <node role="typeParameter" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1205605830690">
                    <link role="classifier" targetNodeId="8.~SNode" resolveInfo="SNode" />
                  </node>
                  <node role="typeParameter" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1205605849599">
                    <link role="classifier" targetNodeId="9.~Pair" resolveInfo="Pair" />
                    <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1205605853258">
                      <link role="classifier" targetNodeId="8.~SNode" resolveInfo="SNode" />
                    </node>
                    <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1205605856416">
                      <link role="classifier" targetNodeId="8.~SNode" resolveInfo="SNode" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1205605864981">
                <link role="variableDeclaration" targetNodeId="1205605714893" resolveInfo="leaves" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachStatement" id="1205606089742">
          <node role="variable" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachVariable" id="1205606089743">
            <property name="name" value="leaf" />
          </node>
          <node role="inputSequence" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1205606093044">
            <link role="variableDeclaration" targetNodeId="1205605714893" resolveInfo="leaves" />
          </node>
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1205606089745">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1205606105828">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205606123697">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205606108361">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213874794872">
                    <node role="operand" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpresson" id="1213874794873" />
                    <node role="operation" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ActionDataParameterReferenceOperation" id="1217420649067">
                      <link role="member" targetNodeId="1217420649066" resolveInfo="editor" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1205606123571">
                    <link role="baseMethodDeclaration" targetNodeId="10.~EditorComponent.getHighlightManager():jetbrains.mps.nodeEditor.NodeHighlightManager" resolveInfo="getHighlightManager" />
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1205606133668">
                  <link role="baseMethodDeclaration" targetNodeId="10.~NodeHighlightManager.mark(jetbrains.mps.nodeEditor.EditorMessage):void" resolveInfo="mark" />
                  <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1213727700341">
                    <node role="creator" type="jetbrains.mps.baseLanguage.structure.ClassCreator" id="1213727700343">
                      <link role="baseMethodDeclaration" targetNodeId="10.~DefaultEditorMessage.&lt;init&gt;(jetbrains.mps.smodel.SNode,java.awt.Color,java.lang.String,jetbrains.mps.nodeEditor.EditorMessageOwner)" resolveInfo="DefaultEditorMessage" />
                      <node role="actualArgument" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachVariableReference" id="1205606182896">
                        <link role="variable" targetNodeId="1205606089743" resolveInfo="leaf" />
                      </node>
                      <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference" id="1205606219283">
                        <link role="classifier" targetNodeId="12.~Color" resolveInfo="Color" />
                        <link role="variableDeclaration" targetNodeId="12.~Color.CYAN" resolveInfo="CYAN" />
                      </node>
                      <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1205606228133" />
                      <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205606232638">
                        <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877757877">
                          <node role="operand" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpresson" id="1213877757878" />
                          <node role="operation" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ActionDataParameterReferenceOperation" id="1217420649068">
                            <link role="member" targetNodeId="1217420649066" resolveInfo="editor" />
                          </node>
                        </node>
                        <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1205606237235">
                          <link role="baseMethodDeclaration" targetNodeId="10.~EditorComponent.getHighlightMessagesOwner():jetbrains.mps.nodeEditor.EditorMessageOwner" resolveInfo="getHighlightMessagesOwner" />
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
    <node role="updateBlock" type="jetbrains.mps.bootstrap.pluginLanguage.structure.IsApplicableBlock" id="1205870702445">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1205870702446">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1206094507624">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205870708667">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205870708668">
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetContainingRootOperation" id="1205870708670" />
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206094495777">
                <node role="operand" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpresson" id="1206094494354" />
                <node role="operation" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ActionParameterReferenceOperation" id="1206094498154">
                  <link role="member" targetNodeId="1205870649330" resolveInfo="node" />
                </node>
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1205870708671">
              <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1205870708672">
                <link role="conceptDeclaration" targetNodeId="1.1174643105530" resolveInfo="InferenceRule" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="parameter" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ActionDataParameterDeclaration" id="1217420649066">
      <property name="name" value="editor" />
      <link role="key" targetNodeId="34.~MPSDataKeys.EDITOR_COMPONENT" resolveInfo="EDITOR_COMPONENT" />
    </node>
    <node role="parameter" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ActionParameterDeclaration" id="1205870649330">
      <property name="name" value="node" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1205870649331" />
      <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1205870682131" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.pluginLanguage.structure.ActionDeclaration" id="1205606256131">
    <property name="name" value="ShowSupertypes" />
    <property name="caption" value="Show Supertypes" />
    <property name="package" value="Actions" />
    <property name="isAlwaysVisible" value="true" />
    <node role="executeFunction" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ExecuteBlock" id="1205606256134">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1205606256135" />
    </node>
    <node role="parameter" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ActionDataParameterDeclaration" id="1217420647147">
      <property name="name" value="operationContext" />
      <link role="key" targetNodeId="34.~MPSDataKeys.OPERATION_CONTEXT" resolveInfo="OPERATION_CONTEXT" />
    </node>
    <node role="parameter" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ActionParameterDeclaration" id="1205870959450">
      <property name="name" value="node" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1205870959451" />
      <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1205870982126" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.pluginLanguage.structure.ActionDeclaration" id="1206101064404">
    <property name="package" value="Actions" />
    <property name="name" value="GoToNodeThisDependsOn" />
    <property name="caption" value="Go To Node This Depends On" />
    <property name="isAlwaysVisible" value="true" />
    <node role="executeFunction" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ExecuteBlock" id="1206101064405">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206101064406">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1206101064407">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1206101064408">
            <property name="name" value="dependenciesCollector" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1206101064409">
              <link role="classifier" targetNodeId="6.~DependenciesCollector" resolveInfo="DependenciesCollector" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1213874760593">
              <node role="creator" type="jetbrains.mps.baseLanguage.structure.ClassCreator" id="1213874760595">
                <link role="baseMethodDeclaration" targetNodeId="6.~DependenciesCollector.&lt;init&gt;()" resolveInfo="DependenciesCollector" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1206101064411">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1206101064412">
            <property name="name" value="leaves" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1206101064413">
              <link role="classifier" targetNodeId="7.~HashSet" resolveInfo="HashSet" />
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1206101064414">
                <link role="classifier" targetNodeId="8.~SNode" resolveInfo="SNode" />
              </node>
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1213874763112">
              <node role="creator" type="jetbrains.mps.baseLanguage.structure.ClassCreator" id="1213874763115">
                <link role="baseMethodDeclaration" targetNodeId="7.~HashSet.&lt;init&gt;()" resolveInfo="HashSet" />
                <node role="typeParameter" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1206101064416">
                  <link role="classifier" targetNodeId="8.~SNode" resolveInfo="SNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1206101064417">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1206101064418">
            <property name="name" value="dependencies" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1206101064419">
              <link role="classifier" targetNodeId="7.~HashMap" resolveInfo="HashMap" />
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1206101111468">
                <link role="classifier" targetNodeId="8.~SNode" resolveInfo="SNode" />
              </node>
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1206101114080">
                <link role="classifier" targetNodeId="9.~Pair" resolveInfo="Pair" />
                <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1206101116738">
                  <link role="classifier" targetNodeId="8.~SNode" resolveInfo="SNode" />
                </node>
                <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1206101118631">
                  <link role="classifier" targetNodeId="8.~SNode" resolveInfo="SNode" />
                </node>
              </node>
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1213874766663">
              <node role="creator" type="jetbrains.mps.baseLanguage.structure.ClassCreator" id="1213874766669">
                <link role="baseMethodDeclaration" targetNodeId="7.~HashMap.&lt;init&gt;()" resolveInfo="HashMap" />
                <node role="typeParameter" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1206101135274">
                  <link role="classifier" targetNodeId="8.~SNode" resolveInfo="SNode" />
                </node>
                <node role="typeParameter" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1206101135275">
                  <link role="classifier" targetNodeId="9.~Pair" resolveInfo="Pair" />
                  <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1206101135276">
                    <link role="classifier" targetNodeId="8.~SNode" resolveInfo="SNode" />
                  </node>
                  <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1206101135277">
                    <link role="classifier" targetNodeId="8.~SNode" resolveInfo="SNode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1206101165085">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206101166337">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1206101165086">
              <link role="variableDeclaration" targetNodeId="1206101064408" resolveInfo="dependenciesCollector" />
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1206101167151">
              <link role="baseMethodDeclaration" targetNodeId="6.~DependenciesCollector.collectDependencies(jetbrains.mps.smodel.SNode,java.util.Map,java.util.Set):void" resolveInfo="collectDependencies" />
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206101182862">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206101180921">
                  <node role="operand" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpresson" id="1206101179795" />
                  <node role="operation" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ActionParameterReferenceOperation" id="1206101181861">
                    <link role="member" targetNodeId="1206101064420" resolveInfo="node" />
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetContainingRootOperation" id="1206101184754" />
              </node>
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1206101190600">
                <link role="variableDeclaration" targetNodeId="1206101064418" resolveInfo="dependencies" />
              </node>
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1206101192727">
                <link role="variableDeclaration" targetNodeId="1206101064412" resolveInfo="leaves" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1206101197870">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206101197871">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1206101243390">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1206101254882">
                <link role="baseMethodDeclaration" targetNodeId="20.~JOptionPane.showMessageDialog(java.awt.Component,java.lang.Object):void" resolveInfo="showMessageDialog" />
                <link role="classConcept" targetNodeId="20.~JOptionPane" resolveInfo="JOptionPane" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206101399994">
                  <node role="operand" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpresson" id="1206101398056" />
                  <node role="operation" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ActionDataParameterReferenceOperation" id="1217420648162">
                    <link role="member" targetNodeId="1217420648161" resolveInfo="frame" />
                  </node>
                </node>
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1206101406264">
                  <property name="value" value="node is not dependent" />
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1206101415641" />
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotExpression" id="1206101200764">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206101203549">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1206101202485">
                <link role="variableDeclaration" targetNodeId="1206101064412" resolveInfo="leaves" />
              </node>
              <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1206101209660">
                <link role="baseMethodDeclaration" targetNodeId="7.~HashSet.contains(java.lang.Object):boolean" resolveInfo="contains" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206101213318">
                  <node role="operand" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpresson" id="1206101212192" />
                  <node role="operation" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ActionParameterReferenceOperation" id="1206101214726">
                    <link role="member" targetNodeId="1206101064420" resolveInfo="node" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1206101444148">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1206101444149">
            <property name="name" value="current" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1206101444150">
              <link role="classifier" targetNodeId="8.~SNode" resolveInfo="SNode" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206101456467">
              <node role="operand" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpresson" id="1206101455263" />
              <node role="operation" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ActionParameterReferenceOperation" id="1206101457250">
                <link role="member" targetNodeId="1206101064420" resolveInfo="node" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.WhileStatement" id="1206101430582">
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1206101475569">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1206101479540" />
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206101468065">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1206101467064">
                <link role="variableDeclaration" targetNodeId="1206101064418" resolveInfo="dependencies" />
              </node>
              <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1206101471645">
                <link role="baseMethodDeclaration" targetNodeId="7.~HashMap.get(java.lang.Object):java.lang.Object" resolveInfo="get" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1206101473771">
                  <link role="variableDeclaration" targetNodeId="1206101444149" resolveInfo="current" />
                </node>
              </node>
            </node>
          </node>
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206101430584">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1206101482932">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1206101487578">
                <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1206101482933">
                  <link role="variableDeclaration" targetNodeId="1206101444149" resolveInfo="current" />
                </node>
                <node role="rValue" type="jetbrains.mps.baseLanguage.structure.CastExpression" id="1206101678346">
                  <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1206101681239">
                    <link role="classifier" targetNodeId="8.~SNode" resolveInfo="SNode" />
                  </node>
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206101682318">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206101682319">
                      <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1206101682320">
                        <link role="variableDeclaration" targetNodeId="1206101064418" resolveInfo="dependencies" />
                      </node>
                      <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1206101682321">
                        <link role="baseMethodDeclaration" targetNodeId="7.~HashMap.get(java.lang.Object):java.lang.Object" resolveInfo="get" />
                        <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1206101682322">
                          <link role="variableDeclaration" targetNodeId="1206101444149" resolveInfo="current" />
                        </node>
                      </node>
                    </node>
                    <node role="operation" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" id="1206101682323">
                      <link role="fieldDeclaration" targetNodeId="9.~Pair.o1" resolveInfo="o1" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1206101635242">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206101651512">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206101643822">
              <node role="operand" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpresson" id="1206101635243" />
              <node role="operation" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ActionDataParameterReferenceOperation" id="1217420646813">
                <link role="member" targetNodeId="1217420646812" resolveInfo="editor" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1206101661359">
              <link role="baseMethodDeclaration" targetNodeId="10.~EditorComponent.selectNode(jetbrains.mps.smodel.SNode):void" resolveInfo="selectNode" />
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1206101663079">
                <link role="variableDeclaration" targetNodeId="1206101444149" resolveInfo="current" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="updateBlock" type="jetbrains.mps.bootstrap.pluginLanguage.structure.IsApplicableBlock" id="1206101064423">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206101064424">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1206101064425">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206101064426">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206101064427">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206101064428">
                <node role="operand" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpresson" id="1206101064429" />
                <node role="operation" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ActionParameterReferenceOperation" id="1206101064430">
                  <link role="member" targetNodeId="1206101064420" resolveInfo="node" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetContainingRootOperation" id="1206101064431" />
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1206101064432">
              <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1206101064433">
                <link role="conceptDeclaration" targetNodeId="1.1174643105530" resolveInfo="InferenceRule" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="parameter" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ActionDataParameterDeclaration" id="1217420646812">
      <property name="name" value="editor" />
      <link role="key" targetNodeId="34.~MPSDataKeys.EDITOR_COMPONENT" resolveInfo="EDITOR_COMPONENT" />
    </node>
    <node role="parameter" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ActionDataParameterDeclaration" id="1217420648161">
      <property name="name" value="frame" />
      <link role="key" targetNodeId="34.~MPSDataKeys.FRAME" resolveInfo="FRAME" />
    </node>
    <node role="parameter" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ActionParameterDeclaration" id="1206101064420">
      <property name="name" value="node" />
      <property name="isFinal" value="true" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1206101064421" />
      <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1206101064422" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.pluginLanguage.structure.ActionDeclaration" id="1206101816406">
    <property name="package" value="Actions" />
    <property name="name" value="GoToTypeErrorRule" />
    <property name="caption" value="Go To Rule Which Caused Error" />
    <property name="isAlwaysVisible" value="true" />
    <node role="executeFunction" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ExecuteBlock" id="1206101816407">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206101816408">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1206105385968">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1206105385969">
            <property name="name" value="error" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1206105385970">
              <link role="classifier" targetNodeId="21.~IErrorReporter" resolveInfo="IErrorReporter" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206105385971">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1206105385972">
                <link role="classConcept" targetNodeId="21.~TypeChecker" resolveInfo="TypeChecker" />
                <link role="baseMethodDeclaration" targetNodeId="21.~TypeChecker.getInstance():jetbrains.mps.helgins.inference.TypeChecker" resolveInfo="getInstance" />
              </node>
              <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1206105385973">
                <link role="baseMethodDeclaration" targetNodeId="21.~TypeChecker.getTypeErrorDontCheck(jetbrains.mps.smodel.SNode):jetbrains.mps.helgins.inference.IErrorReporter" resolveInfo="getTypeErrorDontCheck" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206105385974">
                  <node role="operand" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpresson" id="1206105385975" />
                  <node role="operation" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ActionDataParameterReferenceOperation" id="1217420649642">
                    <link role="member" targetNodeId="1217420649641" resolveInfo="node" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1206108594276">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1206108595576">
            <link role="baseMethodDeclaration" targetNodeId="1206108407495" resolveInfo="goToTypeError" />
            <link role="classConcept" targetNodeId="1206108391540" resolveInfo="GoToTypeErrorRuleUtil" />
            <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206108601395">
              <node role="operand" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpresson" id="1206108601396" />
              <node role="operation" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ActionDataParameterReferenceOperation" id="1217420647247">
                <link role="member" targetNodeId="1217420647246" resolveInfo="operationContext" />
              </node>
            </node>
            <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1206108603354">
              <link role="variableDeclaration" targetNodeId="1206105385969" resolveInfo="error" />
            </node>
            <node role="actualArgument" type="jetbrains.mps.bootstrap.pluginLanguage.structure.Log" id="1206108607720" />
          </node>
        </node>
      </node>
    </node>
    <node role="updateBlock" type="jetbrains.mps.bootstrap.pluginLanguage.structure.IsApplicableBlock" id="1206105095999">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206105096000">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1206105127535">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1206105127536">
            <property name="name" value="error" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1206105127537">
              <link role="classifier" targetNodeId="21.~IErrorReporter" resolveInfo="IErrorReporter" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206105154776">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1206105151150">
                <link role="baseMethodDeclaration" targetNodeId="21.~TypeChecker.getInstance():jetbrains.mps.helgins.inference.TypeChecker" resolveInfo="getInstance" />
                <link role="classConcept" targetNodeId="21.~TypeChecker" resolveInfo="TypeChecker" />
              </node>
              <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1206105159032">
                <link role="baseMethodDeclaration" targetNodeId="21.~TypeChecker.getTypeErrorDontCheck(jetbrains.mps.smodel.SNode):jetbrains.mps.helgins.inference.IErrorReporter" resolveInfo="getTypeErrorDontCheck" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206105163612">
                  <node role="operand" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpresson" id="1206105161221" />
                  <node role="operation" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ActionDataParameterReferenceOperation" id="1217420649643">
                    <link role="member" targetNodeId="1217420649641" resolveInfo="node" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1206105173116">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotExpression" id="1206105303541">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.OrExpression" id="1206105316251">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.OrExpression" id="1206105334747">
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1206105341395">
                  <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1206105342398" />
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206105338438">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1206105336984">
                      <link role="variableDeclaration" targetNodeId="1206105127536" resolveInfo="error" />
                    </node>
                    <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1206105339831">
                      <link role="baseMethodDeclaration" targetNodeId="21.~IErrorReporter.getRuleModel():java.lang.String" resolveInfo="getRuleModel" />
                    </node>
                  </node>
                </node>
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1206105327712">
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206105323599">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1206105322270">
                      <link role="variableDeclaration" targetNodeId="1206105127536" resolveInfo="error" />
                    </node>
                    <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1206105324804">
                      <link role="baseMethodDeclaration" targetNodeId="21.~IErrorReporter.getRuleId():java.lang.String" resolveInfo="getRuleId" />
                    </node>
                  </node>
                  <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1206105332402" />
                </node>
              </node>
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1206105309685">
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1206105306778">
                  <link role="variableDeclaration" targetNodeId="1206105127536" resolveInfo="error" />
                </node>
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1206105314266" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="keystroke" type="jetbrains.mps.bootstrap.pluginLanguage.structure.KeyMapKeystroke" id="1207319557060">
      <property name="keycode" value="VK_R" />
      <property name="modifiers" value="ctrl+alt+shift" />
    </node>
    <node role="parameter" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ActionDataParameterDeclaration" id="1217420647246">
      <property name="name" value="operationContext" />
      <link role="key" targetNodeId="34.~MPSDataKeys.OPERATION_CONTEXT" resolveInfo="OPERATION_CONTEXT" />
    </node>
    <node role="parameter" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ActionDataParameterDeclaration" id="1217420647775">
      <property name="name" value="project" />
      <link role="key" targetNodeId="34.~MPSDataKeys.MPS_PROJECT" resolveInfo="MPS_PROJECT" />
    </node>
    <node role="parameter" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ActionDataParameterDeclaration" id="1217420649641">
      <property name="name" value="node" />
      <link role="key" targetNodeId="34.~MPSDataKeys.SNODE" resolveInfo="SNODE" />
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept" id="1206108391540">
    <property name="name" value="GoToTypeErrorRuleUtil" />
    <property name="package" value="Actions" />
    <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1206108391541" />
    <node role="staticMethod" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" id="1206108407495">
      <property name="name" value="goToTypeErrorRule" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.VoidType" id="1206108407496" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1206108407497" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206108407498">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1206108441237">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1206108441238">
            <property name="name" value="ruleID" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1206108441239">
              <link role="classifier" targetNodeId="22.~String" resolveInfo="String" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206108441240">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1206108441241">
                <link role="variableDeclaration" targetNodeId="1206108418949" resolveInfo="error" />
              </node>
              <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1206108441242">
                <link role="baseMethodDeclaration" targetNodeId="21.~IErrorReporter.getRuleId():java.lang.String" resolveInfo="getRuleId" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1206108441243">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1206108441244">
            <property name="name" value="ruleModel" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1206108441245">
              <link role="classifier" targetNodeId="22.~String" resolveInfo="String" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206108441246">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1206108441247">
                <link role="variableDeclaration" targetNodeId="1206108418949" resolveInfo="error" />
              </node>
              <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1206108441248">
                <link role="baseMethodDeclaration" targetNodeId="21.~IErrorReporter.getRuleModel():java.lang.String" resolveInfo="getRuleModel" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1215599815747">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1215599815748">
            <property name="name" value="modelUID" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1215599815749">
              <link role="classifier" targetNodeId="8.~SModelUID" resolveInfo="SModelUID" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1215599815750">
              <link role="classConcept" targetNodeId="8.~SModelUID" resolveInfo="SModelUID" />
              <link role="baseMethodDeclaration" targetNodeId="8.~SModelUID.fromString(java.lang.String):jetbrains.mps.smodel.SModelUID" resolveInfo="fromString" />
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1215599815751">
                <link role="variableDeclaration" targetNodeId="1206108441244" resolveInfo="ruleModel" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1215599873366">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1215599874930">
            <node role="rValue" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1215599888231">
              <link role="baseMethodDeclaration" targetNodeId="8.~SModelUID.fromString(java.lang.String):jetbrains.mps.smodel.SModelUID" resolveInfo="fromString" />
              <link role="classConcept" targetNodeId="8.~SModelUID" resolveInfo="SModelUID" />
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1215599896562">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1215599895561">
                  <link role="variableDeclaration" targetNodeId="1215599815748" resolveInfo="modelUID" />
                </node>
                <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1215599898955">
                  <link role="baseMethodDeclaration" targetNodeId="8.~SModelUID.getLongName():java.lang.String" resolveInfo="getLongName" />
                </node>
              </node>
            </node>
            <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1215599873367">
              <link role="variableDeclaration" targetNodeId="1215599815748" resolveInfo="modelUID" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1206108441249">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1206108441250">
            <property name="name" value="modelDescriptor" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1206108441251">
              <link role="classifier" targetNodeId="8.~SModelDescriptor" resolveInfo="SModelDescriptor" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206108441252">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1206108441253">
                <link role="classConcept" targetNodeId="8.~SModelRepository" resolveInfo="SModelRepository" />
                <link role="baseMethodDeclaration" targetNodeId="8.~SModelRepository.getInstance():jetbrains.mps.smodel.SModelRepository" resolveInfo="getInstance" />
              </node>
              <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1206108441254">
                <link role="baseMethodDeclaration" targetNodeId="8.~SModelRepository.getModelDescriptor(jetbrains.mps.smodel.SModelUID):jetbrains.mps.smodel.SModelDescriptor" resolveInfo="getModelDescriptor" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1215599815768">
                  <link role="variableDeclaration" targetNodeId="1215599815748" resolveInfo="modelUID" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1206108441257">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206108441258">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1206108441259">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206108441260">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1206108568201">
                  <link role="variableDeclaration" targetNodeId="1206108552275" resolveInfo="LOG" />
                </node>
                <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1206108441262">
                  <link role="baseMethodDeclaration" targetNodeId="24.~Logger.error(java.lang.String):void" resolveInfo="error" />
                  <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="1206108441263">
                    <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1206108441264">
                      <link role="variableDeclaration" targetNodeId="1206108441244" resolveInfo="ruleModel" />
                    </node>
                    <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1206108441265">
                      <property name="value" value="can't find rule's model " />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1206108441266" />
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1206108441267">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1206108441268" />
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1206108441269">
              <link role="variableDeclaration" targetNodeId="1206108441250" resolveInfo="modelDescriptor" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1206108441270">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1206108441271">
            <property name="name" value="rule" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1206108441272">
              <link role="classifier" targetNodeId="8.~SNode" resolveInfo="SNode" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206108441273">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206108441274">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1206108441275">
                  <link role="variableDeclaration" targetNodeId="1206108441250" resolveInfo="modelDescriptor" />
                </node>
                <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1206108441276">
                  <link role="baseMethodDeclaration" targetNodeId="8.~SModelDescriptor.getSModel():jetbrains.mps.smodel.SModel" resolveInfo="getSModel" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1206108441277">
                <link role="baseMethodDeclaration" targetNodeId="8.~SModel.getNodeById(java.lang.String):jetbrains.mps.smodel.SNode" resolveInfo="getNodeById" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1206108441278">
                  <link role="variableDeclaration" targetNodeId="1206108441238" resolveInfo="ruleID" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1206108441279">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206108441280">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1206108441281">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206108441282">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1206108565104">
                  <link role="variableDeclaration" targetNodeId="1206108552275" resolveInfo="LOG" />
                </node>
                <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1206108441284">
                  <link role="baseMethodDeclaration" targetNodeId="24.~Logger.error(java.lang.String):void" resolveInfo="error" />
                  <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="1206108441285">
                    <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="1206108441286">
                      <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="1206108441287">
                        <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1206108441288">
                          <link role="variableDeclaration" targetNodeId="1206108441250" resolveInfo="modelDescriptor" />
                        </node>
                        <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1206108441289">
                          <property name="value" value=" in the model " />
                        </node>
                      </node>
                      <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1206108441290">
                        <link role="variableDeclaration" targetNodeId="1206108441238" resolveInfo="ruleID" />
                      </node>
                    </node>
                    <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1206108441291">
                      <property name="value" value="can't find rule with id " />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1215600149687" />
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1206108441292">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1206108441293" />
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1206108441294">
              <link role="variableDeclaration" targetNodeId="1206108441271" resolveInfo="rule" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1211456048114">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1211456062571">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1211456049681">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1211456048115">
                <link role="variableDeclaration" targetNodeId="1206108415663" resolveInfo="context" />
              </node>
              <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1211456051293">
                <link role="baseMethodDeclaration" targetNodeId="8.~IOperationContext.getComponent(java.lang.Class):java.lang.Object" resolveInfo="getComponent" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" id="1211456060132">
                  <link role="classifier" targetNodeId="30.~MPSEditorOpener" resolveInfo="MPSEditorOpener" />
                </node>
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1211456063950">
              <link role="baseMethodDeclaration" targetNodeId="30.~MPSEditorOpener.openNode(jetbrains.mps.smodel.SNode):void" resolveInfo="openNode" />
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1211456069342">
                <link role="variableDeclaration" targetNodeId="1206108441271" resolveInfo="rule" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1206108415663">
        <property name="name" value="context" />
        <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1206108415664">
          <link role="classifier" targetNodeId="8.~IOperationContext" resolveInfo="IOperationContext" />
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1206108418949">
        <property name="name" value="error" />
        <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1206108420938">
          <link role="classifier" targetNodeId="21.~IErrorReporter" resolveInfo="IErrorReporter" />
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1206108552275">
        <property name="name" value="LOG" />
        <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1206108554529">
          <link role="classifier" targetNodeId="24.~Logger" resolveInfo="Logger" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.pluginLanguage.structure.ActionDeclaration" id="1206108972918">
    <property name="package" value="Actions" />
    <property name="name" value="RefactorModel" />
    <property name="caption" value="Refactor Helgins Model" />
    <node role="executeFunction" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ExecuteBlock" id="1206108972919">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206109345596">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1206109353589">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1206109356766">
            <link role="baseMethodDeclaration" targetNodeId="2.~RefactorModelUtil.refactorModel(jetbrains.mps.smodel.SModelDescriptor):void" resolveInfo="refactorModel" />
            <link role="classConcept" targetNodeId="2.~RefactorModelUtil" resolveInfo="RefactorModelUtil" />
            <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206109731613">
              <node role="operand" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpresson" id="1206109731614" />
              <node role="operation" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ActionDataParameterReferenceOperation" id="1217420647890">
                <link role="member" targetNodeId="1217420647889" resolveInfo="model" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="updateBlock" type="jetbrains.mps.bootstrap.pluginLanguage.structure.IsApplicableBlock" id="1206109117791">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206109117792">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1206109279883">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1206109279884">
            <property name="name" value="languageAspect" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1206109279885">
              <link role="classifier" targetNodeId="8.~LanguageAspect" resolveInfo="LanguageAspect" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1206109298766">
              <link role="baseMethodDeclaration" targetNodeId="8.~Language.getModelAspect(jetbrains.mps.smodel.SModelDescriptor):jetbrains.mps.smodel.LanguageAspect" resolveInfo="getModelAspect" />
              <link role="classConcept" targetNodeId="8.~Language" resolveInfo="Language" />
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206109309968">
                <node role="operand" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpresson" id="1206109308638" />
                <node role="operation" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ActionDataParameterReferenceOperation" id="1217420647891">
                  <link role="member" targetNodeId="1217420647889" resolveInfo="model" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1206109315368">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1206109318421">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.EnumConstantReference" id="1206109330249">
              <link role="enumConstantDeclaration" targetNodeId="8.~LanguageAspect.HELGINS_TYPESYSTEM" resolveInfo="HELGINS_TYPESYSTEM" />
              <link role="enumClass" targetNodeId="8.~LanguageAspect" resolveInfo="LanguageAspect" />
            </node>
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1206109317356">
              <link role="variableDeclaration" targetNodeId="1206109279884" resolveInfo="languageAspect" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="parameter" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ActionDataParameterDeclaration" id="1217420647889">
      <property name="name" value="model" />
      <link role="key" targetNodeId="34.~MPSDataKeys.MODEL_DESCRIPTOR" resolveInfo="MODEL_DESCRIPTOR" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.pluginLanguage.structure.ActionDeclaration" id="1206184013394">
    <property name="package" value="Actions" />
    <property name="name" value="ShowRulesWhichAffectNodeType" />
    <property name="caption" value="Show Rules Which Affect Node's Type" />
    <property name="isAlwaysVisible" value="true" />
    <node role="executeFunction" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ExecuteBlock" id="1206184013395">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206184013396">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1206184164672">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1206184164673">
            <property name="name" value="component" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1206184164674">
              <link role="classifier" targetNodeId="21.~NodeTypesComponent" resolveInfo="NodeTypesComponent" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206184179431">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1206184178461">
                <link role="baseMethodDeclaration" targetNodeId="21.~NodeTypesComponentsRepository.getInstance():jetbrains.mps.helgins.inference.NodeTypesComponentsRepository" resolveInfo="getInstance" />
                <link role="classConcept" targetNodeId="21.~NodeTypesComponentsRepository" resolveInfo="NodeTypesComponentsRepository" />
              </node>
              <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1206184189872">
                <link role="baseMethodDeclaration" targetNodeId="21.~NodeTypesComponentsRepository.getNodeTypesComponent(jetbrains.mps.smodel.SNode):jetbrains.mps.helgins.inference.NodeTypesComponent" resolveInfo="getNodeTypesComponent" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206184203988">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206184203157">
                    <node role="operand" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpresson" id="1206184203158" />
                    <node role="operation" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ActionParameterReferenceOperation" id="1206184203159">
                      <link role="member" targetNodeId="1206184077195" resolveInfo="node" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetContainingRootOperation" id="1206184208491" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1206184217025">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206184217026">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1206184227989" />
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1206184220343">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1206184224956" />
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1206184218998">
              <link role="variableDeclaration" targetNodeId="1206184164673" resolveInfo="component" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1206184239164">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1206184239165">
            <property name="name" value="rulesIds" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1206184239166">
              <link role="classifier" targetNodeId="7.~Set" resolveInfo="Set" />
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1206184242091">
                <link role="classifier" targetNodeId="9.~Pair" resolveInfo="Pair" />
                <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1206184249563">
                  <link role="classifier" targetNodeId="22.~String" resolveInfo="String" />
                </node>
                <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1206184252159">
                  <link role="classifier" targetNodeId="22.~String" resolveInfo="String" />
                </node>
              </node>
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206184271336">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1206184269460">
                <link role="variableDeclaration" targetNodeId="1206184164673" resolveInfo="component" />
              </node>
              <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1206184275151">
                <link role="baseMethodDeclaration" targetNodeId="21.~NodeTypesComponent.getRulesWhichAffectNodeType(jetbrains.mps.smodel.SNode):java.util.Set" resolveInfo="getRulesWhichAffectNodeType" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206184280668">
                  <node role="operand" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpresson" id="1206184280669" />
                  <node role="operation" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ActionParameterReferenceOperation" id="1206184280670">
                    <link role="member" targetNodeId="1206184077195" resolveInfo="node" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1206184284531">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206184284532">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1206184301338" />
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1206184294490">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1206184296586" />
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1206184290598">
              <link role="variableDeclaration" targetNodeId="1206184239165" resolveInfo="rulesIds" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1206184308308">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1206184308309">
            <property name="name" value="rules" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1206184308310">
              <link role="classifier" targetNodeId="7.~List" resolveInfo="List" />
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1206184311703">
                <link role="classifier" targetNodeId="8.~SNode" resolveInfo="SNode" />
              </node>
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1213727717558">
              <node role="creator" type="jetbrains.mps.baseLanguage.structure.ClassCreator" id="1213727717560">
                <link role="baseMethodDeclaration" targetNodeId="7.~ArrayList.&lt;init&gt;()" resolveInfo="ArrayList" />
                <node role="typeParameter" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1206184371238">
                  <link role="classifier" targetNodeId="8.~SNode" resolveInfo="SNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachStatement" id="1206184382553">
          <node role="variable" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachVariable" id="1206184382554">
            <property name="name" value="ruleId" />
          </node>
          <node role="inputSequence" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1206184390495">
            <link role="variableDeclaration" targetNodeId="1206184239165" resolveInfo="rulesIds" />
          </node>
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206184382556">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1206184407201">
              <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1206184407202">
                <property name="name" value="modelDescriptor" />
                <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1206184407203">
                  <link role="classifier" targetNodeId="8.~SModelDescriptor" resolveInfo="SModelDescriptor" />
                </node>
                <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206184419506">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1206184418833">
                    <link role="baseMethodDeclaration" targetNodeId="8.~SModelRepository.getInstance():jetbrains.mps.smodel.SModelRepository" resolveInfo="getInstance" />
                    <link role="classConcept" targetNodeId="8.~SModelRepository" resolveInfo="SModelRepository" />
                  </node>
                  <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1206184434039">
                    <link role="baseMethodDeclaration" targetNodeId="8.~SModelRepository.getModelDescriptor(jetbrains.mps.smodel.SModelUID):jetbrains.mps.smodel.SModelDescriptor" resolveInfo="getModelDescriptor" />
                    <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1206184440276">
                      <link role="baseMethodDeclaration" targetNodeId="8.~SModelUID.fromString(java.lang.String):jetbrains.mps.smodel.SModelUID" resolveInfo="fromString" />
                      <link role="classConcept" targetNodeId="8.~SModelUID" resolveInfo="SModelUID" />
                      <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206184449700">
                        <node role="operand" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachVariableReference" id="1206184448308">
                          <link role="variable" targetNodeId="1206184382554" resolveInfo="ruleId" />
                        </node>
                        <node role="operation" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" id="1206184451234">
                          <link role="fieldDeclaration" targetNodeId="9.~Pair.o1" resolveInfo="o1" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1206184457392">
              <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206184457393">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ContinueStatement" id="1206184466714" />
              </node>
              <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1206184460944">
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1206184463916" />
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1206184459506">
                  <link role="variableDeclaration" targetNodeId="1206184407202" resolveInfo="modelDescriptor" />
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1206184473044">
              <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1206184473045">
                <property name="name" value="rule" />
                <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1206184473046">
                  <link role="classifier" targetNodeId="8.~SNode" resolveInfo="SNode" />
                </node>
                <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206184483302">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206184479455">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1206184477954">
                      <link role="variableDeclaration" targetNodeId="1206184407202" resolveInfo="modelDescriptor" />
                    </node>
                    <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1206184480770">
                      <link role="baseMethodDeclaration" targetNodeId="8.~SModelDescriptor.getSModel():jetbrains.mps.smodel.SModel" resolveInfo="getSModel" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1206184489414">
                    <link role="baseMethodDeclaration" targetNodeId="8.~SModel.getNodeById(java.lang.String):jetbrains.mps.smodel.SNode" resolveInfo="getNodeById" />
                    <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206184494650">
                      <node role="operand" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachVariableReference" id="1206184493196">
                        <link role="variable" targetNodeId="1206184382554" resolveInfo="ruleId" />
                      </node>
                      <node role="operation" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" id="1206184494919">
                        <link role="fieldDeclaration" targetNodeId="9.~Pair.o2" resolveInfo="o2" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1206184501827">
              <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206184501828">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1206184514039">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206184515072">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1206184514040">
                      <link role="variableDeclaration" targetNodeId="1206184308309" resolveInfo="rules" />
                    </node>
                    <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1206184518340">
                      <link role="baseMethodDeclaration" targetNodeId="7.~List.add(java.lang.Object):boolean" resolveInfo="add" />
                      <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1206184521185">
                        <link role="variableDeclaration" targetNodeId="1206184473045" resolveInfo="rule" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1206184505504">
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1206184506382" />
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1206184504675">
                  <link role="variableDeclaration" targetNodeId="1206184473045" resolveInfo="rule" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1206184769847">
          <property name="value" value="single rule" />
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1206184596201">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206184596202">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1211456148798">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1211456171425">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1211456159279">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1211456148799">
                    <node role="operand" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpresson" id="1211456148800" />
                    <node role="operation" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ActionDataParameterReferenceOperation" id="1217420648380">
                      <link role="member" targetNodeId="1217420648379" resolveInfo="operationContext" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1211456160391">
                    <link role="baseMethodDeclaration" targetNodeId="8.~IOperationContext.getComponent(java.lang.Class):java.lang.Object" resolveInfo="getComponent" />
                    <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" id="1211456169782">
                      <link role="classifier" targetNodeId="30.~MPSEditorOpener" resolveInfo="MPSEditorOpener" />
                    </node>
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1211456173163">
                  <link role="baseMethodDeclaration" targetNodeId="30.~MPSEditorOpener.openNode(jetbrains.mps.smodel.SNode):void" resolveInfo="openNode" />
                  <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1211456177899">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1211456177900">
                      <link role="variableDeclaration" targetNodeId="1206184308309" resolveInfo="rules" />
                    </node>
                    <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1211456177901">
                      <link role="baseMethodDeclaration" targetNodeId="7.~List.get(int):java.lang.Object" resolveInfo="get" />
                      <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1211456177902">
                        <property name="value" value="0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1206184629373" />
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1206184606412">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1206184607103">
              <property name="value" value="1" />
            </node>
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206184603753">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1206184602064">
                <link role="variableDeclaration" targetNodeId="1206184308309" resolveInfo="rules" />
              </node>
              <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1206184604646">
                <link role="baseMethodDeclaration" targetNodeId="7.~List.size():int" resolveInfo="size" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1206184778661">
          <property name="value" value="multiple rules" />
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1206184347275">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1206184347276">
            <property name="name" value="m" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1206184347277">
              <link role="classifier" targetNodeId="2.~MyMenu" resolveInfo="MyMenu" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1213727719423">
              <node role="creator" type="jetbrains.mps.baseLanguage.structure.ClassCreator" id="1213727719425">
                <link role="baseMethodDeclaration" targetNodeId="2.~MyMenu.&lt;init&gt;(java.util.List,jetbrains.mps.smodel.IOperationContext)" resolveInfo="MyMenu" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1206184366557">
                  <link role="variableDeclaration" targetNodeId="1206184308309" resolveInfo="rules" />
                </node>
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206184368137">
                  <node role="operand" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpresson" id="1206184368138" />
                  <node role="operation" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ActionDataParameterReferenceOperation" id="1217420648381">
                    <link role="member" targetNodeId="1217420648379" resolveInfo="operationContext" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1206184372235">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1206184372236">
            <property name="name" value="x" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.IntegerType" id="1206184372237" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1206184374723">
              <property name="value" value="0" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1206184377115">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1206184377116">
            <property name="name" value="y" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.IntegerType" id="1206184377117" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1206184379932">
              <property name="value" value="0" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1206184661357">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206184661358">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1206184668383">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1206184669166">
                <node role="rValue" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206184671421">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213875495525">
                    <node role="operand" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpresson" id="1213875495526" />
                    <node role="operation" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ActionDataParameterReferenceOperation" id="1217420645714">
                      <link role="member" targetNodeId="1217420645713" resolveInfo="cell" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1206184675172">
                    <link role="baseMethodDeclaration" targetNodeId="33.~EditorCell.getX():int" resolveInfo="getX" />
                  </node>
                </node>
                <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1206184668384">
                  <link role="variableDeclaration" targetNodeId="1206184372236" resolveInfo="x" />
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1206184677189">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1206184678035">
                <node role="rValue" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206184680258">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213875496325">
                    <node role="operand" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpresson" id="1213875496326" />
                    <node role="operation" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ActionDataParameterReferenceOperation" id="1217420645715">
                      <link role="member" targetNodeId="1217420645713" resolveInfo="cell" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1206184680854">
                    <link role="baseMethodDeclaration" targetNodeId="33.~EditorCell.getY():int" resolveInfo="getY" />
                  </node>
                </node>
                <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1206184677190">
                  <link role="variableDeclaration" targetNodeId="1206184377116" resolveInfo="y" />
                </node>
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1206184663300">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1206184664381" />
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213875494460">
              <node role="operand" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpresson" id="1213875494461" />
              <node role="operation" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ActionDataParameterReferenceOperation" id="1217420645716">
                <link role="member" targetNodeId="1217420645713" resolveInfo="cell" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1206184737021">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206184739586">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1206184737022">
              <link role="variableDeclaration" targetNodeId="1206184347276" resolveInfo="m" />
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1206184750842">
              <link role="baseMethodDeclaration" targetNodeId="20.~JPopupMenu.show(java.awt.Component,int,int):void" resolveInfo="show" />
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213875501423">
                <node role="operand" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpresson" id="1213875501424" />
                <node role="operation" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ActionDataParameterReferenceOperation" id="1217420648978">
                  <link role="member" targetNodeId="1217420648961" resolveInfo="frame" />
                </node>
              </node>
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1206184759566">
                <link role="variableDeclaration" targetNodeId="1206184372236" resolveInfo="x" />
              </node>
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1206184757878">
                <link role="variableDeclaration" targetNodeId="1206184377116" resolveInfo="y" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="keystroke" type="jetbrains.mps.bootstrap.pluginLanguage.structure.KeyMapKeystroke" id="1210607292040">
      <property name="modifiers" value="ctrl+shift" />
      <property name="keycode" value="VK_T" />
    </node>
    <node role="parameter" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ActionDataParameterDeclaration" id="1217420645713">
      <property name="name" value="cell" />
      <link role="key" targetNodeId="34.~MPSDataKeys.EDITOR_CELL" resolveInfo="EDITOR_CELL" />
    </node>
    <node role="parameter" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ActionDataParameterDeclaration" id="1217420648379">
      <property name="name" value="operationContext" />
      <link role="key" targetNodeId="34.~MPSDataKeys.OPERATION_CONTEXT" resolveInfo="OPERATION_CONTEXT" />
    </node>
    <node role="parameter" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ActionDataParameterDeclaration" id="1217420648879">
      <property name="name" value="project" />
      <link role="key" targetNodeId="34.~MPSDataKeys.MPS_PROJECT" resolveInfo="MPS_PROJECT" />
    </node>
    <node role="parameter" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ActionParameterDeclaration" id="1206184077195">
      <property name="name" value="node" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1206184077196" />
      <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1206184198171" />
    </node>
    <node role="parameter" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ActionDataParameterDeclaration" id="1217420648961">
      <property name="name" value="frame" />
      <link role="key" targetNodeId="34.~MPSDataKeys.FRAME" resolveInfo="FRAME" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.pluginLanguage.structure.ProjectPluginDeclaration" id="1206189513856">
    <property name="name" value="HelginsPlugin" />
    <node role="fieldDeclaration" type="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierFieldDeclaration" id="1215438760598">
      <property name="name" value="mySupertypesViewTool" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility" id="1215438760599" />
      <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1215438763634">
        <link role="classifier" targetNodeId="2.~SupertypesViewTool" resolveInfo="SupertypesViewTool" />
      </node>
    </node>
    <node role="fieldDeclaration" type="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierFieldDeclaration" id="1215438799718">
      <property name="name" value="myChecker" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility" id="1215438799719" />
      <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1215438802898">
        <link role="classifier" targetNodeId="28.~HelginsTypesEditorChecker" resolveInfo="HelginsTypesEditorChecker" />
      </node>
    </node>
    <node role="initBlock" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ProjectPluginInitBlock" id="1206190084322">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206190084323">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1211475061618">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1211475061619">
            <node role="rValue" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1217888414346">
              <node role="creator" type="jetbrains.mps.baseLanguage.structure.ClassCreator" id="1217888414363">
                <link role="baseMethodDeclaration" targetNodeId="28.~HelginsTypesEditorChecker.&lt;init&gt;()" resolveInfo="HelginsTypesEditorChecker" />
              </node>
            </node>
            <node role="lValue" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1211475061621">
              <node role="operand" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpresson" id="1211475061622" />
              <node role="operation" type="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierFieldAccessOperation" id="1215438809493">
                <link role="member" targetNodeId="1215438799718" resolveInfo="myChecker" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1211475061624">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1211475061625">
            <property name="name" value="highlighter" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1211475061626">
              <link role="classifier" targetNodeId="10.~Highlighter" resolveInfo="Highlighter" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1211475061627">
              <node role="operand" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ConceptFunctionParameter_MPSProject" id="1211475061628" />
              <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1211475061629">
                <link role="baseMethodDeclaration" targetNodeId="14.~MPSProject.getComponent(java.lang.Class):java.lang.Object" resolveInfo="getComponent" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" id="1211475061630">
                  <link role="classifier" targetNodeId="10.~Highlighter" resolveInfo="Highlighter" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1211475061631">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1211475061632">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1211475061633">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1211475061634">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1211475061635">
                  <link role="variableDeclaration" targetNodeId="1211475061625" resolveInfo="highlighter" />
                </node>
                <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1211475061636">
                  <link role="baseMethodDeclaration" targetNodeId="10.~Highlighter.addChecker(jetbrains.mps.helgins.checking.IEditorChecker):void" resolveInfo="addChecker" />
                  <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1211475061637">
                    <node role="operand" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpresson" id="1211475061638" />
                    <node role="operation" type="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierFieldAccessOperation" id="1215438812447">
                      <link role="member" targetNodeId="1215438799718" resolveInfo="myChecker" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1211475061640">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1211475061641" />
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1211475061642">
              <link role="variableDeclaration" targetNodeId="1211475061625" resolveInfo="highlighter" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="disposeBlock" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ProjectPluginDisposeBlock" id="1206190085402">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206190085403">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1211475120401">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1211475120402">
            <property name="name" value="highlighter" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1211475120403">
              <link role="classifier" targetNodeId="10.~Highlighter" resolveInfo="Highlighter" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1211475120404">
              <node role="operand" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ConceptFunctionParameter_MPSProject" id="1211475120405" />
              <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1211475120406">
                <link role="baseMethodDeclaration" targetNodeId="14.~MPSProject.getComponent(java.lang.Class):java.lang.Object" resolveInfo="getComponent" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" id="1211475120407">
                  <link role="classifier" targetNodeId="10.~Highlighter" resolveInfo="Highlighter" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1211475120408">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1211475120409">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1211475120410">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1211475120411">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1211475120412">
                  <link role="variableDeclaration" targetNodeId="1211475120402" resolveInfo="highlighter" />
                </node>
                <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1211475120413">
                  <link role="baseMethodDeclaration" targetNodeId="10.~Highlighter.removeChecker(jetbrains.mps.helgins.checking.IEditorChecker):void" resolveInfo="removeChecker" />
                  <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1211475120414">
                    <node role="operand" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpresson" id="1211475120415" />
                    <node role="operation" type="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierFieldAccessOperation" id="1215438817248">
                      <link role="member" targetNodeId="1215438799718" resolveInfo="myChecker" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1219142075783">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1219142077661">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1219142076094">
                  <node role="operand" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpresson" id="1219142075784" />
                  <node role="operation" type="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierFieldAccessOperation" id="1219142076301">
                    <link role="member" targetNodeId="1215438799718" resolveInfo="myChecker" />
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1219142080011">
                  <link role="baseMethodDeclaration" targetNodeId="28.~HelginsTypesEditorChecker.dispose():void" resolveInfo="dispose" />
                </node>
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1211475120417">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1211475120418" />
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1211475120419">
              <link role="variableDeclaration" targetNodeId="1211475120402" resolveInfo="highlighter" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.pluginLanguage.structure.ActionDeclaration" id="1207228142705">
    <property name="package" value="Actions" />
    <property name="name" value="CheckTypesInModel" />
    <property name="caption" value="Check Types In Model" />
    <node role="executeFunction" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ExecuteBlock" id="1207228142706">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1207228142707">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1207228229921">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1207228229922">
            <property name="name" value="modelChecker" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1207228229923">
              <link role="classifier" targetNodeId="25.~ModelChecker" resolveInfo="ModelChecker" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1213727666581">
              <node role="creator" type="jetbrains.mps.baseLanguage.structure.ClassCreator" id="1213727666583">
                <link role="baseMethodDeclaration" targetNodeId="25.~ModelChecker.&lt;init&gt;()" resolveInfo="ModelChecker" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1207228240068">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207228240851">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1207228240069">
              <link role="variableDeclaration" targetNodeId="1207228229922" resolveInfo="modelChecker" />
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1207228241838">
              <link role="baseMethodDeclaration" targetNodeId="25.~ModelChecker.checkModel(jetbrains.mps.smodel.SModel):void" resolveInfo="checkModel" />
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207228244995">
                <node role="operand" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpresson" id="1207228244996" />
                <node role="operation" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ActionParameterReferenceOperation" id="1207228244997">
                  <link role="member" targetNodeId="1207228174490" resolveInfo="m" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1207228265781">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207228266861">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1207228265782">
              <link role="variableDeclaration" targetNodeId="1207228229922" resolveInfo="modelChecker" />
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1207228267582">
              <link role="baseMethodDeclaration" targetNodeId="25.~ModelChecker.reportErrorsAndWarnings():void" resolveInfo="reportErrorsAndWarnings" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1207228271209">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207228272242">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1207228271210">
              <link role="variableDeclaration" targetNodeId="1207228229922" resolveInfo="modelChecker" />
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1207228273385">
              <link role="baseMethodDeclaration" targetNodeId="25.~ModelChecker.clear():void" resolveInfo="clear" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1211814329012">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1211814354120">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1211814333113">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1211814329576">
                <node role="operand" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpresson" id="1211814329013" />
                <node role="operation" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ActionDataParameterReferenceOperation" id="1217420646388">
                  <link role="member" targetNodeId="1217420646387" resolveInfo="project" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1211814341551">
                <link role="baseMethodDeclaration" targetNodeId="14.~MPSProject.getComponentSafe(java.lang.Class):java.lang.Object" resolveInfo="getComponentSafe" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" id="1211814351962">
                  <link role="classifier" targetNodeId="27.~MessagesViewTool" resolveInfo="MessagesViewTool" />
                </node>
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1211814355155">
              <link role="baseMethodDeclaration" targetNodeId="29.~BaseTool.openTool(boolean):void" resolveInfo="openTool" />
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1212503721527">
                <property name="value" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="parameter" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ActionDataParameterDeclaration" id="1217420646387">
      <property name="name" value="project" />
      <link role="key" targetNodeId="34.~MPSDataKeys.MPS_PROJECT" resolveInfo="MPS_PROJECT" />
    </node>
    <node role="parameter" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ActionParameterDeclaration" id="1207228174490">
      <property name="name" value="m" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1207228174491" />
      <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SModelType" id="1207228204747" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.pluginLanguage.structure.ActionGroupDeclaration" id="1207228300683">
    <property name="name" value="HelginsModelActions" />
    <node role="modifier" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ModificationStatement" id="1207228367512">
      <link role="modifiedGroup" targetNodeId="4.1204991218714" resolveInfo="ProjectPaneModelActions" />
    </node>
    <node role="contents" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ElementListContents" id="1207228318343">
      <node role="reference" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ActionReference" id="1207228365964">
        <link role="action" targetNodeId="1207228142705" resolveInfo="CheckTypesInModel" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.pluginLanguage.structure.ActionGroupDeclaration" id="1219330079925">
    <property name="name" value="HelginsToolsAddition" />
    <node role="modifier" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ModificationStatement" id="1219330185822">
      <link role="modifiedGroup" targetNodeId="4.1204991238062" resolveInfo="Tools" />
      <link role="point" targetNodeId="4.1217598172089" resolveInfo="customTools" />
    </node>
    <node role="contents" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ElementListContents" id="1219330134776" />
  </node>
</model>


<?xml version="1.0" encoding="UTF-8"?>
<model name="jetbrains.mps.bootstrap.intentionsLanguage.scripts">
  <persistence version="1" />
  <refactoringHistory />
  <language namespace="jetbrains.mps.baseLanguage" />
  <language namespace="jetbrains.mps.bootstrap.smodelLanguage">
    <languageAspect modelUID="jetbrains.mps.bootstrap.smodelLanguage.structure" version="0" />
  </language>
  <language namespace="jetbrains.mps.baseLanguage.ext.collections.lang">
    <languageAspect modelUID="jetbrains.mps.baseLanguage.ext.collections.lang.structure" version="0" />
  </language>
  <language namespace="jetbrains.mps.ide.scriptLanguage" />
  <language namespace="jetbrains.mps.logging.refactoring" />
  <language namespace="jetbrains.mps.bootstrap.helgins" />
  <language namespace="jetbrains.mps.core" />
  <language namespace="jetbrains.mps.bootstrap.constraintsLanguage">
    <languageAspect modelUID="jetbrains.mps.bootstrap.constraintsLanguage.structure" version="1" />
  </language>
  <language namespace="jetbrains.mps.quotation" />
  <maxImportIndex value="14" />
  <import index="1" modelUID="jetbrains.mps.bootstrap.intentionsLanguage.structure" version="-1" />
  <import index="2" modelUID="jetbrains.mps.bootstrap.editorLanguage.structure" version="-1" />
  <import index="3" modelUID="java.lang@java_stub" version="-1" />
  <import index="5" modelUID="jetbrains.mps.smodel@java_stub" version="-1" />
  <import index="6" modelUID="jetbrains.mps.core.structure" version="-1" />
  <import index="7" modelUID="javax.mail.search@java_stub" version="-1" />
  <import index="8" modelUID="jetbrains.mps.project@java_stub" version="-1" />
  <import index="9" modelUID="jetbrains.mps.util@java_stub" version="-1" />
  <import index="10" modelUID="jetbrains.mps.bootstrap.structureLanguage.structure" version="-1" />
  <import index="11" modelUID="jetbrains.mps.baseLanguage.structure" version="0" />
  <import index="12" modelUID="jetbrains.mps.bootstrap.smodelLanguage.structure" version="0" />
  <import index="13" modelUID="jetbrains.mps.bootstrap.sharedConcepts.structure" version="-1" />
  <import index="14" modelUID="jetbrains.mps.nodeEditor@java_stub" version="-1" />
  <node type="jetbrains.mps.ide.scriptLanguage.structure.MigrationScript" id="1195563712320">
    <property name="name" value="ConvertActionToIntention" />
    <property name="title" value="Action-&gt;Intention" />
    <node role="part" type="jetbrains.mps.ide.scriptLanguage.structure.MigrationScriptPart_Instance" id="1195563715836">
      <property name="description" value="converts all actions having a keystroke &quot;alt+enter&quot; into an intention" />
      <link role="affectedInstanceConcept" targetNodeId="2.1136916919141" resolveInfo="CellKeyMapItem" />
      <node role="affectedInstancePredicate" type="jetbrains.mps.ide.scriptLanguage.structure.MigrationScriptPart_Instance_Predicate" id="1195563715837">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1195563715838">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1195564453248">
            <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1195564453249">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1195564465071">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1195564466981">
                  <property name="value" value="false" />
                </node>
              </node>
            </node>
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotExpression" id="1195564455943">
              <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195564458433">
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1195564460705">
                  <link role="property" targetNodeId="2.1163507208434" resolveInfo="showInPopup" />
                </node>
                <node role="leftExpression" type="jetbrains.mps.ide.scriptLanguage.structure.MigrationScriptPart_node" id="1195564458088" />
              </node>
            </node>
            <node role="ifFalseStatement" type="jetbrains.mps.baseLanguage.structure.BlockStatement" id="1195564473241">
              <node role="statements" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1195564473242">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1195588364586">
                  <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1195588364587">
                    <property name="name" value="keyMapDecl" />
                    <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1195588364588">
                      <link role="concept" targetNodeId="2.1081293058843" resolveInfo="CellKeyMapDeclaration" />
                    </node>
                    <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195588364589">
                      <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAncestorOperation" id="1195588364590">
                        <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Concept" id="1195588364591">
                          <link role="concept" targetNodeId="2.1081293058843" resolveInfo="CellKeyMapDeclaration" />
                        </node>
                      </node>
                      <node role="leftExpression" type="jetbrains.mps.ide.scriptLanguage.structure.MigrationScriptPart_node" id="1195588364592" />
                    </node>
                  </node>
                </node>
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1195645041959">
                  <node role="expression" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.SequenceOperationExpression" id="1195645041960">
                    <node role="leftExpression" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.SequenceOperationExpression" id="1195645041961">
                      <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195645041962">
                        <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1195645041963">
                          <link role="link" targetNodeId="2.1136916998332" />
                        </node>
                        <node role="leftExpression" type="jetbrains.mps.ide.scriptLanguage.structure.MigrationScriptPart_node" id="1195645041964" />
                      </node>
                      <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereOperation" id="1195645041965">
                        <node role="whereClosure" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereBlock" id="1195645041966">
                          <node role="defaultInputElement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.DefaultInputElement" id="1195645041967">
                            <property name="name" value="it" />
                          </node>
                          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1195645041968">
                            <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1195645041969">
                              <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1195645041970">
                                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1195645041971">
                                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1195645041972">
                                    <property name="value" value="false" />
                                  </node>
                                </node>
                              </node>
                              <node role="condition" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195645041973">
                                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Property_HasValue_Simple" id="1195645041974">
                                  <node role="value" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1195645041975" />
                                </node>
                                <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195645041976">
                                  <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1195645041977">
                                    <link role="property" targetNodeId="2.1136923970223" resolveInfo="modifiers" />
                                  </node>
                                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.ClosureParameterReference" id="1195645041978">
                                    <link role="closureParameter" targetNodeId="1195645041967" resolveInfo="it" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1195645041979">
                              <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1195645041980">
                                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1195645041981">
                                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1195645041982">
                                    <property name="value" value="false" />
                                  </node>
                                </node>
                              </node>
                              <node role="condition" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195645041983">
                                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Property_HasValue_Simple" id="1195645041984">
                                  <node role="value" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1195645041985" />
                                </node>
                                <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195645041986">
                                  <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1195645041987">
                                    <link role="property" targetNodeId="2.1136923970224" resolveInfo="keycode" />
                                  </node>
                                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.ClosureParameterReference" id="1195645041988">
                                    <link role="closureParameter" targetNodeId="1195645041967" resolveInfo="it" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1195645041989">
                              <node role="expression" type="jetbrains.mps.baseLanguage.structure.AndExpression" id="1195645041990">
                                <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1195645041991">
                                  <link role="baseMethodDeclaration" targetNodeId="3.~String.equalsIgnoreCase(java.lang.String):boolean" resolveInfo="equalsIgnoreCase" />
                                  <node role="instance" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195645041992">
                                    <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1195645041993">
                                      <link role="property" targetNodeId="2.1136923970224" resolveInfo="keycode" />
                                    </node>
                                    <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.ClosureParameterReference" id="1195645041994">
                                      <link role="closureParameter" targetNodeId="1195645041967" resolveInfo="it" />
                                    </node>
                                  </node>
                                  <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1195645041995">
                                    <property name="value" value="VK_ENTER" />
                                  </node>
                                </node>
                                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1195645041996">
                                  <link role="baseMethodDeclaration" targetNodeId="3.~String.equalsIgnoreCase(java.lang.String):boolean" resolveInfo="equalsIgnoreCase" />
                                  <node role="instance" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195645041997">
                                    <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1195645041998">
                                      <link role="property" targetNodeId="2.1136923970223" resolveInfo="modifiers" />
                                    </node>
                                    <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.ClosureParameterReference" id="1195645041999">
                                      <link role="closureParameter" targetNodeId="1195645041967" resolveInfo="it" />
                                    </node>
                                  </node>
                                  <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1195645042000">
                                    <property name="value" value="alt" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.IsNotEmptyOperation" id="1195645042001" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="affectedInstanceUpdater" type="jetbrains.mps.ide.scriptLanguage.structure.MigrationScriptPart_Instance_Updater" id="1195563715839">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1195563715840">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1195582347692">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1195582347693">
              <property name="name" value="namespace" />
              <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1195582347694">
                <link role="classifier" targetNodeId="3.~String" resolveInfo="String" />
              </node>
              <node role="initializer" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1195582357983">
                <link role="baseMethodDeclaration" targetNodeId="5.~SModelUID.getNamespace():java.lang.String" resolveInfo="getNamespace" />
                <node role="instance" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1195582357984">
                  <link role="baseMethodDeclaration" targetNodeId="5.~SModelDescriptor.getModelUID():jetbrains.mps.smodel.SModelUID" resolveInfo="getModelUID" />
                  <node role="instance" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1195582357985">
                    <link role="baseMethodDeclaration" targetNodeId="5.~SModel.getModelDescriptor():jetbrains.mps.smodel.SModelDescriptor" resolveInfo="getModelDescriptor" />
                    <node role="instance" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1195582357986">
                      <link role="baseMethodDeclaration" targetNodeId="5.~SNode.getModel():jetbrains.mps.smodel.SModel" resolveInfo="getModel" />
                      <node role="instance" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" id="1195582357987">
                        <node role="expression" type="jetbrains.mps.baseLanguage.structure.CastExpression" id="1195582357988">
                          <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1195582357989">
                            <link role="classifier" targetNodeId="5.~SNode" resolveInfo="SNode" />
                          </node>
                          <node role="expression" type="jetbrains.mps.ide.scriptLanguage.structure.MigrationScriptPart_node" id="1195582357990" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1195582361963">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1195582361964">
              <property name="name" value="language" />
              <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1195582361965">
                <link role="classifier" targetNodeId="5.~Language" resolveInfo="Language" />
              </node>
              <node role="initializer" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1195582469488">
                <link role="baseMethodDeclaration" targetNodeId="5.~MPSModuleRepository.getLanguage(java.lang.String):jetbrains.mps.smodel.Language" resolveInfo="getLanguage" />
                <node role="instance" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1195582385313">
                  <link role="baseMethodDeclaration" targetNodeId="5.~MPSModuleRepository.getInstance():jetbrains.mps.smodel.MPSModuleRepository" resolveInfo="getInstance" />
                  <link role="classConcept" targetNodeId="5.~MPSModuleRepository" resolveInfo="MPSModuleRepository" />
                </node>
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195582473662">
                  <link role="variableDeclaration" targetNodeId="1195582347693" resolveInfo="namespace" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1195564917516">
            <property name="value" value="create intentions model if there is no one" />
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1195564934464">
            <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1195564934465">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1202936409792">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1202936417515">
                  <link role="baseMethodDeclaration" targetNodeId="5.~LanguageAspect.createNew(jetbrains.mps.smodel.Language):jetbrains.mps.smodel.SModelDescriptor" resolveInfo="createNew" />
                  <node role="instance" type="jetbrains.mps.baseLanguage.structure.EnumConstantReference" id="1202936414309">
                    <link role="enumConstantDeclaration" targetNodeId="5.~LanguageAspect.INTENTIONS" resolveInfo="INTENTIONS" />
                    <link role="enumClass" targetNodeId="5.~LanguageAspect" resolveInfo="LanguageAspect" />
                  </node>
                  <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1202936419141">
                    <link role="variableDeclaration" targetNodeId="1195582361964" resolveInfo="language" />
                  </node>
                </node>
              </node>
            </node>
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1195565565097">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1195565566194" />
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1195565559281">
                <link role="baseMethodDeclaration" targetNodeId="5.~Language.getIntentionsModelDescriptor():jetbrains.mps.smodel.SModelDescriptor" resolveInfo="getIntentionsModelDescriptor" />
                <node role="instance" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195582478573">
                  <link role="variableDeclaration" targetNodeId="1195582361964" resolveInfo="language" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1195565598677">
            <property name="value" value="compute intention's properties" />
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1195566339070">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1195566339071">
              <property name="name" value="keyMapDecl" />
              <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1195566339072">
                <link role="concept" targetNodeId="2.1081293058843" resolveInfo="CellKeyMapDeclaration" />
              </node>
              <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195566358111">
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAncestorOperation" id="1195566358112">
                  <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Concept" id="1195566358113">
                    <link role="concept" targetNodeId="2.1081293058843" resolveInfo="CellKeyMapDeclaration" />
                  </node>
                </node>
                <node role="leftExpression" type="jetbrains.mps.ide.scriptLanguage.structure.MigrationScriptPart_node" id="1195566358114" />
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1195566375716">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1195566375717">
              <property name="name" value="intentionName" />
              <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1195566375718">
                <link role="classifier" targetNodeId="3.~String" resolveInfo="String" />
              </node>
              <node role="initializer" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1195567052960">
                <link role="classConcept" targetNodeId="9.~NameUtil" resolveInfo="NameUtil" />
                <link role="baseMethodDeclaration" targetNodeId="9.~NameUtil.toValidCamelIdentifier(java.lang.String):java.lang.String" resolveInfo="toValidCamelIdentifier" />
                <node role="actualArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195567134728">
                  <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1195567140327">
                    <link role="property" targetNodeId="2.1136916941877" resolveInfo="description" />
                  </node>
                  <node role="leftExpression" type="jetbrains.mps.ide.scriptLanguage.structure.MigrationScriptPart_node" id="1195567075516" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1195567297820">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1195567297821">
              <property name="name" value="forConcept" />
              <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1195567297822">
                <link role="concept" targetNodeId="10.1169125787135" resolveInfo="AbstractConceptDeclaration" />
              </node>
              <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195567405517">
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1195567424573">
                  <link role="link" targetNodeId="2.1139445935125" />
                </node>
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195567404141">
                  <link role="variableDeclaration" targetNodeId="1195566339071" resolveInfo="keyMapDecl" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1195567228563">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1195567228564">
              <property name="name" value="model" />
              <node role="initializer" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1195567228565">
                <link role="baseMethodDeclaration" targetNodeId="5.~SModelDescriptor.getSModel():jetbrains.mps.smodel.SModel" resolveInfo="getSModel" />
                <node role="instance" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1195567228566">
                  <link role="baseMethodDeclaration" targetNodeId="5.~Language.getIntentionsModelDescriptor():jetbrains.mps.smodel.SModelDescriptor" resolveInfo="getIntentionsModelDescriptor" />
                  <node role="instance" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195582481644">
                    <link role="variableDeclaration" targetNodeId="1195582361964" resolveInfo="language" />
                  </node>
                </node>
              </node>
              <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SModelType" id="1195567228568" />
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1195576762361">
            <property name="value" value="add models visible from node's model to the list of models imported into intentions' model" />
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ForeachStatement" id="1195576800470">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1195576800471">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1195576863786">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1195576883338">
                  <link role="baseMethodDeclaration" targetNodeId="5.~SModel.addImportedModel(jetbrains.mps.smodel.SModelUID):void" resolveInfo="addImportedModel" />
                  <node role="instance" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" id="1195576863787">
                    <node role="expression" type="jetbrains.mps.baseLanguage.structure.CastExpression" id="1195576866342">
                      <node role="expression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195576873925">
                        <link role="variableDeclaration" targetNodeId="1195567228564" resolveInfo="model" />
                      </node>
                      <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1195576870873">
                        <link role="classifier" targetNodeId="5.~SModel" resolveInfo="SModel" />
                      </node>
                    </node>
                  </node>
                  <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195576886872">
                    <link role="variableDeclaration" targetNodeId="1195576800474" resolveInfo="smodelUID" />
                  </node>
                </node>
              </node>
            </node>
            <node role="variable" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1195576800474">
              <property name="name" value="smodelUID" />
              <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1195576805309">
                <link role="classifier" targetNodeId="5.~SModelUID" resolveInfo="SModelUID" />
              </node>
            </node>
            <node role="iterable" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1195576852835">
              <link role="baseMethodDeclaration" targetNodeId="5.~SModel.getImportedModelUIDs():java.util.List" resolveInfo="getImportedModelUIDs" />
              <node role="instance" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" id="1195576817717">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.CastExpression" id="1195576819915">
                  <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1195576841089">
                    <link role="classifier" targetNodeId="5.~SModel" resolveInfo="SModel" />
                  </node>
                  <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195576835040">
                    <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetModelOperation" id="1195576835041" />
                    <node role="leftExpression" type="jetbrains.mps.ide.scriptLanguage.structure.MigrationScriptPart_node" id="1195576835042" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1195576728653">
            <property name="value" value="create intention" />
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1195567228569">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1195567228570">
              <property name="name" value="intention" />
              <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1195567228571">
                <link role="concept" targetNodeId="1.1192794744107" resolveInfo="IntentionDeclaration" />
              </node>
              <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195567228572">
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195567228574">
                  <link role="variableDeclaration" targetNodeId="1195567228564" resolveInfo="model" />
                </node>
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Model_CreateNewRootNodeOperation" id="1195576738865">
                  <link role="concept" targetNodeId="1.1192794744107" resolveInfo="IntentionDeclaration" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1195566150880">
            <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195566156778">
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Property_SetOperation" id="1195566158329">
                <node role="value" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195567214369">
                  <link role="variableDeclaration" targetNodeId="1195566375717" resolveInfo="intentionName" />
                </node>
              </node>
              <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195566151835">
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1195566153182">
                  <link role="property" targetNodeId="6.1169194664001" resolveInfo="name" />
                </node>
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195567234264">
                  <link role="variableDeclaration" targetNodeId="1195567228570" resolveInfo="intention" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1195645074554">
            <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1195645074555">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1195645083888">
                <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195645083889">
                  <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1195645083890">
                    <node role="parameter" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195645083891">
                      <link role="variableDeclaration" targetNodeId="1195567297821" resolveInfo="forConcept" />
                    </node>
                  </node>
                  <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195645083892">
                    <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1195645083893">
                      <link role="link" targetNodeId="1.1192796383601" />
                    </node>
                    <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195645083894">
                      <link role="variableDeclaration" targetNodeId="1195567228570" resolveInfo="intention" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1195645078933">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1195645080029" />
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195645077058">
                <link role="variableDeclaration" targetNodeId="1195567297821" resolveInfo="forConcept" />
              </node>
            </node>
            <node role="ifFalseStatement" type="jetbrains.mps.baseLanguage.structure.BlockStatement" id="1195645087629">
              <node role="statements" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1195645087630">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1195645093083">
                  <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195646308532">
                    <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1195646489012">
                      <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195646939333">
                        <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1195646946617">
                          <link role="link" targetNodeId="12.1154546997487" />
                        </node>
                        <node role="leftExpression" type="jetbrains.mps.quotation.structure.Quotation" id="1195646932564">
                          <node role="quotedNode" type="jetbrains.mps.bootstrap.smodelLanguage.structure.ConceptReference" id="1195646937316">
                            <link role="concept" targetNodeId="6.1133920641626" resolveInfo="BaseConcept" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195645094490">
                      <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1195645095462">
                        <link role="link" targetNodeId="1.1192796383601" />
                      </node>
                      <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195645093084">
                        <link role="variableDeclaration" targetNodeId="1195567228570" resolveInfo="intention" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1195567531696">
            <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195567545362">
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Property_SetOperation" id="1195567547679">
                <node role="value" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1195567551541">
                  <property name="value" value="false" />
                </node>
              </node>
              <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195567532526">
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1195567543611">
                  <link role="property" targetNodeId="1.1193396901469" resolveInfo="isErrorIntention" />
                </node>
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195567531697">
                  <link role="variableDeclaration" targetNodeId="1195567228570" resolveInfo="intention" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1195567769579">
            <property name="value" value="create intention's description block" />
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1195568859230">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1195568859231">
              <property name="name" value="returnString" />
              <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1195568859232">
                <link role="concept" targetNodeId="11.1070475926800" resolveInfo="StringLiteral" />
              </node>
              <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195568859233">
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Model_CreateNewNodeOperation" id="1195568859234">
                  <link role="concept" targetNodeId="11.1070475926800" resolveInfo="StringLiteral" />
                </node>
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195568859235">
                  <link role="variableDeclaration" targetNodeId="1195567228564" resolveInfo="model" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1195568859236">
            <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195568859237">
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Property_SetOperation" id="1195568859238">
                <node role="value" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195568859239">
                  <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1195568865554">
                    <link role="property" targetNodeId="2.1136916941877" resolveInfo="description" />
                  </node>
                  <node role="leftExpression" type="jetbrains.mps.ide.scriptLanguage.structure.MigrationScriptPart_node" id="1195568859241" />
                </node>
              </node>
              <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195568859242">
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1195568864179">
                  <link role="property" targetNodeId="11.1070475926801" resolveInfo="value" />
                </node>
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195568859244">
                  <link role="variableDeclaration" targetNodeId="1195568859231" resolveInfo="string" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1195567853331">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1195567853332">
              <property name="name" value="returnStatement" />
              <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1195567853333">
                <link role="concept" targetNodeId="11.1068581242878" resolveInfo="ReturnStatement" />
              </node>
              <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195567910418">
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Model_CreateNewNodeOperation" id="1195567912312">
                  <link role="concept" targetNodeId="11.1068581242878" resolveInfo="ReturnStatement" />
                </node>
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195567909229">
                  <link role="variableDeclaration" targetNodeId="1195567228564" resolveInfo="model" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1195568099952">
            <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195568667868">
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1195568676087">
                <node role="parameter" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195568878466">
                  <link role="variableDeclaration" targetNodeId="1195568859231" resolveInfo="string" />
                </node>
              </node>
              <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195568100668">
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1195568110767">
                  <link role="link" targetNodeId="11.1068581517676" />
                </node>
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195568099953">
                  <link role="variableDeclaration" targetNodeId="1195567853332" resolveInfo="return" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1195568969170">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1195568969171">
              <property name="name" value="descriptionBody" />
              <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1195568969172">
                <link role="concept" targetNodeId="11.1068580123136" resolveInfo="StatementList" />
              </node>
              <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195568994545">
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Model_CreateNewNodeOperation" id="1195568997859">
                  <link role="concept" targetNodeId="11.1068580123136" resolveInfo="StatementList" />
                </node>
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195568993436">
                  <link role="variableDeclaration" targetNodeId="1195567228564" resolveInfo="model" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1195569013840">
            <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195569063211">
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.LinkList_AddChildOperation" id="1195569072570">
                <node role="parameter" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195569079570">
                  <link role="variableDeclaration" targetNodeId="1195567853332" resolveInfo="returnStatement" />
                </node>
              </node>
              <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195569014748">
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1195569025169">
                  <link role="link" targetNodeId="11.1068581517665" />
                </node>
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195569013841">
                  <link role="variableDeclaration" targetNodeId="1195568969171" resolveInfo="descriptionBody" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1195568885150">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1195568885151">
              <property name="name" value="descriptionFunction" />
              <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1195568885152">
                <link role="concept" targetNodeId="1.1192794782375" resolveInfo="DescriptionBlock" />
              </node>
              <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195568911681">
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Model_CreateNewNodeOperation" id="1195568913448">
                  <link role="concept" targetNodeId="1.1192794782375" resolveInfo="DescriptionBlock" />
                </node>
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195568910946">
                  <link role="variableDeclaration" targetNodeId="1195567228564" resolveInfo="model" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1195569086741">
            <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195569091574">
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1195569094935">
                <node role="parameter" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195569096983">
                  <link role="variableDeclaration" targetNodeId="1195568969171" resolveInfo="descriptionBody" />
                </node>
              </node>
              <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195569088040">
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1195569090542">
                  <link role="link" targetNodeId="11.1137022507850" />
                </node>
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195569086742">
                  <link role="variableDeclaration" targetNodeId="1195568885151" resolveInfo="descriptionFunction" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1195569108216">
            <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195569120466">
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1195569123064">
                <node role="parameter" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195569129014">
                  <link role="variableDeclaration" targetNodeId="1195568885151" resolveInfo="descriptionFunction" />
                </node>
              </node>
              <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195569109296">
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1195569118885">
                  <link role="link" targetNodeId="1.1192795926648" />
                </node>
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195569108217">
                  <link role="variableDeclaration" targetNodeId="1195567228570" resolveInfo="intention" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1195567785352">
            <property name="value" value="create intention's isApplicable block" />
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1195569222949">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1195569222950">
              <property name="name" value="isApplicableFunction" />
              <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1195569222951">
                <link role="concept" targetNodeId="1.1192795771125" resolveInfo="IsApplicableBlock" />
              </node>
              <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195569276216">
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Model_CreateNewNodeOperation" id="1195569277702">
                  <link role="concept" targetNodeId="1.1192795771125" resolveInfo="IsApplicableBlock" />
                </node>
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195569275006">
                  <link role="variableDeclaration" targetNodeId="1195567228564" resolveInfo="model" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1195645268240">
            <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1195645268241">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1195645285157">
                <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195645285158">
                  <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1195645285159">
                    <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195645285160">
                      <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_CopyOperation" id="1195645285161" />
                      <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195645285162">
                        <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1195645285163">
                          <link role="link" targetNodeId="11.1137022507850" />
                        </node>
                        <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195645285164">
                          <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1195645285165">
                            <link role="link" targetNodeId="2.1136917325338" />
                          </node>
                          <node role="leftExpression" type="jetbrains.mps.ide.scriptLanguage.structure.MigrationScriptPart_node" id="1195645285166" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195645285167">
                    <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1195645285168">
                      <link role="link" targetNodeId="11.1137022507850" />
                    </node>
                    <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195645285169">
                      <link role="variableDeclaration" targetNodeId="1195569222950" resolveInfo="isApplicableFunction" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1195645277654">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1195645279204" />
              <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195645275962">
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1195645275963">
                  <link role="link" targetNodeId="11.1137022507850" />
                </node>
                <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195645275964">
                  <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1195645275965">
                    <link role="link" targetNodeId="2.1136917325338" />
                  </node>
                  <node role="leftExpression" type="jetbrains.mps.ide.scriptLanguage.structure.MigrationScriptPart_node" id="1195645275966" />
                </node>
              </node>
            </node>
            <node role="ifFalseStatement" type="jetbrains.mps.baseLanguage.structure.BlockStatement" id="1195645290826">
              <node role="statements" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1195645290827">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1195645321510">
                  <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1195645321511">
                    <property name="name" value="returnResult" />
                    <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1195645321512">
                      <link role="concept" targetNodeId="11.1068580123137" resolveInfo="BooleanConstant" />
                    </node>
                    <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195645527085">
                      <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Model_CreateNewNodeOperation" id="1195645528713">
                        <link role="concept" targetNodeId="11.1068580123137" resolveInfo="BooleanConstant" />
                      </node>
                      <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195645525990">
                        <link role="variableDeclaration" targetNodeId="1195567228564" resolveInfo="model" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1195645540011">
                  <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195645548800">
                    <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Property_SetOperation" id="1195645554240">
                      <node role="value" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1195645875853">
                        <property name="value" value="true" />
                      </node>
                    </node>
                    <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195645541872">
                      <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1195645544640">
                        <link role="property" targetNodeId="11.1068580123138" resolveInfo="value" />
                      </node>
                      <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195645540012">
                        <link role="variableDeclaration" targetNodeId="1195645321511" resolveInfo="returnResult" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1195645311419">
                  <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1195645311420">
                    <property name="name" value="isApplicableReturnStatement" />
                    <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1195645311421">
                      <link role="concept" targetNodeId="11.1068581242878" resolveInfo="ReturnStatement" />
                    </node>
                    <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195645311422">
                      <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Model_CreateNewNodeOperation" id="1195645311423">
                        <link role="concept" targetNodeId="11.1068581242878" resolveInfo="ReturnStatement" />
                      </node>
                      <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195645311424">
                        <link role="variableDeclaration" targetNodeId="1195567228564" resolveInfo="model" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1195645311425">
                  <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195645311426">
                    <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1195645311427">
                      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195645355434">
                        <link role="variableDeclaration" targetNodeId="1195645321511" resolveInfo="returnResult" />
                      </node>
                    </node>
                    <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195645311429">
                      <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1195645311430">
                        <link role="link" targetNodeId="11.1068581517676" />
                      </node>
                      <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195645311431">
                        <link role="variableDeclaration" targetNodeId="1195645311420" resolveInfo="returnStatement" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1195645365966">
                  <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1195645365967">
                    <property name="name" value="isApplicableBody" />
                    <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1195645365968">
                      <link role="concept" targetNodeId="11.1068580123136" resolveInfo="StatementList" />
                    </node>
                    <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195645471477">
                      <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Model_CreateNewNodeOperation" id="1195645473027">
                        <link role="concept" targetNodeId="11.1068580123136" resolveInfo="StatementList" />
                      </node>
                      <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195645470476">
                        <link role="variableDeclaration" targetNodeId="1195567228564" resolveInfo="model" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1195645485574">
                  <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195645495798">
                    <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.LinkList_AddChildOperation" id="1195645504113">
                      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195645510521">
                        <link role="variableDeclaration" targetNodeId="1195645311420" resolveInfo="isApplicableReturnStatement" />
                      </node>
                    </node>
                    <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195645487217">
                      <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1195645491032">
                        <link role="link" targetNodeId="11.1068581517665" />
                      </node>
                      <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195645485575">
                        <link role="variableDeclaration" targetNodeId="1195645365967" resolveInfo="isApplicableBody" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1195645442996">
                  <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195645447877">
                    <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1195645449489">
                      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195645458756">
                        <link role="variableDeclaration" targetNodeId="1195645365967" resolveInfo="isApplicableBody" />
                      </node>
                    </node>
                    <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195645444670">
                      <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1195645446579">
                        <link role="link" targetNodeId="11.1137022507850" />
                      </node>
                      <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195645442997">
                        <link role="variableDeclaration" targetNodeId="1195569222950" resolveInfo="isApplicableFunction" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1195583254036">
            <node role="expression" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.SequenceOperationExpression" id="1195583421774">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.SequenceOperationExpression" id="1195583276264">
                <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195583256023">
                  <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetDescendantsOperation" id="1195583274402" />
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195583254037">
                    <link role="variableDeclaration" targetNodeId="1195569222950" resolveInfo="isApplicableFunction" />
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereOperation" id="1195583281599">
                  <node role="whereClosure" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereBlock" id="1195583281600">
                    <node role="defaultInputElement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.DefaultInputElement" id="1195583281601">
                      <property name="name" value="it" />
                    </node>
                    <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1195583281602">
                      <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1195583381506">
                        <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195583382347">
                          <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1195587823951">
                            <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1195587833501">
                              <link role="conceptDeclaration" targetNodeId="2.1137189922873" resolveInfo="CellKeyMap_FunctionParm_selectedNode" />
                            </node>
                          </node>
                          <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.ClosureParameterReference" id="1195583381507">
                            <link role="closureParameter" targetNodeId="1195583281601" resolveInfo="it" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachOperation" id="1195583441141">
                <node role="forEachClosure" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachBlock" id="1195583441142">
                  <node role="defaultInputElement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.DefaultInputElement" id="1195583441143">
                    <property name="name" value="it" />
                  </node>
                  <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1195583441144">
                    <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1195583444578">
                      <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195583445046">
                        <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ReplaceWithAnotherOperation" id="1195583447735">
                          <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195583455550">
                            <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Model_CreateNewNodeOperation" id="1195583460647">
                              <link role="concept" targetNodeId="1.1192796902958" resolveInfo="ConceptFunctionParameter_node" />
                            </node>
                            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195583454307">
                              <link role="variableDeclaration" targetNodeId="1195567228564" resolveInfo="model" />
                            </node>
                          </node>
                        </node>
                        <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.ClosureParameterReference" id="1195583444579">
                          <link role="closureParameter" targetNodeId="1195583441143" resolveInfo="it" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1195567482858">
            <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195567574211">
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1195567575730">
                <node role="parameter" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195569294903">
                  <link role="variableDeclaration" targetNodeId="1195569222950" resolveInfo="isApplicableFunction" />
                </node>
              </node>
              <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195567483657">
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1195567503604">
                  <link role="link" targetNodeId="1.1192795688242" />
                </node>
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195567482859">
                  <link role="variableDeclaration" targetNodeId="1195567228570" resolveInfo="intention" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1195567810002">
            <property name="value" value="create intention's execute block" />
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1195569334260">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1195569334261">
              <property name="name" value="executeFunction" />
              <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1195569334262">
                <link role="concept" targetNodeId="1.1192795911897" resolveInfo="ExecuteBlock" />
              </node>
              <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195569349466">
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Model_CreateNewNodeOperation" id="1195569351114">
                  <link role="concept" targetNodeId="1.1192795911897" resolveInfo="ExecuteBlock" />
                </node>
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195569348514">
                  <link role="variableDeclaration" targetNodeId="1195567228564" resolveInfo="model" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1195645573399">
            <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1195645573400">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1195645594894">
                <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195645594895">
                  <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1195645594896">
                    <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195645594897">
                      <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_CopyOperation" id="1195645594898" />
                      <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195645594899">
                        <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1195645594900">
                          <link role="link" targetNodeId="11.1137022507850" />
                        </node>
                        <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195645594901">
                          <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1195645594902">
                            <link role="link" targetNodeId="2.1136920925604" />
                          </node>
                          <node role="leftExpression" type="jetbrains.mps.ide.scriptLanguage.structure.MigrationScriptPart_node" id="1195645594903" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195645594904">
                    <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1195645594905">
                      <link role="link" targetNodeId="11.1137022507850" />
                    </node>
                    <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195645594906">
                      <link role="variableDeclaration" targetNodeId="1195569334261" resolveInfo="executeFunction" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1195645588641">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1195645590363" />
              <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195645581808">
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1195645581809">
                  <link role="link" targetNodeId="11.1137022507850" />
                </node>
                <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195645581810">
                  <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1195645581811">
                    <link role="link" targetNodeId="2.1136920925604" />
                  </node>
                  <node role="leftExpression" type="jetbrains.mps.ide.scriptLanguage.structure.MigrationScriptPart_node" id="1195645581812" />
                </node>
              </node>
            </node>
            <node role="ifFalseStatement" type="jetbrains.mps.baseLanguage.structure.BlockStatement" id="1195645601002">
              <node role="statements" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1195645601003">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1195645606175">
                  <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195646200703">
                    <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1195646202785">
                      <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195646209194">
                        <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Model_CreateNewNodeOperation" id="1195646210010">
                          <link role="concept" targetNodeId="11.1068580123136" resolveInfo="StatementList" />
                        </node>
                        <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195646207349">
                          <link role="variableDeclaration" targetNodeId="1195567228564" resolveInfo="model" />
                        </node>
                      </node>
                    </node>
                    <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195645607833">
                      <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1195645610570">
                        <link role="link" targetNodeId="11.1137022507850" />
                      </node>
                      <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195645606176">
                        <link role="variableDeclaration" targetNodeId="1195569334261" resolveInfo="executeFunction" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1195584212033">
            <node role="expression" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.SequenceOperationExpression" id="1195584212034">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.SequenceOperationExpression" id="1195584212035">
                <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195584212036">
                  <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetDescendantsOperation" id="1195584212037" />
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195584218216">
                    <link role="variableDeclaration" targetNodeId="1195569334261" resolveInfo="executeFunction" />
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereOperation" id="1195584212039">
                  <node role="whereClosure" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereBlock" id="1195584212040">
                    <node role="defaultInputElement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.DefaultInputElement" id="1195584212041">
                      <property name="name" value="it" />
                    </node>
                    <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1195584212042">
                      <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1195587874130">
                        <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195587874131">
                          <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1195587874132">
                            <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1195587874133">
                              <link role="conceptDeclaration" targetNodeId="2.1137189922873" resolveInfo="CellKeyMap_FunctionParm_selectedNode" />
                            </node>
                          </node>
                          <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.ClosureParameterReference" id="1195587874134">
                            <link role="closureParameter" targetNodeId="1195584212041" resolveInfo="it" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachOperation" id="1195584212050">
                <node role="forEachClosure" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachBlock" id="1195584212051">
                  <node role="defaultInputElement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.DefaultInputElement" id="1195584212052">
                    <property name="name" value="it" />
                  </node>
                  <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1195584212053">
                    <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1195584212054">
                      <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195584212055">
                        <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ReplaceWithAnotherOperation" id="1195584212056">
                          <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195584212057">
                            <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Model_CreateNewNodeOperation" id="1195584212058">
                              <link role="concept" targetNodeId="1.1192796902958" resolveInfo="ConceptFunctionParameter_node" />
                            </node>
                            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195584212059">
                              <link role="variableDeclaration" targetNodeId="1195567228564" resolveInfo="model" />
                            </node>
                          </node>
                        </node>
                        <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.ClosureParameterReference" id="1195584212060">
                          <link role="closureParameter" targetNodeId="1195584212052" resolveInfo="it" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1195567508795">
            <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195567577655">
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1195567580628">
                <node role="parameter" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195569394967">
                  <link role="variableDeclaration" targetNodeId="1195569334261" resolveInfo="executeFunction" />
                </node>
              </node>
              <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1195567509297">
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1195567511598">
                  <link role="link" targetNodeId="1.1192795699931" />
                </node>
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195567508796">
                  <link role="variableDeclaration" targetNodeId="1195567228570" resolveInfo="intention" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>


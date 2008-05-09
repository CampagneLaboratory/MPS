<?xml version="1.0" encoding="UTF-8"?>
<model name="jetbrains.mps.bootstrap.editorLanguage.generator.baseLanguage.template.util">
  <persistence version="1" />
  <refactoringHistory />
  <language namespace="jetbrains.mps.baseLanguage">
    <languageAspect modelUID="jetbrains.mps.baseLanguage.structure" version="0" />
  </language>
  <language namespace="jetbrains.mps.bootstrap.smodelLanguage">
    <languageAspect modelUID="jetbrains.mps.bootstrap.smodelLanguage.structure" version="0" />
  </language>
  <language namespace="jetbrains.mps.baseLanguage.ext.collections.lang">
    <languageAspect modelUID="jetbrains.mps.baseLanguage.ext.collections.lang.structure" version="1" />
  </language>
  <languageAspect modelUID="jetbrains.mps.bootstrap.constraintsLanguage.structure" version="0" />
  <languageAspect modelUID="jetbrains.mps.closures.structure" version="0" />
  <languageAspect modelUID="jetbrains.mps.closures.structure" version="0" />
  <languageAspect modelUID="jetbrains.mps.closures.structure" version="0" />
  <languageAspect modelUID="jetbrains.mps.closures.structure" version="0" />
  <maxImportIndex value="8" />
  <import index="1" modelUID="jetbrains.mps.generator.template@java_stub" version="-1" />
  <import index="2" modelUID="jetbrains.mps.bootstrap.editorLanguage.generator.baseLanguage.template.util" version="-1" />
  <import index="3" modelUID="jetbrains.mps.bootstrap.editorLanguage.structure" version="-1" />
  <import index="4" modelUID="jetbrains.mps.baseLanguage.structure" version="0" />
  <import index="5" modelUID="java.lang@java_stub" version="-1" />
  <import index="6" modelUID="jetbrains.mps.core.structure" version="-1" />
  <import index="7" modelUID="jetbrains.mps.smodel@java_stub" version="-1" />
  <import index="8" modelUID="jetbrains.mps.generator@java_stub" version="-1" />
  <visible index="2" modelUID="jetbrains.mps.bootstrap.structureLanguage.structure" />
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept" id="1186771508849">
    <property name="name" value="QueriesUtil" />
    <node role="staticField" type="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" id="1210358696034">
      <property name="name" value="CELL_READABLE_ID" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility" id="1210358696035" />
      <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1210358699882">
        <link role="classifier" targetNodeId="5.~Object" resolveInfo="Object" />
      </node>
      <node role="initializer" type="jetbrains.mps.baseLanguage.structure.NewExpression" id="1210358714852">
        <link role="baseMethodDeclaration" targetNodeId="5.~Object.&lt;init&gt;()" resolveInfo="Object" />
      </node>
    </node>
    <node role="staticMethod" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" id="1186771518038">
      <property name="name" value="getGeneratedClassByContainingRoot" />
      <node role="returnType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1186771523542" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1186771518040" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1186771518041">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1186771602770">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1186771602771">
            <property name="name" value="containingRoot" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1186771602772" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227894462">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1186771587249">
                <link role="variableDeclaration" targetNodeId="1186771576684" resolveInfo="inputNode" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetContainingRootOperation" id="1186771598035" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1186771609165">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1208995323900">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1186771845387">
              <link role="variableDeclaration" targetNodeId="1186771613135" resolveInfo="generator" />
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1208995323901">
              <link role="baseMethodDeclaration" targetNodeId="1.~ITemplateGenerator.findOutputNodeByInputNodeAndMappingName(jetbrains.mps.smodel.SNode,java.lang.String):jetbrains.mps.smodel.SNode" resolveInfo="findOutputNodeByInputNodeAndMappingName" />
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1186771845385">
                <link role="variableDeclaration" targetNodeId="1186771602771" resolveInfo="containingRoot" />
              </node>
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1186771845386">
                <property name="value" value="generatedClass" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1186771576684">
        <property name="name" value="inputNode" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1186771576685" />
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1186771613135">
        <property name="name" value="generator" />
        <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1186771634075">
          <link role="classifier" targetNodeId="1.~ITemplateGenerator" resolveInfo="ITemplateGenerator" />
        </node>
      </node>
    </node>
    <node role="staticMethod" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" id="1186773435542">
      <property name="name" value="getGeneratedClassByCellContainer" />
      <node role="returnType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1186773443483" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1186773435544" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1186773435545">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1186773834833">
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227939604">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227895850">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1186773840227">
                <link role="variableDeclaration" targetNodeId="1186773722859" resolveInfo="inputCellModel" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetParentOperation" id="1186773856949" />
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1186773860860">
              <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1186773886237">
                <link role="conceptDeclaration" targetNodeId="3.1073390211982" />
              </node>
            </node>
          </node>
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1186773834835">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1186773915894">
              <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227890953">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1186773921631">
                  <link role="variableDeclaration" targetNodeId="1186773722859" resolveInfo="inputCellModel" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsRoleOperation" id="1186773931291">
                  <link role="conceptOfParent" targetNodeId="3.1073390211982" />
                  <link role="linkInParent" targetNodeId="3.1140524464359" />
                </node>
              </node>
              <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1186773915896">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1186773976121">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1208995329079">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1186773976125">
                      <link role="variableDeclaration" targetNodeId="1186773787502" resolveInfo="generator" />
                    </node>
                    <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1208995329080">
                      <link role="baseMethodDeclaration" targetNodeId="1.~ITemplateGenerator.findOutputNodeByInputNodeAndMappingName(jetbrains.mps.smodel.SNode,java.lang.String):jetbrains.mps.smodel.SNode" resolveInfo="findOutputNodeByInputNodeAndMappingName" />
                      <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227890028">
                        <node role="operand" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1186774967964">
                          <link role="variableDeclaration" targetNodeId="1186773722859" resolveInfo="inputCellModel" />
                        </node>
                        <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetParentOperation" id="1186774967963" />
                      </node>
                      <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1186773976124">
                        <property name="value" value="nodeListHandler" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1186775053216">
          <property name="value" value="otherwise get 'generatedClass' by enclosing 'editor component'" />
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1186775150069">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1186775150070">
            <property name="name" value="ancestor" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1186775150071">
              <link role="concept" targetNodeId="3.1080736578640" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227913967">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1186775112891">
                <link role="variableDeclaration" targetNodeId="1186773722859" resolveInfo="inputCellModel" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAncestorOperation" id="1186775118223">
                <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Concept" id="1186775123865">
                  <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1208995357732">
                    <link role="conceptDeclaration" targetNodeId="3.1080736578640" resolveInfo="BaseEditorComponent" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1186775156401">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1208995332348">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1186775166002">
              <link role="variableDeclaration" targetNodeId="1186773787502" resolveInfo="generator" />
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1208995332349">
              <link role="baseMethodDeclaration" targetNodeId="1.~ITemplateGenerator.findOutputNodeByInputNodeAndMappingName(jetbrains.mps.smodel.SNode,java.lang.String):jetbrains.mps.smodel.SNode" resolveInfo="findOutputNodeByInputNodeAndMappingName" />
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1186775185425">
                <link role="variableDeclaration" targetNodeId="1186775150070" resolveInfo="ancestor" />
              </node>
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1186775166001">
                <property name="value" value="generatedClass" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1186773722859">
        <property name="name" value="inputCellModel" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1186773722860">
          <link role="concept" targetNodeId="3.1073389214265" />
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1186773787502">
        <property name="name" value="generator" />
        <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1186773795832">
          <link role="classifier" targetNodeId="1.~ITemplateGenerator" resolveInfo="ITemplateGenerator" />
        </node>
      </node>
    </node>
    <node role="staticMethod" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" id="1186775920903">
      <property name="name" value="getGeneratedClassByAncestor" />
      <node role="returnType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1186775920904" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1186775920905" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1186775920906">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1186776238853">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1186776238854">
            <property name="name" value="ancestors" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeListType" id="1186776238855" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227842350">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1186775953339">
                <link role="variableDeclaration" targetNodeId="1186775920918" resolveInfo="inputNode" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAncestorsOperation" id="1186775959593" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1186776253122">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1186776253123">
            <property name="name" value="outputClasses" />
            <node role="type" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.SequenceType" id="1186776253124">
              <node role="elementType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1186776253125" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1208995339510">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1186776238856">
                <link role="variableDeclaration" targetNodeId="1186776238854" resolveInfo="ancestors" />
              </node>
              <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.MappingOperation" id="1186776072208">
                <node role="mapper" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.MapperBlock" id="1186776072209">
                  <node role="defaultInputElement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.DefaultInputElement" id="1186776072210">
                    <property name="name" value="it" />
                  </node>
                  <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1186776072211">
                    <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1186776164209">
                      <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1186776164210">
                        <property name="name" value="output" />
                        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1186776171056" />
                        <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1208995333956">
                          <node role="operand" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1186776082370">
                            <link role="variableDeclaration" targetNodeId="1186775920920" resolveInfo="generator" />
                          </node>
                          <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1208995333957">
                            <link role="baseMethodDeclaration" targetNodeId="1.~ITemplateGenerator.findOutputNodeByInputNodeAndMappingName(jetbrains.mps.smodel.SNode,java.lang.String):jetbrains.mps.smodel.SNode" resolveInfo="findOutputNodeByInputNodeAndMappingName" />
                            <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.ClosureParameterReference" id="1186776097186">
                              <link role="closureParameter" targetNodeId="1186776072210" resolveInfo="it" />
                            </node>
                            <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1186776106626">
                              <property name="value" value="generatedClass" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1186776176995">
                      <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1186776176996">
                        <node role="statement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.TraversalYieldStatement" id="1186776211051">
                          <node role="value" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1186776212881">
                            <link role="variableDeclaration" targetNodeId="1186776164210" resolveInfo="output" />
                          </node>
                        </node>
                        <node role="statement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.TraversalStopStatement" id="1186776216961" />
                      </node>
                      <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1186776183641">
                        <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1186776185175" />
                        <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1186776181577">
                          <link role="variableDeclaration" targetNodeId="1186776164210" resolveInfo="output" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1186776271252">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1208995338460">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1186776273629">
              <link role="variableDeclaration" targetNodeId="1186776253123" resolveInfo="outputClasses" />
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.GetFirstOperation" id="1186776276756" />
          </node>
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1186775920918">
        <property name="name" value="inputNode" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1186775920919" />
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1186775920920">
        <property name="name" value="generator" />
        <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1186775920921">
          <link role="classifier" targetNodeId="1.~ITemplateGenerator" resolveInfo="ITemplateGenerator" />
        </node>
      </node>
    </node>
    <node role="staticMethod" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" id="1189585064962">
      <property name="name" value="findCellKeyMapItemConstructor" />
      <node role="returnType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1189585087744">
        <link role="concept" targetNodeId="4.1068580123140" />
      </node>
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1189585064964" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1189585064965">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1189585233684">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1189585233685">
            <property name="name" value="itemClass" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1189585237867" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1208995312854">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1189585183956">
                <link role="variableDeclaration" targetNodeId="1189585156438" resolveInfo="generator" />
              </node>
              <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1208995312855">
                <link role="baseMethodDeclaration" targetNodeId="1.~ITemplateGenerator.findOutputNodeByInputNodeAndMappingName(jetbrains.mps.smodel.SNode,java.lang.String):jetbrains.mps.smodel.SNode" resolveInfo="findOutputNodeByInputNodeAndMappingName" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1189585220600">
                  <link role="variableDeclaration" targetNodeId="1189585159188" resolveInfo="item" />
                </node>
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1189585221989">
                  <property name="value" value="generatedClass" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1189585242008">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1208995339233">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227926259">
              <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1189585242586">
                <link role="concept" targetNodeId="4.1068390468198" />
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1189585242009">
                  <link role="variableDeclaration" targetNodeId="1189585233685" resolveInfo="itemClass" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1189585248083">
                <link role="link" targetNodeId="4.1068390468201" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.GetFirstOperation" id="1189585263547" />
          </node>
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1189585156438">
        <property name="name" value="generator" />
        <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1189585156439">
          <link role="classifier" targetNodeId="1.~ITemplateGenerator" resolveInfo="ITemplateGenerator" />
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1189585159188">
        <property name="name" value="item" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1189585171143">
          <link role="concept" targetNodeId="3.1136916919141" />
        </node>
      </node>
    </node>
    <node role="staticMethod" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" id="1189585733348">
      <property name="name" value="keyMapActionClassName" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1189585751182">
        <link role="classifier" targetNodeId="5.~String" resolveInfo="String" />
      </node>
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1189585733350" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1189585733351">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1189585802292">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1189585802293">
            <property name="name" value="keyMapDeclaration" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1189585802294">
              <link role="concept" targetNodeId="3.1081293058843" />
            </node>
            <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1189585790873">
              <link role="concept" targetNodeId="3.1081293058843" />
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227890458">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1189585782073">
                  <link role="variableDeclaration" targetNodeId="1189585755476" resolveInfo="keyMapItem" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetParentOperation" id="1189585787001" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1189585806715">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1189585806716">
            <property name="name" value="index" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.IntegerType" id="1189585806717" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1189585810180">
              <property name="value" value="0" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachStatement" id="1189585833182">
          <node role="variable" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachVariable" id="1189585833183">
            <property name="name" value="curItem" />
          </node>
          <node role="inputSequence" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227849629">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1189585838693">
              <link role="variableDeclaration" targetNodeId="1189585802293" resolveInfo="keyMapDeclaration" />
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1189585846207">
              <link role="link" targetNodeId="3.1136930944870" />
            </node>
          </node>
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1189585833185">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1189585858333">
              <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1189585858334">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.BreakStatement" id="1189585871790" />
              </node>
              <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1189585861160">
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1189585863897">
                  <link role="variableDeclaration" targetNodeId="1189585755476" resolveInfo="keyMapItem" />
                </node>
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachVariableReference" id="1189585860420">
                  <link role="variable" targetNodeId="1189585833183" resolveInfo="curItem" />
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1189585878566">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1189585879262">
                <node role="rValue" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="1189585881497">
                  <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1189585882253">
                    <property name="value" value="1" />
                  </node>
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1189585880649">
                    <link role="variableDeclaration" targetNodeId="1189585806716" resolveInfo="index" />
                  </node>
                </node>
                <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1189585878567">
                  <link role="variableDeclaration" targetNodeId="1189585806716" resolveInfo="index" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1189585967515">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="1189585968515">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="1189585968516">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1189585968517">
                <link role="variableDeclaration" targetNodeId="1189585806716" resolveInfo="index" />
              </node>
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1189585968518">
                <property name="value" value="_Action" />
              </node>
            </node>
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227895558">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1189585968521">
                <link role="variableDeclaration" targetNodeId="1189585802293" resolveInfo="keyMapDeclaration" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1189585974237">
                <link role="property" targetNodeId="6.1169194664001" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1189585755476">
        <property name="name" value="keyMapItem" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1189585755477">
          <link role="concept" targetNodeId="3.1136916919141" />
        </node>
      </node>
    </node>
    <node role="staticMethod" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" id="1210358430919">
      <property name="name" value="getCellReadableId" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1210358439439">
        <link role="classifier" targetNodeId="5.~String" resolveInfo="String" />
      </node>
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1210358430921" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1210358430922">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1210358774634">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1210358774635">
            <property name="name" value="readableId" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1210358789064">
              <link role="classifier" targetNodeId="5.~String" resolveInfo="String" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.CastExpression" id="1210358813948">
              <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1210358813949">
                <link role="classifier" targetNodeId="5.~String" resolveInfo="String" />
              </node>
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1210358813950">
                <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SemanticDowncastExpression" id="1210358813951">
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1210358813952">
                    <link role="variableDeclaration" targetNodeId="1210358727338" resolveInfo="cellModel" />
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1210358813953">
                  <link role="baseMethodDeclaration" targetNodeId="7.~SNode.getUserObject(java.lang.Object):java.lang.Object" resolveInfo="getUserObject" />
                  <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalStaticFieldReference" id="1210358813954">
                    <link role="variableDeclaration" targetNodeId="1210358696034" resolveInfo="CELL_READABLE_ID" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1210358826409">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1210358826410">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1210358878488">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1210358881052">
                <node role="rValue" type="jetbrains.mps.baseLanguage.structure.LocalStaticMethodCall" id="1210358882711">
                  <link role="baseMethodDeclaration" targetNodeId="1210358844653" resolveInfo="createCellReadableId" />
                  <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1210358885572">
                    <link role="variableDeclaration" targetNodeId="1210358727338" resolveInfo="cellModel" />
                  </node>
                </node>
                <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1210358878489">
                  <link role="variableDeclaration" targetNodeId="1210358774635" resolveInfo="readableId" />
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1210359785046">
              <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1210359785047">
                <property name="name" value="namedAncestor" />
                <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1210359785048">
                  <link role="concept" targetNodeId="6.1169194658468" resolveInfo="INamedConcept" />
                </node>
                <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1210359785049">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1210359785050">
                    <link role="variableDeclaration" targetNodeId="1210358727338" resolveInfo="cellModel" />
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAncestorOperation" id="1210359785051">
                    <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Concept" id="1210359785052">
                      <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1210359785053">
                        <link role="conceptDeclaration" targetNodeId="6.1169194658468" resolveInfo="INamedConcept" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1210359791243">
              <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1210359791244">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1210360103993">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1210360125151">
                    <node role="rValue" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="1210360136389">
                      <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1210360144189">
                        <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1210360144190">
                          <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1210360144191">
                            <link role="variableDeclaration" targetNodeId="1210359785047" resolveInfo="namedAncestor" />
                          </node>
                          <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1210360144192">
                            <link role="property" targetNodeId="6.1169194664001" resolveInfo="name" />
                          </node>
                        </node>
                        <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1210360144193">
                          <link role="baseMethodDeclaration" targetNodeId="5.~String.hashCode():int" resolveInfo="hashCode" />
                        </node>
                      </node>
                      <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1210360129185">
                        <link role="variableDeclaration" targetNodeId="1210358774635" resolveInfo="readableId" />
                      </node>
                    </node>
                    <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1210360103994">
                      <link role="variableDeclaration" targetNodeId="1210358774635" resolveInfo="readableId" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="condition" type="jetbrains.mps.baseLanguage.structure.AndExpression" id="1210359833570">
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1210359836764">
                  <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1210359837704" />
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1210359834902">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1210359834903">
                      <link role="variableDeclaration" targetNodeId="1210359785047" resolveInfo="namedAncestor" />
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1210359834904">
                      <link role="property" targetNodeId="6.1169194664001" resolveInfo="name" />
                    </node>
                  </node>
                </node>
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1210359794764">
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1210359793169">
                    <link role="variableDeclaration" targetNodeId="1210359785047" resolveInfo="namedAncestor" />
                  </node>
                  <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1210359797376" />
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1210360151726">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1210360155650">
                <node role="rValue" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="1210360159295">
                  <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1210360160860">
                    <property name="value" value="_0" />
                  </node>
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1210360157810">
                    <link role="variableDeclaration" targetNodeId="1210358774635" resolveInfo="readableId" />
                  </node>
                </node>
                <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1210360151727">
                  <link role="variableDeclaration" targetNodeId="1210358774635" resolveInfo="readableId" />
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1210360222459">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1210360224539">
                <node role="rValue" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1210360232948">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1210360232949">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1210360232950">
                      <link role="variableDeclaration" targetNodeId="1210360175705" resolveInfo="generator" />
                    </node>
                    <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1210360232951">
                      <link role="baseMethodDeclaration" targetNodeId="1.~ITemplateGenerator.getGeneratorSessionContext():jetbrains.mps.generator.GenerationSessionContext" resolveInfo="getGeneratorSessionContext" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1210360232952">
                    <link role="baseMethodDeclaration" targetNodeId="8.~GenerationSessionContext.createUniqueName(java.lang.String):java.lang.String" resolveInfo="createUniqueName" />
                    <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1210360232953">
                      <link role="variableDeclaration" targetNodeId="1210358774635" resolveInfo="readableId" />
                    </node>
                  </node>
                </node>
                <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1210360222460">
                  <link role="variableDeclaration" targetNodeId="1210358774635" resolveInfo="readableId" />
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1210360247455">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1210360254321">
                <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SemanticDowncastExpression" id="1210360253335">
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1210360247456">
                    <link role="variableDeclaration" targetNodeId="1210358727338" resolveInfo="cellModel" />
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1210360265371">
                  <link role="baseMethodDeclaration" targetNodeId="7.~SNode.putUserObject(java.lang.Object,java.lang.Object):void" resolveInfo="putUserObject" />
                  <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalStaticFieldReference" id="1210360268169">
                    <link role="variableDeclaration" targetNodeId="1210358696034" resolveInfo="CELL_READABLE_ID" />
                  </node>
                  <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1210360273296">
                    <link role="variableDeclaration" targetNodeId="1210358774635" resolveInfo="readableId" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1210358831039">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1210358832464" />
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1210358828944">
              <link role="variableDeclaration" targetNodeId="1210358774635" resolveInfo="readableId" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1210358901746">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1210358903404">
            <link role="variableDeclaration" targetNodeId="1210358774635" resolveInfo="readableId" />
          </node>
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1210358727338">
        <property name="name" value="cellModel" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1210358727339">
          <link role="concept" targetNodeId="3.1073389214265" resolveInfo="EditorCellModel" />
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1210360175705">
        <property name="name" value="generator" />
        <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1210360180238">
          <link role="classifier" targetNodeId="1.~ITemplateGenerator" resolveInfo="ITemplateGenerator" />
        </node>
      </node>
    </node>
    <node role="staticMethod" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" id="1210358844653">
      <property name="name" value="createCellReadableId" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1210358909311">
        <link role="classifier" targetNodeId="5.~String" resolveInfo="String" />
      </node>
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility" id="1210358849282" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1210358844656">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1210359382474">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1210359382475">
            <property name="name" value="suffix" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1210359382476">
              <link role="classifier" targetNodeId="5.~String" resolveInfo="String" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1210359394760">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1210359394761">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1210359394762">
                  <link role="variableDeclaration" targetNodeId="1210358864033" resolveInfo="cellModel" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetConceptOperation" id="1210359394763" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1210359394764">
                <link role="property" targetNodeId="6.1169194664001" resolveInfo="name" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1210359410437">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1210359410438">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1210359435016">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1210359438471">
                <node role="rValue" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1210359445975">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1210359441443">
                    <link role="variableDeclaration" targetNodeId="1210359382475" resolveInfo="suffix" />
                  </node>
                  <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1210359472603">
                    <link role="baseMethodDeclaration" targetNodeId="5.~String.substring(int):java.lang.String" resolveInfo="substring" />
                    <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1210359480871">
                      <node role="operand" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1210359478839">
                        <property name="value" value="CellModel_" />
                      </node>
                      <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1210359481687">
                        <link role="baseMethodDeclaration" targetNodeId="5.~String.length():int" resolveInfo="length" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1210359435017">
                  <link role="variableDeclaration" targetNodeId="1210359382475" resolveInfo="suffix" />
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1210359487845">
              <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1210359487846">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1210359512329">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1210359515096">
                    <node role="rValue" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="1210359518288">
                      <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1210359519744">
                        <property name="value" value="Cell" />
                      </node>
                      <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1210359516959">
                        <link role="variableDeclaration" targetNodeId="1210359382475" resolveInfo="suffix" />
                      </node>
                    </node>
                    <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1210359512330">
                      <link role="variableDeclaration" targetNodeId="1210359382475" resolveInfo="suffix" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotExpression" id="1210359507339">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1210359507340">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1210359507341">
                    <link role="variableDeclaration" targetNodeId="1210359382475" resolveInfo="suffix" />
                  </node>
                  <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1210359507342">
                    <link role="baseMethodDeclaration" targetNodeId="5.~String.endsWith(java.lang.String):boolean" resolveInfo="endsWith" />
                    <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1210359507343">
                      <property name="value" value="Cell" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1210359416880">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1210359415613">
              <link role="variableDeclaration" targetNodeId="1210359382475" resolveInfo="suffix" />
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1210359420702">
              <link role="baseMethodDeclaration" targetNodeId="5.~String.startsWith(java.lang.String):boolean" resolveInfo="startsWith" />
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1210359423547">
                <property name="value" value="CellModel_" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1210359169652">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1210359169653">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1210359193802">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="1210359221081">
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1210359533182">
                  <link role="variableDeclaration" targetNodeId="1210359382475" resolveInfo="suffix" />
                </node>
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1210359214421">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1210359211026">
                    <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1210359204899">
                      <link role="concept" targetNodeId="3.1073389658414" resolveInfo="CellModel_Property" />
                      <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1210359197070">
                        <link role="variableDeclaration" targetNodeId="1210358864033" resolveInfo="cellModel" />
                      </node>
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1210359212904">
                      <link role="link" targetNodeId="3.1073389964684" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1210359215939">
                    <link role="property" targetNodeId="6.1169194664001" resolveInfo="name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1210359173844">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1210359172031">
              <link role="variableDeclaration" targetNodeId="1210358864033" resolveInfo="cellModel" />
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1210359176191">
              <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1210359180004">
                <link role="conceptDeclaration" targetNodeId="3.1073389658414" resolveInfo="CellModel_Property" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1210359263632">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1210359263633">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1210359263634">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="1210359263635">
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1210359538824">
                  <link role="variableDeclaration" targetNodeId="1210359382475" resolveInfo="suffix" />
                </node>
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1210359263637">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1210359263638">
                    <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1210359263639">
                      <link role="concept" targetNodeId="3.1088013125922" resolveInfo="CellModel_RefCell" />
                      <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1210359263640">
                        <link role="variableDeclaration" targetNodeId="1210358864033" resolveInfo="cellModel" />
                      </node>
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1210359280320">
                      <link role="link" targetNodeId="3.1088013239202" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1210359282680">
                    <link role="property" targetNodeId="2v.1071599776563" resolveInfo="role" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1210359263643">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1210359263644">
              <link role="variableDeclaration" targetNodeId="1210358864033" resolveInfo="cellModel" />
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1210359263645">
              <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1210359268272">
                <link role="conceptDeclaration" targetNodeId="3.1088013125922" resolveInfo="CellModel_RefCell" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1210359631294">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1210359631295">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1210359631296">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="1210359631297">
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1210359631298">
                  <link role="variableDeclaration" targetNodeId="1210359382475" resolveInfo="suffix" />
                </node>
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1210359631299">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1210359631300">
                    <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1210359631301">
                      <link role="concept" targetNodeId="3.1073389882823" resolveInfo="CellModel_RefNode" />
                      <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1210359631302">
                        <link role="variableDeclaration" targetNodeId="1210358864033" resolveInfo="cellModel" />
                      </node>
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1210359644795">
                      <link role="link" targetNodeId="3.1073389882824" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1210359631304">
                    <link role="property" targetNodeId="2v.1071599776563" resolveInfo="role" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1210359631305">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1210359631306">
              <link role="variableDeclaration" targetNodeId="1210358864033" resolveInfo="cellModel" />
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1210359631307">
              <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1210359638169">
                <link role="conceptDeclaration" targetNodeId="3.1073389882823" resolveInfo="CellModel_RefNode" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1210359664780">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1210359664781">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1210359664782">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="1210359664783">
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1210359664784">
                  <link role="variableDeclaration" targetNodeId="1210359382475" resolveInfo="suffix" />
                </node>
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1210359664785">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1210359664786">
                    <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1210359664787">
                      <link role="concept" targetNodeId="3.1073390211982" resolveInfo="CellModel_RefNodeList" />
                      <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1210359664788">
                        <link role="variableDeclaration" targetNodeId="1210358864033" resolveInfo="cellModel" />
                      </node>
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1210359676656">
                      <link role="link" targetNodeId="3.1073390211987" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1210359664790">
                    <link role="property" targetNodeId="2v.1071599776563" resolveInfo="role" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1210359664791">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1210359664792">
              <link role="variableDeclaration" targetNodeId="1210358864033" resolveInfo="cellModel" />
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1210359664793">
              <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1210359670937">
                <link role="conceptDeclaration" targetNodeId="3.1073390211982" resolveInfo="CellModel_RefNodeList" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1210358992547">
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1210358998613">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1210358996096">
              <link role="variableDeclaration" targetNodeId="1210358864033" resolveInfo="cellModel" />
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1210359000804">
              <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1210359006539">
                <link role="conceptDeclaration" targetNodeId="3.1078939183254" resolveInfo="CellModel_Component" />
              </node>
            </node>
          </node>
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1210358992549">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1210359024696">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="1210359065319">
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1210359543356">
                  <link role="variableDeclaration" targetNodeId="1210359382475" resolveInfo="suffix" />
                </node>
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1210359059721">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1210359041451">
                    <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1210359033652">
                      <link role="concept" targetNodeId="3.1078939183254" resolveInfo="CellModel_Component" />
                      <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1210359032386">
                        <link role="variableDeclaration" targetNodeId="1210358864033" resolveInfo="cellModel" />
                      </node>
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1210359044595">
                      <link role="link" targetNodeId="3.1078939183255" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1210359061302">
                    <link role="property" targetNodeId="6.1169194664001" resolveInfo="name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1210359709924">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1210359712848">
            <link role="variableDeclaration" targetNodeId="1210359382475" resolveInfo="suffix" />
          </node>
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1210358864033">
        <property name="name" value="cellModel" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1210358864034">
          <link role="concept" targetNodeId="3.1073389214265" resolveInfo="EditorCellModel" />
        </node>
      </node>
    </node>
    <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1186771508850" />
  </node>
</model>


<?xml version="1.0" encoding="UTF-8"?>
<model name="jetbrains.mps.bootstrap.structureLanguage.findUsages">
  <persistence version="1"/>
  <refactoringHistory/>
  <language namespace="jetbrains.mps.bootstrap.findUsagesLanguage">
    <languageAspect modelUID="jetbrains.mps.bootstrap.findUsagesLanguage.editor" version="-1"/>
    <languageAspect modelUID="jetbrains.mps.bootstrap.findUsagesLanguage.actions" version="-1"/>
    <languageAspect modelUID="jetbrains.mps.bootstrap.findUsagesLanguage.constraints" version="-1"/>
    <languageAspect modelUID="jetbrains.mps.bootstrap.findUsagesLanguage.helgins" version="-1"/>
    <languageAspect modelUID="jetbrains.mps.bootstrap.findUsagesLanguage.structure" version="-1"/>
  </language>
  <language namespace="jetbrains.mps.baseLanguage">
    <languageAspect modelUID="jetbrains.mps.baseLanguage.intentions" version="-1"/>
    <languageAspect modelUID="jetbrains.mps.baseLanguage.scripts" version="-1"/>
    <languageAspect modelUID="jetbrains.mps.baseLanguage.editor" version="-1"/>
    <languageAspect modelUID="jetbrains.mps.baseLanguage.structure" version="-1"/>
    <languageAspect modelUID="jetbrains.mps.baseLanguage.helgins" version="-1"/>
    <languageAspect modelUID="jetbrains.mps.baseLanguage.constraints" version="-1"/>
    <languageAspect modelUID="jetbrains.mps.baseLanguage.actions" version="-1"/>
    <languageAspect modelUID="jetbrains.mps.baseLanguage.findUsages" version="-1"/>
  </language>
  <language namespace="jetbrains.mps.bootstrap.structureLanguage">
    <languageAspect modelUID="jetbrains.mps.bootstrap.structureLanguage.scripts" version="-1"/>
    <languageAspect modelUID="jetbrains.mps.bootstrap.structureLanguage.constraints" version="-1"/>
    <languageAspect modelUID="jetbrains.mps.bootstrap.structureLanguage.editor" version="-1"/>
    <languageAspect modelUID="jetbrains.mps.bootstrap.structureLanguage.structure" version="-1"/>
    <languageAspect modelUID="jetbrains.mps.bootstrap.structureLanguage.findUsages" version="-1"/>
    <languageAspect modelUID="jetbrains.mps.bootstrap.structureLanguage.actions" version="-1"/>
  </language>
  <language namespace="jetbrains.mps.bootstrap.smodelLanguage">
    <languageAspect modelUID="jetbrains.mps.bootstrap.smodelLanguage.helgins" version="-1"/>
    <languageAspect modelUID="jetbrains.mps.bootstrap.smodelLanguage.editor" version="-1"/>
    <languageAspect modelUID="jetbrains.mps.bootstrap.smodelLanguage.intentions" version="-1"/>
    <languageAspect modelUID="jetbrains.mps.bootstrap.smodelLanguage.scripts" version="-1"/>
    <languageAspect modelUID="jetbrains.mps.bootstrap.smodelLanguage.constraints" version="-1"/>
    <languageAspect modelUID="jetbrains.mps.bootstrap.smodelLanguage.actions" version="-1"/>
    <languageAspect modelUID="jetbrains.mps.bootstrap.smodelLanguage.structure" version="-1"/>
  </language>
  <maxImportIndex value="9"/>
  <import index="2" modelUID="jetbrains.mps.core.structure" version="-1"/>
  <import index="3" modelUID="jetbrains.mps.bootstrap.structureLanguage.structure" version="-1"/>
  <import index="5" modelUID="jetbrains.mps.findUsages@java_stub" version="-1"/>
  <import index="6" modelUID="java.util@java_stub" version="-1"/>
  <import index="7" modelUID="jetbrains.mps.smodel@java_stub" version="-1"/>
  <import index="8" modelUID="jetbrains.mps.ide.findusages.model.searchquery@java_stub" version="-1"/>
  <import index="9" modelUID="jetbrains.mps.ide.findusages.model.result@java_stub" version="-1"/>
  <node type="jetbrains.mps.bootstrap.findUsagesLanguage.structure.FinderDeclaration" id="1197632773078">
    <property name="name" value="ConceptInstances"/>
    <property name="description" value="Concept Instances"/>
    <property name="isVisible" value="true"/>
    <link role="forConcept" targetNodeId="2.1133920641626" resolveInfo="BaseConcept"/>
    <node role="isApplicableFunction" type="jetbrains.mps.bootstrap.findUsagesLanguage.structure.IsApplicableBlock"
          id="1197632773079">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1197632773080">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1197633780922">
          <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression"
                id="1197633781565">
            <node role="nodeOperation"
                  type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1197633781566">
              <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference"
                    id="1197633781567">
                <link role="conceptDeclaration" targetNodeId="3.1071489090640" resolveInfo="ConceptDeclaration"/>
              </node>
            </node>
            <node role="leftExpression"
                  type="jetbrains.mps.bootstrap.findUsagesLanguage.structure.ConceptFunctionParameter_node"
                  id="1197633781568"/>
          </node>
        </node>
      </node>
    </node>
    <node role="findFunction" type="jetbrains.mps.bootstrap.findUsagesLanguage.structure.FindBlock" id="1197632773081">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1197632773082">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement"
              id="1197634574462">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration"
                id="1197634574463">
            <property name="name" value="resNodes"/>
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1197634574464">
              <link role="classifier" targetNodeId="6.~List" resolveInfo="List"/>
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1197634602013">
                <link role="classifier" targetNodeId="7.~SNode" resolveInfo="SNode"/>
              </node>
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1197634635704">
              <link role="baseMethodDeclaration"
                    targetNodeId="5.~FindUsagesManager.findInstances(jetbrains.mps.smodel.SNode,jetbrains.mps.smodel.IScope):java.util.List"
                    resolveInfo="findInstances"/>
              <node role="instance" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1197634635705">
                <link role="baseMethodDeclaration"
                      targetNodeId="5.~FindUsagesManager.getInstance():jetbrains.mps.findUsages.FindUsagesManager"
                      resolveInfo="getInstance"/>
                <link role="classConcept" targetNodeId="5.~FindUsagesManager" resolveInfo="FindUsagesManager"/>
              </node>
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall"
                    id="1197634635706">
                <link role="baseMethodDeclaration" targetNodeId="7.~SNodePointer.getNode():jetbrains.mps.smodel.SNode"
                      resolveInfo="getNode"/>
                <node role="instance" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1197634635707">
                  <link role="baseMethodDeclaration"
                        targetNodeId="8.~SearchQuery.getNodePointer():jetbrains.mps.smodel.SNodePointer"
                        resolveInfo="getNodePointer"/>
                  <node role="instance"
                        type="jetbrains.mps.bootstrap.findUsagesLanguage.structure.ConceptFunctionParameter_SearchQuery"
                        id="1197634635708"/>
                </node>
              </node>
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall"
                    id="1197634635709">
                <link role="baseMethodDeclaration" targetNodeId="8.~SearchQuery.getScope():jetbrains.mps.smodel.IScope"
                      resolveInfo="getScope"/>
                <node role="instance"
                      type="jetbrains.mps.bootstrap.findUsagesLanguage.structure.ConceptFunctionParameter_SearchQuery"
                      id="1197634635710"/>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ForeachStatement" id="1197635106703">
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1197635106704">
            <node role="statement" type="jetbrains.mps.bootstrap.findUsagesLanguage.structure.ResultStatement"
                  id="1200268665345">
              <node role="foundResult" type="jetbrains.mps.baseLanguage.structure.NewExpression" id="1200268665879">
                <link role="baseMethodDeclaration"
                      targetNodeId="9.~SearchResult.&lt;init&gt;(jetbrains.mps.smodel.SNodePointer,java.lang.String)"
                      resolveInfo="SearchResult"/>
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.NewExpression"
                      id="1200268665880">
                  <link role="baseMethodDeclaration"
                        targetNodeId="7.~SNodePointer.&lt;init&gt;(jetbrains.mps.smodel.SNode)"
                        resolveInfo="SNodePointer"/>
                  <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference"
                        id="1200268665881">
                    <link role="variableDeclaration" targetNodeId="1197635106707" resolveInfo="node"/>
                  </node>
                </node>
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.StringLiteral"
                      id="1200268665882">
                  <property name="value" value="Concept Instances"/>
                </node>
              </node>
              <node role="foundNode" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference"
                    id="1200306749512">
                <link role="variableDeclaration" targetNodeId="1197635106707" resolveInfo="node"/>
              </node>
              <node role="category" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1200306752294">
                <property name="value" value="Concept Instances"/>
              </node>
            </node>
          </node>
          <node role="iterable" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1197635117960">
            <link role="variableDeclaration" targetNodeId="1197634574463" resolveInfo="resNodes"/>
          </node>
          <node role="variable" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1197635106707">
            <property name="name" value="node"/>
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1197635110178">
              <link role="classifier" targetNodeId="7.~SNode" resolveInfo="SNode"/>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.bootstrap.findUsagesLanguage.structure.NodeStatement"
              id="1200268657466">
          <node role="foundNode" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1200306780391">
            <link role="baseMethodDeclaration" targetNodeId="7.~SNodePointer.getNode():jetbrains.mps.smodel.SNode"
                  resolveInfo="getNode"/>
            <node role="instance" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1200268657921">
              <link role="baseMethodDeclaration"
                    targetNodeId="8.~SearchQuery.getNodePointer():jetbrains.mps.smodel.SNodePointer"
                    resolveInfo="getNodePointer"/>
              <node role="instance"
                    type="jetbrains.mps.bootstrap.findUsagesLanguage.structure.ConceptFunctionParameter_SearchQuery"
                    id="1200268657922"/>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.findUsagesLanguage.structure.FinderDeclaration" id="1197636141662">
    <property name="name" value="NodeUsages"/>
    <property name="description" value="Node Usages"/>
    <property name="isVisible" value="true"/>
    <link role="forConcept" targetNodeId="2.1133920641626" resolveInfo="BaseConcept"/>
    <node role="isApplicableFunction" type="jetbrains.mps.bootstrap.findUsagesLanguage.structure.IsApplicableBlock"
          id="1197636141663">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1197636141664">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1197636172739">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1197636174851">
            <property name="value" value="true"/>
          </node>
        </node>
      </node>
    </node>
    <node role="findFunction" type="jetbrains.mps.bootstrap.findUsagesLanguage.structure.FindBlock" id="1197636141665">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1197636141666">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement"
              id="1197636333572">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration"
                id="1197636333573">
            <property name="name" value="resRefs"/>
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1197636333574">
              <link role="classifier" targetNodeId="6.~Set" resolveInfo="Set"/>
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1197636440259">
                <link role="classifier" targetNodeId="7.~SReference" resolveInfo="SReference"/>
              </node>
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1197636333576">
              <link role="baseMethodDeclaration"
                    targetNodeId="5.~FindUsagesManager.findUsages(jetbrains.mps.smodel.SNode,jetbrains.mps.smodel.IScope):java.util.Set"
                    resolveInfo="findUsages"/>
              <node role="instance" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1197636333577">
                <link role="baseMethodDeclaration"
                      targetNodeId="5.~FindUsagesManager.getInstance():jetbrains.mps.findUsages.FindUsagesManager"
                      resolveInfo="getInstance"/>
                <link role="classConcept" targetNodeId="5.~FindUsagesManager" resolveInfo="FindUsagesManager"/>
              </node>
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall"
                    id="1197636333578">
                <link role="baseMethodDeclaration" targetNodeId="7.~SNodePointer.getNode():jetbrains.mps.smodel.SNode"
                      resolveInfo="getNode"/>
                <node role="instance" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1197636333579">
                  <link role="baseMethodDeclaration"
                        targetNodeId="8.~SearchQuery.getNodePointer():jetbrains.mps.smodel.SNodePointer"
                        resolveInfo="getNodePointer"/>
                  <node role="instance"
                        type="jetbrains.mps.bootstrap.findUsagesLanguage.structure.ConceptFunctionParameter_SearchQuery"
                        id="1197636333580"/>
                </node>
              </node>
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall"
                    id="1197636333581">
                <link role="baseMethodDeclaration" targetNodeId="8.~SearchQuery.getScope():jetbrains.mps.smodel.IScope"
                      resolveInfo="getScope"/>
                <node role="instance"
                      type="jetbrains.mps.bootstrap.findUsagesLanguage.structure.ConceptFunctionParameter_SearchQuery"
                      id="1197636333582"/>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ForeachStatement" id="1197636333587">
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1197636333588">
            <node role="statement" type="jetbrains.mps.bootstrap.findUsagesLanguage.structure.ResultStatement"
                  id="1200268559644">
              <node role="foundResult" type="jetbrains.mps.baseLanguage.structure.NewExpression" id="1200268560256">
                <link role="baseMethodDeclaration"
                      targetNodeId="9.~SearchResult.&lt;init&gt;(jetbrains.mps.smodel.SNodePointer,java.lang.String)"
                      resolveInfo="SearchResult"/>
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.NewExpression"
                      id="1200268560257">
                  <link role="baseMethodDeclaration"
                        targetNodeId="7.~SNodePointer.&lt;init&gt;(jetbrains.mps.smodel.SNode)"
                        resolveInfo="SNodePointer"/>
                  <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall"
                        id="1200268560258">
                    <link role="baseMethodDeclaration"
                          targetNodeId="7.~SReference.getSourceNode():jetbrains.mps.smodel.SNode"
                          resolveInfo="getSourceNode"/>
                    <node role="instance" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference"
                          id="1200268560259">
                      <link role="variableDeclaration" targetNodeId="1197636333598" resolveInfo="reference"/>
                    </node>
                  </node>
                </node>
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.StringLiteral"
                      id="1200268560260">
                  <property name="value" value="Node Usages"/>
                </node>
              </node>
              <node role="foundNode" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1200306869048">
                <link role="baseMethodDeclaration"
                      targetNodeId="7.~SReference.getSourceNode():jetbrains.mps.smodel.SNode"
                      resolveInfo="getSourceNode"/>
                <node role="instance" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference"
                      id="1200306865435">
                  <link role="variableDeclaration" targetNodeId="1197636333598" resolveInfo="reference"/>
                </node>
              </node>
              <node role="category" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1200306873486">
                <property name="value" value="Node Usages"/>
              </node>
            </node>
          </node>
          <node role="iterable" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1197636333597">
            <link role="variableDeclaration" targetNodeId="1197636333573" resolveInfo="resNodes"/>
          </node>
          <node role="variable" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1197636333598">
            <property name="name" value="reference"/>
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1197636448384">
              <link role="classifier" targetNodeId="7.~SReference" resolveInfo="SReference"/>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.bootstrap.findUsagesLanguage.structure.NodeStatement"
              id="1200268536844">
          <node role="foundNode" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1200306857137">
            <link role="baseMethodDeclaration" targetNodeId="7.~SNodePointer.getNode():jetbrains.mps.smodel.SNode"
                  resolveInfo="getNode"/>
            <node role="instance" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1200268543314">
              <link role="baseMethodDeclaration"
                    targetNodeId="8.~SearchQuery.getNodePointer():jetbrains.mps.smodel.SNodePointer"
                    resolveInfo="getNodePointer"/>
              <node role="instance"
                    type="jetbrains.mps.bootstrap.findUsagesLanguage.structure.ConceptFunctionParameter_SearchQuery"
                    id="1200268543315"/>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.findUsagesLanguage.structure.FinderDeclaration" id="1198430852441">
    <property name="name" value="NodeAndDescendantsUsages"/>
    <property name="description" value="Node &amp; Descendants Usages"/>
    <property name="isVisible" value="true"/>
    <link role="forConcept" targetNodeId="2.1133920641626" resolveInfo="BaseConcept"/>
    <node role="isApplicableFunction" type="jetbrains.mps.bootstrap.findUsagesLanguage.structure.IsApplicableBlock"
          id="1198430852442">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1198430852443">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1198430904301">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1198430907272">
            <property name="value" value="true"/>
          </node>
        </node>
      </node>
    </node>
    <node role="findFunction" type="jetbrains.mps.bootstrap.findUsagesLanguage.structure.FindBlock" id="1198430852444">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1198430852445">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement"
              id="1198431665992">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration"
                id="1198431665993">
            <property name="name" value="nodes"/>
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1198431665994">
              <link role="classifier" targetNodeId="6.~Set" resolveInfo="Set"/>
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1198431665995">
                <link role="classifier" targetNodeId="7.~SNode" resolveInfo="SNode"/>
              </node>
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.NewExpression" id="1198431665996">
              <link role="baseMethodDeclaration" targetNodeId="6.~HashSet.&lt;init&gt;()" resolveInfo="HashSet"/>
              <node role="typeParameter" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1198431665997">
                <link role="classifier" targetNodeId="7.~SNode" resolveInfo="SNode"/>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.bootstrap.findUsagesLanguage.structure.NodeStatement"
              id="1200268986781">
          <node role="foundNode" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1200306846416">
            <link role="baseMethodDeclaration" targetNodeId="7.~SNodePointer.getNode():jetbrains.mps.smodel.SNode"
                  resolveInfo="getNode"/>
            <node role="instance" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1200268987080">
              <link role="baseMethodDeclaration"
                    targetNodeId="8.~SearchQuery.getNodePointer():jetbrains.mps.smodel.SNodePointer"
                    resolveInfo="getNodePointer"/>
              <node role="instance"
                    type="jetbrains.mps.bootstrap.findUsagesLanguage.structure.ConceptFunctionParameter_SearchQuery"
                    id="1200268987081"/>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1198431671842">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1198431675268">
            <link role="baseMethodDeclaration" targetNodeId="6.~Set.add(java.lang.Object):boolean" resolveInfo="add"/>
            <node role="instance" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1198431671843">
              <link role="variableDeclaration" targetNodeId="1198431665993" resolveInfo="nodes"/>
            </node>
            <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall"
                  id="1198431689416">
              <link role="baseMethodDeclaration" targetNodeId="7.~SNodePointer.getNode():jetbrains.mps.smodel.SNode"
                    resolveInfo="getNode"/>
              <node role="instance" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1198431683038">
                <link role="baseMethodDeclaration"
                      targetNodeId="8.~SearchQuery.getNodePointer():jetbrains.mps.smodel.SNodePointer"
                      resolveInfo="getNodePointer"/>
                <node role="instance"
                      type="jetbrains.mps.bootstrap.findUsagesLanguage.structure.ConceptFunctionParameter_SearchQuery"
                      id="1198431679066"/>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ForeachStatement" id="1198431610641">
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1198431610642">
            <node role="statement" type="jetbrains.mps.bootstrap.findUsagesLanguage.structure.NodeStatement"
                  id="1200268590887">
              <node role="foundNode" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference"
                    id="1200308320897">
                <link role="variableDeclaration" targetNodeId="1198431610645" resolveInfo="node"/>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1198431708793">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1198431711032">
                <link role="baseMethodDeclaration" targetNodeId="6.~Set.add(java.lang.Object):boolean"
                      resolveInfo="add"/>
                <node role="instance" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference"
                      id="1198431708794">
                  <link role="variableDeclaration" targetNodeId="1198431665993" resolveInfo="nodes"/>
                </node>
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference"
                      id="1198431713251">
                  <link role="variableDeclaration" targetNodeId="1198431610645" resolveInfo="node"/>
                </node>
              </node>
            </node>
          </node>
          <node role="variable" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1198431610645">
            <property name="name" value="node"/>
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1198431612522">
              <link role="classifier" targetNodeId="7.~SNode" resolveInfo="SNode"/>
            </node>
          </node>
          <node role="iterable" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1198431622383">
            <link role="baseMethodDeclaration" targetNodeId="7.~SNode.allChildren():java.util.List"
                  resolveInfo="allChildren"/>
            <node role="instance" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1198431622384">
              <link role="baseMethodDeclaration" targetNodeId="7.~SNodePointer.getNode():jetbrains.mps.smodel.SNode"
                    resolveInfo="getNode"/>
              <node role="instance" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1198431622385">
                <link role="baseMethodDeclaration"
                      targetNodeId="8.~SearchQuery.getNodePointer():jetbrains.mps.smodel.SNodePointer"
                      resolveInfo="getNodePointer"/>
                <node role="instance"
                      type="jetbrains.mps.bootstrap.findUsagesLanguage.structure.ConceptFunctionParameter_SearchQuery"
                      id="1198431622386"/>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1198431051277"/>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement"
              id="1198431046405">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration"
                id="1198431046406">
            <property name="name" value="resRefs"/>
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1198431046407">
              <link role="classifier" targetNodeId="6.~Set" resolveInfo="Set"/>
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1198431046408">
                <link role="classifier" targetNodeId="7.~SReference" resolveInfo="SReference"/>
              </node>
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1198431046409">
              <link role="baseMethodDeclaration"
                    targetNodeId="5.~FindUsagesManager.findUsages(java.util.Set,jetbrains.mps.smodel.IScope,jetbrains.mps.ide.progress.IAdaptiveProgressMonitor):java.util.Set"
                    resolveInfo="findUsages"/>
              <node role="instance" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1198431046410">
                <link role="classConcept" targetNodeId="5.~FindUsagesManager" resolveInfo="FindUsagesManager"/>
                <link role="baseMethodDeclaration"
                      targetNodeId="5.~FindUsagesManager.getInstance():jetbrains.mps.findUsages.FindUsagesManager"
                      resolveInfo="getInstance"/>
              </node>
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference"
                    id="1198431718643">
                <link role="variableDeclaration" targetNodeId="1198431665993" resolveInfo="nodes"/>
              </node>
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall"
                    id="1198431432805">
                <link role="baseMethodDeclaration" targetNodeId="8.~SearchQuery.getScope():jetbrains.mps.smodel.IScope"
                      resolveInfo="getScope"/>
                <node role="instance"
                      type="jetbrains.mps.bootstrap.findUsagesLanguage.structure.ConceptFunctionParameter_SearchQuery"
                      id="1198431430099"/>
              </node>
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1198431443527"/>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ForeachStatement" id="1198430917729">
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1198430917730">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1198432150344">
              <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1198432150345">
                <node role="statement" type="jetbrains.mps.bootstrap.findUsagesLanguage.structure.ResultStatement"
                      id="1200268634536">
                  <node role="foundResult" type="jetbrains.mps.baseLanguage.structure.NewExpression" id="1200268635101">
                    <link role="baseMethodDeclaration"
                          targetNodeId="9.~SearchResult.&lt;init&gt;(jetbrains.mps.smodel.SNodePointer,java.lang.String)"
                          resolveInfo="SearchResult"/>
                    <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.NewExpression"
                          id="1200268635102">
                      <link role="baseMethodDeclaration"
                            targetNodeId="7.~SNodePointer.&lt;init&gt;(jetbrains.mps.smodel.SNode)"
                            resolveInfo="SNodePointer"/>
                      <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall"
                            id="1200268635103">
                        <link role="baseMethodDeclaration"
                              targetNodeId="7.~SReference.getSourceNode():jetbrains.mps.smodel.SNode"
                              resolveInfo="getSourceNode"/>
                        <node role="instance" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference"
                              id="1200268635104">
                          <link role="variableDeclaration" targetNodeId="1198430917741" resolveInfo="reference"/>
                        </node>
                      </node>
                    </node>
                    <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.StringLiteral"
                          id="1200268635105">
                      <property name="value" value="Node Usages"/>
                    </node>
                  </node>
                  <node role="foundNode" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall"
                        id="1200306803786">
                    <link role="baseMethodDeclaration"
                          targetNodeId="7.~SReference.getSourceNode():jetbrains.mps.smodel.SNode"
                          resolveInfo="getSourceNode"/>
                    <node role="instance" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference"
                          id="1200306798939">
                      <link role="variableDeclaration" targetNodeId="1198430917741" resolveInfo="reference"/>
                    </node>
                  </node>
                  <node role="category" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1200306805880">
                    <property name="value" value="Node Descendants Usages"/>
                  </node>
                </node>
              </node>
              <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotExpression" id="1198432151848">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall"
                      id="1198432161727">
                  <link role="baseMethodDeclaration" targetNodeId="6.~Set.contains(java.lang.Object):boolean"
                        resolveInfo="contains"/>
                  <node role="instance" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference"
                        id="1198432158146">
                    <link role="variableDeclaration" targetNodeId="1198431665993" resolveInfo="nodes"/>
                  </node>
                  <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall"
                        id="1198432172278">
                    <link role="baseMethodDeclaration"
                          targetNodeId="7.~SReference.getSourceNode():jetbrains.mps.smodel.SNode"
                          resolveInfo="getSourceNode"/>
                    <node role="instance" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference"
                          id="1198432166869">
                      <link role="variableDeclaration" targetNodeId="1198430917741" resolveInfo="reference"/>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="iterable" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1198431473341">
            <link role="variableDeclaration" targetNodeId="1198431046406" resolveInfo="resRefs"/>
          </node>
          <node role="variable" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1198430917741">
            <property name="name" value="reference"/>
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1198430917742">
              <link role="classifier" targetNodeId="7.~SReference" resolveInfo="SReference"/>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>


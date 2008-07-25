<?xml version="1.0" encoding="UTF-8"?>
<model name="jetbrains.mps.transformation.TLBase.behavior">
  <persistence version="1" />
  <refactoringHistory />
  <language namespace="jetbrains.mps.bootstrap.constraintsLanguage">
    <languageAspect modelUID="jetbrains.mps.bootstrap.constraintsLanguage.constraints" version="9" />
    <languageAspect modelUID="jetbrains.mps.bootstrap.constraintsLanguage.structure" version="0" />
  </language>
  <language namespace="jetbrains.mps.baseLanguage.ext.collections.lang">
    <languageAspect modelUID="jetbrains.mps.baseLanguage.ext.collections.lang.constraints" version="6" />
    <languageAspect modelUID="jetbrains.mps.baseLanguage.ext.collections.lang.structure" version="1" />
  </language>
  <language namespace="jetbrains.mps.bootstrap.smodelLanguage">
    <languageAspect modelUID="jetbrains.mps.bootstrap.smodelLanguage.constraints" version="21" />
    <languageAspect modelUID="jetbrains.mps.bootstrap.smodelLanguage.structure" version="0" />
  </language>
  <language namespace="jetbrains.mps.baseLanguage">
    <languageAspect modelUID="jetbrains.mps.baseLanguage.constraints" version="83" />
    <languageAspect modelUID="jetbrains.mps.baseLanguage.structure" version="0" />
  </language>
  <language namespace="jetbrains.mps.quotation" />
  <language namespace="jetbrains.mps.bootstrap.helgins">
    <languageAspect modelUID="jetbrains.mps.bootstrap.helgins.constraints" version="17" />
  </language>
  <language namespace="jetbrains.mps.patterns">
    <languageAspect modelUID="jetbrains.mps.patterns.constraints" version="2" />
  </language>
  <languageAspect modelUID="jetbrains.mps.transformation.TLBase.structure" version="1" />
  <languageAspect modelUID="jetbrains.mps.closures.structure" version="0" />
  <languageAspect modelUID="jetbrains.mps.core.constraints" version="2" />
  <languageAspect modelUID="jetbrains.mps.bootstrap.structureLanguage.constraints" version="11" />
  <languageAspect modelUID="jetbrains.mps.bootstrap.sharedConcepts.constraints" version="0" />
  <languageAspect modelUID="jetbrains.mps.closures.constraints" version="2" />
  <languageAspect modelUID="jetbrains.mps.transformation.TLBase.constraints" version="16" />
  <languageAspect modelUID="jetbrains.mps.internal.collections.constraints" version="2" />
  <maxImportIndex value="7" />
  <import index="1" modelUID="jetbrains.mps.transformation.TLBase.structure" version="1" />
  <import index="3" modelUID="java.lang@java_stub" version="-1" />
  <import index="4" modelUID="jetbrains.mps.smodel@java_stub" version="-1" />
  <import index="5" modelUID="jetbrains.mps.smodel.search@java_stub" version="-1" />
  <import index="6" modelUID="jetbrains.mps.bootstrap.structureLanguage.structure@java_stub" version="-1" />
  <import index="7" modelUID="jetbrains.mps.transformation.TLBase.structure@java_stub" version="-1" />
  <node type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptBehavior" id="1213877182164">
    <property name="package" value="rule" />
    <link role="concept" targetNodeId="1.1167171569011" resolveInfo="Weaving_MappingRule" />
    <node role="method" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptMethodDeclaration" id="1213877182165">
      <property name="name" value="getTemplateType" />
      <link role="overriddenMethod" targetNodeId="1213877498511" resolveInfo="getTemplateType" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213877182166">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1213877182167">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877182168">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877182169">
              <node role="operand" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ThisNodeExpression" id="1213877182170" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1213877182171">
                <link role="link" targetNodeId="1.1167171569014" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1213877182172">
              <link role="link" targetNodeId="1.1168285871518" />
            </node>
          </node>
        </node>
      </node>
      <node role="returnType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SConceptType" id="1213877182173" />
    </node>
    <node role="constructor" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptConstructorDeclaration" id="1213877182174">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213877182175" />
    </node>
  </node>
  <visible index="2" modelUID="jetbrains.mps.baseLanguage.behavior" />
  <visible index="3" modelUID="jetbrains.mps.bootstrap.structureLanguage.structure" />
  <visible index="4" modelUID="jetbrains.mps.bootstrap.smodelLanguage.structure" />
  <visible index="5" modelUID="jetbrains.mps.core.structure" />
  <node type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptBehavior" id="1213877219536">
    <property name="package" value="macro" />
    <link role="concept" targetNodeId="1.1167770111131" resolveInfo="ReferenceMacro_GetReferent" />
    <node role="method" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptMethodDeclaration" id="1213877219537">
      <property name="name" value="getExpectedReturnType" />
      <link role="overriddenMethod" targetNodeId="2v.1213877374441" resolveInfo="getExpectedReturnType" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213877219538">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1213877219539">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1213877219540">
            <property name="name" value="referenceMacro" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1213877219541">
              <link role="concept" targetNodeId="1.1088761943574" resolveInfo="ReferenceMacro" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877219542">
              <node role="operand" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ThisNodeExpression" id="1213877219543" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAncestorOperation" id="1213877219544">
                <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Concept" id="1213877219545">
                  <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1213877219546">
                    <link role="conceptDeclaration" targetNodeId="1.1088761943574" resolveInfo="ReferenceMacro" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1213877219547">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1213877219548">
            <property name="name" value="attributedNode" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1213877219549" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877219550">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1213877219551">
                <link role="variableDeclaration" targetNodeId="1213877219540" resolveInfo="referenceMacro" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetParentOperation" id="1213877219552" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1213877219553">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1213877219554">
            <property name="name" value="linkRole" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1213877219555">
              <link role="classifier" targetNodeId="3.~String" resolveInfo="String" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1213877219556">
              <link role="baseMethodDeclaration" targetNodeId="4.~AttributesRolesUtil.getLinkRoleFromLinkAttributeRole(java.lang.String):java.lang.String" resolveInfo="getLinkRoleFromLinkAttributeRole" />
              <link role="classConcept" targetNodeId="4.~AttributesRolesUtil" resolveInfo="AttributesRolesUtil" />
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877219557">
                <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SemanticDowncastExpression" id="1213877219558">
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1213877219559">
                    <link role="variableDeclaration" targetNodeId="1213877219540" resolveInfo="referenceMacro" />
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1213877219560">
                  <link role="baseMethodDeclaration" targetNodeId="4.~SNode.getRole_():java.lang.String" resolveInfo="getRole_" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1213877219561">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1213877219562">
            <property name="name" value="linkSearchScope" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1213877219563">
              <link role="classifier" targetNodeId="5.~ConceptAndSuperConceptsScope" resolveInfo="ConceptAndSuperConceptsScope" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1214866672634">
              <node role="creator" type="jetbrains.mps.baseLanguage.structure.ClassCreator" id="1214866672636">
                <link role="baseMethodDeclaration" targetNodeId="5.~ConceptAndSuperConceptsScope.&lt;init&gt;(jetbrains.mps.bootstrap.structureLanguage.structure.AbstractConceptDeclaration)" resolveInfo="ConceptAndSuperConceptsScope" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877219565">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877219566">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1213877219567">
                      <link role="variableDeclaration" targetNodeId="1213877219548" resolveInfo="attributedNode" />
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetConceptOperation" id="1213877219568" />
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAdapterOperation" id="1213877219569" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1213877219570">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1213877219571">
            <property name="name" value="link_" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1213877219572">
              <link role="classifier" targetNodeId="6.~LinkDeclaration" resolveInfo="LinkDeclaration" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877219573">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1213877219574">
                <link role="variableDeclaration" targetNodeId="1213877219562" resolveInfo="linkSearchScope" />
              </node>
              <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1213877219575">
                <link role="baseMethodDeclaration" targetNodeId="5.~ConceptAndSuperConceptsScope.getMostSpecificLinkDeclarationByRole(java.lang.String):jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" resolveInfo="getMostSpecificLinkDeclarationByRole" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1213877219576">
                  <link role="variableDeclaration" targetNodeId="1213877219554" resolveInfo="linkRole" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1213877219577">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1213877219578">
            <property name="name" value="link" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1213877219579">
              <link role="concept" targetNodeId="3v.1071489288298" resolveInfo="LinkDeclaration" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.CastExpression" id="1213877219580">
              <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1213877219581">
                <link role="concept" targetNodeId="3v.1071489288298" resolveInfo="LinkDeclaration" />
              </node>
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1213877219582">
                <link role="baseMethodDeclaration" targetNodeId="4.~BaseAdapter.fromAdapter(jetbrains.mps.smodel.INodeAdapter):jetbrains.mps.smodel.SNode" resolveInfo="fromAdapter" />
                <link role="classConcept" targetNodeId="4.~BaseAdapter" resolveInfo="BaseAdapter" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1213877219583">
                  <link role="variableDeclaration" targetNodeId="1213877219571" resolveInfo="link_" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1213877219584">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1213877219585">
            <property name="name" value="targetConcept" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SConceptType" id="1213877219586" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877219587">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1213877219588">
                <link role="variableDeclaration" targetNodeId="1213877219578" resolveInfo="link" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1213877219589">
                <link role="link" targetNodeId="3v.1071599976176" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1213877219590">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1213877219591">
            <property name="name" value="expectedNodeType" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1213877219592">
              <link role="concept" targetNodeId="4v.1138055754698" resolveInfo="SNodeType" />
            </node>
            <node role="initializer" type="jetbrains.mps.quotation.structure.Quotation" id="1213877219593">
              <node role="quotedNode" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1213877219594">
                <node role="referenceAntiquotation$link_attribute$concept" type="jetbrains.mps.quotation.structure.ReferenceAntiquotation" id="1213877219595">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1213877219596">
                    <link role="variableDeclaration" targetNodeId="1213877219585" resolveInfo="targetConcept" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1213877219597">
          <property name="value" value="reference may be resolved dynamically?" />
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1213877219598">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213877219599">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1213877219600">
              <node role="expression" type="jetbrains.mps.quotation.structure.Quotation" id="1213877219601">
                <node role="quotedNode" type="jetbrains.mps.bootstrap.helgins.structure.JoinType" id="1213877219602">
                  <node role="argument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1213877219603">
                    <node role="referenceAntiquotation$link_attribute$concept" type="jetbrains.mps.quotation.structure.ReferenceAntiquotation" id="1213877219604">
                      <node role="expression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1213877219605">
                        <link role="variableDeclaration" targetNodeId="1213877219585" resolveInfo="targetConcept" />
                      </node>
                    </node>
                  </node>
                  <node role="argument" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1213877219606">
                    <link role="classifier" targetNodeId="3.~String" resolveInfo="String" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877219607">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1213877219608">
              <link role="variableDeclaration" targetNodeId="1213877219585" resolveInfo="targetConcept" />
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Concept_IsSubConceptOfOperation" id="1213877219609">
              <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1213877219610">
                <link role="conceptDeclaration" targetNodeId="5v.1196978630214" resolveInfo="IResolveInfo" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1213877219611">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1213877219612">
            <link role="variableDeclaration" targetNodeId="1213877219591" resolveInfo="expectedNodeType" />
          </node>
        </node>
      </node>
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1213877219613">
        <link role="classifier" targetNodeId="4.~SNode" resolveInfo="SNode" />
      </node>
    </node>
    <node role="constructor" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptConstructorDeclaration" id="1213877219614">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213877219615" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptBehavior" id="1213877222908">
    <property name="package" value="macro" />
    <link role="concept" targetNodeId="1.1114729360583" resolveInfo="CopySrcListMacro" />
    <node role="constructor" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptConstructorDeclaration" id="1213877222909">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213877222910" />
    </node>
    <node role="method" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptMethodDeclaration" id="1213877222911">
      <property name="name" value="getInputNodeTypeInsideOfMacro" />
      <link role="overriddenMethod" targetNodeId="1213877290799" resolveInfo="getInputNodeTypeInsideOfMacro" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213877222912">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1213877222913">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1213877222914">
            <property name="name" value="queryType" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1213877222915" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877222916">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877222917">
                <node role="operand" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ThisNodeExpression" id="1213877222918" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1213877222919">
                  <link role="link" targetNodeId="1.1168278589236" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.helgins.structure.Node_TypeOperation" id="1213877222920" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.bootstrap.helgins.structure.CoerceStatement" id="1213877222921">
          <node role="nodeToCoerce" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1213877222922">
            <link role="variableDeclaration" targetNodeId="1213877222914" resolveInfo="queryType" />
          </node>
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213877222923">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1213877222924">
              <node role="expression" type="jetbrains.mps.bootstrap.helgins.structure.LinkPatternVariableReference" id="1213877222925">
                <link role="patternVarDecl" targetNodeId="1213877222930" resolveInfo="#concept" />
              </node>
            </node>
          </node>
          <node role="pattern" type="jetbrains.mps.bootstrap.helgins.structure.PatternCondition" id="1213877222926">
            <property name="name" value="_" />
            <node role="pattern" type="jetbrains.mps.patterns.structure.PatternExpression" id="1213877222927">
              <node role="patternNode" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.SequenceType" id="1213877222928">
                <node role="elementType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1213877222929">
                  <node role="_attr_$link_attribute$concept" type="jetbrains.mps.patterns.structure.LinkPatternVariableDeclaration" id="1213877222930">
                    <property name="varName" value="concept" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1213877222931">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1213877222932" />
        </node>
      </node>
      <node role="returnType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SConceptType" id="1213877222933" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptBehavior" id="1213877250500">
    <property name="package" value="macro" />
    <link role="concept" targetNodeId="1.1118773211870" resolveInfo="IfMacro" />
    <node role="constructor" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptConstructorDeclaration" id="1213877250501">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213877250502" />
    </node>
  </node>
  <visible index="6" modelUID="jetbrains.mps.core.behavior" />
  <node type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptBehavior" id="1213877263098">
    <property name="package" value="rule" />
    <link role="concept" targetNodeId="1.1167087469898" resolveInfo="CreateRootRule" />
    <node role="method" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptMethodDeclaration" id="1213877263099">
      <property name="name" value="getPresentation" />
      <link role="overriddenMethod" targetNodeId="6v.1213877396640" resolveInfo="getPresentation" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213877263100">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1213877263101">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1213877263102">
            <property name="name" value="sb" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1213877263103">
              <link role="classifier" targetNodeId="3.~StringBuilder" resolveInfo="StringBuilder" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1214866671897">
              <node role="creator" type="jetbrains.mps.baseLanguage.structure.ClassCreator" id="1214866671899">
                <link role="baseMethodDeclaration" targetNodeId="3.~StringBuilder.&lt;init&gt;(java.lang.String)" resolveInfo="StringBuilder" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877263105">
                  <node role="operand" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ThisNodeExpression" id="1213877263106" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SConceptPropertyAccess" id="1213877263107">
                    <link role="conceptProperty" targetNodeId="5v.1137473891462" resolveInfo="alias" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1213877263108">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877263109">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877263110">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1213877263111">
                <link role="variableDeclaration" targetNodeId="1213877263102" resolveInfo="sb" />
              </node>
              <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1213877263112">
                <link role="baseMethodDeclaration" targetNodeId="3.~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolveInfo="append" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1213877263113">
                  <property name="value" value=" " />
                </node>
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1213877263114">
              <link role="baseMethodDeclaration" targetNodeId="3.~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolveInfo="append" />
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877263115">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877263116">
                  <node role="operand" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ThisNodeExpression" id="1213877263117" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1213877263118">
                    <link role="link" targetNodeId="1.1167087469901" />
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1213877263119">
                  <link role="property" targetNodeId="5v.1169194664001" resolveInfo="name" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1213877263120">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1213877263121">
            <property name="name" value="mappingLabel" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1213877263122">
              <link role="classifier" targetNodeId="3.~String" resolveInfo="String" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877263123">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877263124">
                <node role="operand" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ThisNodeExpression" id="1213877263125" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1213877263126">
                  <link role="link" targetNodeId="1.1200923511980" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1213877263127">
                <link role="property" targetNodeId="5v.1169194664001" resolveInfo="name" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1213877263128">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213877263129">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1213877263130">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1213877263131">
                <node role="rValue" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877263132">
                  <node role="operand" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ThisNodeExpression" id="1213877263133" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1213877263134">
                    <link role="property" targetNodeId="5v.1169194664001" resolveInfo="name" />
                  </node>
                </node>
                <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1213877263135">
                  <link role="variableDeclaration" targetNodeId="1213877263121" resolveInfo="mappingLabel" />
                </node>
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1213877263136">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1213877263137" />
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1213877263138">
              <link role="variableDeclaration" targetNodeId="1213877263121" resolveInfo="mappingLabel" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1213877263139">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213877263140">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1213877263141">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877263142">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877263143">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877263144">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1213877263145">
                      <link role="variableDeclaration" targetNodeId="1213877263102" resolveInfo="sb" />
                    </node>
                    <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1213877263146">
                      <link role="baseMethodDeclaration" targetNodeId="3.~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolveInfo="append" />
                      <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1213877263147">
                        <property name="value" value=" [" />
                      </node>
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1213877263148">
                    <link role="baseMethodDeclaration" targetNodeId="3.~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolveInfo="append" />
                    <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1213877263149">
                      <link role="variableDeclaration" targetNodeId="1213877263121" resolveInfo="mappingLabel" />
                    </node>
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1213877263150">
                  <link role="baseMethodDeclaration" targetNodeId="3.~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolveInfo="append" />
                  <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1213877263151">
                    <property name="value" value="]" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1213877263152">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1213877263153" />
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1213877263154">
              <link role="variableDeclaration" targetNodeId="1213877263121" resolveInfo="mappingLabel" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1213877263155">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877263156">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1213877263157">
              <link role="variableDeclaration" targetNodeId="1213877263102" resolveInfo="sb" />
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1213877263158">
              <link role="baseMethodDeclaration" targetNodeId="3.~StringBuilder.toString():java.lang.String" resolveInfo="toString" />
            </node>
          </node>
        </node>
      </node>
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1213877263159">
        <link role="classifier" targetNodeId="3.~String" resolveInfo="String" />
      </node>
    </node>
    <node role="constructor" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptConstructorDeclaration" id="1213877263160">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213877263161" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptBehavior" id="1213877284681">
    <property name="package" value="macro" />
    <link role="concept" targetNodeId="1.1133037731736" resolveInfo="MapSrcListMacro" />
    <node role="method" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptMethodDeclaration" id="1213877284682">
      <property name="name" value="getInputNodeTypeInsideOfMacro" />
      <link role="overriddenMethod" targetNodeId="1213877290799" resolveInfo="getInputNodeTypeInsideOfMacro" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213877284683">
        <node role="statement" type="jetbrains.mps.bootstrap.helgins.structure.CoerceStatement" id="1213877284684">
          <node role="pattern" type="jetbrains.mps.bootstrap.helgins.structure.PatternCondition" id="1213877284685">
            <property name="name" value="abc" />
            <node role="pattern" type="jetbrains.mps.patterns.structure.PatternExpression" id="1213877284686">
              <node role="patternNode" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ListType" id="1213877284687">
                <node role="elementType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1213877284688">
                  <node role="_attr_$link_attribute$concept" type="jetbrains.mps.patterns.structure.LinkPatternVariableDeclaration" id="1213877284689">
                    <property name="varName" value="concept" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="nodeToCoerce" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877284690">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877284691">
              <node role="operand" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ThisNodeExpression" id="1213877284692" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1213877284693">
                <link role="link" targetNodeId="1.1168291362368" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.helgins.structure.Node_TypeOperation" id="1213877284694" />
          </node>
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213877284695">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1213877284696">
              <node role="expression" type="jetbrains.mps.bootstrap.helgins.structure.LinkPatternVariableReference" id="1213877284697">
                <link role="patternVarDecl" targetNodeId="1213877284689" resolveInfo="#concept" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1213877284698">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1213877284699" />
        </node>
      </node>
      <node role="returnType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SConceptType" id="1213877284700" />
    </node>
    <node role="constructor" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptConstructorDeclaration" id="1213877284701">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213877284702" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptBehavior" id="1213877290798">
    <property name="package" value="macro" />
    <link role="concept" targetNodeId="1.1087833466690" resolveInfo="NodeMacro" />
    <node role="method" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptMethodDeclaration" id="1213877290799">
      <property name="name" value="getInputNodeTypeInsideOfMacro" />
      <property name="isVirtual" value="true" />
      <node role="returnType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SConceptType" id="1213877290800" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213877290801">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1213877290802">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1213877290803">
            <property name="name" value="prevNodeMacro" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1213877290804">
              <link role="concept" targetNodeId="1.1087833466690" resolveInfo="NodeMacro" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877290805">
              <node role="operand" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ThisNodeExpression" id="1213877290806" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ConceptMethodCall" id="1213877290807">
                <link role="conceptMethodDeclaration" targetNodeId="1213877290823" resolveInfo="getPreviousNodeMacro" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1213877290808">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213877290809">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1213877290810">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877290811">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1213877290812">
                  <link role="variableDeclaration" targetNodeId="1213877290803" resolveInfo="prevNodeMacro" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ConceptMethodCall" id="1213877290813">
                  <link role="conceptMethodDeclaration" targetNodeId="1213877290799" resolveInfo="getInputNodeTypeInsideOfMacro" />
                </node>
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1213877290814">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1213877290815" />
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1213877290816">
              <link role="variableDeclaration" targetNodeId="1213877290803" resolveInfo="prevNodeMacro" />
            </node>
          </node>
          <node role="ifFalseStatement" type="jetbrains.mps.baseLanguage.structure.BlockStatement" id="1213877290817">
            <node role="statements" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213877290818">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1213877290819">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877290820">
                  <node role="operand" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ThisNodeExpression" id="1213877290821" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ConceptMethodCall" id="1213877290822">
                    <link role="conceptMethodDeclaration" targetNodeId="1213877290892" resolveInfo="getInputNodeTypeFromEnvironment" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptMethodDeclaration" id="1213877290823">
      <property name="name" value="getPreviousNodeMacro" />
      <node role="returnType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1213877290824">
        <link role="concept" targetNodeId="1.1087833466690" resolveInfo="NodeMacro" />
      </node>
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213877290825">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1213877290826">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877290827">
            <node role="operand" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ThisNodeExpression" id="1213877290828" />
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ConceptMethodCall" id="1213877290829">
              <link role="conceptMethodDeclaration" targetNodeId="1213877290834" resolveInfo="getEnclosingMacro" />
              <node role="actualArgument" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ThisNodeExpression" id="1213877290830" />
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877290831">
                <node role="operand" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ThisNodeExpression" id="1213877290832" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetParentOperation" id="1213877290833" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptMethodDeclaration" id="1213877290834">
      <property name="isPrivate" value="true" />
      <property name="name" value="getEnclosingMacro" />
      <node role="returnType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1213877290835">
        <link role="concept" targetNodeId="1.1087833466690" resolveInfo="NodeMacro" />
      </node>
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213877290836">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1213877290837">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213877290838">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1213877290839">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1213877290840" />
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1213877290841">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1213877290842" />
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1213877290843">
              <link role="variableDeclaration" targetNodeId="1213877290890" resolveInfo="currentNode" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1213877290844">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1213877290845">
            <property name="name" value="result" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1213877290846">
              <link role="concept" targetNodeId="1.1087833466690" resolveInfo="NodeMacro" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1213877290847" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ForeachStatement" id="1213877290848">
          <node role="iterable" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877290849">
            <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SemanticDowncastExpression" id="1213877290850">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1213877290851">
                <link role="variableDeclaration" targetNodeId="1213877290890" resolveInfo="currentNode" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1213877290852">
              <link role="baseMethodDeclaration" targetNodeId="4.~SNode.getAllAttributes():java.util.List" resolveInfo="getAllAttributes" />
            </node>
          </node>
          <node role="variable" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1213877290853">
            <property name="name" value="currentAttribute" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1213877290854" />
          </node>
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213877290855">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1213877290856">
              <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213877290857">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1213877290858">
                  <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1213877290859">
                    <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1213877290860">
                      <link role="variableDeclaration" targetNodeId="1213877290888" resolveInfo="currentMacro" />
                    </node>
                    <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1213877290861">
                      <link role="variableDeclaration" targetNodeId="1213877290853" resolveInfo="currentAttribute" />
                    </node>
                  </node>
                  <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213877290862">
                    <node role="statement" type="jetbrains.mps.baseLanguage.structure.BreakStatement" id="1213877290863" />
                  </node>
                </node>
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1213877290864">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1213877290865">
                    <node role="rValue" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1213877290866">
                      <link role="concept" targetNodeId="1.1087833466690" resolveInfo="NodeMacro" />
                      <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1213877290867">
                        <link role="variableDeclaration" targetNodeId="1213877290853" resolveInfo="currentAttribute" />
                      </node>
                    </node>
                    <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1213877290868">
                      <link role="variableDeclaration" targetNodeId="1213877290845" resolveInfo="result" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877290869">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1213877290870">
                  <link role="variableDeclaration" targetNodeId="1213877290853" resolveInfo="currentAttribute" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1213877290871">
                  <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1213877290872">
                    <link role="conceptDeclaration" targetNodeId="1.1087833466690" resolveInfo="NodeMacro" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1213877290873">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213877290874">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1213877290875">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1213877290876">
                <link role="variableDeclaration" targetNodeId="1213877290845" resolveInfo="result" />
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1213877290877">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1213877290878" />
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1213877290879">
              <link role="variableDeclaration" targetNodeId="1213877290845" resolveInfo="result" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1213877290880">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877290881">
            <node role="operand" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ThisNodeExpression" id="1213877290882" />
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ConceptMethodCall" id="1213877290883">
              <link role="conceptMethodDeclaration" targetNodeId="1213877290834" resolveInfo="getEnclosingMacro" />
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1213877290884" />
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877290885">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1213877290886">
                  <link role="variableDeclaration" targetNodeId="1213877290890" resolveInfo="currentNode" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetParentOperation" id="1213877290887" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1213877290888">
        <property name="name" value="currentMacro" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1213877290889">
          <link role="concept" targetNodeId="1.1087833466690" resolveInfo="NodeMacro" />
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1213877290890">
        <property name="name" value="currentNode" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1213877290891" />
      </node>
    </node>
    <node role="method" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptMethodDeclaration" id="1213877290892">
      <property name="isPrivate" value="true" />
      <property name="name" value="getInputNodeTypeFromEnvironment" />
      <node role="returnType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SConceptType" id="1213877290893" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213877290894">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1213877290895">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1213877290896">
            <property name="name" value="ancestor" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1213877290897" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877290898">
              <node role="operand" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ThisNodeExpression" id="1213877290899" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAncestorOperation" id="1213877290900">
                <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_ConceptList" id="1213877290901">
                  <node role="concept" type="jetbrains.mps.bootstrap.smodelLanguage.structure.ConceptReference" id="1213877290902">
                    <link role="concept" targetNodeId="1.1092059087312" resolveInfo="TemplateDeclaration" />
                  </node>
                  <node role="concept" type="jetbrains.mps.bootstrap.smodelLanguage.structure.ConceptReference" id="1213877290903">
                    <link role="concept" targetNodeId="1.1167169308231" resolveInfo="BaseMappingRule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1213877290904">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213877290905">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1213877290906">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877290907">
                <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1213877290908">
                  <link role="concept" targetNodeId="1.1092059087312" resolveInfo="TemplateDeclaration" />
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1213877290909">
                    <link role="variableDeclaration" targetNodeId="1213877290896" resolveInfo="ancestor" />
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1213877290910">
                  <link role="link" targetNodeId="1.1168285871518" />
                </node>
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877290911">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1213877290912">
              <link role="variableDeclaration" targetNodeId="1213877290896" resolveInfo="ancestor" />
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1213877290913">
              <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1213877290914">
                <link role="conceptDeclaration" targetNodeId="1.1092059087312" resolveInfo="TemplateDeclaration" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1213877290915">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213877290916">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1213877290917">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877290918">
                <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1213877290919">
                  <link role="concept" targetNodeId="1.1167169308231" resolveInfo="BaseMappingRule" />
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1213877290920">
                    <link role="variableDeclaration" targetNodeId="1213877290896" resolveInfo="ancestor" />
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1213877290921">
                  <link role="link" targetNodeId="1.1167169349424" />
                </node>
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877290922">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1213877290923">
              <link role="variableDeclaration" targetNodeId="1213877290896" resolveInfo="ancestor" />
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1213877290924">
              <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1213877290925">
                <link role="conceptDeclaration" targetNodeId="1.1167169308231" resolveInfo="BaseMappingRule" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1213877290926">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1213877290927">
            <property name="name" value="rootAnnotation" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1213877290928" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877290929">
              <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SemanticDowncastExpression" id="1213877290930">
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877290931">
                  <node role="operand" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ThisNodeExpression" id="1213877290932" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetContainingRootOperation" id="1213877290933" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1213877290934">
                <link role="baseMethodDeclaration" targetNodeId="4.~SNode.getAttribute(java.lang.String):jetbrains.mps.smodel.SNode" resolveInfo="getAttribute" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference" id="1213877290935">
                  <link role="classifier" targetNodeId="7.~RootTemplateAnnotation_AnnotationLink" resolveInfo="RootTemplateAnnotation_AnnotationLink" />
                  <link role="variableDeclaration" targetNodeId="7.~RootTemplateAnnotation_AnnotationLink.ROOT_TEMPLATE_ANNOTATION" resolveInfo="ROOT_TEMPLATE_ANNOTATION" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1213877290936">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877290937">
            <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1213877290938">
              <link role="concept" targetNodeId="1.1168619357332" resolveInfo="RootTemplateAnnotation" />
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1213877290939">
                <link role="variableDeclaration" targetNodeId="1213877290927" resolveInfo="rootAnnotation" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1213877290940">
              <link role="link" targetNodeId="1.1168619429071" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="constructor" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptConstructorDeclaration" id="1213877290941">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213877290942" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptBehavior" id="1213877354940">
    <link role="concept" targetNodeId="1.1095416546421" resolveInfo="MappingConfiguration" />
    <node role="method" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptMethodDeclaration" id="1213877354941">
      <property name="name" value="getMembers" />
      <link role="overriddenMethod" targetNodeId="2v.1213877531970" resolveInfo="getMembers" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213877354942">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1213877354943">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1213877354944">
            <property name="name" value="members" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeListType" id="1213877354945" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1213877354946">
              <node role="creator" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeListCreator" id="1213877354947">
                <node role="createdType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeListType" id="1213877354948" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1213877354949">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877354950">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1213877354951">
              <link role="variableDeclaration" targetNodeId="1213877354944" resolveInfo="members" />
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.AddAllElementsOperation" id="1213877354952">
              <node role="argument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877354953">
                <node role="operand" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ThisNodeExpression" id="1213877354954" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1213877354955">
                  <link role="link" targetNodeId="1.1167514678247" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1213877354956">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877354957">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1213877354958">
              <link role="variableDeclaration" targetNodeId="1213877354944" resolveInfo="members" />
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.AddAllElementsOperation" id="1213877354959">
              <node role="argument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877354960">
                <node role="operand" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ThisNodeExpression" id="1213877354961" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1213877354962">
                  <link role="link" targetNodeId="1.1167172143858" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1213877354963">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877354964">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1213877354965">
              <link role="variableDeclaration" targetNodeId="1213877354944" resolveInfo="members" />
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.AddAllElementsOperation" id="1213877354966">
              <node role="argument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877354967">
                <node role="operand" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ThisNodeExpression" id="1213877354968" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1213877354969">
                  <link role="link" targetNodeId="1.1167328349397" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1213877354970">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877354971">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1213877354972">
              <link role="variableDeclaration" targetNodeId="1213877354944" resolveInfo="members" />
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.AddAllElementsOperation" id="1213877354973">
              <node role="argument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877354974">
                <node role="operand" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ThisNodeExpression" id="1213877354975" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1213877354976">
                  <link role="link" targetNodeId="1.1167088157977" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1213877354977">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877354978">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1213877354979">
              <link role="variableDeclaration" targetNodeId="1213877354944" resolveInfo="members" />
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.AddAllElementsOperation" id="1213877354980">
              <node role="argument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877354981">
                <node role="operand" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ThisNodeExpression" id="1213877354982" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1213877354983">
                  <link role="link" targetNodeId="1.1195502100749" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1213877354984">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877354985">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1213877354986">
              <link role="variableDeclaration" targetNodeId="1213877354944" resolveInfo="members" />
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.AddAllElementsOperation" id="1213877354987">
              <node role="argument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877354988">
                <node role="operand" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ThisNodeExpression" id="1213877354989" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1213877354990">
                  <link role="link" targetNodeId="1.1195502346405" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1213877354991">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877354992">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1213877354993">
              <link role="variableDeclaration" targetNodeId="1213877354944" resolveInfo="members" />
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.AddAllElementsOperation" id="1213877354994">
              <node role="argument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877354995">
                <node role="operand" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ThisNodeExpression" id="1213877354996" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1213877354997">
                  <link role="link" targetNodeId="1.1200911492601" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1213877354998">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1213877354999">
            <link role="variableDeclaration" targetNodeId="1213877354944" resolveInfo="members" />
          </node>
        </node>
      </node>
      <node role="returnType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeListType" id="1213877355000" />
    </node>
    <node role="constructor" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptConstructorDeclaration" id="1213877355001">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213877355002" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptBehavior" id="1213877361819">
    <property name="package" value="macro" />
    <link role="concept" targetNodeId="1.1118786554307" resolveInfo="LoopMacro" />
    <node role="method" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptMethodDeclaration" id="1213877361820">
      <property name="name" value="getInputNodeTypeInsideOfMacro" />
      <link role="overriddenMethod" targetNodeId="1213877290799" resolveInfo="getInputNodeTypeInsideOfMacro" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213877361821">
        <node role="statement" type="jetbrains.mps.bootstrap.helgins.structure.CoerceStatement" id="1213877361822">
          <node role="pattern" type="jetbrains.mps.bootstrap.helgins.structure.PatternCondition" id="1213877361823">
            <property name="name" value="abc" />
            <node role="pattern" type="jetbrains.mps.patterns.structure.PatternExpression" id="1213877361824">
              <node role="patternNode" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ListType" id="1213877361825">
                <node role="elementType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1213877361826">
                  <node role="_attr_$link_attribute$concept" type="jetbrains.mps.patterns.structure.LinkPatternVariableDeclaration" id="1213877361827">
                    <property name="varName" value="concept" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="nodeToCoerce" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877361828">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877361829">
              <node role="operand" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ThisNodeExpression" id="1213877361830" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1213877361831">
                <link role="link" targetNodeId="1.1167952069335" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.helgins.structure.Node_TypeOperation" id="1213877361832" />
          </node>
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213877361833">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1213877361834">
              <node role="expression" type="jetbrains.mps.bootstrap.helgins.structure.LinkPatternVariableReference" id="1213877361835">
                <link role="patternVarDecl" targetNodeId="1213877361827" resolveInfo="#concept" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1213877361836">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1213877361837" />
        </node>
      </node>
      <node role="returnType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SConceptType" id="1213877361838" />
    </node>
    <node role="constructor" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptConstructorDeclaration" id="1213877361839">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213877361840" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptBehavior" id="1213877378066">
    <property name="package" value="macro" />
    <link role="concept" targetNodeId="1.1194565793557" resolveInfo="IncludeMacro" />
    <node role="method" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptMethodDeclaration" id="1213877378067">
      <property name="name" value="getInputNodeTypeInsideOfMacro" />
      <link role="overriddenMethod" targetNodeId="1213877290799" resolveInfo="getInputNodeTypeInsideOfMacro" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213877378068">
        <node role="statement" type="jetbrains.mps.bootstrap.helgins.structure.CoerceStatement" id="1213877378069">
          <node role="pattern" type="jetbrains.mps.bootstrap.helgins.structure.PatternCondition" id="1213877378070">
            <property name="name" value="abc" />
            <node role="pattern" type="jetbrains.mps.patterns.structure.PatternExpression" id="1213877378071">
              <node role="patternNode" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1213877378072">
                <node role="_attr_$link_attribute$concept" type="jetbrains.mps.patterns.structure.LinkPatternVariableDeclaration" id="1213877378073">
                  <property name="varName" value="concept" />
                </node>
              </node>
            </node>
          </node>
          <node role="nodeToCoerce" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877378074">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877378075">
              <node role="operand" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ThisNodeExpression" id="1213877378076" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1213877378077">
                <link role="link" targetNodeId="1.1194565823413" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.helgins.structure.Node_TypeOperation" id="1213877378078" />
          </node>
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213877378079">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1213877378080">
              <node role="expression" type="jetbrains.mps.bootstrap.helgins.structure.LinkPatternVariableReference" id="1213877378081">
                <link role="patternVarDecl" targetNodeId="1213877378073" resolveInfo="#concept" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1213877378082">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877378083">
            <node role="operand" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.SuperNodeExpression" id="1213877378084" />
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ConceptMethodCall" id="1213877378085">
              <link role="conceptMethodDeclaration" targetNodeId="1213877290799" resolveInfo="getInputNodeTypeInsideOfMacro" />
            </node>
          </node>
        </node>
      </node>
      <node role="returnType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SConceptType" id="1213877378086" />
    </node>
    <node role="constructor" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptConstructorDeclaration" id="1213877378087">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213877378088" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptBehavior" id="1213877426757">
    <property name="package" value="macro" />
    <link role="concept" targetNodeId="1.1114706874351" resolveInfo="CopySrcNodeMacro" />
    <node role="method" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptMethodDeclaration" id="1213877426758">
      <property name="name" value="getInputNodeTypeInsideOfMacro" />
      <link role="overriddenMethod" targetNodeId="1213877290799" resolveInfo="getInputNodeTypeInsideOfMacro" />
      <node role="returnType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SConceptType" id="1213877426759" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213877426760">
        <node role="statement" type="jetbrains.mps.bootstrap.helgins.structure.CoerceStatement" id="1213877426761">
          <node role="pattern" type="jetbrains.mps.bootstrap.helgins.structure.PatternCondition" id="1213877426762">
            <property name="name" value="aa" />
            <node role="pattern" type="jetbrains.mps.patterns.structure.PatternExpression" id="1213877426763">
              <node role="patternNode" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1213877426764">
                <node role="_attr_$link_attribute$concept" type="jetbrains.mps.patterns.structure.LinkPatternVariableDeclaration" id="1213877426765">
                  <property name="varName" value="concept" />
                </node>
              </node>
            </node>
          </node>
          <node role="nodeToCoerce" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877426766">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877426767">
              <node role="operand" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ThisNodeExpression" id="1213877426768" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1213877426769">
                <link role="link" targetNodeId="1.1168024447342" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.helgins.structure.Node_TypeOperation" id="1213877426770" />
          </node>
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213877426771">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1213877426772">
              <node role="expression" type="jetbrains.mps.bootstrap.helgins.structure.LinkPatternVariableReference" id="1213877426773">
                <link role="patternVarDecl" targetNodeId="1213877426765" resolveInfo="#concept" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1213877426774">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1213877426775" />
        </node>
      </node>
    </node>
    <node role="constructor" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptConstructorDeclaration" id="1213877426776">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213877426777" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptBehavior" id="1213877442903">
    <property name="package" value="rule" />
    <link role="concept" targetNodeId="1.1167327847730" resolveInfo="Reduction_MappingRule" />
    <node role="method" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptMethodDeclaration" id="1213877442904">
      <property name="name" value="getTemplateType" />
      <link role="overriddenMethod" targetNodeId="1213877498511" resolveInfo="getTemplateType" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213877442905">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1213877442906">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877442907">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877442908">
              <node role="operand" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ThisNodeExpression" id="1213877442909" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1213877442910">
                <link role="link" targetNodeId="1.1167327847732" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1213877442911">
              <link role="link" targetNodeId="1.1168285871518" />
            </node>
          </node>
        </node>
      </node>
      <node role="returnType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SConceptType" id="1213877442912" />
    </node>
    <node role="constructor" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptConstructorDeclaration" id="1213877442913">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213877442914" />
    </node>
  </node>
  <visible index="7" modelUID="jetbrains.mps.bootstrap.structureLanguage.behavior" />
  <node type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptBehavior" id="1213877472999">
    <property name="package" value="macro" />
    <link role="concept" targetNodeId="1.1167756080639" resolveInfo="PropertyMacro_GetPropertyValue" />
    <node role="method" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptMethodDeclaration" id="1213877473000">
      <property name="name" value="getExpectedReturnType" />
      <link role="overriddenMethod" targetNodeId="2v.1213877374441" resolveInfo="getExpectedReturnType" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213877473001">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1213877473002">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1213877473003">
            <property name="name" value="propertyMacro" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1213877473004">
              <link role="concept" targetNodeId="1.1087833241328" resolveInfo="PropertyMacro" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877473005">
              <node role="operand" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ThisNodeExpression" id="1213877473006" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAncestorOperation" id="1213877473007">
                <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Concept" id="1213877473008">
                  <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1213877473009">
                    <link role="conceptDeclaration" targetNodeId="1.1087833241328" resolveInfo="PropertyMacro" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1213877473010">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1213877473011">
            <property name="name" value="attributedNode" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1213877473012" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877473013">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1213877473014">
                <link role="variableDeclaration" targetNodeId="1213877473003" resolveInfo="propertyMacro" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetParentOperation" id="1213877473015" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1213877473016">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1213877473017">
            <property name="name" value="propertyName" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1213877473018">
              <link role="classifier" targetNodeId="3.~String" resolveInfo="String" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1213877473019">
              <link role="baseMethodDeclaration" targetNodeId="4.~AttributesRolesUtil.getPropertyNameFromPropertyAttributeRole(java.lang.String):java.lang.String" resolveInfo="getPropertyNameFromPropertyAttributeRole" />
              <link role="classConcept" targetNodeId="4.~AttributesRolesUtil" resolveInfo="AttributesRolesUtil" />
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877473020">
                <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SemanticDowncastExpression" id="1213877473021">
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1213877473022">
                    <link role="variableDeclaration" targetNodeId="1213877473003" resolveInfo="propertyMacro" />
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1213877473023">
                  <link role="baseMethodDeclaration" targetNodeId="4.~SNode.getRole_():java.lang.String" resolveInfo="getRole_" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1213877473024">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1213877473025">
            <property name="name" value="property_" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1213877473026">
              <link role="classifier" targetNodeId="6.~PropertyDeclaration" resolveInfo="PropertyDeclaration" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1213877473027">
              <link role="classConcept" targetNodeId="5.~SModelSearchUtil" resolveInfo="SModelSearchUtil" />
              <link role="baseMethodDeclaration" targetNodeId="5.~SModelSearchUtil.findPropertyDeclaration(jetbrains.mps.bootstrap.structureLanguage.structure.AbstractConceptDeclaration,java.lang.String):jetbrains.mps.bootstrap.structureLanguage.structure.PropertyDeclaration" resolveInfo="findPropertyDeclaration" />
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877473028">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877473029">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1213877473030">
                    <link role="variableDeclaration" targetNodeId="1213877473011" resolveInfo="attributedNode" />
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetConceptOperation" id="1213877473031" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAdapterOperation" id="1213877473032" />
              </node>
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1213877473033">
                <link role="variableDeclaration" targetNodeId="1213877473017" resolveInfo="propertyName" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1213877473034">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213877473035">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1213877473036">
              <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1213877473037">
                <property name="name" value="property" />
                <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1213877473038">
                  <link role="concept" targetNodeId="3v.1071489288299" resolveInfo="PropertyDeclaration" />
                </node>
                <node role="initializer" type="jetbrains.mps.baseLanguage.structure.CastExpression" id="1213877473039">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877473040">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1213877473041">
                      <link role="variableDeclaration" targetNodeId="1213877473025" resolveInfo="property_" />
                    </node>
                    <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1213877473042">
                      <link role="baseMethodDeclaration" targetNodeId="4.~BaseAdapter.getNode():jetbrains.mps.smodel.SNode" resolveInfo="getNode" />
                    </node>
                  </node>
                  <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1213877473043">
                    <link role="concept" targetNodeId="3v.1071489288299" resolveInfo="PropertyDeclaration" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1213877473044">
              <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1213877473045">
                <property name="name" value="dataType" />
                <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1213877473046">
                  <link role="concept" targetNodeId="3v.1082978164218" resolveInfo="DataTypeDeclaration" />
                </node>
                <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877473047">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1213877473048">
                    <link role="variableDeclaration" targetNodeId="1213877473037" resolveInfo="property" />
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1213877473049">
                    <link role="link" targetNodeId="3v.1082985295845" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1213877473050">
              <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213877473051">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1213877473052">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877473053">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1213877473054">
                      <link role="variableDeclaration" targetNodeId="1213877473045" resolveInfo="dataType" />
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ConceptMethodCall" id="1213877473055">
                      <link role="conceptMethodDeclaration" targetNodeId="7v.1213877229718" resolveInfo="toBaseLanguageType" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1213877473056">
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1213877473057" />
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1213877473058">
                  <link role="variableDeclaration" targetNodeId="1213877473045" resolveInfo="dataType" />
                </node>
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1213877473059">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1213877473060" />
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1213877473061">
              <link role="variableDeclaration" targetNodeId="1213877473025" resolveInfo="property_" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1213877473062">
          <node role="expression" type="jetbrains.mps.quotation.structure.Quotation" id="1213877473063">
            <node role="quotedNode" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1213877473064">
              <link role="classifier" targetNodeId="3.~String" resolveInfo="String" />
            </node>
          </node>
        </node>
      </node>
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1213877473065">
        <link role="classifier" targetNodeId="4.~SNode" resolveInfo="SNode" />
      </node>
    </node>
    <node role="constructor" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptConstructorDeclaration" id="1213877473066">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213877473067" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptBehavior" id="1213877486464">
    <property name="package" value="rule" />
    <link role="concept" targetNodeId="1.1167514355419" resolveInfo="Root_MappingRule" />
    <node role="method" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptMethodDeclaration" id="1213877486465">
      <property name="name" value="getTemplateType" />
      <link role="overriddenMethod" targetNodeId="1213877498511" resolveInfo="getTemplateType" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213877486466">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1213877486467">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877486468">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877486469">
              <node role="operand" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ThisNodeExpression" id="1213877486470" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1213877486471">
                <link role="link" targetNodeId="1.1167514355421" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetConceptOperation" id="1213877486472" />
          </node>
        </node>
      </node>
      <node role="returnType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SConceptType" id="1213877486473" />
    </node>
    <node role="constructor" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptConstructorDeclaration" id="1213877486474">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213877486475" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptBehavior" id="1213877498462">
    <property name="package" value="rule" />
    <link role="concept" targetNodeId="1.1167169308231" resolveInfo="BaseMappingRule" />
    <node role="method" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptMethodDeclaration" id="1213877498463">
      <property name="name" value="getPresentation" />
      <link role="overriddenMethod" targetNodeId="6v.1213877396640" resolveInfo="getPresentation" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213877498464">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1213877498465">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1213877498466">
            <property name="name" value="sb" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1213877498467">
              <link role="classifier" targetNodeId="3.~StringBuilder" resolveInfo="StringBuilder" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1214866671947">
              <node role="creator" type="jetbrains.mps.baseLanguage.structure.ClassCreator" id="1214866671949">
                <link role="baseMethodDeclaration" targetNodeId="3.~StringBuilder.&lt;init&gt;(java.lang.String)" resolveInfo="StringBuilder" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877498469">
                  <node role="operand" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ThisNodeExpression" id="1213877498470" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SConceptPropertyAccess" id="1213877498471">
                    <link role="conceptProperty" targetNodeId="5v.1137473891462" resolveInfo="alias" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1213877498472">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877498473">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877498474">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1213877498475">
                <link role="variableDeclaration" targetNodeId="1213877498466" resolveInfo="sb" />
              </node>
              <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1213877498476">
                <link role="baseMethodDeclaration" targetNodeId="3.~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolveInfo="append" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1213877498477">
                  <property name="value" value=" " />
                </node>
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1213877498478">
              <link role="baseMethodDeclaration" targetNodeId="3.~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolveInfo="append" />
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877498479">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877498480">
                  <node role="operand" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ThisNodeExpression" id="1213877498481" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1213877498482">
                    <link role="link" targetNodeId="1.1167169349424" />
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1213877498483">
                  <link role="property" targetNodeId="5v.1169194664001" resolveInfo="name" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1213877498484">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1213877498485">
            <property name="name" value="mappingLabel" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1213877498486">
              <link role="classifier" targetNodeId="3.~String" resolveInfo="String" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877498487">
              <node role="operand" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ThisNodeExpression" id="1213877498488" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ConceptMethodCall" id="1213877498489">
                <link role="conceptMethodDeclaration" targetNodeId="1213877498516" resolveInfo="getMappingLabelText" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1213877498490">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213877498491">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1213877498492">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877498493">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877498494">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877498495">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1213877498496">
                      <link role="variableDeclaration" targetNodeId="1213877498466" resolveInfo="sb" />
                    </node>
                    <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1213877498497">
                      <link role="baseMethodDeclaration" targetNodeId="3.~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolveInfo="append" />
                      <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1213877498498">
                        <property name="value" value=" [" />
                      </node>
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1213877498499">
                    <link role="baseMethodDeclaration" targetNodeId="3.~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolveInfo="append" />
                    <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1213877498500">
                      <link role="variableDeclaration" targetNodeId="1213877498485" resolveInfo="mappingLabel" />
                    </node>
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1213877498501">
                  <link role="baseMethodDeclaration" targetNodeId="3.~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolveInfo="append" />
                  <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1213877498502">
                    <property name="value" value="]" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1213877498503">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1213877498504" />
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1213877498505">
              <link role="variableDeclaration" targetNodeId="1213877498485" resolveInfo="mappingLabel" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1213877498506">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877498507">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1213877498508">
              <link role="variableDeclaration" targetNodeId="1213877498466" resolveInfo="sb" />
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1213877498509">
              <link role="baseMethodDeclaration" targetNodeId="3.~StringBuilder.toString():java.lang.String" resolveInfo="toString" />
            </node>
          </node>
        </node>
      </node>
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1213877498510">
        <link role="classifier" targetNodeId="3.~String" resolveInfo="String" />
      </node>
    </node>
    <node role="method" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptMethodDeclaration" id="1213877498511">
      <property name="name" value="getTemplateType" />
      <property name="isVirtual" value="true" />
      <node role="returnType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SConceptType" id="1213877498512" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213877498513">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1213877498514">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1213877498515" />
        </node>
      </node>
    </node>
    <node role="method" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptMethodDeclaration" id="1213877498516">
      <property name="name" value="getMappingLabelText" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1213877498517">
        <link role="classifier" targetNodeId="3.~String" resolveInfo="String" />
      </node>
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213877498518">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1213877498519">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1213877498520">
            <property name="name" value="mappingLabel" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1213877498521">
              <link role="classifier" targetNodeId="3.~String" resolveInfo="String" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877498522">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877498523">
                <node role="operand" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ThisNodeExpression" id="1213877498524" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1213877498525">
                  <link role="link" targetNodeId="1.1200917515464" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1213877498526">
                <link role="property" targetNodeId="5v.1169194664001" resolveInfo="name" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1213877498527">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213877498528">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1213877498529">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1213877498530">
                <link role="variableDeclaration" targetNodeId="1213877498520" resolveInfo="mappingLabel" />
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1213877498531">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1213877498532" />
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1213877498533">
              <link role="variableDeclaration" targetNodeId="1213877498520" resolveInfo="mappingLabel" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1213877498534">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877498535">
            <node role="operand" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ThisNodeExpression" id="1213877498536" />
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1213877498537">
              <link role="property" targetNodeId="5v.1169194664001" resolveInfo="name" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="constructor" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptConstructorDeclaration" id="1213877498538">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213877498539" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptBehavior" id="1213877522462">
    <property name="package" value="macro" />
    <link role="concept" targetNodeId="1.1112731569622" resolveInfo="SwitchMacro" />
    <node role="method" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptMethodDeclaration" id="1213877522463">
      <property name="name" value="getInputNodeTypeInsideOfMacro" />
      <link role="overriddenMethod" targetNodeId="1213877290799" resolveInfo="getInputNodeTypeInsideOfMacro" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213877522464">
        <node role="statement" type="jetbrains.mps.bootstrap.helgins.structure.CoerceStatement" id="1213877522465">
          <node role="pattern" type="jetbrains.mps.bootstrap.helgins.structure.PatternCondition" id="1213877522466">
            <property name="name" value="abc" />
            <node role="pattern" type="jetbrains.mps.patterns.structure.PatternExpression" id="1213877522467">
              <node role="patternNode" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1213877522468">
                <node role="_attr_$link_attribute$concept" type="jetbrains.mps.patterns.structure.LinkPatternVariableDeclaration" id="1213877522469">
                  <property name="varName" value="concept" />
                </node>
              </node>
            </node>
          </node>
          <node role="nodeToCoerce" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877522470">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877522471">
              <node role="operand" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ThisNodeExpression" id="1213877522472" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1213877522473">
                <link role="link" targetNodeId="1.1168380395224" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.helgins.structure.Node_TypeOperation" id="1213877522474" />
          </node>
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213877522475">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1213877522476">
              <node role="expression" type="jetbrains.mps.bootstrap.helgins.structure.LinkPatternVariableReference" id="1213877522477">
                <link role="patternVarDecl" targetNodeId="1213877522469" resolveInfo="#concept" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1213877522478">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877522479">
            <node role="operand" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.SuperNodeExpression" id="1213877522480" />
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ConceptMethodCall" id="1213877522481">
              <link role="conceptMethodDeclaration" targetNodeId="1213877290799" resolveInfo="getInputNodeTypeInsideOfMacro" />
            </node>
          </node>
        </node>
      </node>
      <node role="returnType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SConceptType" id="1213877522482" />
    </node>
    <node role="constructor" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptConstructorDeclaration" id="1213877522483">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213877522484" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptBehavior" id="1217016600486">
    <property name="package" value="functionParameter" />
    <link role="concept" targetNodeId="1.1166748937193" resolveInfo="TemplateFunctionParameter_sourceModel" />
    <node role="constructor" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptConstructorDeclaration" id="1217016600487">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1217016600488" />
    </node>
    <node role="method" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptMethodDeclaration" id="1217016610598">
      <property name="name" value="getFromParameterObject" />
      <link role="overriddenMethod" targetNodeId="2v.1213877522908" resolveInfo="getFromParameterObject" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1217016610600">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1217016635116">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1217016635117">
            <property name="value" value="true" />
          </node>
        </node>
      </node>
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.BooleanType" id="1217016631380" />
    </node>
  </node>
</model>


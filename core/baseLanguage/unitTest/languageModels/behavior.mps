<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:00000000-0000-4000-0000-011c895902d1(jetbrains.mps.baseLanguage.unitTest.behavior)">
  <persistence version="3" />
  <refactoringHistory />
  <language namespace="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1(jetbrains.mps.lang.constraints)" />
  <language namespace="83888646-71ce-4f1c-9c53-c54016f6ad4f(jetbrains.mps.baseLanguage.collections)" />
  <language namespace="7866978e-a0f0-4cc7-81bc-4d213d9375e1(jetbrains.mps.lang.smodel)" />
  <language namespace="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590307(jetbrains.mps.lang.constraints.constraints)" version="9" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959030d(jetbrains.mps.lang.constraints.structure)" version="1" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590328(jetbrains.mps.baseLanguage.collections.constraints)" version="6" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959032e(jetbrains.mps.baseLanguage.collections.structure)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902fb(jetbrains.mps.lang.smodel.constraints)" version="21" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" version="8" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902c1(jetbrains.mps.baseLanguage.constraints)" version="83" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902ba(jetbrains.mps.lang.sharedConcepts.constraints)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959028c(jetbrains.mps.lang.structure.constraints)" version="11" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590338(jetbrains.mps.baseLanguage.closures.structure)" version="1" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590283(jetbrains.mps.lang.core.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590334(jetbrains.mps.baseLanguage.closures.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902d2(jetbrains.mps.baseLanguage.unitTest.constraints)" version="1" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895903e4(jetbrains.mps.internal.collections.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902db(jetbrains.mps.baseLanguage.blTypes.constraints)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902bc(jetbrains.mps.lang.sharedConcepts.structure)" version="0" />
  <maxImportIndex value="6" />
  <import index="1" modelUID="r:00000000-0000-4000-0000-011c895902d7(jetbrains.mps.baseLanguage.unitTest.structure)" version="-1" />
  <import index="2" modelUID="f:java_stub#java.lang(java.lang@java_stub)" version="-1" />
  <import index="3" modelUID="f:java_stub#java.util(java.util@java_stub)" version="-1" />
  <import index="4" modelUID="r:00000000-0000-4000-0000-011c89590405(jetbrains.mps.baseLanguage.unitTest.runtime)" version="-1" />
  <import index="5" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" />
  <import index="6" modelUID="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" version="-1" />
  <node type="jetbrains.mps.lang.constraints.structure.ConceptBehavior" id="1213877238815">
    <link role="concept" targetNodeId="1.1171931690126" resolveInfo="TestMethod" />
    <node role="method" type="jetbrains.mps.lang.constraints.structure.ConceptMethodDeclaration" id="1216135731803">
      <property name="name" value="getTestCase" />
      <property name="isPrivate" value="false" />
      <link role="overriddenMethod" targetNodeId="1216134500045" resolveInfo="getTestCase" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1216135731805">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1216135819363">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1216135819364">
            <property name="name" value="method" />
            <node role="type" type="jetbrains.mps.lang.smodel.structure.SNodeType" id="1216135819365">
              <link role="concept" targetNodeId="1.1171931690126" resolveInfo="TestMethod" />
            </node>
            <node role="initializer" type="jetbrains.mps.lang.constraints.structure.ThisNodeExpression" id="1216135829492" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1216135832838">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1216135833418">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1216135832839">
              <link role="variableDeclaration" targetNodeId="1216135819364" resolveInfo="method" />
            </node>
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" id="1216135858344">
              <node role="parameter" type="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" id="1216135858345">
                <node role="conceptArgument" type="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" id="1216135862503">
                  <link role="conceptDeclaration" targetNodeId="1.1171931851043" resolveInfo="BTestCase" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="returnType" type="jetbrains.mps.lang.smodel.structure.SNodeType" id="1216135738821">
        <link role="concept" targetNodeId="1.1216130694486" resolveInfo="ITestCase" />
      </node>
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1219155724008" />
    </node>
    <node role="method" type="jetbrains.mps.lang.constraints.structure.ConceptMethodDeclaration" id="1216136605794">
      <property name="name" value="getTestName" />
      <property name="isPrivate" value="false" />
      <link role="overriddenMethod" targetNodeId="1216136419751" resolveInfo="getTestName" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1216136605796">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1216136637489">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1216136637490">
            <property name="name" value="method" />
            <node role="type" type="jetbrains.mps.lang.smodel.structure.SNodeType" id="1216136637491">
              <link role="concept" targetNodeId="1.1171931690126" resolveInfo="TestMethod" />
            </node>
            <node role="initializer" type="jetbrains.mps.lang.constraints.structure.ThisNodeExpression" id="1216136637492" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1216136641135">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1216136641575">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1216136641136">
              <link role="variableDeclaration" targetNodeId="1216136637490" resolveInfo="method" />
            </node>
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess" id="1216136643374">
              <link role="property" targetNodeId="5.1169194664001" resolveInfo="name" />
            </node>
          </node>
        </node>
      </node>
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1216136617453">
        <link role="classifier" targetNodeId="2.~String" resolveInfo="String" />
      </node>
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1219155724947" />
    </node>
    <node role="constructor" type="jetbrains.mps.lang.constraints.structure.ConceptConstructorDeclaration" id="1213877238816">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213877238817" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.constraints.structure.ConceptBehavior" id="1213877487741">
    <link role="concept" targetNodeId="1.1171931851043" resolveInfo="BTestCase" />
    <node role="method" type="jetbrains.mps.lang.constraints.structure.ConceptMethodDeclaration" id="1216128067084">
      <property name="name" value="getParametersPart" />
      <property name="isPrivate" value="false" />
      <link role="overriddenMethod" targetNodeId="1215620460293" resolveInfo="getParameterPart" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1216128067086">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1216128205032">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1216128205033">
            <property name="name" value="ret" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1216128223211">
              <node role="creator" type="jetbrains.mps.baseLanguage.structure.ClassCreator" id="1216128223212">
                <link role="baseMethodDeclaration" targetNodeId="3.~ArrayList.&lt;init&gt;()" resolveInfo="ArrayList" />
                <node role="typeParameter" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1216128295531">
                  <link role="classifier" targetNodeId="2.~String" resolveInfo="String" />
                </node>
              </node>
            </node>
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1216128282716">
              <link role="classifier" targetNodeId="3.~List" resolveInfo="List" />
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1216128282717">
                <link role="classifier" targetNodeId="2.~String" resolveInfo="String" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1216128234844">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1216128235454">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1216128234845">
              <link role="variableDeclaration" targetNodeId="1216128205033" resolveInfo="ret" />
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1216128238995">
              <link role="baseMethodDeclaration" targetNodeId="3.~List.add(java.lang.Object):boolean" resolveInfo="add" />
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1216128244622">
                <property name="value" value="-c" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1216128246822">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1216128331738">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1216128246823">
              <link role="variableDeclaration" targetNodeId="1216128205033" resolveInfo="ret" />
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1216128339658">
              <link role="baseMethodDeclaration" targetNodeId="3.~List.add(java.lang.Object):boolean" resolveInfo="add" />
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1216128342984">
                <node role="operand" type="jetbrains.mps.lang.constraints.structure.ThisNodeExpression" id="1216128342985" />
                <node role="operation" type="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" id="1216128342986">
                  <link role="conceptMethodDeclaration" targetNodeId="6.1213877404258" resolveInfo="getFqName" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1216128227126">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1216128227127">
            <link role="variableDeclaration" targetNodeId="1216128205033" resolveInfo="ret" />
          </node>
        </node>
      </node>
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1216128098229">
        <link role="classifier" targetNodeId="3.~List" resolveInfo="List" />
        <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1216128098230">
          <link role="classifier" targetNodeId="2.~String" resolveInfo="String" />
        </node>
      </node>
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1219155723794" />
    </node>
    <node role="method" type="jetbrains.mps.lang.constraints.structure.ConceptMethodDeclaration" id="1216131451894">
      <property name="name" value="getTestSet" />
      <property name="isPrivate" value="false" />
      <link role="overriddenMethod" targetNodeId="1216130724401" resolveInfo="getTestSet" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1216131451896">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1216131536070">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1216131536071">
            <property name="name" value="node" />
            <node role="type" type="jetbrains.mps.lang.smodel.structure.SNodeType" id="1216131536072">
              <link role="concept" targetNodeId="1.1171931851043" resolveInfo="BTestCase" />
            </node>
            <node role="initializer" type="jetbrains.mps.lang.constraints.structure.ThisNodeExpression" id="1216131540590" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1216131625051">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1216131678024">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1216131625897">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1216131625052">
                <link role="variableDeclaration" targetNodeId="1216131536071" resolveInfo="node" />
              </node>
              <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="1216131659345">
                <link role="link" targetNodeId="1.1171931851044" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkListAccess" id="1216131686824">
              <link role="link" targetNodeId="1.1171931858462" />
            </node>
          </node>
        </node>
      </node>
      <node role="returnType" type="jetbrains.mps.lang.smodel.structure.SNodeListType" id="1216131457914">
        <link role="elementConcept" targetNodeId="1.1215620452633" resolveInfo="ITestable" />
      </node>
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1219155724142" />
    </node>
    <node role="method" type="jetbrains.mps.lang.constraints.structure.ConceptMethodDeclaration" id="1216136232487">
      <property name="name" value="getClassName" />
      <property name="isPrivate" value="false" />
      <link role="overriddenMethod" targetNodeId="1216136193905" resolveInfo="getClassName" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1216136232489">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1216136251476">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1216136258729">
            <node role="operand" type="jetbrains.mps.lang.constraints.structure.ThisNodeExpression" id="1216136258730" />
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" id="1216136258731">
              <link role="conceptMethodDeclaration" targetNodeId="6.1213877404258" resolveInfo="getFqName" />
            </node>
          </node>
        </node>
      </node>
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1216136243600">
        <link role="classifier" targetNodeId="2.~String" resolveInfo="String" />
      </node>
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1219155724505" />
    </node>
    <node role="constructor" type="jetbrains.mps.lang.constraints.structure.ConceptConstructorDeclaration" id="1213877487742">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213877487743" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.constraints.structure.ConceptBehavior" id="1215620458415">
    <link role="concept" targetNodeId="1.1215620452633" resolveInfo="ITestable" />
    <node role="constructor" type="jetbrains.mps.lang.constraints.structure.ConceptConstructorDeclaration" id="1215620458416">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1215620458417" />
    </node>
    <node role="method" type="jetbrains.mps.lang.constraints.structure.ConceptMethodDeclaration" id="1215620460293">
      <property name="name" value="getParametersPart" />
      <property name="isVirtual" value="true" />
      <property name="isAbstract" value="true" />
      <property name="isPrivate" value="false" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1215620560670">
        <link role="classifier" targetNodeId="3.~List" resolveInfo="List" />
        <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1215620882992">
          <link role="classifier" targetNodeId="2.~String" resolveInfo="String" />
        </node>
      </node>
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1215620460295" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1219155723917" />
    </node>
    <node role="method" type="jetbrains.mps.lang.constraints.structure.ConceptMethodDeclaration" id="1216045139515">
      <property name="name" value="getTestRunParameters" />
      <property name="isVirtual" value="true" />
      <property name="isAbstract" value="false" />
      <property name="isPrivate" value="false" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1216045139517">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1216641785185">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1216641785186">
            <node role="creator" type="jetbrains.mps.baseLanguage.structure.ClassCreator" id="1216641788863">
              <link role="baseMethodDeclaration" targetNodeId="4.1216639541738" resolveInfo="TestRunParameters" />
            </node>
          </node>
        </node>
      </node>
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1216641744130">
        <link role="classifier" targetNodeId="4.1216639541736" resolveInfo="TestRunParameters" />
      </node>
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1219155724742" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.constraints.structure.ConceptBehavior" id="1216130717292">
    <link role="concept" targetNodeId="1.1216130694486" resolveInfo="ITestCase" />
    <node role="method" type="jetbrains.mps.lang.constraints.structure.ConceptMethodDeclaration" id="1216130724401">
      <property name="name" value="getTestSet" />
      <property name="isVirtual" value="true" />
      <property name="isAbstract" value="true" />
      <property name="isPrivate" value="false" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1216130724403" />
      <node role="returnType" type="jetbrains.mps.lang.smodel.structure.SNodeListType" id="1216131282988">
        <link role="elementConcept" targetNodeId="1.1216134482493" resolveInfo="ITestMethod" />
      </node>
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1219155724277" />
    </node>
    <node role="method" type="jetbrains.mps.lang.constraints.structure.ConceptMethodDeclaration" id="1216136193905">
      <property name="name" value="getClassName" />
      <property name="isVirtual" value="true" />
      <property name="isAbstract" value="true" />
      <property name="isPrivate" value="false" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1216136207189">
        <link role="classifier" targetNodeId="2.~String" resolveInfo="String" />
      </node>
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1216136193907" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1219155724462" />
    </node>
    <node role="constructor" type="jetbrains.mps.lang.constraints.structure.ConceptConstructorDeclaration" id="1216130717293">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1216130717294" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.constraints.structure.ConceptBehavior" id="1216134497652">
    <link role="concept" targetNodeId="1.1216134482493" resolveInfo="ITestMethod" />
    <node role="method" type="jetbrains.mps.lang.constraints.structure.ConceptMethodDeclaration" id="1216134500045">
      <property name="name" value="getTestCase" />
      <property name="isVirtual" value="true" />
      <property name="isAbstract" value="true" />
      <property name="isPrivate" value="false" />
      <node role="returnType" type="jetbrains.mps.lang.smodel.structure.SNodeType" id="1216134516111">
        <link role="concept" targetNodeId="1.1216130694486" resolveInfo="ITestCase" />
      </node>
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1216134500047" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1219155724764" />
    </node>
    <node role="method" type="jetbrains.mps.lang.constraints.structure.ConceptMethodDeclaration" id="1216136419751">
      <property name="name" value="getTestName" />
      <property name="isVirtual" value="true" />
      <property name="isAbstract" value="true" />
      <property name="isPrivate" value="false" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1216136425333">
        <link role="classifier" targetNodeId="2.~String" resolveInfo="String" />
      </node>
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1216136419753" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1219155723799" />
    </node>
    <node role="method" type="jetbrains.mps.lang.constraints.structure.ConceptMethodDeclaration" id="1217511552093">
      <property name="name" value="getParametersPart" />
      <property name="isPrivate" value="false" />
      <link role="overriddenMethod" targetNodeId="1215620460293" resolveInfo="getParametersPart" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1217511552095">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1217511558707">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1217511558708">
            <property name="name" value="params" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1217511558709">
              <link role="classifier" targetNodeId="3.~ArrayList" resolveInfo="ArrayList" />
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1217511558710">
                <link role="classifier" targetNodeId="2.~String" resolveInfo="String" />
              </node>
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1217511558711">
              <node role="creator" type="jetbrains.mps.baseLanguage.structure.ClassCreator" id="1217511558712">
                <link role="baseMethodDeclaration" targetNodeId="3.~ArrayList.&lt;init&gt;()" resolveInfo="ArrayList" />
                <node role="typeParameter" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1217511558713">
                  <link role="classifier" targetNodeId="2.~String" resolveInfo="String" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1217511558714">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1217511558715">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1217511558716">
              <link role="variableDeclaration" targetNodeId="1217511558708" resolveInfo="params" />
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1217511558717">
              <link role="baseMethodDeclaration" targetNodeId="3.~ArrayList.add(java.lang.Object):boolean" resolveInfo="add" />
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1217511558718">
                <property name="value" value="-m" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1217511558719">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1217511558720">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1217511558721">
              <link role="variableDeclaration" targetNodeId="1217511558708" resolveInfo="params" />
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1217511558722">
              <link role="baseMethodDeclaration" targetNodeId="3.~ArrayList.add(java.lang.Object):boolean" resolveInfo="add" />
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="1217511558723">
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="1217511558724">
                  <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1217511558725">
                    <node role="operand" type="jetbrains.mps.lang.constraints.structure.ThisNodeExpression" id="1217511558726" />
                    <node role="operation" type="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" id="1217511558727">
                      <link role="conceptMethodDeclaration" targetNodeId="1216136419751" resolveInfo="getTestName" />
                    </node>
                  </node>
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1217511558728">
                    <property name="value" value="." />
                  </node>
                </node>
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1217511558729">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1217511558730">
                    <node role="operand" type="jetbrains.mps.lang.constraints.structure.ThisNodeExpression" id="1217511558731" />
                    <node role="operation" type="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" id="1217511558732">
                      <link role="conceptMethodDeclaration" targetNodeId="1216134500045" resolveInfo="getTestCase" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" id="1217511558733">
                    <link role="conceptMethodDeclaration" targetNodeId="1216136193905" resolveInfo="getClassName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1217511558734">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1217511558735">
            <link role="variableDeclaration" targetNodeId="1217511558708" resolveInfo="params" />
          </node>
        </node>
      </node>
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1217511557065">
        <link role="classifier" targetNodeId="3.~List" resolveInfo="List" />
        <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1217511557066">
          <link role="classifier" targetNodeId="2.~String" resolveInfo="String" />
        </node>
      </node>
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1219155724310" />
    </node>
    <node role="constructor" type="jetbrains.mps.lang.constraints.structure.ConceptConstructorDeclaration" id="1216134497653">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1216134497654" />
    </node>
  </node>
</model>


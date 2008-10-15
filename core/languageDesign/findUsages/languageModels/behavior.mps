<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:00000000-0000-4000-0000-011c89590357(jetbrains.mps.lang.findUsages.behavior)">
  <persistence version="3" />
  <refactoringHistory />
  <language namespace="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1(jetbrains.mps.lang.constraints)" />
  <language namespace="7866978e-a0f0-4cc7-81bc-4d213d9375e1(jetbrains.mps.lang.smodel)" />
  <language namespace="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590307(jetbrains.mps.lang.constraints.constraints)" version="9" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959030d(jetbrains.mps.lang.constraints.structure)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902fb(jetbrains.mps.lang.smodel.constraints)" version="21" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" version="8" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902c1(jetbrains.mps.baseLanguage.constraints)" version="83" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590328(jetbrains.mps.baseLanguage.collections.constraints)" version="6" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959032e(jetbrains.mps.baseLanguage.collections.structure)" version="1" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959034f(jetbrains.mps.lang.intentions.constraints)" version="1" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959035b(jetbrains.mps.lang.findUsages.structure)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902ba(jetbrains.mps.lang.sharedConcepts.constraints)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959028c(jetbrains.mps.lang.structure.constraints)" version="11" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590338(jetbrains.mps.baseLanguage.closures.structure)" version="1" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590283(jetbrains.mps.lang.core.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590334(jetbrains.mps.baseLanguage.closures.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590358(jetbrains.mps.lang.findUsages.constraints)" version="4" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895903e4(jetbrains.mps.internal.collections.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902db(jetbrains.mps.baseLanguage.blTypes.constraints)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590353(jetbrains.mps.lang.intentions.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902bc(jetbrains.mps.lang.sharedConcepts.structure)" version="0" />
  <maxImportIndex value="7" />
  <import index="1" modelUID="r:00000000-0000-4000-0000-011c8959035b(jetbrains.mps.lang.findUsages.structure)" version="2" />
  <import index="2" modelUID="f:java_stub#java.lang(java.lang@java_stub)" version="-1" />
  <import index="3" modelUID="f:java_stub#jetbrains.mps.util(jetbrains.mps.util@java_stub)" version="-1" />
  <import index="5" modelUID="f:java_stub#jetbrains.mps.smodel(jetbrains.mps.smodel@java_stub)" version="-1" />
  <import index="6" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" />
  <import index="7" modelUID="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" version="-1" />
  <node type="jetbrains.mps.lang.constraints.structure.ConceptBehavior" id="1213877240100">
    <link role="concept" targetNodeId="1.1197044488845" resolveInfo="FinderDeclaration" />
    <node role="method" type="jetbrains.mps.lang.constraints.structure.ConceptMethodDeclaration" id="1213877240101">
      <property name="name" value="getGeneratedClassName" />
      <property name="isPrivate" value="false" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1213877240102">
        <link role="classifier" targetNodeId="2.~String" resolveInfo="String" />
      </node>
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213877240103">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1213877240104">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="1213877240105">
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1213877240106">
              <link role="classConcept" targetNodeId="3.~NameUtil" resolveInfo="NameUtil" />
              <link role="baseMethodDeclaration" targetNodeId="3.~NameUtil.toValidIdentifier(java.lang.String):java.lang.String" resolveInfo="toValidIdentifier" />
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877240107">
                <node role="operand" type="jetbrains.mps.lang.constraints.structure.ThisNodeExpression" id="1213877240108" />
                <node role="operation" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess" id="1213877240109">
                  <link role="property" targetNodeId="6.1169194664001" resolveInfo="name" />
                </node>
              </node>
            </node>
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1213877240110">
              <property name="value" value="_Finder" />
            </node>
          </node>
        </node>
      </node>
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1219155724133" />
    </node>
    <node role="method" type="jetbrains.mps.lang.constraints.structure.ConceptMethodDeclaration" id="1213877240111">
      <property name="name" value="getConceptName" />
      <property name="isPrivate" value="false" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1213877240112">
        <link role="classifier" targetNodeId="2.~String" resolveInfo="String" />
      </node>
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213877240113">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1213877240114">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877240115">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877240116">
              <node role="operand" type="jetbrains.mps.lang.constraints.structure.ThisNodeExpression" id="1213877240117" />
              <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="1218978510275">
                <link role="link" targetNodeId="1.1218978181697" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" id="1213877240119">
              <link role="conceptMethodDeclaration" targetNodeId="7.1213877404258" resolveInfo="getFqName" />
            </node>
          </node>
        </node>
      </node>
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1219155724506" />
    </node>
    <node role="method" type="jetbrains.mps.lang.constraints.structure.ConceptMethodDeclaration" id="1213877240120">
      <property name="name" value="getGeneratedClassLongName" />
      <property name="isPrivate" value="false" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1213877240121">
        <link role="classifier" targetNodeId="2.~String" resolveInfo="String" />
      </node>
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213877240122">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1213877240123">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="1213877240124">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="1213877240125">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877240126">
                <node role="operand" type="jetbrains.mps.lang.constraints.structure.ThisNodeExpression" id="1213877240127" />
                <node role="operation" type="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" id="1213877240128">
                  <link role="conceptMethodDeclaration" targetNodeId="1213877240101" resolveInfo="getGeneratedClassName" />
                </node>
              </node>
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1213877240129">
                <property name="value" value="." />
              </node>
            </node>
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1217628888397">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1217628867731">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" id="1213877240132">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.CastExpression" id="1213877240133">
                    <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213877240134">
                      <node role="operand" type="jetbrains.mps.lang.constraints.structure.ThisNodeExpression" id="1213877240135" />
                      <node role="operation" type="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" id="1213877240136" />
                    </node>
                    <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1213877240137">
                      <link role="classifier" targetNodeId="5.~SModel" resolveInfo="SModel" />
                    </node>
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1217628867732">
                  <link role="baseMethodDeclaration" targetNodeId="5.~SModel.getModelDescriptor():jetbrains.mps.smodel.SModelDescriptor" resolveInfo="getModelDescriptor" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1217628888398">
                <link role="baseMethodDeclaration" targetNodeId="5.~SModelDescriptor.getLongName():java.lang.String" resolveInfo="getLongName" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1219155724986" />
    </node>
    <node role="constructor" type="jetbrains.mps.lang.constraints.structure.ConceptConstructorDeclaration" id="1216644254063">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1216644254064" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.constraints.structure.ConceptBehavior" id="1213877299657">
    <property name="package" value="Statements" />
    <link role="concept" targetNodeId="1.1206197741569" resolveInfo="ExecuteFinderExpression" />
    <node role="constructor" type="jetbrains.mps.lang.constraints.structure.ConceptConstructorDeclaration" id="1213877299658">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213877299659" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.constraints.structure.ConceptBehavior" id="1213877363196">
    <property name="package" value="Statements" />
    <link role="concept" targetNodeId="1.1207141825411" resolveInfo="CheckCancelledStatusStatement" />
    <node role="constructor" type="jetbrains.mps.lang.constraints.structure.ConceptConstructorDeclaration" id="1213877363197">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213877363198" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.constraints.structure.ConceptBehavior" id="1213877373943">
    <property name="package" value="Statements" />
    <link role="concept" targetNodeId="1.1200242336756" resolveInfo="ResultStatement" />
    <node role="constructor" type="jetbrains.mps.lang.constraints.structure.ConceptConstructorDeclaration" id="1213877373944">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213877373945" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.constraints.structure.ConceptBehavior" id="1213877418351">
    <property name="package" value="Statements" />
    <link role="concept" targetNodeId="1.1200242562138" resolveInfo="NodeStatement" />
    <node role="constructor" type="jetbrains.mps.lang.constraints.structure.ConceptConstructorDeclaration" id="1213877418352">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213877418353" />
    </node>
  </node>
</model>


<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:00000000-0000-4000-0000-011c895903db(jetbrains.mps.baseLanguage.datesInternal.constraints)">
  <persistence version="3" />
  <refactoringHistory />
  <language namespace="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1(jetbrains.mps.lang.constraints)" />
  <language namespace="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" />
  <language namespace="7866978e-a0f0-4cc7-81bc-4d213d9375e1(jetbrains.mps.lang.smodel)" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590307(jetbrains.mps.lang.constraints.constraints)" version="9" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959030d(jetbrains.mps.lang.constraints.structure)" version="8" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902c1(jetbrains.mps.baseLanguage.constraints)" version="83" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="1" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902fb(jetbrains.mps.lang.smodel.constraints)" version="21" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" version="16" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959032e(jetbrains.mps.baseLanguage.collections.structure)" version="1" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590338(jetbrains.mps.baseLanguage.closures.structure)" version="1" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959028c(jetbrains.mps.lang.structure.constraints)" version="11" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902ba(jetbrains.mps.lang.sharedConcepts.constraints)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590328(jetbrains.mps.baseLanguage.collections.constraints)" version="6" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895903db(jetbrains.mps.baseLanguage.datesInternal.constraints)" version="9" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590334(jetbrains.mps.baseLanguage.closures.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590283(jetbrains.mps.lang.core.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895903e4(jetbrains.mps.internal.collections.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902db(jetbrains.mps.baseLanguage.blTypes.constraints)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895903dd(jetbrains.mps.baseLanguage.datesInternal.structure)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902bc(jetbrains.mps.lang.sharedConcepts.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895903fe(jetbrains.mps.baseLanguage.strings.constraints)" version="1" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590402(jetbrains.mps.baseLanguage.strings.structure)" version="9" />
  <maxImportIndex value="14" />
  <import index="1" modelUID="r:00000000-0000-4000-0000-011c895903dd(jetbrains.mps.baseLanguage.datesInternal.structure)" version="2" />
  <import index="2" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="1" />
  <import index="3" modelUID="f:java_stub#jetbrains.mps.smodel(jetbrains.mps.smodel@java_stub)" version="-1" />
  <import index="4" modelUID="f:java_stub#jetbrains.mps.generator(jetbrains.mps.generator@java_stub)" version="-1" />
  <import index="5" modelUID="f:java_stub#jetbrains.mps.baseLanguage.structure(jetbrains.mps.baseLanguage.structure@java_stub)" version="-1" />
  <import index="8" modelUID="f:java_stub#jetbrains.mps.baseLanguage.search(jetbrains.mps.baseLanguage.search@java_stub)" version="-1" />
  <import index="10" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" />
  <import index="11" modelUID="f:java_stub#java.lang(java.lang@java_stub)" version="-1" />
  <import index="13" modelUID="r:00000000-0000-4000-0000-011c895902c1(jetbrains.mps.baseLanguage.constraints)" version="83" />
  <import index="14" modelUID="f:java_stub#org.joda.time(org.joda.time@java_stub)" version="-1" />
  <node type="jetbrains.mps.lang.constraints.structure.ConceptConstraints" id="1213104844878">
    <link role="concept" targetNodeId="1.1174320693350" resolveInfo="DurationType" />
    <node role="property" type="jetbrains.mps.lang.constraints.structure.NodePropertyConstraint" id="1213104844879">
      <link role="applicableProperty" targetNodeId="10.1169194664001" resolveInfo="name" />
      <node role="propertyGetter" type="jetbrains.mps.lang.constraints.structure.ConstraintFunction_PropertyGetter" id="1213104844880">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213104844881">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1213104844882">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213104844883">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213104844884">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213104844885">
                  <node role="operand" type="jetbrains.mps.lang.constraints.structure.ConstraintsFunctionParameter_node" id="1213104844886" />
                  <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="1213104844887">
                    <link role="link" targetNodeId="1.1174320729117" />
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="1213104844888">
                  <link role="link" targetNodeId="2.1081236769987" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess" id="1213104844889">
                <link role="property" targetNodeId="10.1169194664001" resolveInfo="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.constraints.structure.ConceptConstraints" id="1213104846007">
    <link role="concept" targetNodeId="1.1194006427224" resolveInfo="SchedulePeriod" />
    <node role="property" type="jetbrains.mps.lang.constraints.structure.NodePropertyConstraint" id="1213104846008">
      <link role="applicableProperty" targetNodeId="10.1156235010670" resolveInfo="alias" />
      <node role="propertyGetter" type="jetbrains.mps.lang.constraints.structure.ConstraintFunction_PropertyGetter" id="1213104846009">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213104846010">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1213104846011">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213104846012">
              <node role="operand" type="jetbrains.mps.lang.constraints.structure.ConstraintsFunctionParameter_node" id="1213104846013" />
              <node role="operation" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess" id="1213104846014">
                <link role="property" targetNodeId="10.1169194664001" resolveInfo="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.constraints.structure.ConceptConstraints" id="1213104847902">
    <link role="concept" targetNodeId="1.1172074318583" resolveInfo="DateTimeProperty" />
    <node role="referent" type="jetbrains.mps.lang.constraints.structure.NodeReferentConstraint" id="1213104855642">
      <link role="applicableLink" targetNodeId="1.1172492673219" />
      <node role="searchScopeFactory" type="jetbrains.mps.lang.constraints.structure.ConstraintFunction_ReferentSearchScope_Factory" id="1213104855643">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213104855644">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1213104855645">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1213104855646">
              <property name="name" value="classifier" />
              <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1213104855647">
                <link role="classifier" targetNodeId="5.~Classifier" resolveInfo="Classifier" />
              </node>
              <node role="initializer" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1213104855648">
                <link role="classConcept" targetNodeId="4.~JavaModelUtil_new" resolveInfo="JavaModelUtil_new" />
                <link role="baseMethodDeclaration" targetNodeId="4.~JavaModelUtil_new.findClassifier(java.lang.Class):jetbrains.mps.baseLanguage.structure.Classifier" resolveInfo="findClassifier" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" id="1213104855649">
                  <link role="classifier" targetNodeId="14.~Period" resolveInfo="Period" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1213104855650">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1217888381652">
              <node role="creator" type="jetbrains.mps.baseLanguage.structure.ClassCreator" id="1217888381654">
                <link role="baseMethodDeclaration" targetNodeId="8.~ClassifierVisibleStaticMembersScope.&lt;init&gt;(jetbrains.mps.baseLanguage.structure.Classifier,jetbrains.mps.smodel.SNode,int)" resolveInfo="ClassifierVisibleStaticMembersScope" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1213104855652">
                  <link role="variableDeclaration" targetNodeId="1213104855646" resolveInfo="classifier" />
                </node>
                <node role="actualArgument" type="jetbrains.mps.lang.constraints.structure.ConceptParameter_ReferentSearchScope_enclosingNode" id="1213104855653" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference" id="1213104855654">
                  <link role="classifier" targetNodeId="8.~IClassifiersSearchScope" resolveInfo="IClassifiersSearchScope" />
                  <link role="variableDeclaration" targetNodeId="8.~IClassifiersSearchScope.STATIC_METHOD" resolveInfo="STATIC_METHOD" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="referent" type="jetbrains.mps.lang.constraints.structure.NodeReferentConstraint" id="1213104855655">
      <link role="applicableLink" targetNodeId="1.1172155646667" />
      <node role="searchScopeFactory" type="jetbrains.mps.lang.constraints.structure.ConstraintFunction_ReferentSearchScope_Factory" id="1213104855656">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213104855657">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1213104855658">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1213104855659">
              <property name="name" value="classifier" />
              <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1213104855660">
                <link role="classifier" targetNodeId="5.~Classifier" resolveInfo="Classifier" />
              </node>
              <node role="initializer" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1213104855661">
                <link role="classConcept" targetNodeId="4.~JavaModelUtil_new" resolveInfo="JavaModelUtil_new" />
                <link role="baseMethodDeclaration" targetNodeId="4.~JavaModelUtil_new.findClassifier(java.lang.Class):jetbrains.mps.baseLanguage.structure.Classifier" resolveInfo="findClassifier" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" id="1213104855662">
                  <link role="classifier" targetNodeId="14.~DateTimeFieldType" resolveInfo="DateTimeFieldType" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1213104855663">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1217888365523">
              <node role="creator" type="jetbrains.mps.baseLanguage.structure.ClassCreator" id="1217888365540">
                <link role="baseMethodDeclaration" targetNodeId="8.~ClassifierVisibleStaticMembersScope.&lt;init&gt;(jetbrains.mps.baseLanguage.structure.Classifier,jetbrains.mps.smodel.SNode,int)" resolveInfo="ClassifierVisibleStaticMembersScope" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1213104855665">
                  <link role="variableDeclaration" targetNodeId="1213104855659" resolveInfo="classifier" />
                </node>
                <node role="actualArgument" type="jetbrains.mps.lang.constraints.structure.ConceptParameter_ReferentSearchScope_enclosingNode" id="1213104855666" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference" id="1213104855667">
                  <link role="classifier" targetNodeId="8.~IClassifiersSearchScope" resolveInfo="IClassifiersSearchScope" />
                  <link role="variableDeclaration" targetNodeId="8.~IClassifiersSearchScope.STATIC_METHOD" resolveInfo="STATIC_METHOD" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.constraints.structure.ConceptConstraints" id="1213104855748">
    <link role="concept" targetNodeId="1.1173953789261" resolveInfo="DateTimePropertyCardinality" />
    <node role="property" type="jetbrains.mps.lang.constraints.structure.NodePropertyConstraint" id="1213104855749">
      <link role="applicableProperty" targetNodeId="10.1169194664001" resolveInfo="name" />
      <node role="propertyGetter" type="jetbrains.mps.lang.constraints.structure.ConstraintFunction_PropertyGetter" id="1213104855750">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213104855751">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1213104855752">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213104855753">
              <node role="operand" type="jetbrains.mps.lang.constraints.structure.ConstraintsFunctionParameter_node" id="1213104855754" />
              <node role="operation" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess" id="1213104855755">
                <link role="property" targetNodeId="1.1173953818374" resolveInfo="meaning" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.constraints.structure.ConceptConstraints" id="1213104856101">
    <link role="concept" targetNodeId="1.1174043262324" resolveInfo="DateTimeZonePropertyFormatConfiguration" />
    <node role="property" type="jetbrains.mps.lang.constraints.structure.NodePropertyConstraint" id="1213104856102">
      <link role="applicableProperty" targetNodeId="10.1169194664001" resolveInfo="name" />
      <node role="propertyGetter" type="jetbrains.mps.lang.constraints.structure.ConstraintFunction_PropertyGetter" id="1213104856103">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213104856104">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1213104856105">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1213104856106">
              <property name="value" value="zone" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.constraints.structure.ConceptConstraints" id="1213104856107">
    <link role="concept" targetNodeId="1.1173883503931" resolveInfo="PredefinedDateFormat" />
    <node role="property" type="jetbrains.mps.lang.constraints.structure.NodePropertyConstraint" id="1213104856108">
      <link role="applicableProperty" targetNodeId="1.1173975300968" resolveInfo="isPublic" />
      <node role="propertyGetter" type="jetbrains.mps.lang.constraints.structure.ConstraintFunction_PropertyGetter" id="1213104856109">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213104856110">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1213104856111">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1213104856112">
              <link role="baseMethodDeclaration" targetNodeId="11.~Boolean.toString(boolean):java.lang.String" resolveInfo="toString" />
              <link role="classConcept" targetNodeId="11.~Boolean" resolveInfo="Boolean" />
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1213104856113">
                <property name="value" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="property" type="jetbrains.mps.lang.constraints.structure.NodePropertyConstraint" id="1213104856114">
      <link role="applicableProperty" targetNodeId="10.1169194664001" resolveInfo="name" />
      <node role="propertyGetter" type="jetbrains.mps.lang.constraints.structure.ConstraintFunction_PropertyGetter" id="1213104856115">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213104856116">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1213104856117">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213104856118">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213104856119">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213104856120">
                  <node role="operand" type="jetbrains.mps.lang.constraints.structure.ConstraintsFunctionParameter_node" id="1213104856121" />
                  <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="1213104856122">
                    <link role="link" targetNodeId="1.1173883503932" />
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="1213104856123">
                  <link role="link" targetNodeId="2.1081236769987" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess" id="1213104856124">
                <link role="property" targetNodeId="10.1169194664001" resolveInfo="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.constraints.structure.ConceptConstraints" id="1213104856614">
    <link role="concept" targetNodeId="1.1194005944850" resolveInfo="Month" />
    <node role="property" type="jetbrains.mps.lang.constraints.structure.NodePropertyConstraint" id="1213104856615">
      <link role="applicableProperty" targetNodeId="10.1156235010670" resolveInfo="alias" />
      <node role="propertyGetter" type="jetbrains.mps.lang.constraints.structure.ConstraintFunction_PropertyGetter" id="1213104856616">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213104856617">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1213104856618">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213104856619">
              <node role="operand" type="jetbrains.mps.lang.constraints.structure.ConstraintsFunctionParameter_node" id="1213104856620" />
              <node role="operation" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess" id="1213104856621">
                <link role="property" targetNodeId="10.1169194664001" resolveInfo="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.constraints.structure.ConceptConstraints" id="1213104859192">
    <link role="concept" targetNodeId="1.1174042847309" resolveInfo="DateTimePropertyConfiguration" />
    <node role="property" type="jetbrains.mps.lang.constraints.structure.NodePropertyConstraint" id="1213104859193">
      <link role="applicableProperty" targetNodeId="10.1156234966388" resolveInfo="shortDescription" />
      <node role="propertyGetter" type="jetbrains.mps.lang.constraints.structure.ConstraintFunction_PropertyGetter" id="1213104859194">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213104859195">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1213104859196">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1213104859197">
              <property name="value" value="datetime property" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.constraints.structure.ConceptConstraints" id="1213104859390">
    <link role="concept" targetNodeId="1.1173953509960" resolveInfo="DateTimeIntPropertyFormatConfiguration" />
    <node role="property" type="jetbrains.mps.lang.constraints.structure.NodePropertyConstraint" id="1213104859391">
      <link role="applicableProperty" targetNodeId="10.1169194664001" resolveInfo="name" />
      <node role="propertyGetter" type="jetbrains.mps.lang.constraints.structure.ConstraintFunction_PropertyGetter" id="1213104859392">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213104859393">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1213104859394">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213104859395">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213104859396">
                <node role="operand" type="jetbrains.mps.lang.constraints.structure.ConstraintsFunctionParameter_node" id="1213104859397" />
                <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="1213104859398">
                  <link role="link" targetNodeId="1.1173953566745" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess" id="1213104859399">
                <link role="property" targetNodeId="10.1169194664001" resolveInfo="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.constraints.structure.ConceptConstraints" id="1213104860458">
    <link role="concept" targetNodeId="1.1173953623139" resolveInfo="DateTimePropertyFormatType" />
    <node role="property" type="jetbrains.mps.lang.constraints.structure.NodePropertyConstraint" id="1213104860459">
      <link role="applicableProperty" targetNodeId="10.1169194664001" resolveInfo="name" />
      <node role="propertyGetter" type="jetbrains.mps.lang.constraints.structure.ConstraintFunction_PropertyGetter" id="1213104860460">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213104860461">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1213104860462">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213104860463">
              <node role="operand" type="jetbrains.mps.lang.constraints.structure.ConstraintsFunctionParameter_node" id="1213104860464" />
              <node role="operation" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess" id="1213104860465">
                <link role="property" targetNodeId="1.1173953691316" resolveInfo="meaning" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>


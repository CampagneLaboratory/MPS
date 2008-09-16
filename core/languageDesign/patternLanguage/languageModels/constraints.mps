<?xml version="1.0" encoding="UTF-8"?>
<model name="jetbrains.mps.patterns.constraints">
  <persistence version="2" />
  <refactoringHistory />
  <language namespace="jetbrains.mps.bootstrap.constraintsLanguage">
    <languageAspect modelUID="jetbrains.mps.bootstrap.constraintsLanguage.constraints" version="9" />
    <languageAspect modelUID="jetbrains.mps.bootstrap.constraintsLanguage.structure" version="0" />
  </language>
  <language namespace="jetbrains.mps.baseLanguage">
    <languageAspect modelUID="jetbrains.mps.baseLanguage.constraints" version="83" />
    <languageAspect modelUID="jetbrains.mps.baseLanguage.structure" version="0" />
  </language>
  <language namespace="jetbrains.mps.bootstrap.smodelLanguage">
    <languageAspect modelUID="jetbrains.mps.bootstrap.smodelLanguage.constraints" version="21" />
    <languageAspect modelUID="jetbrains.mps.bootstrap.smodelLanguage.structure" version="1" />
  </language>
  <language namespace="jetbrains.mps.baseLanguage.ext.collections.lang">
    <languageAspect modelUID="jetbrains.mps.baseLanguage.ext.collections.lang.constraints" version="6" />
    <languageAspect modelUID="jetbrains.mps.baseLanguage.ext.collections.lang.structure" version="1" />
  </language>
  <languageAspect modelUID="jetbrains.mps.closures.structure" version="0" />
  <languageAspect modelUID="jetbrains.mps.patterns.constraints" version="2" />
  <languageAspect modelUID="jetbrains.mps.bootstrap.structureLanguage.constraints" version="11" />
  <languageAspect modelUID="jetbrains.mps.bootstrap.sharedConcepts.constraints" version="0" />
  <languageAspect modelUID="jetbrains.mps.closures.constraints" version="2" />
  <languageAspect modelUID="jetbrains.mps.core.constraints" version="2" />
  <languageAspect modelUID="jetbrains.mps.internal.collections.constraints" version="2" />
  <maxImportIndex value="2" />
  <import index="1" modelUID="jetbrains.mps.patterns.structure" version="-1" />
  <import index="2" modelUID="jetbrains.mps.core.structure" version="-1" />
  <node type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptConstraints" id="1213104858853">
    <link role="concept" targetNodeId="1.1136720037779" resolveInfo="PatternVariableDeclaration" />
    <node role="property" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.NodePropertyConstraint" id="1213104858854">
      <link role="applicableProperty" targetNodeId="2.1169194664001" resolveInfo="name" />
      <node role="propertyGetter" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConstraintFunction_PropertyGetter" id="1213104858855">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213104858856">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1213104858857">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="1213104858858">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1213104858859">
                <property name="value" value="#" />
              </node>
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213104858860">
                <node role="operand" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConstraintsFunctionParameter_node" id="1213104858861" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1213104858862">
                  <link role="property" targetNodeId="1.1136720037780" resolveInfo="varName" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptConstraints" id="1213104859325">
    <link role="concept" targetNodeId="1.1137418540378" resolveInfo="LinkPatternVariableDeclaration" />
    <node role="property" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.NodePropertyConstraint" id="1213104859326">
      <link role="applicableProperty" targetNodeId="2.1169194664001" resolveInfo="name" />
      <node role="propertyGetter" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConstraintFunction_PropertyGetter" id="1213104859327">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213104859328">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1213104859329">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="1213104859330">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213104859331">
                <node role="operand" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConstraintsFunctionParameter_node" id="1213104859332" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1213104859333">
                  <link role="property" targetNodeId="1.1137418571428" resolveInfo="varName" />
                </node>
              </node>
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1213104859334">
                <property name="value" value="#" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptConstraints" id="1213104859400">
    <link role="concept" targetNodeId="1.1136720037781" resolveInfo="PropertyPatternVariableDeclaration" />
    <node role="property" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.NodePropertyConstraint" id="1213104859401">
      <link role="applicableProperty" targetNodeId="2.1169194664001" resolveInfo="name" />
      <node role="propertyGetter" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConstraintFunction_PropertyGetter" id="1213104859402">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213104859403">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1213104859404">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="1213104859405">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1213104859406">
                <property name="value" value="$" />
              </node>
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213104859407">
                <node role="operand" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConstraintsFunctionParameter_node" id="1213104859408" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1213104859409">
                  <link role="property" targetNodeId="1.1136720037782" resolveInfo="varName" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptConstraints" id="1220022961419">
    <link role="concept" targetNodeId="1.1136890029205" resolveInfo="PatternVariableReference" />
    <node role="referent" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.NodeReferentConstraint" id="1220022964592">
      <link role="applicableLink" targetNodeId="1.1136890071566" />
      <node role="searchScopeFactory" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConstraintFunction_ReferentSearchScope_Factory" id="1220022970952">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1220022970953">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1220023049686">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1220023049687">
              <property name="name" value="result" />
              <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeListType" id="1220023049688" />
              <node role="initializer" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1220023056909">
                <node role="creator" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeListCreator" id="1220023056910">
                  <node role="createdType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeListType" id="1220023056911" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1220023024511">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1220023024512">
              <property name="name" value="substitutionItem" />
              <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1220023024513">
                <link role="concept" targetNodeId="1.1220008921641" resolveInfo="SubstitutionItem" />
              </node>
              <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1220023024514">
                <node role="operand" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptParameter_ReferentSearchScope_enclosingNode" id="1220023024515" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAncestorOperation" id="1220023024516">
                  <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Concept" id="1220023024517">
                    <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1220023024518">
                      <link role="conceptDeclaration" targetNodeId="1.1220008921641" resolveInfo="SubstitutionItem" />
                    </node>
                  </node>
                  <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Inclusion" id="1220023870525" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1220023028192">
            <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1220023028193">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1220023076021">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1220023076586">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1220023076022">
                    <link role="variableDeclaration" targetNodeId="1220023049687" resolveInfo="result" />
                  </node>
                  <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.AddAllElementsOperation" id="1220023079151">
                    <node role="argument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1220023092062">
                      <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1220023085955">
                        <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1220023085515">
                          <link role="variableDeclaration" targetNodeId="1220023024512" resolveInfo="substitutionItem" />
                        </node>
                        <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1220023090934">
                          <link role="link" targetNodeId="1.1220008935782" />
                        </node>
                      </node>
                      <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetDescendantsOperation" id="1220023092942">
                        <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Concept" id="1220023092943">
                          <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1220023100041">
                            <link role="conceptDeclaration" targetNodeId="1.1136720037779" resolveInfo="PatternVariableDeclaration" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1220023033119">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1220023040200" />
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1220023030743">
                <link role="variableDeclaration" targetNodeId="1220023024512" resolveInfo="substitutionItem" />
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1220023117781">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1220023120740">
              <link role="variableDeclaration" targetNodeId="1220023049687" resolveInfo="result" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptConstraints" id="1220023327987">
    <link role="concept" targetNodeId="1.1136889887092" resolveInfo="PropertyPatternVariableReference" />
    <node role="referent" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.NodeReferentConstraint" id="1220023331050">
      <link role="applicableLink" targetNodeId="1.1136890007360" />
      <node role="searchScopeFactory" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConstraintFunction_ReferentSearchScope_Factory" id="1220023336442">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1220023336443">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1220023359977">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1220023359978">
              <property name="name" value="result" />
              <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeListType" id="1220023359979" />
              <node role="initializer" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1220023359980">
                <node role="creator" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeListCreator" id="1220023359981">
                  <node role="createdType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeListType" id="1220023359982" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1220023359983">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1220023359984">
              <property name="name" value="substitutionItem" />
              <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1220023359985">
                <link role="concept" targetNodeId="1.1220008921641" resolveInfo="SubstitutionItem" />
              </node>
              <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1220023359986">
                <node role="operand" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptParameter_ReferentSearchScope_enclosingNode" id="1220023359987" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAncestorOperation" id="1220023359988">
                  <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Concept" id="1220023359989">
                    <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1220023359990">
                      <link role="conceptDeclaration" targetNodeId="1.1220008921641" resolveInfo="SubstitutionItem" />
                    </node>
                  </node>
                  <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Inclusion" id="1220023857347" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1220023359991">
            <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1220023359992">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1220023359993">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1220023359994">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1220023359995">
                    <link role="variableDeclaration" targetNodeId="1220023359978" resolveInfo="result" />
                  </node>
                  <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.AddAllElementsOperation" id="1220023359996">
                    <node role="argument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1220023359997">
                      <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1220023359998">
                        <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1220023359999">
                          <link role="variableDeclaration" targetNodeId="1220023359984" resolveInfo="substitutionItem" />
                        </node>
                        <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1220023360000">
                          <link role="link" targetNodeId="1.1220008935782" />
                        </node>
                      </node>
                      <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetDescendantsOperation" id="1220023360001">
                        <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Concept" id="1220023360002">
                          <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1220023373027">
                            <link role="conceptDeclaration" targetNodeId="1.1136720037781" resolveInfo="PropertyPatternVariableDeclaration" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1220023360004">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1220023360005" />
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1220023360006">
                <link role="variableDeclaration" targetNodeId="1220023359984" resolveInfo="substitutionItem" />
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1220023360007">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1220023360008">
              <link role="variableDeclaration" targetNodeId="1220023359978" resolveInfo="result" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptConstraints" id="1220024279459">
    <link role="concept" targetNodeId="1.1220024135347" resolveInfo="LinkPatternVariableReference" />
    <node role="referent" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.NodeReferentConstraint" id="1220024282975">
      <link role="applicableLink" targetNodeId="1.1220024163613" />
      <node role="searchScopeFactory" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConstraintFunction_ReferentSearchScope_Factory" id="1220024306494">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1220024306495">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1220024308043">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1220024308044">
              <property name="name" value="result" />
              <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeListType" id="1220024308045" />
              <node role="initializer" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1220024308046">
                <node role="creator" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeListCreator" id="1220024308047">
                  <node role="createdType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeListType" id="1220024308048" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1220024308049">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1220024308050">
              <property name="name" value="substitutionItem" />
              <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1220024308051">
                <link role="concept" targetNodeId="1.1220008921641" resolveInfo="SubstitutionItem" />
              </node>
              <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1220024308052">
                <node role="operand" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptParameter_ReferentSearchScope_enclosingNode" id="1220024308053" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAncestorOperation" id="1220024308054">
                  <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Concept" id="1220024308055">
                    <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1220024308056">
                      <link role="conceptDeclaration" targetNodeId="1.1220008921641" resolveInfo="SubstitutionItem" />
                    </node>
                  </node>
                  <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Inclusion" id="1220024308057" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1220024308058">
            <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1220024308059">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1220024308060">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1220024308061">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1220024308062">
                    <link role="variableDeclaration" targetNodeId="1220024308044" resolveInfo="result" />
                  </node>
                  <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.AddAllElementsOperation" id="1220024308063">
                    <node role="argument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1220024308064">
                      <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1220024308065">
                        <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1220024308066">
                          <link role="variableDeclaration" targetNodeId="1220024308050" resolveInfo="substitutionItem" />
                        </node>
                        <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1220024308067">
                          <link role="link" targetNodeId="1.1220008935782" />
                        </node>
                      </node>
                      <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetDescendantsOperation" id="1220024308068">
                        <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Concept" id="1220024308069">
                          <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1220024314453">
                            <link role="conceptDeclaration" targetNodeId="1.1137418540378" resolveInfo="LinkPatternVariableDeclaration" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1220024308071">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1220024308072" />
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1220024308073">
                <link role="variableDeclaration" targetNodeId="1220024308050" resolveInfo="substitutionItem" />
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1220024308074">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1220024308075">
              <link role="variableDeclaration" targetNodeId="1220024308044" resolveInfo="result" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>


<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:9d0684e9-039f-4e88-b824-947b454f70f2(jetbrains.mps.baseLanguage.javadoc.behavior)">
  <persistence version="3" />
  <refactoringHistory />
  <language namespace="af65afd8-f0dd-4942-87d9-63a55f2a9db1(jetbrains.mps.lang.behavior)" />
  <language namespace="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" />
  <language namespace="83888646-71ce-4f1c-9c53-c54016f6ad4f(jetbrains.mps.baseLanguage.collections)" />
  <language namespace="7a5dda62-9140-4668-ab76-d5ed1746f2b2(jetbrains.mps.lang.typesystem)" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902c1(jetbrains.mps.baseLanguage.constraints)" version="83" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902db(jetbrains.mps.baseLanguage.blTypes.constraints)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590283(jetbrains.mps.lang.core.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" />
  <languageAspect modelUID="r:4095af4f-a097-4799-aaa9-03df087ddfa6(jetbrains.mps.baseLanguage.javadoc.structure)" version="5" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="3" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590328(jetbrains.mps.baseLanguage.collections.constraints)" version="6" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959034b(jetbrains.mps.lang.quotation.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902ae(jetbrains.mps.lang.typesystem.constraints)" version="17" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959032e(jetbrains.mps.baseLanguage.collections.structure)" version="7" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959033d(jetbrains.mps.lang.annotations.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590345(jetbrains.mps.lang.pattern.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959028c(jetbrains.mps.lang.structure.constraints)" version="11" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590334(jetbrains.mps.baseLanguage.closures.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590340(jetbrains.mps.lang.pattern.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" version="16" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902fb(jetbrains.mps.lang.smodel.constraints)" version="21" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590338(jetbrains.mps.baseLanguage.closures.structure)" version="3" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902b4(jetbrains.mps.lang.typesystem.structure)" version="3" />
  <devkit namespace="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  <maxImportIndex value="4" />
  <import index="1" modelUID="r:4095af4f-a097-4799-aaa9-03df087ddfa6(jetbrains.mps.baseLanguage.javadoc.structure)" version="5" />
  <import index="2" modelUID="f:java_stub#java.lang(java.lang@java_stub)" version="-1" />
  <import index="3" modelUID="f:java_stub#java.io(java.io@java_stub)" version="-1" />
  <import index="4" modelUID="r:87ed07dc-bdb2-44c5-8db4-8d5a74e959ff(jetbrains.mps.baseLanguage.javadoc.editor)" version="-1" />
  <node type="jetbrains.mps.lang.behavior.structure.ConceptBehavior" id="8465538089690623792">
    <link role="concept" targetNodeId="1.5349172909345501395" resolveInfo="BaseDocComment" />
    <node role="method" type="jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration" id="8465538089690623795">
      <property name="name" value="isTagSectionEmpty" />
      <property name="isVirtual" value="true" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="8465538089690623796" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="8465538089690623798">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="8465538089690623801">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.AndExpression" id="7051378335468438267">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="7051378335468438285">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="7051378335468438274">
                <node role="operand" type="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" id="7051378335468438273" />
                <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkListAccess" id="7051378335468438281">
                  <link role="link" targetNodeId="1.2217234381367277533" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" id="7051378335468438292" />
            </node>
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.AndExpression" id="8465538089690643832">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.AndExpression" id="8465538089690643815">
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.AndExpression" id="8465538089690643807">
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="8465538089690643809">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="8465538089690643810">
                      <node role="operand" type="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" id="8465538089690643811" />
                      <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkListAccess" id="8465538089690643812">
                        <link role="link" targetNodeId="1.5349172909345532722" />
                      </node>
                    </node>
                    <node role="operation" type="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" id="7051378335468438304" />
                  </node>
                  <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="8465538089690643823">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="8465538089690643824">
                      <node role="operand" type="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" id="8465538089690643825" />
                      <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="8465538089690643826">
                        <link role="link" targetNodeId="1.8465538089690331499" />
                      </node>
                    </node>
                    <node role="operation" type="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" id="8465538089690643827" />
                  </node>
                </node>
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="8465538089690643818">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="8465538089690643819">
                    <node role="operand" type="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" id="8465538089690643820" />
                    <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkListAccess" id="8465538089690643821">
                      <link role="link" targetNodeId="1.8465538089690331490" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" id="7051378335468438310" />
                </node>
              </node>
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="8465538089690643849">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="8465538089690643840">
                  <node role="operand" type="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" id="8465538089690643837" />
                  <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkListAccess" id="8465538089690643846">
                    <link role="link" targetNodeId="1.8465538089690331491" />
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" id="7051378335468438313" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.BooleanType" id="8465538089690623800" />
    </node>
    <node role="constructor" type="jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration" id="8465538089690623793">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="8465538089690623794" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.behavior.structure.ConceptBehavior" id="8465538089690983820">
    <link role="concept" targetNodeId="1.5349172909345532724" resolveInfo="MethodDocComment" />
    <node role="method" type="jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration" id="8465538089690983827">
      <property name="name" value="isTagSectionEmpty" />
      <property name="isFinal" value="true" />
      <link role="overriddenMethod" targetNodeId="8465538089690623795" resolveInfo="isTagSectionEmpty" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="8465538089690983828" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="8465538089690983829">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="7164413372960827413">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.AndExpression" id="8970989240998392315">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="8970989240998392324">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="8970989240998392319">
                <node role="operand" type="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" id="8970989240998392318" />
                <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="8970989240998392323">
                  <link role="link" targetNodeId="1.5858074156537516440" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" id="8970989240998392328" />
            </node>
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.AndExpression" id="8970989240998392285">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.AndExpression" id="7164413372960827414">
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="7164413372960827408">
                  <node role="operand" type="jetbrains.mps.lang.behavior.structure.SuperNodeExpression" id="7164413372960827406" />
                  <node role="operation" type="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" id="7164413372960827412">
                    <link role="baseMethodDeclaration" targetNodeId="8465538089690623795" resolveInfo="isTagSectionEmpty" />
                  </node>
                </node>
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="7164413372960827423">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="7164413372960827418">
                    <node role="operand" type="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" id="7164413372960827417" />
                    <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkListAccess" id="7164413372960827422">
                      <link role="link" targetNodeId="1.8465538089690917625" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" id="7164413372960827427" />
                </node>
              </node>
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="8970989240998392294">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="8970989240998392289">
                  <node role="operand" type="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" id="8970989240998392288" />
                  <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkListAccess" id="8970989240998392293">
                    <link role="link" targetNodeId="1.5858074156537516428" />
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" id="8970989240998392298" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.BooleanType" id="8465538089690983923" />
    </node>
    <node role="constructor" type="jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration" id="8465538089690983821">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="8465538089690983822" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.behavior.structure.ConceptBehavior" id="2068944020170643572">
    <link role="concept" targetNodeId="1.2068944020170241612" resolveInfo="ClassifierDocComment" />
    <node role="method" type="jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration" id="2068944020170643575">
      <property name="name" value="isTagSectionEmpty" />
      <link role="overriddenMethod" targetNodeId="8465538089690623795" resolveInfo="isTagSectionEmpty" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="2068944020170643578">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="8970989240998299492">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.AndExpression" id="8970989240998392263">
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="8970989240998316950">
              <node role="operand" type="jetbrains.mps.lang.behavior.structure.SuperNodeExpression" id="8970989240998299494" />
              <node role="operation" type="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" id="8970989240998316954">
                <link role="baseMethodDeclaration" targetNodeId="8465538089690623795" resolveInfo="isTagSectionEmpty" />
              </node>
            </node>
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="8970989240998392272">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="8970989240998392267">
                <node role="operand" type="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" id="8970989240998392266" />
                <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkListAccess" id="8970989240998392271">
                  <link role="link" targetNodeId="1.2068944020170241614" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" id="8970989240998392276" />
            </node>
          </node>
        </node>
      </node>
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.BooleanType" id="2068944020170643580" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="2068944020170643581" />
    </node>
    <node role="constructor" type="jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration" id="2068944020170643573">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="2068944020170643574" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.behavior.structure.ConceptBehavior" id="6962838954693316943">
    <link role="concept" targetNodeId="1.8465538089690331500" resolveInfo="CommentLine" />
    <node role="method" type="jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration" id="439148907936414403">
      <property name="name" value="tryMergeToRight" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="439148907936414404" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="439148907936414406">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="439148907936414410">
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.AndExpression" id="439148907936414816">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="439148907936414817">
              <node role="operand" type="jetbrains.mps.baseLanguage.collections.structure.ListElementAccessExpression" id="439148907936414818">
                <node role="index" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="439148907936414819">
                  <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="439148907936414820">
                    <property name="value" value="1" />
                  </node>
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="439148907936414821">
                    <link role="variableDeclaration" targetNodeId="439148907936414408" resolveInfo="index" />
                  </node>
                </node>
                <node role="list" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="439148907936414822">
                  <node role="operand" type="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" id="439148907936414823" />
                  <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkListAccess" id="439148907936414824">
                    <link role="link" targetNodeId="1.8970989240999019149" />
                  </node>
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" id="439148907936414825">
                <node role="conceptArgument" type="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" id="439148907936414826">
                  <link role="conceptDeclaration" targetNodeId="1.8970989240999019143" resolveInfo="TextCommentLinePart" />
                </node>
              </node>
            </node>
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.AndExpression" id="439148907936414813">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="439148907936414827">
                <node role="operand" type="jetbrains.mps.baseLanguage.collections.structure.ListElementAccessExpression" id="439148907936414828">
                  <node role="index" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="439148907936414829">
                    <link role="variableDeclaration" targetNodeId="439148907936414408" resolveInfo="index" />
                  </node>
                  <node role="list" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="439148907936414830">
                    <node role="operand" type="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" id="439148907936414831" />
                    <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkListAccess" id="439148907936414832">
                      <link role="link" targetNodeId="1.8970989240999019149" />
                    </node>
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" id="439148907936414833">
                  <node role="conceptArgument" type="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" id="439148907936414834">
                    <link role="conceptDeclaration" targetNodeId="1.8970989240999019143" resolveInfo="TextCommentLinePart" />
                  </node>
                </node>
              </node>
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.AndExpression" id="439148907936414837">
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.LessThanExpression" id="439148907936488941">
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="439148907936488942">
                    <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="439148907936488943">
                      <link role="variableDeclaration" targetNodeId="439148907936414408" resolveInfo="index" />
                    </node>
                    <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="439148907936488944">
                      <property name="value" value="1" />
                    </node>
                  </node>
                  <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="439148907936488945">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="439148907936488946">
                      <node role="operand" type="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" id="439148907936488947" />
                      <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkListAccess" id="439148907936488948">
                        <link role="link" targetNodeId="1.8970989240999019149" />
                      </node>
                    </node>
                    <node role="operation" type="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" id="439148907936488949" />
                  </node>
                </node>
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.GreaterThanOrEqualsExpression" id="439148907936414847">
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="439148907936414848">
                    <link role="variableDeclaration" targetNodeId="439148907936414408" resolveInfo="index" />
                  </node>
                  <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="439148907936414849">
                    <property name="value" value="0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="439148907936414452">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="439148907936414565">
              <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="439148907936414566">
                <property name="name" value="leftPart" />
                <node role="type" type="jetbrains.mps.lang.smodel.structure.SNodeType" id="439148907936414567">
                  <link role="concept" targetNodeId="1.8970989240999019143" resolveInfo="TextCommentLinePart" />
                </node>
                <node role="initializer" type="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" id="439148907936414582">
                  <link role="concept" targetNodeId="1.8970989240999019143" resolveInfo="TextCommentLinePart" />
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.collections.structure.ListElementAccessExpression" id="439148907936414575">
                    <node role="index" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="439148907936414578">
                      <link role="variableDeclaration" targetNodeId="439148907936414408" resolveInfo="index" />
                    </node>
                    <node role="list" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="439148907936414570">
                      <node role="operand" type="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" id="439148907936414569" />
                      <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkListAccess" id="439148907936414574">
                        <link role="link" targetNodeId="1.8970989240999019149" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="8277869836209773347">
              <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="8277869836209773348">
                <property name="name" value="offset" />
                <node role="type" type="jetbrains.mps.baseLanguage.structure.IntegerType" id="8277869836209773349" />
                <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="8277869836209773362">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="8277869836209773354">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="8277869836209773351">
                      <link role="variableDeclaration" targetNodeId="439148907936414566" resolveInfo="leftPart" />
                    </node>
                    <node role="operation" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess" id="8277869836209773360">
                      <link role="property" targetNodeId="1.8970989240999019144" resolveInfo="text" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="8277869836209773366">
                    <link role="baseMethodDeclaration" targetNodeId="2.~String.length():int" resolveInfo="length" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="439148907936414587">
              <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="439148907936414588">
                <property name="name" value="rightPart" />
                <node role="type" type="jetbrains.mps.lang.smodel.structure.SNodeType" id="439148907936414589">
                  <link role="concept" targetNodeId="1.8970989240999019143" resolveInfo="TextCommentLinePart" />
                </node>
                <node role="initializer" type="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" id="439148907936414590">
                  <link role="concept" targetNodeId="1.8970989240999019143" resolveInfo="TextCommentLinePart" />
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.collections.structure.ListElementAccessExpression" id="439148907936414591">
                    <node role="index" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="439148907936414597">
                      <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="439148907936414600">
                        <property name="value" value="1" />
                      </node>
                      <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="439148907936414592">
                        <link role="variableDeclaration" targetNodeId="439148907936414408" resolveInfo="index" />
                      </node>
                    </node>
                    <node role="list" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="439148907936414593">
                      <node role="operand" type="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" id="439148907936414594" />
                      <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkListAccess" id="439148907936414595">
                        <link role="link" targetNodeId="1.8970989240999019149" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.Statement" id="5521685164201995938" />
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="439148907936414609">
              <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="439148907936414610">
                <property name="name" value="text" />
                <node role="type" type="jetbrains.mps.baseLanguage.structure.StringType" id="439148907936414611" />
                <node role="initializer" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="439148907936414653">
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" id="439148907936414651">
                    <node role="expression" type="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" id="439148907936414635">
                      <node role="ifFalse" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="439148907936414643">
                        <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="439148907936414640">
                          <link role="variableDeclaration" targetNodeId="439148907936414566" resolveInfo="leftPart" />
                        </node>
                        <node role="operation" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess" id="439148907936414648">
                          <link role="property" targetNodeId="1.8970989240999019144" resolveInfo="text" />
                        </node>
                      </node>
                      <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="439148907936414630">
                        <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="439148907936414622">
                          <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="439148907936414613">
                            <link role="variableDeclaration" targetNodeId="439148907936414566" resolveInfo="leftPart" />
                          </node>
                          <node role="operation" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess" id="439148907936414628">
                            <link role="property" targetNodeId="1.8970989240999019144" resolveInfo="text" />
                          </node>
                        </node>
                        <node role="operation" type="jetbrains.mps.baseLanguage.structure.IsEmptyOperation" id="439148907936414634" />
                      </node>
                      <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="439148907936414639" />
                    </node>
                  </node>
                  <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" id="439148907936414656">
                    <node role="expression" type="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" id="439148907936414657">
                      <node role="ifFalse" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="439148907936414658">
                        <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="439148907936414684">
                          <link role="variableDeclaration" targetNodeId="439148907936414588" resolveInfo="rightPart" />
                        </node>
                        <node role="operation" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess" id="439148907936414660">
                          <link role="property" targetNodeId="1.8970989240999019144" resolveInfo="text" />
                        </node>
                      </node>
                      <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="439148907936414661">
                        <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="439148907936414662">
                          <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="439148907936414683">
                            <link role="variableDeclaration" targetNodeId="439148907936414588" resolveInfo="rightPart" />
                          </node>
                          <node role="operation" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess" id="439148907936414664">
                            <link role="property" targetNodeId="1.8970989240999019144" resolveInfo="text" />
                          </node>
                        </node>
                        <node role="operation" type="jetbrains.mps.baseLanguage.structure.IsEmptyOperation" id="439148907936414665" />
                      </node>
                      <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="439148907936414666" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="439148907936414686">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="439148907936414698">
                <node role="rValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="439148907936414701">
                  <link role="variableDeclaration" targetNodeId="439148907936414610" resolveInfo="text" />
                </node>
                <node role="lValue" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="439148907936414690">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="439148907936414687">
                    <link role="variableDeclaration" targetNodeId="439148907936414566" resolveInfo="leftPart" />
                  </node>
                  <node role="operation" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess" id="439148907936414696">
                    <link role="property" targetNodeId="1.8970989240999019144" resolveInfo="text" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="439148907936414703">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="439148907936414707">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="439148907936414704">
                  <link role="variableDeclaration" targetNodeId="439148907936414588" resolveInfo="rightPart" />
                </node>
                <node role="operation" type="jetbrains.mps.lang.smodel.structure.Node_DeleteOperation" id="439148907936414712" />
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="439148907936414722">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="8277869836209768088">
                <node role="creator" type="jetbrains.mps.baseLanguage.structure.ClassCreator" id="8277869836209773333">
                  <link role="baseMethodDeclaration" targetNodeId="4.5521685164201281392" resolveInfo="NodeCaretPair" />
                  <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="8277869836209773337">
                    <link role="variableDeclaration" targetNodeId="439148907936414566" resolveInfo="leftPart" />
                  </node>
                  <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="8277869836209773368">
                    <link role="variableDeclaration" targetNodeId="8277869836209773348" resolveInfo="offset" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="439148907936414718">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="8277869836209773335" />
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="439148907936414408">
        <property name="name" value="index" />
        <node role="type" type="jetbrains.mps.baseLanguage.structure.IntegerType" id="439148907936414409" />
      </node>
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="8277869836209773336">
        <link role="classifier" targetNodeId="4.5521685164201281390" resolveInfo="NodeCaretPair" />
      </node>
    </node>
    <node role="constructor" type="jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration" id="6962838954693316944">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="6962838954693316945">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="6962838954693316946">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="6962838954693316959">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="6962838954693316948">
              <node role="operand" type="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" id="6962838954693316947" />
              <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkListAccess" id="6962838954693316952">
                <link role="link" targetNodeId="1.8970989240999019149" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.LinkList_AddNewChildOperation" id="6962838954693316963">
              <link role="concept" targetNodeId="1.8970989240999019143" resolveInfo="TextCommentLinePart" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.behavior.structure.ConceptBehavior" id="4021391592914343326">
    <property name="package" value="tag" />
    <link role="concept" targetNodeId="1.5349172909345530174" resolveInfo="AuthorBlockDocTag" />
    <node role="constructor" type="jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration" id="4021391592914343327">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="4021391592914343328" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.behavior.structure.ConceptBehavior" id="6612597108004626828">
    <property name="package" value="tag" />
    <link role="concept" targetNodeId="1.6612597108003615641" resolveInfo="HTMLElement" />
    <node role="constructor" type="jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration" id="6612597108004626829">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="6612597108004626830">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="6612597108004626831">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="6612597108004626838">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="6612597108004626833">
              <node role="operand" type="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" id="6612597108004626832" />
              <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkListAccess" id="6612597108004626837">
                <link role="link" targetNodeId="1.6612597108003615643" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.LinkList_AddNewChildOperation" id="6612597108004626842" />
          </node>
        </node>
      </node>
    </node>
    <node role="method" type="jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration" id="1901211815201449425">
      <property name="name" value="smartDelete" />
      <link role="overriddenMethod" targetNodeId="9042833497008205283" resolveInfo="smartDelete" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1901211815201449428">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="439148907936339404">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="439148907936339405">
            <property name="name" value="line" />
            <node role="type" type="jetbrains.mps.lang.smodel.structure.SNodeType" id="439148907936339406">
              <link role="concept" targetNodeId="1.8465538089690331500" resolveInfo="CommentLine" />
            </node>
            <node role="initializer" type="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" id="439148907936339414">
              <link role="concept" targetNodeId="1.8465538089690331500" resolveInfo="CommentLine" />
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="439148907936339409">
                <node role="operand" type="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" id="439148907936339408" />
                <node role="operation" type="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" id="439148907936339413" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="439148907936414313">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="439148907936414314">
            <property name="name" value="index" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.IntegerType" id="439148907936414315" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="439148907936414318">
              <node role="operand" type="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" id="439148907936414317" />
              <node role="operation" type="jetbrains.mps.lang.smodel.structure.Node_GetIndexInParentOperation" id="439148907936414322" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="439148907936340169">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="439148907936340170">
            <property name="name" value="lines" />
            <node role="type" type="jetbrains.mps.baseLanguage.collections.structure.SequenceType" id="439148907936340171">
              <node role="elementType" type="jetbrains.mps.lang.smodel.structure.SNodeType" id="439148907936340173">
                <link role="concept" targetNodeId="1.8465538089690331500" resolveInfo="CommentLine" />
              </node>
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="439148907936340178">
              <node role="operand" type="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" id="439148907936340177" />
              <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkListAccess" id="439148907936340182">
                <link role="link" targetNodeId="1.6612597108003615643" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.Statement" id="5521685164201558365" />
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="5521685164201558368">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="5521685164201558369">
            <property name="name" value="nodeToSelect" />
            <node role="type" type="jetbrains.mps.lang.smodel.structure.SNodeType" id="5521685164201558370" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="5521685164201565491" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="5521685164201558373">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="5521685164201558374">
            <property name="name" value="caret" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.IntegerType" id="5521685164201558375" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="5521685164201818788">
              <property name="value" value="-1" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.Statement" id="5521685164201558367" />
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="439148907936340114">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="439148907936340115">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="5521685164201377131">
              <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="5521685164201377132">
                <property name="name" value="prev" />
                <node role="type" type="jetbrains.mps.lang.smodel.structure.SNodeType" id="5521685164201377133" />
                <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="5521685164201377136">
                  <node role="operand" type="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" id="5521685164201377135" />
                  <node role="operation" type="jetbrains.mps.lang.smodel.structure.Node_GetPrevSiblingOperation" id="5521685164201377140" />
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="5521685164201377199">
              <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="5521685164201377200">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="5521685164201377226">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="5521685164201377228">
                    <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="5521685164201377227">
                      <link role="variableDeclaration" targetNodeId="5521685164201558374" resolveInfo="caret" />
                    </node>
                    <node role="rValue" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="5521685164201377250">
                      <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="5521685164201377231">
                        <node role="operand" type="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" id="5521685164201377232">
                          <link role="concept" targetNodeId="1.8970989240999019143" resolveInfo="TextCommentLinePart" />
                          <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="5521685164201377233">
                            <link role="variableDeclaration" targetNodeId="5521685164201377132" resolveInfo="prev" />
                          </node>
                        </node>
                        <node role="operation" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess" id="5521685164201377234">
                          <link role="property" targetNodeId="1.8970989240999019144" resolveInfo="text" />
                        </node>
                      </node>
                      <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="5521685164201377254">
                        <link role="baseMethodDeclaration" targetNodeId="2.~String.length():int" resolveInfo="length" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="5521685164201377221">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="5521685164201377203">
                  <node role="operand" type="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" id="5521685164201377204">
                    <link role="concept" targetNodeId="1.8970989240999019143" resolveInfo="TextCommentLinePart" />
                    <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="5521685164201377205">
                      <link role="variableDeclaration" targetNodeId="5521685164201377132" resolveInfo="prev" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess" id="5521685164201377206">
                    <link role="property" targetNodeId="1.8970989240999019144" resolveInfo="text" />
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.baseLanguage.structure.IsNotEmptyOperation" id="5521685164201377225" />
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="439148907936414864">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="439148907936414865">
                <node role="operand" type="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" id="439148907936414866" />
                <node role="operation" type="jetbrains.mps.lang.smodel.structure.Node_DeleteOperation" id="439148907936414867" />
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="3633133276124368613">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="3633133276124368615">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="3633133276124368614">
                  <link role="variableDeclaration" targetNodeId="439148907936339405" resolveInfo="line" />
                </node>
                <node role="operation" type="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" id="3633133276124368619">
                  <link role="baseMethodDeclaration" targetNodeId="439148907936414403" resolveInfo="tryMergeToRight" />
                  <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.MinusExpression" id="3633133276124368621">
                    <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="3633133276124368624">
                      <property name="value" value="1" />
                    </node>
                    <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="3633133276124368620">
                      <link role="variableDeclaration" targetNodeId="439148907936414314" resolveInfo="index" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="5521685164201377259">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="5521685164201377260">
                <node role="creator" type="jetbrains.mps.baseLanguage.structure.ClassCreator" id="5521685164201377261">
                  <link role="baseMethodDeclaration" targetNodeId="4.5521685164201281392" resolveInfo="NodeCaretPair" />
                  <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="5521685164201377262">
                    <link role="variableDeclaration" targetNodeId="5521685164201377132" resolveInfo="prev" />
                  </node>
                  <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="5521685164201377263">
                    <link role="variableDeclaration" targetNodeId="5521685164201558374" resolveInfo="caret" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="439148907936340132">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="439148907936340135">
              <property name="value" value="0" />
            </node>
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="439148907936340124">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="439148907936340201">
                <link role="variableDeclaration" targetNodeId="439148907936340170" resolveInfo="lines" />
              </node>
              <node role="operation" type="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" id="439148907936340128" />
            </node>
          </node>
          <node role="ifFalseStatement" type="jetbrains.mps.baseLanguage.structure.BlockStatement" id="439148907936531663">
            <node role="statements" type="jetbrains.mps.baseLanguage.structure.StatementList" id="439148907936531664">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.SingleLineComment" id="7376433222636453687">
                <node role="commentPart" type="jetbrains.mps.baseLanguage.structure.TextCommentPart" id="7376433222636453688">
                  <property name="text" value=" Merging first line" />
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" id="3633133276124307749">
                <node role="variable" type="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" id="3633133276124307750">
                  <property name="name" value="part" />
                </node>
                <node role="inputSequence" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="3633133276124307773">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="3633133276124307763">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="3633133276124307755">
                      <node role="operand" type="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" id="3633133276124307754" />
                      <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkListAccess" id="3633133276124307761">
                        <link role="link" targetNodeId="1.6612597108003615643" />
                      </node>
                    </node>
                    <node role="operation" type="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" id="3633133276124307768" />
                  </node>
                  <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkListAccess" id="3633133276124307783">
                    <link role="link" targetNodeId="1.8970989240999019149" />
                  </node>
                </node>
                <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="3633133276124307752">
                  <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="3633133276124307788">
                    <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="3633133276124307790">
                      <node role="operand" type="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" id="3633133276124307789" />
                      <node role="operation" type="jetbrains.mps.lang.smodel.structure.Node_InsertPrevSiblingOperation" id="3633133276124307794">
                        <node role="insertedNode" type="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" id="3633133276124307796">
                          <link role="variable" targetNodeId="3633133276124307750" resolveInfo="part" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="3633133276124307862">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="3633133276124307863">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="3633133276124307864">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="3633133276124307865">
                      <node role="operand" type="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" id="3633133276124307866" />
                      <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkListAccess" id="3633133276124307867">
                        <link role="link" targetNodeId="1.6612597108003615643" />
                      </node>
                    </node>
                    <node role="operation" type="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" id="3633133276124307868" />
                  </node>
                  <node role="operation" type="jetbrains.mps.lang.smodel.structure.Node_DeleteOperation" id="3633133276124307869" />
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="5521685164201558377">
                <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="5521685164201558378">
                  <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="5521685164201558382">
                    <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="5521685164201558384">
                      <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="5521685164201558383">
                        <link role="variableDeclaration" targetNodeId="5521685164201558369" resolveInfo="nodeToSelect" />
                      </node>
                      <node role="rValue" type="jetbrains.mps.baseLanguage.collections.structure.ListElementAccessExpression" id="5521685164201558450">
                        <node role="index" type="jetbrains.mps.baseLanguage.structure.MinusExpression" id="5521685164201558451">
                          <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="5521685164201558452">
                            <property name="value" value="1" />
                          </node>
                          <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="5521685164201558453">
                            <link role="variableDeclaration" targetNodeId="439148907936414314" resolveInfo="index" />
                          </node>
                        </node>
                        <node role="list" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="5521685164201558454">
                          <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="5521685164201558455">
                            <link role="variableDeclaration" targetNodeId="439148907936339405" resolveInfo="line" />
                          </node>
                          <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkListAccess" id="5521685164201558456">
                            <link role="link" targetNodeId="1.8970989240999019149" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="5521685164201558389">
                    <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="5521685164201558391">
                      <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="5521685164201558390">
                        <link role="variableDeclaration" targetNodeId="5521685164201558374" resolveInfo="caret" />
                      </node>
                      <node role="rValue" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="5521685164201558488">
                        <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="5521685164201558478">
                          <node role="operand" type="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" id="5521685164201558472">
                            <link role="concept" targetNodeId="1.8970989240999019143" resolveInfo="TextCommentLinePart" />
                            <node role="leftExpression" type="jetbrains.mps.baseLanguage.collections.structure.ListElementAccessExpression" id="5521685164201558440">
                              <node role="index" type="jetbrains.mps.baseLanguage.structure.MinusExpression" id="5521685164201558441">
                                <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="5521685164201558442">
                                  <property name="value" value="1" />
                                </node>
                                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="5521685164201558443">
                                  <link role="variableDeclaration" targetNodeId="439148907936414314" resolveInfo="index" />
                                </node>
                              </node>
                              <node role="list" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="5521685164201558444">
                                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="5521685164201558445">
                                  <link role="variableDeclaration" targetNodeId="439148907936339405" resolveInfo="line" />
                                </node>
                                <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkListAccess" id="5521685164201558446">
                                  <link role="link" targetNodeId="1.8970989240999019149" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node role="operation" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess" id="5521685164201558485">
                            <link role="property" targetNodeId="1.8970989240999019144" resolveInfo="text" />
                          </node>
                        </node>
                        <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="5521685164201558493">
                          <link role="baseMethodDeclaration" targetNodeId="2.~String.length():int" resolveInfo="length" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="condition" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="5521685164201558381">
                  <link role="variableDeclaration" targetNodeId="5521685164201377124" resolveInfo="isBeginning" />
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="439148907936531692">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="439148907936531693">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="439148907936531694">
                    <link role="variableDeclaration" targetNodeId="439148907936339405" resolveInfo="line" />
                  </node>
                  <node role="operation" type="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" id="439148907936531695">
                    <link role="baseMethodDeclaration" targetNodeId="439148907936414403" resolveInfo="tryMergeToRight" />
                    <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.MinusExpression" id="439148907936531696">
                      <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="439148907936531697">
                        <property name="value" value="1" />
                      </node>
                      <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="439148907936531698">
                        <link role="variableDeclaration" targetNodeId="439148907936414314" resolveInfo="index" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.Statement" id="3633133276124307736" />
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.SingleLineComment" id="7376433222636453121">
                <node role="commentPart" type="jetbrains.mps.baseLanguage.structure.TextCommentPart" id="7376433222636453122">
                  <property name="text" value=" Merging other lines" />
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="3633133276124061662">
                <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="3633133276124061663">
                  <property name="name" value="lastElementLine" />
                  <node role="type" type="jetbrains.mps.lang.smodel.structure.SNodeType" id="3633133276124061664">
                    <link role="concept" targetNodeId="1.8465538089690331500" resolveInfo="CommentLine" />
                  </node>
                  <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="3633133276124061666">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="3633133276124061667">
                      <node role="operand" type="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" id="3633133276124061668" />
                      <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkListAccess" id="3633133276124061669">
                        <link role="link" targetNodeId="1.6612597108003615643" />
                      </node>
                    </node>
                    <node role="operation" type="jetbrains.mps.baseLanguage.collections.structure.GetLastOperation" id="3633133276124061670" />
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" id="3633133276124307921">
                <node role="variable" type="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" id="3633133276124307922">
                  <property name="name" value="elementLine" />
                </node>
                <node role="inputSequence" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="3633133276124307936">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="3633133276124307927">
                    <node role="operand" type="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" id="3633133276124307926" />
                    <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkListAccess" id="3633133276124307934">
                      <link role="link" targetNodeId="1.6612597108003615643" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.baseLanguage.collections.structure.ReverseOperation" id="3633133276124307941" />
                </node>
                <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="3633133276124307924">
                  <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="3633133276124307945">
                    <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="3633133276124307947">
                      <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="3633133276124307946">
                        <link role="variableDeclaration" targetNodeId="439148907936339405" resolveInfo="line" />
                      </node>
                      <node role="operation" type="jetbrains.mps.lang.smodel.structure.Node_InsertNextSiblingOperation" id="3633133276124307951">
                        <node role="insertedNode" type="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" id="3633133276124307958">
                          <link role="variable" targetNodeId="3633133276124307922" resolveInfo="elementLine" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.Statement" id="3633133276123971582" />
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="3633133276124409249">
                <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="3633133276124409250">
                  <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="3633133276124450606">
                    <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="3633133276124450608">
                      <node role="rValue" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="3633133276124450612">
                        <node role="operand" type="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" id="3633133276124450611" />
                        <node role="operation" type="jetbrains.mps.lang.smodel.structure.Node_GetIndexInParentOperation" id="3633133276124450616" />
                      </node>
                      <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="3633133276124450607">
                        <link role="variableDeclaration" targetNodeId="439148907936414314" resolveInfo="index" />
                      </node>
                    </node>
                  </node>
                  <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="3633133276124450618">
                    <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="3633133276124450620">
                      <node role="operand" type="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" id="3633133276124450619" />
                      <node role="operation" type="jetbrains.mps.lang.smodel.structure.Node_DeleteOperation" id="3633133276124450624" />
                    </node>
                  </node>
                  <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="5521685164201818823">
                    <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="5521685164201818824">
                      <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="5521685164201818825">
                        <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="5521685164201818826">
                          <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="5521685164201818827">
                            <link role="variableDeclaration" targetNodeId="5521685164201558369" resolveInfo="nodeToSelect" />
                          </node>
                          <node role="rValue" type="jetbrains.mps.baseLanguage.collections.structure.ListElementAccessExpression" id="5521685164201818828">
                            <node role="index" type="jetbrains.mps.baseLanguage.structure.MinusExpression" id="5521685164201818829">
                              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="5521685164201818830">
                                <property name="value" value="1" />
                              </node>
                              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="5521685164201818831">
                                <link role="variableDeclaration" targetNodeId="439148907936414314" resolveInfo="index" />
                              </node>
                            </node>
                            <node role="list" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="5521685164201818832">
                              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="5521685164201818856">
                                <link role="variableDeclaration" targetNodeId="439148907936339405" resolveInfo="line" />
                              </node>
                              <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkListAccess" id="5521685164201818834">
                                <link role="link" targetNodeId="1.8970989240999019149" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="5521685164201818835">
                        <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="5521685164201818836">
                          <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="5521685164201818837">
                            <link role="variableDeclaration" targetNodeId="5521685164201558374" resolveInfo="caret" />
                          </node>
                          <node role="rValue" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="5521685164201818838">
                            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="5521685164201818839">
                              <node role="operand" type="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" id="5521685164201818840">
                                <link role="concept" targetNodeId="1.8970989240999019143" resolveInfo="TextCommentLinePart" />
                                <node role="leftExpression" type="jetbrains.mps.baseLanguage.collections.structure.ListElementAccessExpression" id="5521685164201818841">
                                  <node role="index" type="jetbrains.mps.baseLanguage.structure.MinusExpression" id="5521685164201818842">
                                    <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="5521685164201818843">
                                      <property name="value" value="1" />
                                    </node>
                                    <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="5521685164201818844">
                                      <link role="variableDeclaration" targetNodeId="439148907936414314" resolveInfo="index" />
                                    </node>
                                  </node>
                                  <node role="list" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="5521685164201818845">
                                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="5521685164201818858">
                                      <link role="variableDeclaration" targetNodeId="439148907936339405" resolveInfo="line" />
                                    </node>
                                    <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkListAccess" id="5521685164201818847">
                                      <link role="link" targetNodeId="1.8970989240999019149" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node role="operation" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess" id="5521685164201818848">
                                <link role="property" targetNodeId="1.8970989240999019144" resolveInfo="text" />
                              </node>
                            </node>
                            <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="5521685164201818849">
                              <link role="baseMethodDeclaration" targetNodeId="2.~String.length():int" resolveInfo="length" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotExpression" id="5521685164201818850">
                      <node role="expression" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="5521685164201818851">
                        <link role="variableDeclaration" targetNodeId="5521685164201377124" resolveInfo="isBeginning" />
                      </node>
                    </node>
                  </node>
                  <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="3633133276124450626">
                    <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="3633133276124450628">
                      <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="3633133276124450627">
                        <link role="variableDeclaration" targetNodeId="439148907936339405" resolveInfo="line" />
                      </node>
                      <node role="operation" type="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" id="3633133276124450632">
                        <link role="baseMethodDeclaration" targetNodeId="439148907936414403" resolveInfo="tryMergeToRight" />
                        <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.MinusExpression" id="3633133276124450634">
                          <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="3633133276124450637">
                            <property name="value" value="1" />
                          </node>
                          <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="3633133276124450633">
                            <link role="variableDeclaration" targetNodeId="439148907936414314" resolveInfo="index" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="3633133276124409256">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="3633133276124409253">
                    <link role="variableDeclaration" targetNodeId="3633133276124061663" resolveInfo="lastElementLine" />
                  </node>
                  <node role="operation" type="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" id="3633133276124409261" />
                </node>
                <node role="ifFalseStatement" type="jetbrains.mps.baseLanguage.structure.BlockStatement" id="3633133276124409264">
                  <node role="statements" type="jetbrains.mps.baseLanguage.structure.StatementList" id="3633133276124409265">
                    <node role="statement" type="jetbrains.mps.baseLanguage.structure.SingleLineComment" id="7376433222636453897">
                      <node role="commentPart" type="jetbrains.mps.baseLanguage.structure.TextCommentPart" id="7376433222636453898">
                        <property name="text" value=" Merging last line parts" />
                      </node>
                    </node>
                    <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="3633133276124409267">
                      <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="3633133276124409268">
                        <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="3633133276124409269">
                          <link role="variableDeclaration" targetNodeId="439148907936414314" resolveInfo="index" />
                        </node>
                        <node role="rValue" type="jetbrains.mps.baseLanguage.structure.MinusExpression" id="3633133276124409270">
                          <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="3633133276124409271">
                            <property name="value" value="1" />
                          </node>
                          <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="3633133276124409272">
                            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="3633133276124409273">
                              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="3633133276124409274">
                                <link role="variableDeclaration" targetNodeId="3633133276124061663" resolveInfo="lastElementLine" />
                              </node>
                              <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkListAccess" id="3633133276124409275">
                                <link role="link" targetNodeId="1.8970989240999019149" />
                              </node>
                            </node>
                            <node role="operation" type="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" id="3633133276124409276" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="statement" type="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" id="3633133276124409277">
                      <node role="variable" type="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" id="3633133276124409278">
                        <property name="name" value="linePart" />
                      </node>
                      <node role="inputSequence" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="3633133276124409279">
                        <node role="operand" type="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" id="3633133276124409280" />
                        <node role="operation" type="jetbrains.mps.lang.smodel.structure.Node_GetNextSiblingsOperation" id="3633133276124409281" />
                      </node>
                      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="3633133276124409282">
                        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="3633133276124409283">
                          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="3633133276124409284">
                            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="3633133276124409285">
                              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="3633133276124409286">
                                <link role="variableDeclaration" targetNodeId="3633133276124061663" resolveInfo="lastElementLine" />
                              </node>
                              <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkListAccess" id="3633133276124409287">
                                <link role="link" targetNodeId="1.8970989240999019149" />
                              </node>
                            </node>
                            <node role="operation" type="jetbrains.mps.lang.smodel.structure.LinkList_AddChildOperation" id="3633133276124409288">
                              <node role="childNode" type="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" id="3633133276124409289">
                                <link role="concept" targetNodeId="1.8970989240999019142" resolveInfo="CommentLinePart" />
                                <node role="leftExpression" type="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" id="3633133276124409290">
                                  <link role="variable" targetNodeId="3633133276124409278" resolveInfo="linePart" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="3633133276124409291">
                      <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="3633133276124409292">
                        <node role="operand" type="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" id="3633133276124409293" />
                        <node role="operation" type="jetbrains.mps.lang.smodel.structure.Node_DeleteOperation" id="3633133276124409294" />
                      </node>
                    </node>
                    <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="5521685164201558496">
                      <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="5521685164201558497">
                        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="5521685164201558498">
                          <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="5521685164201558499">
                            <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="5521685164201558500">
                              <link role="variableDeclaration" targetNodeId="5521685164201558369" resolveInfo="nodeToSelect" />
                            </node>
                            <node role="rValue" type="jetbrains.mps.baseLanguage.collections.structure.ListElementAccessExpression" id="5521685164201558540">
                              <node role="index" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="5521685164201558544">
                                <link role="variableDeclaration" targetNodeId="439148907936414314" resolveInfo="index" />
                              </node>
                              <node role="list" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="5521685164201558533">
                                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="5521685164201558530">
                                  <link role="variableDeclaration" targetNodeId="3633133276124061663" resolveInfo="lastElementLine" />
                                </node>
                                <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkListAccess" id="5521685164201558538">
                                  <link role="link" targetNodeId="1.8970989240999019149" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="5521685164201558508">
                          <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="5521685164201558509">
                            <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="5521685164201558510">
                              <link role="variableDeclaration" targetNodeId="5521685164201558374" resolveInfo="caret" />
                            </node>
                            <node role="rValue" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="5521685164201558511">
                              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="5521685164201558512">
                                <node role="operand" type="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" id="5521685164201558513">
                                  <link role="concept" targetNodeId="1.8970989240999019143" resolveInfo="TextCommentLinePart" />
                                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.collections.structure.ListElementAccessExpression" id="5521685164201558551">
                                    <node role="index" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="5521685164201558554">
                                      <link role="variableDeclaration" targetNodeId="439148907936414314" resolveInfo="index" />
                                    </node>
                                    <node role="list" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="5521685164201558555">
                                      <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="5521685164201558556">
                                        <link role="variableDeclaration" targetNodeId="3633133276124061663" resolveInfo="lastElementLine" />
                                      </node>
                                      <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkListAccess" id="5521685164201558557">
                                        <link role="link" targetNodeId="1.8970989240999019149" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node role="operation" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess" id="5521685164201558521">
                                  <link role="property" targetNodeId="1.8970989240999019144" resolveInfo="text" />
                                </node>
                              </node>
                              <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="5521685164201558522">
                                <link role="baseMethodDeclaration" targetNodeId="2.~String.length():int" resolveInfo="length" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotExpression" id="5521685164201558527">
                        <node role="expression" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="5521685164201558523">
                          <link role="variableDeclaration" targetNodeId="5521685164201377124" resolveInfo="isBeginning" />
                        </node>
                      </node>
                    </node>
                    <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="3633133276124409295">
                      <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="3633133276124409296">
                        <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="3633133276124409297">
                          <link role="variableDeclaration" targetNodeId="3633133276124061663" resolveInfo="lastElementLine" />
                        </node>
                        <node role="operation" type="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" id="3633133276124409298">
                          <link role="baseMethodDeclaration" targetNodeId="439148907936414403" resolveInfo="tryMergeToRight" />
                          <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="3633133276124409299">
                            <link role="variableDeclaration" targetNodeId="439148907936414314" resolveInfo="index" />
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
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="5521685164201345794">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="5521685164201561503">
            <node role="creator" type="jetbrains.mps.baseLanguage.structure.ClassCreator" id="5521685164201565483">
              <link role="baseMethodDeclaration" targetNodeId="4.5521685164201281392" resolveInfo="NodeCaretPair" />
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="5521685164201565484">
                <link role="variableDeclaration" targetNodeId="5521685164201558369" resolveInfo="nodeToSelect" />
              </node>
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="5521685164201565486">
                <link role="variableDeclaration" targetNodeId="5521685164201558374" resolveInfo="caret" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1901211815201449432" />
      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="5521685164201377124">
        <property name="name" value="isBeginning" />
        <node role="type" type="jetbrains.mps.baseLanguage.structure.BooleanType" id="5521685164201377129" />
      </node>
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="5521685164201377128">
        <link role="classifier" targetNodeId="4.5521685164201281390" resolveInfo="NodeCaretPair" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.behavior.structure.ConceptBehavior" id="9042833497008205275">
    <link role="concept" targetNodeId="1.8970989240999019142" resolveInfo="CommentLinePart" />
    <node role="constructor" type="jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration" id="9042833497008205276">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="9042833497008205277" />
    </node>
    <node role="method" type="jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration" id="9042833497008205283">
      <property name="isVirtual" value="true" />
      <property name="isAbstract" value="false" />
      <property name="name" value="smartDelete" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="9042833497008205284" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="5521685164201345775">
        <link role="classifier" targetNodeId="4.5521685164201281390" resolveInfo="NodeCaretPair" />
      </node>
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="9042833497008205286">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="9042833497008205289">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="9042833497008205292">
            <node role="operand" type="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" id="9042833497008205291" />
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.Node_DeleteOperation" id="9042833497008205296" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="5521685164201345777">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="5521685164201345779" />
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="5521685164201377120">
        <property name="name" value="isBeginning" />
        <node role="type" type="jetbrains.mps.baseLanguage.structure.BooleanType" id="5521685164201377121" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.behavior.structure.ConceptBehavior" id="3633133276124276204">
    <link role="concept" targetNodeId="1.8970989240999019145" resolveInfo="InlineTagCommentLinePart" />
    <node role="constructor" type="jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration" id="3633133276124276205">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="3633133276124276206" />
    </node>
    <node role="method" type="jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration" id="3633133276124360200">
      <property name="name" value="smartDelete" />
      <property name="isVirtual" value="true" />
      <link role="overriddenMethod" targetNodeId="9042833497008205283" resolveInfo="smartDelete" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="3633133276124360201" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="3633133276124360202">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="3633133276124360206">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="3633133276124360207">
            <property name="name" value="index" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.IntegerType" id="3633133276124360208" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="3633133276124360211">
              <node role="operand" type="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" id="3633133276124360210" />
              <node role="operation" type="jetbrains.mps.lang.smodel.structure.Node_GetIndexInParentOperation" id="3633133276124360215" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="3633133276124360226">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="3633133276124360227">
            <property name="name" value="line" />
            <node role="type" type="jetbrains.mps.lang.smodel.structure.SNodeType" id="3633133276124360228">
              <link role="concept" targetNodeId="1.8465538089690331500" resolveInfo="CommentLine" />
            </node>
            <node role="initializer" type="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" id="3633133276124360236">
              <link role="concept" targetNodeId="1.8465538089690331500" resolveInfo="CommentLine" />
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="3633133276124360231">
                <node role="operand" type="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" id="3633133276124360230" />
                <node role="operation" type="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" id="3633133276124360235" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="3633133276124360217">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="3633133276124360219">
            <node role="operand" type="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" id="3633133276124360218" />
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.Node_DeleteOperation" id="3633133276124360223" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="8277869836209818598">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="8277869836209818599">
            <property name="name" value="pair" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="8277869836209818600">
              <link role="classifier" targetNodeId="4.5521685164201281390" resolveInfo="NodeCaretPair" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="8277869836209818601">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="8277869836209818602">
                <link role="variableDeclaration" targetNodeId="3633133276124360227" resolveInfo="line" />
              </node>
              <node role="operation" type="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" id="8277869836209818603">
                <link role="baseMethodDeclaration" targetNodeId="439148907936414403" resolveInfo="tryMergeToRight" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.MinusExpression" id="8277869836209818604">
                  <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="8277869836209818605">
                    <property name="value" value="1" />
                  </node>
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="8277869836209818606">
                    <link role="variableDeclaration" targetNodeId="3633133276124360207" resolveInfo="index" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="8277869836209839960">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="8277869836209839961">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="8277869836209839969">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="8277869836209839971">
                <node role="creator" type="jetbrains.mps.baseLanguage.structure.ClassCreator" id="8277869836209845216">
                  <link role="baseMethodDeclaration" targetNodeId="4.5521685164201281392" resolveInfo="NodeCaretPair" />
                  <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="8277869836209911324">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="8277869836209911317">
                      <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="8277869836209911322">
                        <link role="variableDeclaration" targetNodeId="3633133276124360227" resolveInfo="line" />
                      </node>
                      <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkListAccess" id="8277869836209911323">
                        <link role="link" targetNodeId="1.8970989240999019149" />
                      </node>
                    </node>
                    <node role="operation" type="jetbrains.mps.baseLanguage.collections.structure.GetElementOperation" id="8277869836209911328">
                      <node role="argument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="8277869836209911332">
                        <link role="variableDeclaration" targetNodeId="3633133276124360207" resolveInfo="index" />
                      </node>
                    </node>
                  </node>
                  <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="8277869836209845224">
                    <property name="value" value="0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="8277869836209839965">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="8277869836209839968" />
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="8277869836209839964">
              <link role="variableDeclaration" targetNodeId="8277869836209818599" resolveInfo="pair" />
            </node>
          </node>
          <node role="ifFalseStatement" type="jetbrains.mps.baseLanguage.structure.BlockStatement" id="8277869836209845226">
            <node role="statements" type="jetbrains.mps.baseLanguage.structure.StatementList" id="8277869836209845227">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="8277869836209845228">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="8277869836209845230">
                  <link role="variableDeclaration" targetNodeId="8277869836209818599" resolveInfo="pair" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="8277869836209498488">
        <link role="classifier" targetNodeId="4.5521685164201281390" resolveInfo="NodeCaretPair" />
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="8277869836209604977">
        <property name="name" value="isBegining" />
        <node role="type" type="jetbrains.mps.baseLanguage.structure.BooleanType" id="8277869836209604978" />
      </node>
    </node>
  </node>
</model>


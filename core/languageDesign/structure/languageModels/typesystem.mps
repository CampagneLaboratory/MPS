<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:00000000-0000-4000-0000-011c8959028f(jetbrains.mps.lang.structure.typesystem)">
  <persistence version="3" />
  <refactoringHistory />
  <language namespace="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" />
  <language namespace="7a5dda62-9140-4668-ab76-d5ed1746f2b2(jetbrains.mps.lang.typesystem)" />
  <language namespace="7866978e-a0f0-4cc7-81bc-4d213d9375e1(jetbrains.mps.lang.smodel)" />
  <language namespace="83888646-71ce-4f1c-9c53-c54016f6ad4f(jetbrains.mps.baseLanguage.collections)" />
  <language namespace="fd392034-7849-419d-9071-12563d152375(jetbrains.mps.baseLanguage.closures)" />
  <language namespace="af65afd8-f0dd-4942-87d9-63a55f2a9db1(jetbrains.mps.lang.behavior)" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902c1(jetbrains.mps.baseLanguage.constraints)" version="83" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="1" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902ae(jetbrains.mps.lang.typesystem.constraints)" version="17" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902fb(jetbrains.mps.lang.smodel.constraints)" version="21" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" version="16" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590328(jetbrains.mps.baseLanguage.collections.constraints)" version="6" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959032e(jetbrains.mps.baseLanguage.collections.structure)" version="4" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590338(jetbrains.mps.baseLanguage.closures.structure)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590340(jetbrains.mps.lang.pattern.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959028c(jetbrains.mps.lang.structure.constraints)" version="11" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590334(jetbrains.mps.baseLanguage.closures.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590283(jetbrains.mps.lang.core.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895903e4(jetbrains.mps.internal.collections.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902db(jetbrains.mps.baseLanguage.blTypes.constraints)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959033d(jetbrains.mps.lang.annotations.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590345(jetbrains.mps.lang.pattern.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902b4(jetbrains.mps.lang.typesystem.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895903fe(jetbrains.mps.baseLanguage.strings.constraints)" version="1" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590402(jetbrains.mps.baseLanguage.strings.structure)" version="9" />
  <maxImportIndex value="10" />
  <import index="1" modelUID="f:java_stub#java.lang(java.lang@java_stub)" version="-1" />
  <import index="5" modelUID="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" version="0" />
  <import index="6" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" />
  <import index="7" modelUID="r:00000000-0000-4000-0000-011c8959028b(jetbrains.mps.lang.structure.behavior)" version="-1" />
  <import index="9" modelUID="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" version="-1" />
  <import index="10" modelUID="f:java_stub#jetbrains.mps.lang.smodel.generator.smodelAdapter(jetbrains.mps.lang.smodel.generator.smodelAdapter@java_stub)" version="-1" />
  <node type="jetbrains.mps.lang.typesystem.structure.NonTypesystemRule" id="1212181746947">
    <property name="name" value="check_LinkDeclaration" />
    <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1212181746948">
      <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1212181840023">
        <property name="value" value="link role shouldn't hide roles in super-concepts" />
      </node>
      <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1212181840024">
        <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1212181840025">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1212181840026" />
        </node>
        <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1212181840027">
          <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1212181840028" />
          <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1212181840029">
            <node role="operand" type="jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference" id="1212181854183">
              <link role="applicableNode" targetNodeId="1212181808765" resolveInfo="linkToCheck" />
            </node>
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess" id="1212181840031">
              <link role="property" targetNodeId="5.1071599776563" resolveInfo="role" />
            </node>
          </node>
        </node>
      </node>
      <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1212181840032">
        <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1212181840033">
          <property name="name" value="declaringConcept" />
          <node role="type" type="jetbrains.mps.lang.smodel.structure.SConceptType" id="1212181840034" />
          <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1212181840035">
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" id="1212181840036">
              <node role="parameter" type="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" id="1212181840037">
                <node role="conceptArgument" type="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" id="1212181840038">
                  <link role="conceptDeclaration" targetNodeId="5.1169125787135" resolveInfo="AbstractConceptDeclaration" />
                </node>
              </node>
            </node>
            <node role="operand" type="jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference" id="1212181840039">
              <link role="applicableNode" targetNodeId="1212181808765" resolveInfo="linkToCheck" />
            </node>
          </node>
        </node>
      </node>
      <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1212181840040">
        <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1212181840041">
          <property name="name" value="supers" />
          <node role="type" type="jetbrains.mps.baseLanguage.collections.structure.ListType" id="1212181840042">
            <node role="elementType" type="jetbrains.mps.lang.smodel.structure.SConceptType" id="1212181840043" />
          </node>
          <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1212181840044">
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.Concept_GetDirectSuperConcepts" id="1212181840045" />
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1212181840046">
              <link role="variableDeclaration" targetNodeId="1212181840033" resolveInfo="declaringConcept" />
            </node>
          </node>
        </node>
      </node>
      <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1212181840047">
        <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1212181840048">
          <property name="name" value="linksInSupers" />
          <node role="type" type="jetbrains.mps.baseLanguage.collections.structure.SequenceType" id="1212181840049">
            <node role="elementType" type="jetbrains.mps.lang.smodel.structure.SNodeType" id="1212181840050">
              <link role="concept" targetNodeId="5.1071489288298" resolveInfo="LinkDeclaration" />
            </node>
          </node>
          <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1212181840051">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1212181840052">
              <link role="variableDeclaration" targetNodeId="1212181840041" resolveInfo="supers" />
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.collections.structure.TranslateOperation" id="1227876791986">
              <node role="closure" type="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" id="1227876791987">
                <node role="parameter" type="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" id="1227876791988">
                  <property name="name" value="concept" />
                  <node role="type" type="jetbrains.mps.baseLanguage.structure.WildCardType" id="1227876791989" />
                </node>
                <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1227876791990">
                  <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1227876791991">
                    <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1227876791992">
                      <property name="name" value="links" />
                      <node role="type" type="jetbrains.mps.lang.smodel.structure.SNodeListType" id="1227876791993">
                        <link role="elementConcept" targetNodeId="5.1071489288298" resolveInfo="LinkDeclaration" />
                      </node>
                      <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1227876791994">
                        <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkListAccess" id="1227876791995">
                          <link role="link" targetNodeId="5.1071489727083" />
                        </node>
                        <node role="operand" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1227876816756">
                          <link role="variableDeclaration" targetNodeId="1227876791988" resolveInfo="concept" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="statement" type="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" id="1227876791997">
                    <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1227876791998">
                      <node role="statement" type="jetbrains.mps.baseLanguage.closures.structure.YieldStatement" id="1227876818783">
                        <node role="expression" type="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" id="1227876818784">
                          <link role="variable" targetNodeId="1227876792002" resolveInfo="link" />
                        </node>
                      </node>
                    </node>
                    <node role="inputSequence" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1227876792001">
                      <link role="variableDeclaration" targetNodeId="1227876791992" resolveInfo="links" />
                    </node>
                    <node role="variable" type="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" id="1227876792002">
                      <property name="name" value="link" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="statement" type="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" id="1212181840069">
        <node role="variable" type="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" id="1212181840070">
          <property name="name" value="link" />
        </node>
        <node role="inputSequence" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1212181840071">
          <link role="variableDeclaration" targetNodeId="1212181840048" resolveInfo="linksInSupers" />
        </node>
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1212181840072">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1212181840073">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1212181840074">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1212181840075">
                <node role="operand" type="jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference" id="1212181840076">
                  <link role="applicableNode" targetNodeId="1212181808765" resolveInfo="linkToCheck" />
                </node>
                <node role="operation" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess" id="1212181840077">
                  <link role="property" targetNodeId="5.1071599776563" resolveInfo="role" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1212181840078">
                <link role="baseMethodDeclaration" targetNodeId="1.~String.equals(java.lang.Object):boolean" resolveInfo="equals" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1212181840079">
                  <node role="operand" type="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" id="1212181840080">
                    <link role="variable" targetNodeId="1212181840070" resolveInfo="link" />
                  </node>
                  <node role="operation" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess" id="1212181840081">
                    <link role="property" targetNodeId="5.1071599776563" resolveInfo="role" />
                  </node>
                </node>
              </node>
            </node>
            <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1212181840082">
              <node role="statement" type="jetbrains.mps.lang.typesystem.structure.ReportErrorStatement" id="1212181840083">
                <node role="errorString" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="1212181840084">
                  <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="1212181840085">
                    <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="1212181840086">
                      <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1212181840087">
                        <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1212181840088">
                          <node role="operand" type="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" id="1212181840089">
                            <link role="variable" targetNodeId="1212181840070" resolveInfo="link" />
                          </node>
                          <node role="operation" type="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" id="1212181840090">
                            <node role="parameter" type="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" id="1212181840091">
                              <node role="conceptArgument" type="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" id="1212181840092">
                                <link role="conceptDeclaration" targetNodeId="5.1169125787135" resolveInfo="AbstractConceptDeclaration" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="operation" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess" id="1212181840093">
                          <link role="property" targetNodeId="6.1169194664001" resolveInfo="name" />
                        </node>
                      </node>
                      <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1212181840094">
                        <property name="value" value="' is already declared in " />
                      </node>
                    </node>
                    <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1212181840095">
                      <node role="operand" type="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" id="1212181840096">
                        <link role="variable" targetNodeId="1212181840070" resolveInfo="link" />
                      </node>
                      <node role="operation" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess" id="1212181840097">
                        <link role="property" targetNodeId="5.1071599776563" resolveInfo="role" />
                      </node>
                    </node>
                  </node>
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1212181840098">
                    <property name="value" value="link '" />
                  </node>
                </node>
                <node role="nodeToReport" type="jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference" id="1212181840099">
                  <link role="applicableNode" targetNodeId="1212181808765" resolveInfo="linkToCheck" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="applicableNode" type="jetbrains.mps.lang.typesystem.structure.ConceptReference" id="1212181808765">
      <property name="name" value="linkToCheck" />
      <link role="concept" targetNodeId="5.1071489288298" resolveInfo="LinkDeclaration" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.typesystem.structure.NonTypesystemRule" id="1212181908803">
    <property name="name" value="check_PropertyDeclaration" />
    <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1212181908804">
      <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1212181959979">
        <property name="value" value="property overriding is banned" />
      </node>
      <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1212181978950">
        <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1212181978951">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1212181987183" />
        </node>
        <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1212181984007">
          <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1212181985604" />
          <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1212181983190">
            <node role="operand" type="jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference" id="1212181981642">
              <link role="applicableNode" targetNodeId="1212181912759" resolveInfo="prop" />
            </node>
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess" id="1212181983428">
              <link role="property" targetNodeId="6.1169194664001" resolveInfo="name" />
            </node>
          </node>
        </node>
      </node>
      <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1212182013584">
        <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1212182013585">
          <property name="name" value="concept" />
          <node role="type" type="jetbrains.mps.lang.smodel.structure.SNodeType" id="1212182013586">
            <link role="concept" targetNodeId="5.1169125787135" resolveInfo="AbstractConceptDeclaration" />
          </node>
          <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1212182013587">
            <node role="operand" type="jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference" id="1212182013588">
              <link role="applicableNode" targetNodeId="1212181912759" resolveInfo="prop" />
            </node>
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" id="1212182013589">
              <node role="parameter" type="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" id="1212182013590">
                <node role="conceptArgument" type="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" id="1212182013591">
                  <link role="conceptDeclaration" targetNodeId="5.1169125787135" resolveInfo="AbstractConceptDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1212182188247">
        <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1212182188248">
          <property name="name" value="propInConcept" />
          <node role="type" type="jetbrains.mps.lang.smodel.structure.SNodeType" id="1212182188249">
            <link role="concept" targetNodeId="5.1071489288299" resolveInfo="PropertyDeclaration" />
          </node>
          <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1219835824530">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1219835823669">
              <link role="variableDeclaration" targetNodeId="1212182013585" resolveInfo="concept" />
            </node>
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" id="1219835826564">
              <link role="baseMethodDeclaration" targetNodeId="7.1219835742593" resolveInfo="findPropertyDeclaration" />
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1219835828253">
                <node role="operand" type="jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference" id="1219835827862">
                  <link role="applicableNode" targetNodeId="1212181912759" resolveInfo="prop" />
                </node>
                <node role="operation" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess" id="1219835828663">
                  <link role="property" targetNodeId="6.1169194664001" resolveInfo="name" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1212182148320">
        <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1212182148321">
          <node role="statement" type="jetbrains.mps.lang.typesystem.structure.ReportErrorStatement" id="1212182341577">
            <node role="errorString" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="1212182341578">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="1212182341579">
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="1212182341580">
                  <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1212182341581">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1212182341582">
                      <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1212182382332">
                        <link role="variableDeclaration" targetNodeId="1212182188248" resolveInfo="propInConcept" />
                      </node>
                      <node role="operation" type="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" id="1212182341584">
                        <node role="parameter" type="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" id="1212182341585">
                          <node role="conceptArgument" type="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" id="1212182341586">
                            <link role="conceptDeclaration" targetNodeId="5.1169125787135" resolveInfo="AbstractConceptDeclaration" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="operation" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess" id="1212182341587">
                      <link role="property" targetNodeId="6.1169194664001" resolveInfo="name" />
                    </node>
                  </node>
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1212182341588">
                    <property name="value" value="' is already declared in " />
                  </node>
                </node>
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1212182341589">
                  <node role="operand" type="jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference" id="1212182350189">
                    <link role="applicableNode" targetNodeId="1212181912759" resolveInfo="prop" />
                  </node>
                  <node role="operation" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess" id="1212182352925">
                    <link role="property" targetNodeId="6.1169194664001" resolveInfo="name" />
                  </node>
                </node>
              </node>
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1212182341592">
                <property name="value" value="property '" />
              </node>
            </node>
            <node role="nodeToReport" type="jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference" id="1212182390786">
              <link role="applicableNode" targetNodeId="1212181912759" resolveInfo="prop" />
            </node>
          </node>
        </node>
        <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1212182301542">
          <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1212182321967">
            <link role="variableDeclaration" targetNodeId="1212182188248" resolveInfo="propInConcept" />
          </node>
          <node role="leftExpression" type="jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference" id="1212182299338">
            <link role="applicableNode" targetNodeId="1212181912759" resolveInfo="prop" />
          </node>
        </node>
      </node>
    </node>
    <node role="applicableNode" type="jetbrains.mps.lang.typesystem.structure.ConceptReference" id="1212181912759">
      <property name="name" value="prop" />
      <link role="concept" targetNodeId="5.1071489288299" resolveInfo="PropertyDeclaration" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.typesystem.structure.NonTypesystemRule" id="1229446019449">
    <property name="name" value="check_InstanceOfDeprecated" />
    <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1229446019450">
      <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1229446253664">
        <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1229446253665">
          <property name="name" value="declaration" />
          <node role="type" type="jetbrains.mps.lang.smodel.structure.SNodeType" id="1229446253666">
            <link role="concept" targetNodeId="6.1133920641626" resolveInfo="BaseConcept" />
          </node>
        </node>
      </node>
      <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1229447402143">
        <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1229447404036">
          <node role="rValue" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1229447410462">
            <link role="baseMethodDeclaration" targetNodeId="10.~SNodeOperations.getConceptDeclaration(jetbrains.mps.smodel.SNode):jetbrains.mps.smodel.SNode" resolveInfo="getConceptDeclaration" />
            <link role="classConcept" targetNodeId="10.~SNodeOperations" resolveInfo="SNodeOperations" />
            <node role="actualArgument" type="jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference" id="1229447414182">
              <link role="applicableNode" targetNodeId="1229446138798" resolveInfo="concept" />
            </node>
          </node>
          <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1229447402144">
            <link role="variableDeclaration" targetNodeId="1229446253665" resolveInfo="declaration" />
          </node>
        </node>
      </node>
      <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1229446185706">
        <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1229446185708">
          <node role="statement" type="jetbrains.mps.lang.typesystem.structure.WarningStatement" id="1229447815689">
            <node role="nodeToReport" type="jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference" id="1229447821556">
              <link role="applicableNode" targetNodeId="1229446138798" resolveInfo="concept" />
            </node>
            <node role="warningText" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="1229447816770">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1229447816771">
                <property name="value" value="' is instance is deprecated concept" />
              </node>
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="1229447880944">
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1229447882275">
                  <property name="value" value="'" />
                </node>
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1229447816772">
                  <node role="operand" type="jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference" id="1229447816773">
                    <link role="applicableNode" targetNodeId="1229446138798" resolveInfo="concept" />
                  </node>
                  <node role="operation" type="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" id="1229447816774">
                    <link role="baseMethodDeclaration" targetNodeId="9.1213877396640" resolveInfo="getPresentation" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="condition" type="jetbrains.mps.baseLanguage.structure.AndExpression" id="1229446505164">
          <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1229446205417">
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" id="1229446208264">
              <node role="conceptArgument" type="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" id="1229446210796">
                <link role="conceptDeclaration" targetNodeId="6.1224608834445" resolveInfo="IDeprecatable" />
              </node>
            </node>
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1229446268214">
              <link role="variableDeclaration" targetNodeId="1229446253665" resolveInfo="declaration" />
            </node>
          </node>
          <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1229446547708">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" id="1229446544579">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.CastExpression" id="1229446544580">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1229446544581">
                  <link role="variableDeclaration" targetNodeId="1229446253665" resolveInfo="declaration" />
                </node>
                <node role="type" type="jetbrains.mps.lang.smodel.structure.SNodeType" id="1229446544582">
                  <link role="concept" targetNodeId="6.1224608834445" resolveInfo="IDeprecatable" />
                </node>
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" id="1229446553445">
              <link role="baseMethodDeclaration" targetNodeId="9.1224609060727" resolveInfo="isDeprecated" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="applicableNode" type="jetbrains.mps.lang.typesystem.structure.ConceptReference" id="1229446138798">
      <property name="name" value="concept" />
      <link role="concept" targetNodeId="6.1133920641626" resolveInfo="BaseConcept" />
    </node>
  </node>
</model>


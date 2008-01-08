<?xml version="1.0" encoding="UTF-8"?>
<model name="jetbrains.mps.baseLanguage.sandbox.misc">
  <persistence version="1" />
  <refactoringHistory />
  <language namespace="jetbrains.mps.baseLanguage">
    <languageAspect modelUID="jetbrains.mps.baseLanguage.intentions" version="-1" />
    <languageAspect modelUID="jetbrains.mps.baseLanguage.editor" version="-1" />
    <languageAspect modelUID="jetbrains.mps.baseLanguage.scripts" version="-1" />
    <languageAspect modelUID="jetbrains.mps.baseLanguage.structure" version="-1" />
    <languageAspect modelUID="jetbrains.mps.baseLanguage.constraints" version="-1" />
    <languageAspect modelUID="jetbrains.mps.baseLanguage.helgins" version="-1" />
    <languageAspect modelUID="jetbrains.mps.baseLanguage.actions" version="-1" />
  </language>
  <language namespace="jetbrains.mps.bootstrap.smodelLanguage">
    <languageAspect modelUID="jetbrains.mps.bootstrap.smodelLanguage.editor" version="-1" />
    <languageAspect modelUID="jetbrains.mps.bootstrap.smodelLanguage.intentions" version="-1" />
    <languageAspect modelUID="jetbrains.mps.bootstrap.smodelLanguage.helgins" version="-1" />
    <languageAspect modelUID="jetbrains.mps.bootstrap.smodelLanguage.scripts" version="-1" />
    <languageAspect modelUID="jetbrains.mps.bootstrap.smodelLanguage.structure" version="-1" />
    <languageAspect modelUID="jetbrains.mps.bootstrap.smodelLanguage.constraints" version="-1" />
    <languageAspect modelUID="jetbrains.mps.bootstrap.smodelLanguage.actions" version="-1" />
  </language>
  <language namespace="jetbrains.mps.baseLanguage.ext.collections.lang">
    <languageAspect modelUID="jetbrains.mps.baseLanguage.ext.collections.lang.constraints" version="-1" />
    <languageAspect modelUID="jetbrains.mps.baseLanguage.ext.collections.lang.structure" version="-1" />
    <languageAspect modelUID="jetbrains.mps.baseLanguage.ext.collections.lang.actions" version="-1" />
    <languageAspect modelUID="jetbrains.mps.baseLanguage.ext.collections.lang.helgins" version="-1" />
    <languageAspect modelUID="jetbrains.mps.baseLanguage.ext.collections.lang.editor" version="-1" />
    <languageAspect modelUID="jetbrains.mps.baseLanguage.ext.collections.lang.intentions" version="-1" />
  </language>
  <language namespace="jetbrains.mps.bootstrap.helgins">
    <languageAspect modelUID="jetbrains.mps.bootstrap.helgins.structure" version="-1" />
    <languageAspect modelUID="jetbrains.mps.bootstrap.helgins.helgins" version="-1" />
    <languageAspect modelUID="jetbrains.mps.bootstrap.helgins.intentions" version="-1" />
    <languageAspect modelUID="jetbrains.mps.bootstrap.helgins.constraints" version="-1" />
    <languageAspect modelUID="jetbrains.mps.bootstrap.helgins.actions" version="-1" />
    <languageAspect modelUID="jetbrains.mps.bootstrap.helgins.editor" version="-1" />
  </language>
  <language namespace="jetbrains.mps.core">
    <languageAspect modelUID="jetbrains.mps.core.actions" version="-1" />
    <languageAspect modelUID="jetbrains.mps.core.constraints" version="-1" />
    <languageAspect modelUID="jetbrains.mps.core.scripts" version="-1" />
    <languageAspect modelUID="jetbrains.mps.core.structure" version="-1" />
    <languageAspect modelUID="jetbrains.mps.core.editor" version="-1" />
  </language>
  <language namespace="jetbrains.mps.quotation">
    <languageAspect modelUID="jetbrains.mps.quotation.structure" version="-1" />
    <languageAspect modelUID="jetbrains.mps.quotation.editor" version="-1" />
    <languageAspect modelUID="jetbrains.mps.quotation.helgins" version="-1" />
  </language>
  <maxImportIndex value="125" />
  <import index="1" modelUID="java.lang@java_stub" version="-1" />
  <import index="3" modelUID="java.util@java_stub" version="-1" />
  <import index="123" modelUID="jetbrains.mps.baseLanguage.sandbox.test" version="-1" />
  <import index="124" modelUID="java.io@java_stub" version="-1" />
  <import index="125" modelUID="jetbrains.mps.core.structure" version="-1" />
  <visible index="2" modelUID="jetbrains.mps.smodel@java_stub" />
  <refactoringLog type="jetbrains.mps.logging.refactoring.structure.RuntimeLogStack" id="1191250524181">
    <node role="log" type="jetbrains.mps.logging.refactoring.structure.RuntimeLog" id="1191250524182">
      <property name="modelVersion" value="0" />
      <node role="updateModelClause" type="jetbrains.mps.logging.refactoring.structure.UpdateModelClause" id="1191250524183">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1191250524184">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1191250524185">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1191250521836">
              <property name="name" value="nodeId" />
              <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1191250524186">
                <link role="classifier" targetNodeId="1.~String" resolveInfo="String" />
              </node>
              <node role="initializer" type="jetbrains.mps.logging.refactoring.structure.GetNodeIdOperation" id="1191250524187">
                <node role="argument" type="jetbrains.mps.logging.refactoring.structure.DowncastOperation" id="1191250524188">
                  <node role="argument" type="jetbrains.mps.logging.refactoring.structure.RequiredAdditionalArgumentReference" id="1191250524189">
                    <link role="argument" targetNodeId="1191250519973" resolveInfo="oldNode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1191250524190">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1191250521835">
              <property name="name" value="modelUID" />
              <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1191250524191">
                <link role="classifier" targetNodeId="1.~String" resolveInfo="String" />
              </node>
              <node role="initializer" type="jetbrains.mps.logging.refactoring.structure.GetModelUIDOperation" id="1191250524192">
                <node role="argument" type="jetbrains.mps.logging.refactoring.structure.DowncastOperation" id="1191250524193">
                  <node role="argument" type="jetbrains.mps.logging.refactoring.structure.RequiredAdditionalArgumentReference" id="1191250524194">
                    <link role="argument" targetNodeId="1191250519973" resolveInfo="oldNode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ForeachStatement" id="1191250524195">
            <node role="iterable" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1191250524196">
              <node role="leftExpression" type="jetbrains.mps.logging.refactoring.structure.ConceptFunctionParameter_SModel" id="1191250524197" />
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Model_NodesOperation" id="1191250524198" />
            </node>
            <node role="variable" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1191250521638">
              <property name="name" value="node" />
              <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1191250524199" />
            </node>
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1191250524200">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ForeachStatement" id="1191250524201">
                <node role="iterable" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1191250524202">
                  <link role="baseMethodDeclaration" targetNodeId="2v.~SNode.getReferences():java.util.List" resolveInfo="getReferences" />
                  <node role="instance" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SemanticDowncastExpression" id="1191250524203">
                    <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1191250524204">
                      <link role="variableDeclaration" targetNodeId="1191250521638" resolveInfo="node" />
                    </node>
                  </node>
                </node>
                <node role="variable" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1191250521834">
                  <property name="name" value="reference" />
                  <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1191250524205">
                    <link role="classifier" targetNodeId="2v.~SReference" resolveInfo="SReference" />
                  </node>
                </node>
                <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1191250524206">
                  <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1191250524207">
                    <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1191250524208">
                      <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1191250524209">
                        <node role="expression" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1191250524210">
                          <link role="baseMethodDeclaration" targetNodeId="2v.~SReference.setTargetModelUID(jetbrains.mps.smodel.SModelUID):void" resolveInfo="setTargetModelUID" />
                          <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1191250524211">
                            <link role="baseMethodDeclaration" targetNodeId="2v.~SModelUID.fromString(java.lang.String):jetbrains.mps.smodel.SModelUID" resolveInfo="fromString" />
                            <link role="classConcept" targetNodeId="2v.~SModelUID" resolveInfo="SModelUID" />
                            <node role="actualArgument" type="jetbrains.mps.logging.refactoring.structure.GetModelUIDOperation" id="1191250524212">
                              <node role="argument" type="jetbrains.mps.logging.refactoring.structure.DowncastOperation" id="1191250524213">
                                <node role="argument" type="jetbrains.mps.logging.refactoring.structure.RequiredAdditionalArgumentReference" id="1191250524214">
                                  <link role="argument" targetNodeId="1191250520703" resolveInfo="newNode" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node role="instance" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1191250524215">
                            <link role="variableDeclaration" targetNodeId="1191250521834" resolveInfo="reference" />
                          </node>
                        </node>
                      </node>
                      <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1191250524216">
                        <node role="expression" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1191250524217">
                          <link role="baseMethodDeclaration" targetNodeId="2v.~SReference.setTargetNodeId(java.lang.String):void" resolveInfo="setTargetNodeId" />
                          <node role="actualArgument" type="jetbrains.mps.logging.refactoring.structure.GetNodeIdOperation" id="1191250524218">
                            <node role="argument" type="jetbrains.mps.logging.refactoring.structure.DowncastOperation" id="1191250524219">
                              <node role="argument" type="jetbrains.mps.logging.refactoring.structure.RequiredAdditionalArgumentReference" id="1191250524220">
                                <link role="argument" targetNodeId="1191250520703" resolveInfo="newNode" />
                              </node>
                            </node>
                          </node>
                          <node role="instance" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1191250524221">
                            <link role="variableDeclaration" targetNodeId="1191250521834" resolveInfo="reference" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="condition" type="jetbrains.mps.baseLanguage.structure.AndExpression" id="1191250524222">
                      <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1191250524223">
                        <link role="baseMethodDeclaration" targetNodeId="1.~String.equals(java.lang.Object):boolean" resolveInfo="equals" />
                        <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1191250524224">
                          <link role="baseMethodDeclaration" targetNodeId="2v.~SModelUID.toString():java.lang.String" resolveInfo="toString" />
                          <node role="instance" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1191250524225">
                            <link role="baseMethodDeclaration" targetNodeId="2v.~SReference.getTargetModelUID():jetbrains.mps.smodel.SModelUID" resolveInfo="getTargetModelUID" />
                            <node role="instance" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1191250524226">
                              <link role="variableDeclaration" targetNodeId="1191250521834" resolveInfo="reference" />
                            </node>
                          </node>
                        </node>
                        <node role="instance" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1191250524227">
                          <link role="variableDeclaration" targetNodeId="1191250521835" resolveInfo="modelUID" />
                        </node>
                      </node>
                      <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1191250524228">
                        <link role="baseMethodDeclaration" targetNodeId="1.~String.equals(java.lang.Object):boolean" resolveInfo="equals" />
                        <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1191250524229">
                          <link role="baseMethodDeclaration" targetNodeId="2v.~SReference.getTargetNodeId():java.lang.String" resolveInfo="getTargetNodeId" />
                          <node role="instance" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1191250524230">
                            <link role="variableDeclaration" targetNodeId="1191250521834" resolveInfo="reference" />
                          </node>
                        </node>
                        <node role="instance" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1191250524231">
                          <link role="variableDeclaration" targetNodeId="1191250521836" resolveInfo="nodeId" />
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
      <node role="argumentValue" type="jetbrains.mps.logging.refactoring.structure.RequiredAdditionalArgumentValue" id="1191250524232">
        <property name="value" value="jetbrains.mps.baseLanguage.sandbox.misc#1190807299922" />
        <node role="argument" type="jetbrains.mps.logging.refactoring.structure.RequiredAdditionalArgument" id="1191250519973">
          <property name="name" value="oldNode" />
          <property name="presentation" value="_" />
          <node role="argumentType" type="jetbrains.mps.logging.refactoring.structure.SNodeArgumentType" id="1191250524233" />
        </node>
      </node>
      <node role="argumentValue" type="jetbrains.mps.logging.refactoring.structure.RequiredAdditionalArgumentValue" id="1191250524234">
        <property name="value" value="jetbrains.mps.baseLanguage.sandbox.test" />
        <node role="argument" type="jetbrains.mps.logging.refactoring.structure.RequiredAdditionalArgument" id="1191250519653">
          <property name="name" value="place" />
          <property name="presentation" value="choose destination" />
          <node role="argumentType" type="jetbrains.mps.logging.refactoring.structure.SNodeOrModelArgumentType" id="1191250524235" />
        </node>
      </node>
      <node role="argumentValue" type="jetbrains.mps.logging.refactoring.structure.RequiredAdditionalArgumentValue" id="1191250524236">
        <property name="value" value="jetbrains.mps.baseLanguage.sandbox.test" />
        <node role="argument" type="jetbrains.mps.logging.refactoring.structure.RequiredAdditionalArgument" id="1191250519652">
          <property name="name" value="modelPlace" />
          <property name="presentation" value="_" />
          <node role="argumentType" type="jetbrains.mps.logging.refactoring.structure.SModelArgumentType" id="1191250524237" />
        </node>
      </node>
      <node role="argumentValue" type="jetbrains.mps.logging.refactoring.structure.RequiredAdditionalArgumentValue" id="1191250524238">
        <property name="value" value="jetbrains.mps.baseLanguage.sandbox.test#1191250519549" />
        <node role="argument" type="jetbrains.mps.logging.refactoring.structure.RequiredAdditionalArgument" id="1191250520703">
          <property name="name" value="newNode" />
          <property name="presentation" value="_" />
          <node role="argumentType" type="jetbrains.mps.logging.refactoring.structure.SNodeArgumentType" id="1191250524239" />
        </node>
      </node>
    </node>
  </refactoringLog>
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept" id="1182164226710">
    <property name="name" value="A" />
    <node role="constructor" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" id="1198592429562">
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.VoidType" id="1198592429563" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1198592429564" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1198592430692" />
    </node>
    <node role="constructor" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" id="1198592396507">
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.VoidType" id="1198592396508" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1198592396509" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1198592426278" />
    </node>
    <node role="constructor" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" id="1198592181606">
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.VoidType" id="1198592181607" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1198592181608" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1198592181609">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1198599742917">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1198599742918">
            <property name="name" value="o" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1198599742919">
              <link role="classifier" targetNodeId="1.~Object" resolveInfo="Object" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1198599746266" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1198599894151">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1198599894152">
            <property name="name" value="i" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.IntegerType" id="1198599894153" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="1198599896469">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="1198599897708">
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="1198599898759">
                  <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="1198599899513">
                    <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="1198599900080">
                      <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.MinusExpression" id="1198599901131">
                        <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1198599902181">
                          <property name="value" value="2" />
                        </node>
                        <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1198599901036">
                          <property name="value" value="2" />
                        </node>
                      </node>
                      <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1198599900016">
                        <property name="value" value="2" />
                      </node>
                    </node>
                    <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1198599899450">
                      <property name="value" value="2" />
                    </node>
                  </node>
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1198599898711">
                    <property name="value" value="2" />
                  </node>
                </node>
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1198599897676">
                  <property name="value" value="21" />
                </node>
              </node>
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1198599895937">
                <property name="value" value="23" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1198599880438">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1198599886567">
            <node role="rValue" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1198599887382">
              <property name="value" value="3" />
            </node>
            <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1198599880439">
              <link role="variableDeclaration" targetNodeId="1198599742918" resolveInfo="o" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1198600144361">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1198600144362">
            <link role="variableDeclaration" targetNodeId="1198599742918" resolveInfo="o" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1198599747815">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1198599755658">
            <link role="baseMethodDeclaration" targetNodeId="1.~String.toString():java.lang.String" resolveInfo="toString" />
            <node role="instance" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1198599754029">
              <link role="baseMethodDeclaration" targetNodeId="1.~String.toString():java.lang.String" resolveInfo="toString" />
              <node role="instance" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1198599752057">
                <link role="baseMethodDeclaration" targetNodeId="1.~String.toString():java.lang.String" resolveInfo="toString" />
                <node role="instance" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1198599749476">
                  <link role="baseMethodDeclaration" targetNodeId="1.~Object.toString():java.lang.String" resolveInfo="toString" />
                  <node role="instance" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1198599747816">
                    <link role="variableDeclaration" targetNodeId="1198599742918" resolveInfo="o" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1198599930673">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1198665423445">
            <link role="baseMethodDeclaration" targetNodeId="1.~Object.toString():java.lang.String" resolveInfo="toString" />
            <node role="instance" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1198599962127">
              <link role="baseMethodDeclaration" targetNodeId="1.~String.toString():java.lang.String" resolveInfo="toString" />
              <node role="instance" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1198599959436">
                <link role="baseMethodDeclaration" targetNodeId="1.~String.toString():java.lang.String" resolveInfo="toString" />
                <node role="instance" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1198599956979">
                  <link role="baseMethodDeclaration" targetNodeId="1.~Object.toString():java.lang.String" resolveInfo="toString" />
                  <node role="instance" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1198599930674">
                    <link role="variableDeclaration" targetNodeId="1198599742918" resolveInfo="o" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1198665434537">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1198665434538" />
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.MinusExpression" id="1198665436448">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="1198665438624">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.MinusExpression" id="1198665467465">
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.MinusExpression" id="1198665468360">
                  <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.MinusExpression" id="1198665469145">
                    <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1198665470695">
                      <property name="value" value="2" />
                    </node>
                    <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1198665469066">
                      <property name="value" value="2" />
                    </node>
                  </node>
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1198665468281">
                    <property name="value" value="2" />
                  </node>
                </node>
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1198665439534">
                  <property name="value" value="23" />
                </node>
              </node>
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1198665438608">
                <property name="value" value="239" />
              </node>
            </node>
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1198665436447">
              <property name="value" value="239" />
            </node>
          </node>
          <node role="ifFalseStatement" type="jetbrains.mps.baseLanguage.structure.BlockStatement" id="1198783138201">
            <node role="statements" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1198783138202" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.Statement" id="1198599757318" />
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.Statement" id="1198665434539" />
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1198599966008">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="1198599966760">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="1198599968045">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="1198599969393">
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1198599970256">
                  <property name="value" value="23" />
                </node>
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1198599968830">
                  <property name="value" value="2" />
                </node>
              </node>
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1198599967576">
                <property name="value" value="2" />
              </node>
            </node>
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1198599966009">
              <property name="value" value="32" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1198599757316">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1198599757317" />
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1198599864349">
            <property name="value" value="3" />
          </node>
        </node>
      </node>
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" id="1188520661794">
      <property name="name" value="mmm" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.VoidType" id="1188520661795" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1188520661796" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1188520661797">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1190141071617">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.NewExpression" id="1190141071618">
            <link role="baseMethodDeclaration" targetNodeId="1190140925205" resolveInfo="TmpClass" />
            <node role="typeParameter" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1190141083821">
              <link role="classifier" targetNodeId="1.~String" resolveInfo="String" />
            </node>
            <node role="typeParameter" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1190141351666">
              <link role="classifier" targetNodeId="1.~Integer" resolveInfo="Integer" />
            </node>
            <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1190141087118">
              <link role="variableDeclaration" targetNodeId="1188520677350" resolveInfo="s" />
            </node>
            <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1190141355635">
              <property name="value" value="10" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1188520681430" />
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1188520677350">
        <property name="name" value="s" />
        <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1188520677351">
          <link role="classifier" targetNodeId="1.~String" resolveInfo="String" />
        </node>
      </node>
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" id="1189442820190">
      <property name="name" value="nnn" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.VoidType" id="1189442820191" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1189442820192" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1189442820193">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1189532856833">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.FieldReference" id="1189549925636">
            <link role="variableDeclaration" targetNodeId="1182407705882" resolveInfo="entry" />
            <node role="instance" type="jetbrains.mps.baseLanguage.structure.ThisExpression" id="1189532856834" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1189544975960">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.SuperMethodCall" id="1189544975961">
            <link role="baseMethodDeclaration" targetNodeId="1189442620154" resolveInfo="mmm" />
            <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1189544985368">
              <property name="value" value="" />
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1189442838743">
        <property name="name" value="i" />
        <node role="type" type="jetbrains.mps.baseLanguage.structure.IntegerType" id="1189442838744" />
      </node>
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" id="1189448620841">
      <property name="name" value="iMethod" />
      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1189448620842">
        <property name="name" value="i" />
        <node role="type" type="jetbrains.mps.baseLanguage.structure.IntegerType" id="1189448620843" />
      </node>
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1189448620844" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.IntegerType" id="1189448620845" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1189448620846">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1198582972722">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1198582972723">
            <property name="name" value="model" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SModelType" id="1198582972724" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1198583002573">
          <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1198583002778">
            <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Model_CreateNewNodeOperation" id="1198583004469" />
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1198583002574">
              <link role="variableDeclaration" targetNodeId="1198582972723" resolveInfo="model" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1198583027526">
          <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1198583027981">
            <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Model_RootsIncludingImportedOperation" id="1198583029375">
              <node role="scope" type="jetbrains.mps.baseLanguage.structure.Expression" id="1198583029376" />
            </node>
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1198583027527">
              <link role="variableDeclaration" targetNodeId="1198582972723" resolveInfo="model" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1198583114726">
          <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1198583115135">
            <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Model_RootsOperation" id="1198583117044" />
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1198583114727">
              <link role="variableDeclaration" targetNodeId="1198582972723" resolveInfo="model" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1198583122297">
          <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1198583122565">
            <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Model_CreateNewNodeOperation" id="1198583124036" />
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1198583122298">
              <link role="variableDeclaration" targetNodeId="1198582972723" resolveInfo="model" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1198583129303">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1198583129304">
            <property name="name" value="node" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1198583129305" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1198583132323">
          <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1198583133044">
            <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SConceptPropertyAccess" id="1198583134375">
              <link role="conceptProperty" targetNodeId="125.1137473854053" resolveInfo="abstract" />
            </node>
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1198583132324">
              <link role="variableDeclaration" targetNodeId="1198583129304" resolveInfo="node" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1198583136220">
          <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1198583136504">
            <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAdapterOperation" id="1198583137944" />
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1198583136221">
              <link role="variableDeclaration" targetNodeId="1198583129304" resolveInfo="node" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1198583139649">
          <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1198583139933">
            <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_InsertNextSiblingOperation" id="1198583141451">
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.Expression" id="1198583141452" />
            </node>
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1198583139650">
              <link role="variableDeclaration" targetNodeId="1198583129304" resolveInfo="node" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1198583143876">
          <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1198583144363">
            <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_InsertPrevSiblingOperation" id="1198583145694">
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.Expression" id="1198583145695" />
            </node>
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1198583143877">
              <link role="variableDeclaration" targetNodeId="1198583129304" resolveInfo="node" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1198583147478">
          <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1198583148011">
            <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAncestorOperation" id="1198583150202" />
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1198583147479">
              <link role="variableDeclaration" targetNodeId="1198583129304" resolveInfo="node" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1198583156033">
          <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1198583156285">
            <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetChildrenOperation" id="1198583158507" />
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1198583156034">
              <link role="variableDeclaration" targetNodeId="1198583129304" resolveInfo="node" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1198583160243">
          <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1198583160651">
            <node role="nodeOperation" type="jetbrains.mps.bootstrap.helgins.structure.Node_TypeOperation" id="1198583165889" />
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1198583160244">
              <link role="variableDeclaration" targetNodeId="1198583129304" resolveInfo="node" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1198583168453">
          <node role="expression" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.SequenceOperationExpression" id="1198583169944">
            <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1198583168737">
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAllSiblingsOperation" id="1198583169490" />
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1198583168454">
                <link role="variableDeclaration" targetNodeId="1198583129304" resolveInfo="node" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.IsNotEmptyOperation" id="1198583173007" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1198527742816">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1198527742817">
            <property name="name" value="o" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1198527742818">
              <link role="classifier" targetNodeId="1.~Object" resolveInfo="Object" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1198527744289">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1198527747043">
            <link role="baseMethodDeclaration" targetNodeId="1.~Object.toString():java.lang.String" resolveInfo="toString" />
            <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.Expression" id="1198591409873" />
            <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1198591435477">
              <property name="value" value="230" />
            </node>
            <node role="instance" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1198527744290">
              <link role="variableDeclaration" targetNodeId="1198527742817" resolveInfo="o" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1189453084107">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1193788650846">
            <link role="baseMethodDeclaration" targetNodeId="1189448620841" resolveInfo="iMethod" />
            <node role="instance" type="jetbrains.mps.baseLanguage.structure.NewExpression" id="1193788615362">
              <link role="baseMethodDeclaration" targetNodeId="1193788635559" resolveInfo="A" />
            </node>
            <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="1193788655551">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1193788657336">
                <property name="value" value="20" />
              </node>
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1193788653566">
                <property name="value" value="10" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" id="1198583480617">
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.VoidType" id="1198583480618" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1198583480619" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1198583480620" />
    </node>
    <node role="staticMethod" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" id="1184668952117">
      <property name="name" value="abcdef" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.VoidType" id="1184668952118" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1184668952119" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1184668952120">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1184668964883">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1184668964884">
            <node role="creator" type="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" id="1184668965917">
              <node role="cls" type="jetbrains.mps.baseLanguage.structure.AnonymousClass" id="1184668965918">
                <property name="abstractClass" value="true" />
                <link role="classifier" targetNodeId="3.~Iterator" resolveInfo="Iterator" />
                <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1184668965919" />
                <node role="typeVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.TypeVariableDeclaration" id="1184669212145">
                  <property name="name" value="A" />
                </node>
                <node role="typeVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.TypeVariableDeclaration" id="1184669213177">
                  <property name="name" value="B" />
                </node>
                <node role="typeVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.TypeVariableDeclaration" id="1184669213959">
                  <property name="name" value="C" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="field" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration" id="1182407705882">
      <property name="name" value="entry" />
      <node role="annotation" type="jetbrains.mps.baseLanguage.structure.AnnotationInstance" id="1188210976391">
        <link role="annotation" targetNodeId="1.~Deprecated" resolveInfo="Deprecated" />
      </node>
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility" id="1182407705883" />
      <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1182407743371">
        <link role="classifier" targetNodeId="3.~Map$Entry" resolveInfo="Map$Entry" />
      </node>
    </node>
    <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1182164226711" />
    <node role="superclass" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1188500134992">
      <link role="classifier" targetNodeId="1188499921809" resolveInfo="InnA" />
    </node>
    <node role="implementedInterface" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1189448567255">
      <link role="classifier" targetNodeId="1189448555816" resolveInfo="Interface1" />
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept" id="1183457785427">
    <property name="name" value="C" />
    <node role="method" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" id="1189158201357">
      <property name="name" value="v" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.VoidType" id="1189158201358" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1189158201359" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1189158201360">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1190211948055">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1190211948056">
            <property name="name" value="nodes" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeListType" id="1190211948057" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1190211963981">
          <node role="expression" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.SequenceOperationExpression" id="1190211994859">
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1190211963982">
              <link role="variableDeclaration" targetNodeId="1190211948056" resolveInfo="nodes" />
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.SelectOperation" id="1190212002095">
              <node role="selector" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.SelectorBlock" id="1190212002096">
                <node role="defaultInputElement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.DefaultInputElement" id="1190212002097">
                  <property name="name" value="it" />
                </node>
                <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1190212002098">
                  <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1190212044833">
                    <node role="expression" type="jetbrains.mps.baseLanguage.structure.ClosureParameterReference" id="1190212044834">
                      <link role="closureParameter" targetNodeId="1190212002097" resolveInfo="it" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" id="1192134776221">
      <property name="name" value="m" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.VoidType" id="1192134776222" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1192134776223" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1192134776224">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1192134834538">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1192134843451">
            <link role="baseMethodDeclaration" targetNodeId="1.~String.equals(java.lang.Object):boolean" resolveInfo="equals" />
            <node role="instance" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1192134837136">
              <link role="baseMethodDeclaration" targetNodeId="1.~StringBuffer.toString():java.lang.String" resolveInfo="toString" />
              <node role="instance" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1192134834539">
                <link role="variableDeclaration" targetNodeId="1192134826208" resolveInfo="sb" />
              </node>
            </node>
            <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1192134845827">
              <property name="value" value="" />
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1192134826208">
        <property name="name" value="sb" />
        <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1192134826209">
          <link role="classifier" targetNodeId="1.~StringBuffer" resolveInfo="StringBuffer" />
        </node>
      </node>
    </node>
    <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1183457785428" />
    <node role="superclass" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1190907112206">
      <link role="classifier" targetNodeId="123.1191250519549" />
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept" id="1188499791313">
    <property name="name" value="TmpClass" />
    <node role="constructor" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" id="1190141295530">
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.VoidType" id="1190141295531" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1190141295532" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1190141295533" />
      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1190141295536">
        <property name="name" value="parm2" />
        <node role="type" type="jetbrains.mps.baseLanguage.structure.TypeVariableReference" id="1190141295537">
          <link role="typeVariableDeclaration" targetNodeId="1190141280932" resolveInfo="T2" />
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1190141295534">
        <property name="name" value="parm1" />
        <node role="type" type="jetbrains.mps.baseLanguage.structure.TypeVariableReference" id="1190141295535">
          <link role="typeVariableDeclaration" targetNodeId="1190140919641" resolveInfo="T1" />
        </node>
      </node>
    </node>
    <node role="constructor" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" id="1190140925205">
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.VoidType" id="1190140925206" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1190140925207" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1190140925208" />
      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1190140950020">
        <property name="name" value="parm1" />
        <node role="type" type="jetbrains.mps.baseLanguage.structure.TypeVariableReference" id="1190140950021">
          <link role="typeVariableDeclaration" targetNodeId="1190140919641" resolveInfo="T" />
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1190141287495">
        <property name="name" value="parm2" />
        <node role="type" type="jetbrains.mps.baseLanguage.structure.TypeVariableReference" id="1190141289622">
          <link role="typeVariableDeclaration" targetNodeId="1190141280932" resolveInfo="T2" />
        </node>
      </node>
    </node>
    <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1188499791314" />
    <node role="staticInnerClassifiers" type="jetbrains.mps.baseLanguage.structure.ClassConcept" id="1188499921809">
      <property name="name" value="InnA" />
      <node role="method" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" id="1189442620154">
        <property name="name" value="mmm" />
        <node role="returnType" type="jetbrains.mps.baseLanguage.structure.VoidType" id="1189442620155" />
        <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1189442620156" />
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1189442620157" />
        <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1189442684318">
          <property name="name" value="s" />
          <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1189442684319">
            <link role="classifier" targetNodeId="1.~String" resolveInfo="String" />
          </node>
        </node>
      </node>
      <node role="method" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" id="1189448057096">
        <property name="name" value="ooo" />
        <property name="isAbstract" value="false" />
        <node role="returnType" type="jetbrains.mps.baseLanguage.structure.VoidType" id="1189448057097" />
        <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1189448057098" />
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1189448057099" />
      </node>
      <node role="staticInnerClassifiers" type="jetbrains.mps.baseLanguage.structure.ClassConcept" id="1188499952938">
        <property name="name" value="InnA1" />
        <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1188499952939" />
      </node>
      <node role="staticInnerClassifiers" type="jetbrains.mps.baseLanguage.structure.ClassConcept" id="1188500105568">
        <property name="name" value="InnA2" />
        <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1188500105569" />
      </node>
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1188499921810" />
      <node role="superclass" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1189448183480">
        <link role="classifier" targetNodeId="1.~Object" resolveInfo="Object" />
      </node>
    </node>
    <node role="typeVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.TypeVariableDeclaration" id="1190140919641">
      <property name="name" value="T1" />
    </node>
    <node role="typeVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.TypeVariableDeclaration" id="1190141280932">
      <property name="name" value="T2" />
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept" id="1189106886561">
    <property name="name" value="AAAAAA" />
    <node role="staticMethod" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" id="1189107131289">
      <property name="name" value="mmmmmm" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.VoidType" id="1189107131290" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1189107131291" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1189107131292" />
    </node>
    <node role="staticMethod" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" id="1191866342785">
      <property name="name" value="mmmmmm" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.VoidType" id="1191866342786" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1191866342787" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1191866342788" />
      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1191866347461">
        <property name="name" value="i" />
        <node role="type" type="jetbrains.mps.baseLanguage.structure.IntegerType" id="1191866347462" />
      </node>
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" id="1189106961996">
      <property name="name" value="aaaa" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.VoidType" id="1189106961997" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1189106961998" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1189106961999">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1189106974268">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1189106974269">
            <property name="name" value="i" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.IntegerType" id="1189106974270" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1189106977944">
              <property name="value" value="10" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1191629990763">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1191629990764">
            <link role="variableDeclaration" targetNodeId="1189106974269" resolveInfo="i" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1191630004674">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1191630004675">
            <link role="variableDeclaration" targetNodeId="1189106966469" resolveInfo="intParm" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1189106982211">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1189106982604">
            <node role="rValue" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="1189106986983">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1189106989095">
                <property name="value" value="20" />
              </node>
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1191544767432">
                <link role="variableDeclaration" targetNodeId="1189106966469" resolveInfo="intParm" />
              </node>
            </node>
            <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1189106982212">
              <link role="variableDeclaration" targetNodeId="1189106974269" resolveInfo="i" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1189106992394">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1189106993584">
            <node role="rValue" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="1189107000384">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="1189107004888">
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="1189107011017">
                  <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.FieldReference" id="1189107014349">
                    <link role="variableDeclaration" targetNodeId="1189106948490" resolveInfo="myInt" />
                    <node role="instance" type="jetbrains.mps.baseLanguage.structure.ThisExpression" id="1189107014350" />
                  </node>
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalStaticFieldReference" id="1189107008938">
                    <link role="variableDeclaration" targetNodeId="1189106891188" resolveInfo="ourInt" />
                  </node>
                </node>
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1189107002637">
                  <link role="variableDeclaration" targetNodeId="1189106974269" resolveInfo="i" />
                </node>
              </node>
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1189106996243">
                <link role="variableDeclaration" targetNodeId="1189106966469" resolveInfo="intParm" />
              </node>
            </node>
            <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1189106992395">
              <link role="variableDeclaration" targetNodeId="1189106974269" resolveInfo="i" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1189107147158">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1189107147159">
            <link role="baseMethodDeclaration" targetNodeId="1189107140793" resolveInfo="mm" />
            <node role="instance" type="jetbrains.mps.baseLanguage.structure.ThisExpression" id="1189107147160" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1189107150943">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.LocalStaticMethodCall" id="1189107150944">
            <link role="baseMethodDeclaration" targetNodeId="1189107131289" resolveInfo="mmmmmm" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1189107155165">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1189107156713">
            <link role="baseMethodDeclaration" targetNodeId="1189107131289" resolveInfo="mmmmmm" />
            <link role="classConcept" targetNodeId="1189106886561" resolveInfo="AAAAAA" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1191543420710">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1191543420711">
            <property name="name" value="s010101" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1191543420712">
              <link role="classifier" targetNodeId="1.~String" resolveInfo="String" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1191545309833">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1191545309834">
            <property name="name" value="s020202" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1191545309835">
              <link role="classifier" targetNodeId="1.~String" resolveInfo="String" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1192133948447">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1192133952669">
            <link role="baseMethodDeclaration" targetNodeId="1.~String.equals(java.lang.Object):boolean" resolveInfo="equals" />
            <node role="instance" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1192133948448">
              <link role="variableDeclaration" targetNodeId="1191543420711" resolveInfo="s010101" />
            </node>
            <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1192133954233">
              <property name="value" value="" />
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1189106966469">
        <property name="name" value="intParm" />
        <node role="type" type="jetbrains.mps.baseLanguage.structure.IntegerType" id="1189106966470" />
      </node>
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" id="1189107140793">
      <property name="name" value="mm" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.VoidType" id="1189107140794" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1189107140795" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1189107140796" />
    </node>
    <node role="field" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration" id="1189106948490">
      <property name="name" value="myInt" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility" id="1189106948491" />
      <node role="type" type="jetbrains.mps.baseLanguage.structure.IntegerType" id="1189106953339" />
    </node>
    <node role="field" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration" id="1191869040324">
      <property name="name" value="intParm" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility" id="1191869040325" />
      <node role="type" type="jetbrains.mps.baseLanguage.structure.IntegerType" id="1191869044858" />
    </node>
    <node role="staticField" type="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" id="1189106891188">
      <property name="name" value="ourInt" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility" id="1189106891189" />
      <node role="type" type="jetbrains.mps.baseLanguage.structure.IntegerType" id="1189106932379" />
    </node>
    <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1189106886562" />
  </node>
  <node type="jetbrains.mps.baseLanguage.structure.Interface" id="1189448555816">
    <property name="name" value="Interface1" />
    <node role="method" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" id="1189448578678">
      <property name="name" value="iMethod" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.IntegerType" id="1189448594872" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1189448578680" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1189448578697" />
      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1189448589026">
        <property name="name" value="i" />
        <node role="type" type="jetbrains.mps.baseLanguage.structure.IntegerType" id="1189448589027" />
      </node>
    </node>
    <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1189448555817" />
  </node>
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept" id="1193757114043">
    <property name="name" value="QuotationContainer" />
    <node role="method" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" id="1193757127295">
      <property name="name" value="foo" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.VoidType" id="1193757127296" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1193757127297" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1193757127298">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1193757173289">
          <node role="expression" type="jetbrains.mps.quotation.structure.Quotation" id="1198527705797">
            <node role="quotedNode" type="jetbrains.mps.core.structure.BaseConcept" id="1198527705798" />
          </node>
        </node>
      </node>
    </node>
    <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1193757114044" />
  </node>
</model>


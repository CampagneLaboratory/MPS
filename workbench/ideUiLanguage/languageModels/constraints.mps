<?xml version="1.0" encoding="UTF-8"?>
<model name="jetbrains.mps.ide.uiLanguage.constraints">
  <persistence version="1" />
  <refactoringHistory>
    <refactoringContext modelVersion="0">
      <refactoring refactoringClass="jetbrains.mps.core.scripts.MoveNodes" />
      <moveMap>
        <entry>
          <key modelUID="jetbrains.mps.ide.uiLanguage.constraints" nodeId="1203607642084" />
          <value modelUID="jetbrains.mps.ide.uiLanguage.behavior" nodeId="1213877315073" />
        </entry>
        <entry>
          <key modelUID="jetbrains.mps.ide.uiLanguage.constraints" nodeId="1203607642085" />
          <value modelUID="jetbrains.mps.ide.uiLanguage.behavior" nodeId="1213877315074" />
        </entry>
        <entry>
          <key modelUID="jetbrains.mps.ide.uiLanguage.constraints" nodeId="1203607642086" />
          <value modelUID="jetbrains.mps.ide.uiLanguage.behavior" nodeId="1213877315075" />
        </entry>
      </moveMap>
      <conceptFeatureMap />
    </refactoringContext>
    <refactoringContext modelVersion="1">
      <refactoring refactoringClass="jetbrains.mps.core.scripts.MoveNodes" />
      <moveMap>
        <entry>
          <key modelUID="jetbrains.mps.ide.uiLanguage.constraints" nodeId="1203610537522" />
          <value modelUID="jetbrains.mps.ide.uiLanguage.behavior" nodeId="1213877331196" />
        </entry>
        <entry>
          <key modelUID="jetbrains.mps.ide.uiLanguage.constraints" nodeId="1203610537523" />
          <value modelUID="jetbrains.mps.ide.uiLanguage.behavior" nodeId="1213877331197" />
        </entry>
        <entry>
          <key modelUID="jetbrains.mps.ide.uiLanguage.constraints" nodeId="1203610537524" />
          <value modelUID="jetbrains.mps.ide.uiLanguage.behavior" nodeId="1213877331198" />
        </entry>
      </moveMap>
      <conceptFeatureMap />
    </refactoringContext>
    <refactoringContext modelVersion="2">
      <refactoring refactoringClass="jetbrains.mps.core.scripts.MoveNodes" />
      <moveMap>
        <entry>
          <key modelUID="jetbrains.mps.ide.uiLanguage.constraints" nodeId="1203592997051" />
          <value modelUID="jetbrains.mps.ide.uiLanguage.behavior" nodeId="1213877369278" />
        </entry>
        <entry>
          <key modelUID="jetbrains.mps.ide.uiLanguage.constraints" nodeId="1203592997052" />
          <value modelUID="jetbrains.mps.ide.uiLanguage.behavior" nodeId="1213877369279" />
        </entry>
        <entry>
          <key modelUID="jetbrains.mps.ide.uiLanguage.constraints" nodeId="1203592997053" />
          <value modelUID="jetbrains.mps.ide.uiLanguage.behavior" nodeId="1213877369280" />
        </entry>
      </moveMap>
      <conceptFeatureMap />
    </refactoringContext>
    <refactoringContext modelVersion="3">
      <refactoring refactoringClass="jetbrains.mps.core.scripts.MoveNodes" />
      <moveMap>
        <entry>
          <key modelUID="jetbrains.mps.ide.uiLanguage.constraints" nodeId="1203606271221" />
          <value modelUID="jetbrains.mps.ide.uiLanguage.behavior" nodeId="1213877501207" />
        </entry>
        <entry>
          <key modelUID="jetbrains.mps.ide.uiLanguage.constraints" nodeId="1203606271222" />
          <value modelUID="jetbrains.mps.ide.uiLanguage.behavior" nodeId="1213877501208" />
        </entry>
        <entry>
          <key modelUID="jetbrains.mps.ide.uiLanguage.constraints" nodeId="1203606271223" />
          <value modelUID="jetbrains.mps.ide.uiLanguage.behavior" nodeId="1213877501209" />
        </entry>
      </moveMap>
      <conceptFeatureMap />
    </refactoringContext>
  </refactoringHistory>
  <language namespace="jetbrains.mps.baseLanguage">
    <languageAspect modelUID="jetbrains.mps.baseLanguage.constraints" version="83" />
    <languageAspect modelUID="jetbrains.mps.baseLanguage.structure" version="0" />
  </language>
  <language namespace="jetbrains.mps.bootstrap.constraintsLanguage">
    <languageAspect modelUID="jetbrains.mps.bootstrap.constraintsLanguage.constraints" version="9" />
    <languageAspect modelUID="jetbrains.mps.bootstrap.constraintsLanguage.structure" version="0" />
  </language>
  <language namespace="jetbrains.mps.bootstrap.smodelLanguage">
    <languageAspect modelUID="jetbrains.mps.bootstrap.smodelLanguage.constraints" version="21" />
    <languageAspect modelUID="jetbrains.mps.bootstrap.smodelLanguage.structure" version="0" />
  </language>
  <languageAspect modelUID="jetbrains.mps.baseLanguage.ext.collections.lang.structure" version="1" />
  <languageAspect modelUID="jetbrains.mps.closures.structure" version="0" />
  <languageAspect modelUID="jetbrains.mps.uiLanguage.constraints" version="26" />
  <languageAspect modelUID="jetbrains.mps.bootstrap.structureLanguage.constraints" version="11" />
  <languageAspect modelUID="jetbrains.mps.bootstrap.sharedConcepts.constraints" version="0" />
  <languageAspect modelUID="jetbrains.mps.baseLanguage.ext.collections.lang.constraints" version="6" />
  <languageAspect modelUID="jetbrains.mps.ide.uiLanguage.constraints" version="3" />
  <languageAspect modelUID="jetbrains.mps.closures.constraints" version="2" />
  <languageAspect modelUID="jetbrains.mps.core.constraints" version="2" />
  <maxImportIndex value="0" />
  <visible index="2" modelUID="jetbrains.mps.uiLanguage.structure" />
  <visible index="3" modelUID="jetbrains.mps.ide.uiLanguage.structure" />
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept" id="1203606392881">
    <property name="package" value="IDEDialog" />
    <property name="name" value="DialogUtil" />
    <node role="staticMethod" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" id="1203607268697">
      <property name="name" value="getContextComponent" />
      <node role="returnType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1203607274295">
        <link role="concept" targetNodeId="2v.1202387718766" resolveInfo="ComponentDeclaration" />
      </node>
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1203607268699" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1203607268700">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1203607303141">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1203607303142">
            <property name="name" value="container" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1203607303143" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227938618">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1203607311996">
                <link role="variableDeclaration" targetNodeId="1203607308900" resolveInfo="parentNode" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAncestorOperation" id="1203607303145">
                <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_ConceptList" id="1203607303146">
                  <node role="concept" type="jetbrains.mps.bootstrap.smodelLanguage.structure.ConceptReference" id="1203607303147">
                    <link role="concept" targetNodeId="2v.1202387718766" resolveInfo="ComponentDeclaration" />
                  </node>
                  <node role="concept" type="jetbrains.mps.bootstrap.smodelLanguage.structure.ConceptReference" id="1203607303148">
                    <link role="concept" targetNodeId="2v.1202388384249" resolveInfo="ComponentController" />
                  </node>
                </node>
                <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Inclusion" id="1203607446600" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1203607303150">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1203607303151">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1203607303152">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1203607306274" />
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1203607303154">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1203607303155" />
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1203607303156">
              <link role="variableDeclaration" targetNodeId="1203607303142" resolveInfo="container" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1203607303157">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1203607303158">
            <property name="name" value="declaration" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1203607303159">
              <link role="concept" targetNodeId="2v.1202387718766" resolveInfo="ComponentDeclaration" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1203607303160">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1203607303161">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1203607303162">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1203607303163">
                <node role="rValue" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227924352">
                  <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1203607303166">
                    <link role="concept" targetNodeId="2v.1202388384249" resolveInfo="ComponentController" />
                    <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1203607303167">
                      <link role="variableDeclaration" targetNodeId="1203607303142" resolveInfo="container" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1203607303165">
                    <link role="link" targetNodeId="2v.1202388401455" />
                  </node>
                </node>
                <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1203607303168">
                  <link role="variableDeclaration" targetNodeId="1203607303158" resolveInfo="declaration" />
                </node>
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227833333">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1203607303172">
              <link role="variableDeclaration" targetNodeId="1203607303142" resolveInfo="container" />
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1203607303170">
              <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1203607303171">
                <link role="conceptDeclaration" targetNodeId="2v.1202388384249" resolveInfo="ComponentController" />
              </node>
            </node>
          </node>
          <node role="ifFalseStatement" type="jetbrains.mps.baseLanguage.structure.BlockStatement" id="1203607303173">
            <node role="statements" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1203607303174">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1203607303175">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1203607303176">
                  <node role="rValue" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1203607303177">
                    <link role="concept" targetNodeId="2v.1202387718766" resolveInfo="ComponentDeclaration" />
                    <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1203607303178">
                      <link role="variableDeclaration" targetNodeId="1203607303142" resolveInfo="container" />
                    </node>
                  </node>
                  <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1203607303179">
                    <link role="variableDeclaration" targetNodeId="1203607303158" resolveInfo="declaration" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1203607314529">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1203607316390">
            <link role="variableDeclaration" targetNodeId="1203607303158" resolveInfo="declaration" />
          </node>
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1203607308900">
        <property name="name" value="parentNode" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1203607308901" />
      </node>
    </node>
    <node role="staticMethod" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" id="1203606524471">
      <property name="name" value="dialogAccessible" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.BooleanType" id="1203606544965" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1203606524473" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1203606524474">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1203607325908">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1203607325909">
            <property name="name" value="component" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1203607325910">
              <link role="concept" targetNodeId="2v.1202387718766" resolveInfo="ComponentDeclaration" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.LocalStaticMethodCall" id="1203607329458">
              <link role="baseMethodDeclaration" targetNodeId="1203607268697" resolveInfo="getContextComponent" />
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1203607330991">
                <link role="variableDeclaration" targetNodeId="1203606533945" resolveInfo="parentNode" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1203606526922">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227927663">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227938713">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1203607336023">
                <link role="variableDeclaration" targetNodeId="1203607325909" resolveInfo="component" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1203607338414">
                <link role="link" targetNodeId="2v.1202391997731" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1203606526924">
              <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1203606526925">
                <link role="conceptDeclaration" targetNodeId="3v.1203592595174" resolveInfo="IDEDialog" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1203606533945">
        <property name="name" value="parentNode" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1203606533946" />
      </node>
    </node>
    <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1203606392882" />
  </node>
  <node type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptConstraints" id="1213107434865">
    <link role="concept" targetNodeId="3v.1203606241544" resolveInfo="DisposeDialogExpression" />
    <node role="canBeChild" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConstraintFunction_CanBeAChild" id="1213107434866">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213107434867">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1213107434868">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1213107434869">
            <link role="baseMethodDeclaration" targetNodeId="1203606524471" resolveInfo="dialogAccessible" />
            <link role="classConcept" targetNodeId="1203606392881" resolveInfo="DialogUtil" />
            <node role="actualArgument" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConstraintFunctionParameter_parentNode" id="1213107434870" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptConstraints" id="1213107435816">
    <link role="concept" targetNodeId="3v.1203610466731" resolveInfo="DialogExpression" />
    <node role="canBeChild" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConstraintFunction_CanBeAChild" id="1213107435817">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213107435818">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1213107435819">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1213107435820">
            <link role="baseMethodDeclaration" targetNodeId="1203606524471" resolveInfo="dialogAccessible" />
            <link role="classConcept" targetNodeId="1203606392881" resolveInfo="DialogUtil" />
            <node role="actualArgument" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConstraintFunctionParameter_parentNode" id="1213107435821" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptConstraints" id="1213107437576">
    <link role="concept" targetNodeId="3v.1203607523033" resolveInfo="ReportErrorExpression" />
    <node role="canBeChild" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConstraintFunction_CanBeAChild" id="1213107437577">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213107437578">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1213107437579">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1213107437580">
            <link role="baseMethodDeclaration" targetNodeId="1203606524471" resolveInfo="dialogAccessible" />
            <link role="classConcept" targetNodeId="1203606392881" resolveInfo="DialogUtil" />
            <node role="actualArgument" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConstraintFunctionParameter_parentNode" id="1213107437581" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptConstraints" id="1213107437873">
    <link role="concept" targetNodeId="3v.1203592595174" resolveInfo="IDEDialog" />
    <node role="canBeChild" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConstraintFunction_CanBeAChild" id="1213107437874">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213107437875">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1213107437876">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213107437877">
            <node role="operand" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConstraintFunctionParameter_parentNode" id="1213107437878" />
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1213107437879">
              <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1213107437880">
                <link role="conceptDeclaration" targetNodeId="2v.1202387718766" resolveInfo="ComponentDeclaration" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>


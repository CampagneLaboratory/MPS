<?xml version="1.0" encoding="UTF-8"?>
<model name="demo">
  <persistence version="1" />
  <refactoringHistory />
  <language namespace="jetbrains.mps.baseLanguage">
    <languageAspect modelUID="jetbrains.mps.baseLanguage.structure" version="0" />
  </language>
  <language namespace="jetbrains.mps.baseLanguage.ext.collections.lang">
    <languageAspect modelUID="jetbrains.mps.baseLanguage.ext.collections.lang.structure" version="0" />
  </language>
  <language namespace="jetbrains.mps.internal.collections" />
  <language namespace="jetbrains.mps.closures">
    <languageAspect modelUID="jetbrains.mps.closures.structure" version="0" />
  </language>
  <maxImportIndex value="2" />
  <import index="1" modelUID="java.util@java_stub" version="-1" />
  <import index="2" modelUID="java.lang@java_stub" version="-1" />
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept" id="1202117945910">
    <property name="name" value="Demo" />
    <node role="staticMethod" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" id="1202117947839">
      <property name="name" value="main" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.VoidType" id="1202117947840" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1202117947841" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1202117947842">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1202117990533">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1202117990534">
            <property name="name" value="seq" />
            <node role="type" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.SequenceType" id="1202117990535">
              <node role="elementType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1202117996728">
                <link role="classifier" targetNodeId="2.~Integer" resolveInfo="Integer" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1202117999935">
          <node role="expression" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.SequenceOperationExpression" id="1202129341392">
            <node role="operation" type="jetbrains.mps.internal.collections.structure.SelectOperation" id="1202129394762">
              <node role="closure" type="jetbrains.mps.closures.structure.ClosureLiteral" id="1202129396703">
                <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1202129399843">
                  <property name="name" value="i" />
                  <node role="type" type="jetbrains.mps.baseLanguage.structure.IntegerType" id="1202129402374" />
                </node>
                <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1202129396704">
                  <node role="statement" type="jetbrains.mps.closures.structure.YieldStatement" id="1202129408014">
                    <node role="expression" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1202129409351">
                      <link role="variableDeclaration" targetNodeId="1202129399843" resolveInfo="i" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="operand" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.SequenceOperationExpression" id="1202128759821">
              <node role="operation" type="jetbrains.mps.internal.collections.structure.WhereOperation" id="1202128839611">
                <node role="closure" type="jetbrains.mps.closures.structure.ClosureLiteral" id="1202128928368">
                  <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1202128933842">
                    <property name="name" value="i" />
                    <node role="type" type="jetbrains.mps.baseLanguage.structure.IntegerType" id="1202128935107" />
                  </node>
                  <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1202128928369">
                    <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1202128941160">
                      <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1202128942574">
                        <property name="value" value="true" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="operand" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.SequenceOperationExpression" id="1202117999988">
                <node role="operation" type="jetbrains.mps.internal.collections.structure.MappingOperation" id="1202118002768">
                  <node role="closure" type="jetbrains.mps.closures.structure.ClosureLiteral" id="1202118032635">
                    <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1202118040179">
                      <property name="name" value="i" />
                      <node role="type" type="jetbrains.mps.baseLanguage.structure.IntegerType" id="1202118042077" />
                    </node>
                    <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1202118032636">
                      <node role="statement" type="jetbrains.mps.closures.structure.YieldStatement" id="1202118057939">
                        <node role="expression" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1202118059442">
                          <link role="variableDeclaration" targetNodeId="1202118040179" resolveInfo="i" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1202117999936">
                  <link role="variableDeclaration" targetNodeId="1202117990534" resolveInfo="seq" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1202134727330">
          <node role="expression" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.SequenceOperationExpression" id="1202134753766">
            <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.SelectOperation" id="1202134756998">
              <node role="selector" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.SelectorBlock" id="1202134756999">
                <node role="defaultInputElement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.DefaultInputElement" id="1202134757000">
                  <property name="name" value="it" />
                </node>
                <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1202134757001">
                  <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1202134965399">
                    <node role="expression" type="jetbrains.mps.baseLanguage.structure.ClosureParameterReference" id="1202134967019">
                      <link role="closureParameter" targetNodeId="1202134757000" resolveInfo="it" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="operand" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.SequenceOperationExpression" id="1202134747045">
              <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereOperation" id="1202134749950">
                <node role="whereClosure" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereBlock" id="1202134749951">
                  <node role="defaultInputElement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.DefaultInputElement" id="1202134749952">
                    <property name="name" value="it" />
                  </node>
                  <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1202134749953">
                    <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1202134930537">
                      <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1202134931951">
                        <property name="value" value="true" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="operand" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.SequenceOperationExpression" id="1202134727936">
                <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.MappingOperation" id="1202134743369">
                  <node role="mapper" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.MapperBlock" id="1202134743370">
                    <node role="defaultInputElement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.DefaultInputElement" id="1202134743371">
                      <property name="name" value="it" />
                    </node>
                    <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1202134743372">
                      <node role="statement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.TraversalYieldStatement" id="1202134919564">
                        <node role="value" type="jetbrains.mps.baseLanguage.structure.ClosureParameterReference" id="1202134925525">
                          <link role="closureParameter" targetNodeId="1202134743371" resolveInfo="it" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1202134727331">
                  <link role="variableDeclaration" targetNodeId="1202117990534" resolveInfo="seq" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1202117970380">
        <property name="name" value="args" />
        <node role="type" type="jetbrains.mps.baseLanguage.structure.ArrayType" id="1202117974676">
          <node role="componentType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1202117970381">
            <link role="classifier" targetNodeId="2.~String" resolveInfo="String" />
          </node>
        </node>
      </node>
    </node>
    <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1202117945911" />
  </node>
</model>


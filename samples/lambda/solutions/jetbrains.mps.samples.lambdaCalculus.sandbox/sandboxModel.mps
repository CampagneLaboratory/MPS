<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:19bf018c-b5e7-418d-8415-b23921421325(sandboxModel)">
  <persistence version="4" />
  <refactoringHistory />
  <language namespace="7c9e2807-94ad-4afc-adf0-aaee45eb2895(jetbrains.mps.samples.lambdaCalculus)" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590283(jetbrains.mps.lang.core.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959034b(jetbrains.mps.lang.quotation.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959033d(jetbrains.mps.lang.annotations.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902c1(jetbrains.mps.baseLanguage.constraints)" version="83" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="3" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902db(jetbrains.mps.baseLanguage.blTypes.constraints)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902b4(jetbrains.mps.lang.typesystem.structure)" version="3" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902ae(jetbrains.mps.lang.typesystem.constraints)" version="17" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590340(jetbrains.mps.lang.pattern.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590345(jetbrains.mps.lang.pattern.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902fb(jetbrains.mps.lang.smodel.constraints)" version="21" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" version="16" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590338(jetbrains.mps.baseLanguage.closures.structure)" version="3" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590334(jetbrains.mps.baseLanguage.closures.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959028c(jetbrains.mps.lang.structure.constraints)" version="11" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590328(jetbrains.mps.baseLanguage.collections.constraints)" version="6" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959032e(jetbrains.mps.baseLanguage.collections.structure)" version="7" />
  <languageAspect modelUID="r:d30b7004-00fd-4d3e-bdd6-6ae5346d9b86(jetbrains.mps.samples.lambdaCalculus.structure)" version="1" />
  <devkit namespace="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  <maxImportIndex value="0" />
  <node type="jetbrains.mps.samples.lambdaCalculus.structure.Program:1" id="5277476162361142416">
    <property name="name:1" value="test2" />
    <node role="expression:1" type="jetbrains.mps.samples.lambdaCalculus.structure.LambdaApplication:1" id="5277476162361142445">
      <node role="argument:1" type="jetbrains.mps.samples.lambdaCalculus.structure.NumericConstant:1" id="5277476162361142452">
        <property name="value:1" value="2" />
      </node>
      <node role="function:1" type="jetbrains.mps.samples.lambdaCalculus.structure.LambdaAbstraction:1" id="5277476162361142418">
        <node role="variable:1" type="jetbrains.mps.samples.lambdaCalculus.structure.AbstractionVariable:1" id="5277476162361142419">
          <property name="name:1" value="x" />
        </node>
        <node role="body:1" type="jetbrains.mps.samples.lambdaCalculus.structure.AbstractionVarRef:1" id="7255885626191296040">
          <link role="variable:1" targetNodeId="5277476162361142419" resolveInfo="x" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.samples.lambdaCalculus.structure.Program:1" id="2167053794906818090">
    <property name="name:1" value="sim" />
    <node role="expression:1" type="jetbrains.mps.samples.lambdaCalculus.structure.LetExpression:1" id="2167053794906818091">
      <node role="value:1" type="jetbrains.mps.samples.lambdaCalculus.structure.LambdaAbstraction:1" id="2167053794906818092">
        <node role="variable:1" type="jetbrains.mps.samples.lambdaCalculus.structure.AbstractionVariable:1" id="2167053794906818093">
          <property name="name:1" value="x" />
        </node>
        <node role="body:1" type="jetbrains.mps.samples.lambdaCalculus.structure.MultiplyOperation:1" id="2167053794906818094">
          <node role="left:1" type="jetbrains.mps.samples.lambdaCalculus.structure.AbstractionVarRef:1" id="2167053794906818095">
            <link role="variable:1" targetNodeId="2167053794906818093" resolveInfo="x" />
          </node>
          <node role="right:1" type="jetbrains.mps.samples.lambdaCalculus.structure.AbstractionVarRef:1" id="2167053794906818096">
            <link role="variable:1" targetNodeId="2167053794906818093" resolveInfo="x" />
          </node>
        </node>
      </node>
      <node role="expression:1" type="jetbrains.mps.samples.lambdaCalculus.structure.ParenthesisExpression:1" id="2167053794906818097">
        <node role="expression:1" type="jetbrains.mps.samples.lambdaCalculus.structure.LambdaApplication:1" id="2167053794906818098">
          <node role="argument:1" type="jetbrains.mps.samples.lambdaCalculus.structure.LambdaApplication:1" id="2167053794906818099">
            <node role="argument:1" type="jetbrains.mps.samples.lambdaCalculus.structure.NumericConstant:1" id="2167053794906818100">
              <property name="value:1" value="2" />
            </node>
            <node role="function:1" type="jetbrains.mps.samples.lambdaCalculus.structure.LetRef:1" id="2167053794906818101">
              <link role="variable:1" targetNodeId="2167053794906818103" resolveInfo="sq" />
            </node>
          </node>
          <node role="function:1" type="jetbrains.mps.samples.lambdaCalculus.structure.LetRef:1" id="2167053794906818102">
            <link role="variable:1" targetNodeId="2167053794906818103" resolveInfo="sq" />
          </node>
        </node>
      </node>
      <node role="variable:1" type="jetbrains.mps.samples.lambdaCalculus.structure.LetVariable:1" id="2167053794906818103">
        <property name="name:1" value="sq" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.samples.lambdaCalculus.structure.Program:1" id="816130369292750457">
    <property name="name:1" value="sumsq" />
    <node role="expression:1" type="jetbrains.mps.samples.lambdaCalculus.structure.LambdaApplication:1" id="816130369292750664">
      <node role="argument:1" type="jetbrains.mps.samples.lambdaCalculus.structure.NumericConstant:1" id="816130369292750677">
        <property name="value:1" value="6" />
      </node>
      <node role="function:1" type="jetbrains.mps.samples.lambdaCalculus.structure.LambdaApplication:1" id="816130369292750642">
        <node role="argument:1" type="jetbrains.mps.samples.lambdaCalculus.structure.NumericConstant:1" id="816130369292750654">
          <property name="value:1" value="5" />
        </node>
        <node role="function:1" type="jetbrains.mps.samples.lambdaCalculus.structure.LambdaAbstraction:1" id="816130369292750459">
          <node role="variable:1" type="jetbrains.mps.samples.lambdaCalculus.structure.AbstractionVariable:1" id="816130369292750460">
            <property name="name:1" value="x" />
          </node>
          <node role="variable:1" type="jetbrains.mps.samples.lambdaCalculus.structure.AbstractionVariable:1" id="816130369292750464">
            <property name="name:1" value="y" />
          </node>
          <node role="body:1" type="jetbrains.mps.samples.lambdaCalculus.structure.LetExpression:1" id="816130369292750468">
            <node role="value:1" type="jetbrains.mps.samples.lambdaCalculus.structure.AddOperation:1" id="816130369292750486">
              <node role="right:1" type="jetbrains.mps.samples.lambdaCalculus.structure.AbstractionVarRef:1" id="816130369292750492">
                <link role="variable:1" targetNodeId="816130369292750464" resolveInfo="y" />
              </node>
              <node role="left:1" type="jetbrains.mps.samples.lambdaCalculus.structure.AbstractionVarRef:1" id="816130369292750482">
                <link role="variable:1" targetNodeId="816130369292750460" resolveInfo="x" />
              </node>
            </node>
            <node role="expression:1" type="jetbrains.mps.samples.lambdaCalculus.structure.LetExpression:1" id="816130369292750496">
              <node role="value:1" type="jetbrains.mps.samples.lambdaCalculus.structure.MultiplyOperation:1" id="816130369292750505">
                <node role="right:1" type="jetbrains.mps.samples.lambdaCalculus.structure.AbstractionVarRef:1" id="816130369292750511">
                  <link role="variable:1" targetNodeId="816130369292750464" resolveInfo="y" />
                </node>
                <node role="left:1" type="jetbrains.mps.samples.lambdaCalculus.structure.AbstractionVarRef:1" id="816130369292750504">
                  <link role="variable:1" targetNodeId="816130369292750460" resolveInfo="x" />
                </node>
              </node>
              <node role="expression:1" type="jetbrains.mps.samples.lambdaCalculus.structure.LambdaApplication:1" id="816130369292750539">
                <node role="argument:1" type="jetbrains.mps.samples.lambdaCalculus.structure.LetRef:1" id="816130369292750549">
                  <link role="variable:1" targetNodeId="816130369292750478" resolveInfo="sum" />
                </node>
                <node role="function:1" type="jetbrains.mps.samples.lambdaCalculus.structure.LambdaAbstraction:1" id="816130369292750515">
                  <node role="variable:1" type="jetbrains.mps.samples.lambdaCalculus.structure.AbstractionVariable:1" id="816130369292750516">
                    <property name="name:1" value="z" />
                  </node>
                  <node role="body:1" type="jetbrains.mps.samples.lambdaCalculus.structure.MultiplyOperation:1" id="816130369292750530">
                    <node role="right:1" type="jetbrains.mps.samples.lambdaCalculus.structure.SubtractOperation:1" id="816130369292750606">
                      <node role="right:1" type="jetbrains.mps.samples.lambdaCalculus.structure.MultiplyOperation:1" id="816130369292750624">
                        <node role="right:1" type="jetbrains.mps.samples.lambdaCalculus.structure.LetRef:1" id="816130369292750634">
                          <link role="variable:1" targetNodeId="816130369292750499" resolveInfo="mult" />
                        </node>
                        <node role="left:1" type="jetbrains.mps.samples.lambdaCalculus.structure.NumericConstant:1" id="816130369292750616">
                          <property name="value:1" value="2" />
                        </node>
                      </node>
                      <node role="left:1" type="jetbrains.mps.samples.lambdaCalculus.structure.AbstractionVarRef:1" id="816130369292750533">
                        <link role="variable:1" targetNodeId="816130369292750516" resolveInfo="z" />
                      </node>
                    </node>
                    <node role="left:1" type="jetbrains.mps.samples.lambdaCalculus.structure.AbstractionVarRef:1" id="816130369292750529">
                      <link role="variable:1" targetNodeId="816130369292750516" resolveInfo="z" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="variable:1" type="jetbrains.mps.samples.lambdaCalculus.structure.LetVariable:1" id="816130369292750499">
                <property name="name:1" value="mult" />
              </node>
            </node>
            <node role="variable:1" type="jetbrains.mps.samples.lambdaCalculus.structure.LetVariable:1" id="816130369292750478">
              <property name="name:1" value="sum" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.samples.lambdaCalculus.structure.Program:1" id="816130369292806252">
    <property name="name:1" value="letlet" />
    <node role="expression:1" type="jetbrains.mps.samples.lambdaCalculus.structure.LetExpression:1" id="816130369292806253">
      <node role="value:1" type="jetbrains.mps.samples.lambdaCalculus.structure.NumericConstant:1" id="816130369292806254">
        <property name="value:1" value="1" />
      </node>
      <node role="expression:1" type="jetbrains.mps.samples.lambdaCalculus.structure.LetExpression:1" id="816130369292806255">
        <node role="value:1" type="jetbrains.mps.samples.lambdaCalculus.structure.NumericConstant:1" id="816130369292806256">
          <property name="value:1" value="2" />
        </node>
        <node role="expression:1" type="jetbrains.mps.samples.lambdaCalculus.structure.AddOperation:1" id="816130369292806257">
          <node role="right:1" type="jetbrains.mps.samples.lambdaCalculus.structure.LetRef:1" id="816130369292806258">
            <link role="variable:1" targetNodeId="816130369292806260" resolveInfo="q2" />
          </node>
          <node role="left:1" type="jetbrains.mps.samples.lambdaCalculus.structure.LetRef:1" id="816130369292806259">
            <link role="variable:1" targetNodeId="816130369292806261" resolveInfo="q1" />
          </node>
        </node>
        <node role="variable:1" type="jetbrains.mps.samples.lambdaCalculus.structure.LetVariable:1" id="816130369292806260">
          <property name="name:1" value="q2" />
        </node>
      </node>
      <node role="variable:1" type="jetbrains.mps.samples.lambdaCalculus.structure.LetVariable:1" id="816130369292806261">
        <property name="name:1" value="q1" />
      </node>
    </node>
  </node>
</model>


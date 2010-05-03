<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:00000000-0000-4000-0000-011c89590294(jetbrains.mps.lang.structure.generator_new.util)">
  <persistence version="4" />
  <refactoringHistory />
  <language namespace="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" />
  <language namespace="83888646-71ce-4f1c-9c53-c54016f6ad4f(jetbrains.mps.baseLanguage.collections)" />
  <language namespace="7866978e-a0f0-4cc7-81bc-4d213d9375e1(jetbrains.mps.lang.smodel)" />
  <language namespace="fd392034-7849-419d-9071-12563d152375(jetbrains.mps.baseLanguage.closures)" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902c1(jetbrains.mps.baseLanguage.constraints)" version="83" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="3" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590328(jetbrains.mps.baseLanguage.collections.constraints)" version="6" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959032e(jetbrains.mps.baseLanguage.collections.structure)" version="7" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902fb(jetbrains.mps.lang.smodel.constraints)" version="21" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" version="16" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902e2(jetbrains.mps.lang.generator.constraints)" version="16" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902e8(jetbrains.mps.lang.generator.structure)" version="1" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959030d(jetbrains.mps.lang.constraints.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590338(jetbrains.mps.baseLanguage.closures.structure)" version="3" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959028c(jetbrains.mps.lang.structure.constraints)" version="11" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902ba(jetbrains.mps.lang.sharedConcepts.constraints)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590334(jetbrains.mps.baseLanguage.closures.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590283(jetbrains.mps.lang.core.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895903e4(jetbrains.mps.internal.collections.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902db(jetbrains.mps.baseLanguage.blTypes.constraints)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895903fe(jetbrains.mps.baseLanguage.strings.constraints)" version="1" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590402(jetbrains.mps.baseLanguage.strings.structure)" version="9" />
  <maxImportIndex value="22" />
  <import index="1" modelUID="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" version="0" />
  <import index="2" modelUID="f:java_stub#jetbrains.mps.smodel(jetbrains.mps.smodel@java_stub)" version="-1" />
  <import index="15" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" />
  <import index="16" modelUID="f:java_stub#jetbrains.mps.util(jetbrains.mps.util@java_stub)" version="-1" />
  <import index="20" modelUID="r:2c4d9270-b6d6-44af-aecd-e01a223680db(jetbrains.mps.kernel.model)" version="-1" />
  <import index="22" modelUID="r:00000000-0000-4000-0000-011c8959028b(jetbrains.mps.lang.structure.behavior)" version="-1" />
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="1167253485745">
    <property name="name:3" value="QueriesUtil" />
    <node role="staticMethod:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration:3" id="1167253634949">
      <property name="name:3" value="propertyDataType_isString" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="1167253638390" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1167253634951">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1167253755350">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1167253755351">
            <property name="name:3" value="dataType" />
            <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="1167253755353">
              <link role="concept:16" targetNodeId="1.1082978164218:0" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1203721698946">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1167253735206">
                <link role="variableDeclaration:3" targetNodeId="1167253663344" resolveInfo="property" />
              </node>
              <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SLinkAccess:16" id="1167253742114">
                <link role="link:16" targetNodeId="1.1082985295845:0" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1167253787386">
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1203721698901">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1167253790748">
              <link role="variableDeclaration:3" targetNodeId="1167253755351" resolveInfo="dataType" />
            </node>
            <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation:16" id="1167253795594">
              <node role="conceptArgument:16" type="jetbrains.mps.lang.smodel.structure.RefConcept_Reference:16" id="1177556242960">
                <link role="conceptDeclaration:16" targetNodeId="1.1083243159079:0" />
              </node>
            </node>
          </node>
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1167253787388">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1167253811204">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1239466648263">
                <node role="operand:3" type="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression:16" id="1239466645511">
                  <link role="concept:16" targetNodeId="1.1083243159079:0" resolveInfo="PrimitiveDataTypeDeclaration" />
                  <node role="leftExpression:16" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1239466645512">
                    <link role="variableDeclaration:3" targetNodeId="1167253755351" resolveInfo="dataType" />
                  </node>
                </node>
                <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall:16" id="1239466651439">
                  <link role="baseMethodDeclaration:16" targetNodeId="22.1220268752134" resolveInfo="isString" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1167253899640">
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1203721698948">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1167253905690">
              <link role="variableDeclaration:3" targetNodeId="1167253755351" resolveInfo="dataType" />
            </node>
            <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation:16" id="1167253909692">
              <node role="conceptArgument:16" type="jetbrains.mps.lang.smodel.structure.RefConcept_Reference:16" id="1177556242897">
                <link role="conceptDeclaration:16" targetNodeId="1.1082978499127:0" />
              </node>
            </node>
          </node>
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1167253899642">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1167253923474">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.BooleanConstant:3" id="1167253925445">
                <property name="value:3" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1167253927884">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.BooleanConstant:3" id="1167253932839" />
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1167253663344">
        <property name="name:3" value="property" />
        <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="1167253663345">
          <link role="concept:16" targetNodeId="1.1071489288299:0" />
        </node>
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1178546097115" />
    </node>
    <node role="staticMethod:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration:3" id="1167262266911">
      <property name="name:3" value="propertyDataType_isBoolean" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="1167262266912" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1167262266913">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1167262266914">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1167262266915">
            <property name="name:3" value="dataType" />
            <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="1167262266916">
              <link role="concept:16" targetNodeId="1.1082978164218:0" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1203721698845">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1167262266918">
                <link role="variableDeclaration:3" targetNodeId="1167262266939" resolveInfo="property" />
              </node>
              <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SLinkAccess:16" id="1167262266919">
                <link role="link:16" targetNodeId="1.1082985295845:0" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1167262266920">
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1203721698802">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1167262266922">
              <link role="variableDeclaration:3" targetNodeId="1167262266915" resolveInfo="dataType" />
            </node>
            <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation:16" id="1167262266923">
              <node role="conceptArgument:16" type="jetbrains.mps.lang.smodel.structure.RefConcept_Reference:16" id="1177556242888">
                <link role="conceptDeclaration:16" targetNodeId="1.1083243159079:0" />
              </node>
            </node>
          </node>
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1167262266924">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1167262266925">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1239466618790">
                <node role="operand:3" type="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression:16" id="1239466618791">
                  <link role="concept:16" targetNodeId="1.1083243159079:0" resolveInfo="PrimitiveDataTypeDeclaration" />
                  <node role="leftExpression:16" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1239466618792">
                    <link role="variableDeclaration:3" targetNodeId="1167262266915" resolveInfo="dataType" />
                  </node>
                </node>
                <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall:16" id="1239466618793">
                  <link role="baseMethodDeclaration:16" targetNodeId="22.1220268791641" resolveInfo="isBoolean" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1167262266937">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.BooleanConstant:3" id="1167262266938" />
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1167262266939">
        <property name="name:3" value="property" />
        <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="1167262266940">
          <link role="concept:16" targetNodeId="1.1071489288299:0" />
        </node>
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1178546096889" />
    </node>
    <node role="staticMethod:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration:3" id="1167262451085">
      <property name="name:3" value="propertyDataType_isInteger" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="1167262451086" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1167262451087">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1167262451088">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1167262451089">
            <property name="name:3" value="dataType" />
            <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="1167262451090">
              <link role="concept:16" targetNodeId="1.1082978164218:0" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1203721698822">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1167262451092">
                <link role="variableDeclaration:3" targetNodeId="1167262451106" resolveInfo="property" />
              </node>
              <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SLinkAccess:16" id="1167262451093">
                <link role="link:16" targetNodeId="1.1082985295845:0" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1167262451094">
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1203721698672">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1167262451096">
              <link role="variableDeclaration:3" targetNodeId="1167262451089" resolveInfo="dataType" />
            </node>
            <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation:16" id="1167262451097">
              <node role="conceptArgument:16" type="jetbrains.mps.lang.smodel.structure.RefConcept_Reference:16" id="1177556242927">
                <link role="conceptDeclaration:16" targetNodeId="1.1083243159079:0" />
              </node>
            </node>
          </node>
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1167262451098">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1167262451099">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1239466633956">
                <node role="operand:3" type="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression:16" id="1239466631329">
                  <link role="concept:16" targetNodeId="1.1083243159079:0" resolveInfo="PrimitiveDataTypeDeclaration" />
                  <node role="leftExpression:16" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1239466631330">
                    <link role="variableDeclaration:3" targetNodeId="1167262451089" resolveInfo="dataType" />
                  </node>
                </node>
                <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall:16" id="1239466636663">
                  <link role="baseMethodDeclaration:16" targetNodeId="22.1220268780075" resolveInfo="isInteger" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1167262451104">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.BooleanConstant:3" id="1167262451105" />
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1167262451106">
        <property name="name:3" value="property" />
        <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="1167262451107">
          <link role="concept:16" targetNodeId="1.1071489288299:0" />
        </node>
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1178546096917" />
    </node>
    <node role="staticMethod:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration:3" id="1167262339409">
      <property name="name:3" value="propertyDataType_isEnum" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="1167262339410" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1167262339411">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1167262339412">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1167262339413">
            <property name="name:3" value="dataType" />
            <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="1167262339414">
              <link role="concept:16" targetNodeId="1.1082978164218:0" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1203721698849">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1167262339416">
                <link role="variableDeclaration:3" targetNodeId="1167262339430" resolveInfo="property" />
              </node>
              <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SLinkAccess:16" id="1167262339417">
                <link role="link:16" targetNodeId="1.1082985295845:0" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1167262339418">
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1203721698847">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1167262339420">
              <link role="variableDeclaration:3" targetNodeId="1167262339413" resolveInfo="dataType" />
            </node>
            <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation:16" id="1167262339421">
              <node role="conceptArgument:16" type="jetbrains.mps.lang.smodel.structure.RefConcept_Reference:16" id="1177556243066">
                <link role="conceptDeclaration:16" targetNodeId="1.1082978164219:0" />
              </node>
            </node>
          </node>
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1167262339422">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1167262339423">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.BooleanConstant:3" id="1167262369560">
                <property name="value:3" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1167262339428">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.BooleanConstant:3" id="1167262339429" />
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1167262339430">
        <property name="name:3" value="property" />
        <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="1167262339431">
          <link role="concept:16" targetNodeId="1.1071489288299:0" />
        </node>
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1178546097088" />
    </node>
    <node role="staticMethod:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration:3" id="1167263502163">
      <property name="name:3" value="isRefLink_card_1_nospec" />
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1167263552981">
        <property name="name:3" value="link" />
        <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="1167263552982">
          <link role="concept:16" targetNodeId="1.1071489288298:0" />
        </node>
      </node>
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="1167263509519" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1167263502165">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1167263591430">
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1203721698640">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1203721698942">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1167263616293">
                <link role="variableDeclaration:3" targetNodeId="1167263552981" resolveInfo="link" />
              </node>
              <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess:16" id="1167263705263">
                <link role="property:16" targetNodeId="1.1071599937831:0" />
              </node>
            </node>
            <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Property_HasValue_Enum:16" id="1167263713952">
              <node role="value:16" type="jetbrains.mps.lang.smodel.structure.EnumMemberReference:16" id="1167263713953">
                <link role="enumMember:16" targetNodeId="1.1084199179704:0" />
              </node>
            </node>
          </node>
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1167263591432">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1167263675977">
              <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.OrExpression:3" id="1167263840041">
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1203721698771">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1203721698871">
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1167263690527">
                      <link role="variableDeclaration:3" targetNodeId="1167263552981" resolveInfo="link" />
                    </node>
                    <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess:16" id="1167263819303">
                      <link role="property:16" targetNodeId="1.1071599893252:0" />
                    </node>
                  </node>
                  <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Property_HasValue_Enum:16" id="1167263822508">
                    <node role="value:16" type="jetbrains.mps.lang.smodel.structure.EnumMemberReference:16" id="1167263822509">
                      <link role="enumMember:16" targetNodeId="1.1084197782723:0" />
                    </node>
                  </node>
                </node>
                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1203721698717">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1203721698968">
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1167263846680">
                      <link role="variableDeclaration:3" targetNodeId="1167263552981" resolveInfo="link" />
                    </node>
                    <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess:16" id="1167263846681">
                      <link role="property:16" targetNodeId="1.1071599893252:0" />
                    </node>
                  </node>
                  <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Property_HasValue_Enum:16" id="1167263846682">
                    <node role="value:16" type="jetbrains.mps.lang.smodel.structure.EnumMemberReference:16" id="1167263846683">
                      <link role="enumMember:16" targetNodeId="1.1084197782724:0" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1167263675979">
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1167263866545">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="1167263882441">
                    <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="1167263885662" />
                    <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1203721698715">
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1167263868906">
                        <link role="variableDeclaration:3" targetNodeId="1167263552981" resolveInfo="link" />
                      </node>
                      <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SLinkAccess:16" id="1167263879393">
                        <link role="link:16" targetNodeId="1.1071599698500:0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1167264059399">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.BooleanConstant:3" id="1167264059400" />
        </node>
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1178546096768" />
    </node>
    <node role="staticMethod:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration:3" id="1167263992044">
      <property name="name:3" value="isRefLink_card_1_spec" />
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1167263992045">
        <property name="name:3" value="link" />
        <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="1167263992046">
          <link role="concept:16" targetNodeId="1.1071489288298:0" />
        </node>
      </node>
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="1167263992047" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1167263992048">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1167264179088">
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1167264179089">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1167264179090">
              <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1167264179091">
                <property name="name:3" value="genuineLink" />
                <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="1167264328532">
                  <link role="concept:16" targetNodeId="1.1071489288298:0" />
                </node>
                <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="1237755605282">
                  <link role="classConcept:3" targetNodeId="20.1237995590703" resolveInfo="SModelUtil" />
                  <link role="baseMethodDeclaration:3" targetNodeId="20.1237995590890" resolveInfo="getGenuineLinkDeclaration" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1237755605283">
                    <link role="variableDeclaration:3" targetNodeId="1167263992045" resolveInfo="link" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1167264220289">
              <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1203721698820">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1203721698773">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1167264267560">
                    <link role="variableDeclaration:3" targetNodeId="1167264179091" resolveInfo="genuineLink" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess:16" id="1167264220293">
                    <link role="property:16" targetNodeId="1.1071599937831:0" />
                  </node>
                </node>
                <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Property_HasValue_Enum:16" id="1167264220294">
                  <node role="value:16" type="jetbrains.mps.lang.smodel.structure.EnumMemberReference:16" id="1167264220295">
                    <link role="enumMember:16" targetNodeId="1.1084199179704:0" />
                  </node>
                </node>
              </node>
              <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1167264220296">
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1167264220297">
                  <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.OrExpression:3" id="1167264220298">
                    <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1203721698944">
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1203721698828">
                        <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1167264357471">
                          <link role="variableDeclaration:3" targetNodeId="1167264179091" resolveInfo="genuineLink" />
                        </node>
                        <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess:16" id="1167264229026">
                          <link role="property:16" targetNodeId="1.1071599893252:0" />
                        </node>
                      </node>
                      <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Property_HasValue_Enum:16" id="1167264220303">
                        <node role="value:16" type="jetbrains.mps.lang.smodel.structure.EnumMemberReference:16" id="1167264220304">
                          <link role="enumMember:16" targetNodeId="1.1084197782723:0" />
                        </node>
                      </node>
                    </node>
                    <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1203721698879">
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1203721698924">
                        <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1167264362753">
                          <link role="variableDeclaration:3" targetNodeId="1167264179091" resolveInfo="genuineLink" />
                        </node>
                        <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess:16" id="1167264245058">
                          <link role="property:16" targetNodeId="1.1071599893252:0" />
                        </node>
                      </node>
                      <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Property_HasValue_Enum:16" id="1167264220309">
                        <node role="value:16" type="jetbrains.mps.lang.smodel.structure.EnumMemberReference:16" id="1167264220310">
                          <link role="enumMember:16" targetNodeId="1.1084197782724:0" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1167264220311">
                    <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1167264220312">
                      <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.BooleanConstant:3" id="1167264258340">
                        <property name="value:3" value="true" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="1167264179097">
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1203721698698">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1167264179099">
                <link role="variableDeclaration:3" targetNodeId="1167263992045" resolveInfo="link" />
              </node>
              <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SLinkAccess:16" id="1167264179100">
                <link role="link:16" targetNodeId="1.1071599698500:0" />
              </node>
            </node>
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="1167264179101" />
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1167264063075">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.BooleanConstant:3" id="1167264063076" />
        </node>
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1178546097163" />
    </node>
    <node role="staticMethod:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration:3" id="1167265030512">
      <property name="name:3" value="isAggLink_card_1_nospec" />
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1167265030513">
        <property name="name:3" value="link" />
        <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="1167265030514">
          <link role="concept:16" targetNodeId="1.1071489288298:0" />
        </node>
      </node>
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="1167265030515" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1167265030516">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1167265030517">
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1203721698743">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1203721698978">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1167265030520">
                <link role="variableDeclaration:3" targetNodeId="1167265030513" resolveInfo="link" />
              </node>
              <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess:16" id="1167265030521">
                <link role="property:16" targetNodeId="1.1071599937831:0" />
              </node>
            </node>
            <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Property_HasValue_Enum:16" id="1167265030522">
              <node role="value:16" type="jetbrains.mps.lang.smodel.structure.EnumMemberReference:16" id="1167265030523">
                <link role="enumMember:16" targetNodeId="1.1084199179705:0" />
              </node>
            </node>
          </node>
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1167265030524">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1167265030525">
              <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.OrExpression:3" id="1167265030526">
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1203721698719">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1203721698800">
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1167265030529">
                      <link role="variableDeclaration:3" targetNodeId="1167265030513" resolveInfo="link" />
                    </node>
                    <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess:16" id="1167265030530">
                      <link role="property:16" targetNodeId="1.1071599893252:0" />
                    </node>
                  </node>
                  <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Property_HasValue_Enum:16" id="1167265030531">
                    <node role="value:16" type="jetbrains.mps.lang.smodel.structure.EnumMemberReference:16" id="1167265030532">
                      <link role="enumMember:16" targetNodeId="1.1084197782723:0" />
                    </node>
                  </node>
                </node>
                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1203721698638">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1203721698972">
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1167265030535">
                      <link role="variableDeclaration:3" targetNodeId="1167265030513" resolveInfo="link" />
                    </node>
                    <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess:16" id="1167265030536">
                      <link role="property:16" targetNodeId="1.1071599893252:0" />
                    </node>
                  </node>
                  <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Property_HasValue_Enum:16" id="1167265030537">
                    <node role="value:16" type="jetbrains.mps.lang.smodel.structure.EnumMemberReference:16" id="1167265030538">
                      <link role="enumMember:16" targetNodeId="1.1084197782724:0" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1167265030539">
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1167265030540">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="1167265030541">
                    <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="1167265030542" />
                    <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1203721698692">
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1167265030544">
                        <link role="variableDeclaration:3" targetNodeId="1167265030513" resolveInfo="link" />
                      </node>
                      <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SLinkAccess:16" id="1167265030545">
                        <link role="link:16" targetNodeId="1.1071599698500:0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1167265030546">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.BooleanConstant:3" id="1167265030547" />
        </node>
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1178546097255" />
    </node>
    <node role="staticMethod:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration:3" id="1167265145921">
      <property name="name:3" value="isAggLink_card_n_nospec" />
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1167265145922">
        <property name="name:3" value="link" />
        <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="1167265145923">
          <link role="concept:16" targetNodeId="1.1071489288298:0" />
        </node>
      </node>
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="1167265145924" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1167265145925">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1167265145926">
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1203721698769">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1203721698922">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1167265145929">
                <link role="variableDeclaration:3" targetNodeId="1167265145922" resolveInfo="link" />
              </node>
              <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess:16" id="1167265145930">
                <link role="property:16" targetNodeId="1.1071599937831:0" />
              </node>
            </node>
            <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Property_HasValue_Enum:16" id="1167265145931">
              <node role="value:16" type="jetbrains.mps.lang.smodel.structure.EnumMemberReference:16" id="1167265145932">
                <link role="enumMember:16" targetNodeId="1.1084199179705:0" />
              </node>
            </node>
          </node>
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1167265145933">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1167265145934">
              <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.OrExpression:3" id="1167265145935">
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1203721698723">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1203721698950">
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1167265145938">
                      <link role="variableDeclaration:3" targetNodeId="1167265145922" resolveInfo="link" />
                    </node>
                    <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess:16" id="1167265145939">
                      <link role="property:16" targetNodeId="1.1071599893252:0" />
                    </node>
                  </node>
                  <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Property_HasValue_Enum:16" id="1167265145940">
                    <node role="value:16" type="jetbrains.mps.lang.smodel.structure.EnumMemberReference:16" id="1167265145941">
                      <link role="enumMember:16" targetNodeId="1.1084197782725:0" />
                    </node>
                  </node>
                </node>
                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1203721698798">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1203721698903">
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1167265145944">
                      <link role="variableDeclaration:3" targetNodeId="1167265145922" resolveInfo="link" />
                    </node>
                    <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess:16" id="1167265145945">
                      <link role="property:16" targetNodeId="1.1071599893252:0" />
                    </node>
                  </node>
                  <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Property_HasValue_Enum:16" id="1167265145946">
                    <node role="value:16" type="jetbrains.mps.lang.smodel.structure.EnumMemberReference:16" id="1167265145947">
                      <link role="enumMember:16" targetNodeId="1.1084197782726:0" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1167265145948">
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1167265145949">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="1167265145950">
                    <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="1167265145951" />
                    <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1203721698741">
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1167265145953">
                        <link role="variableDeclaration:3" targetNodeId="1167265145922" resolveInfo="link" />
                      </node>
                      <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SLinkAccess:16" id="1167265145954">
                        <link role="link:16" targetNodeId="1.1071599698500:0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1167265145955">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.BooleanConstant:3" id="1167265145956" />
        </node>
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1178546096911" />
    </node>
    <node role="staticMethod:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration:3" id="1167265071207">
      <property name="name:3" value="isAggLink_card_1_spec" />
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1167265071208">
        <property name="name:3" value="link" />
        <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="1167265071209">
          <link role="concept:16" targetNodeId="1.1071489288298:0" />
        </node>
      </node>
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="1167265071210" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1167265071211">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1167265071212">
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1167265071213">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1167265071214">
              <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1167265071215">
                <property name="name:3" value="genuineLink" />
                <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="1167265071216">
                  <link role="concept:16" targetNodeId="1.1071489288298:0" />
                </node>
                <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="1238249772941">
                  <link role="baseMethodDeclaration:3" targetNodeId="20.1237995590890" resolveInfo="getGenuineLinkDeclaration" />
                  <link role="classConcept:3" targetNodeId="20.1237995590703" resolveInfo="SModelUtil" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1238249772943">
                    <link role="variableDeclaration:3" targetNodeId="1167265071208" resolveInfo="link" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1167265071223">
              <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1203721698794">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1203721698775">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1167265071226">
                    <link role="variableDeclaration:3" targetNodeId="1167265071215" resolveInfo="genuineLink" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess:16" id="1167265071227">
                    <link role="property:16" targetNodeId="1.1071599937831:0" />
                  </node>
                </node>
                <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Property_HasValue_Enum:16" id="1167265071228">
                  <node role="value:16" type="jetbrains.mps.lang.smodel.structure.EnumMemberReference:16" id="1167265071229">
                    <link role="enumMember:16" targetNodeId="1.1084199179705:0" />
                  </node>
                </node>
              </node>
              <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1167265071230">
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1167265071231">
                  <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.OrExpression:3" id="1167265071232">
                    <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1203721698696">
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1203721698670">
                        <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1167265071235">
                          <link role="variableDeclaration:3" targetNodeId="1167265071215" resolveInfo="genuineLink" />
                        </node>
                        <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess:16" id="1167265071236">
                          <link role="property:16" targetNodeId="1.1071599893252:0" />
                        </node>
                      </node>
                      <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Property_HasValue_Enum:16" id="1167265071237">
                        <node role="value:16" type="jetbrains.mps.lang.smodel.structure.EnumMemberReference:16" id="1167265071238">
                          <link role="enumMember:16" targetNodeId="1.1084197782723:0" />
                        </node>
                      </node>
                    </node>
                    <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1203721698853">
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1203721698745">
                        <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1167265071241">
                          <link role="variableDeclaration:3" targetNodeId="1167265071215" resolveInfo="genuineLink" />
                        </node>
                        <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess:16" id="1167265071242">
                          <link role="property:16" targetNodeId="1.1071599893252:0" />
                        </node>
                      </node>
                      <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Property_HasValue_Enum:16" id="1167265071243">
                        <node role="value:16" type="jetbrains.mps.lang.smodel.structure.EnumMemberReference:16" id="1167265071244">
                          <link role="enumMember:16" targetNodeId="1.1084197782724:0" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1167265071245">
                    <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1167265071246">
                      <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.BooleanConstant:3" id="1167265071247">
                        <property name="value:3" value="true" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="1167265071248">
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1203721698824">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1167265071250">
                <link role="variableDeclaration:3" targetNodeId="1167265071208" resolveInfo="link" />
              </node>
              <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SLinkAccess:16" id="1167265071251">
                <link role="link:16" targetNodeId="1.1071599698500:0" />
              </node>
            </node>
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="1167265071252" />
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1167265071253">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.BooleanConstant:3" id="1167265071254" />
        </node>
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1178546096895" />
    </node>
    <node role="staticMethod:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration:3" id="1169579362211">
      <property name="name:3" value="conceptAndItsInterfaces" />
      <node role="returnType:3" type="jetbrains.mps.lang.smodel.structure.SNodeListType:16" id="1169579368766">
        <link role="elementConcept:16" targetNodeId="1.1169125787135:0" />
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1169579362213">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1169579427517">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1169579427518">
            <property name="name:3" value="result" />
            <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeListType:16" id="1169579427519">
              <link role="elementConcept:16" targetNodeId="1.1169125787135:0" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1169579427520">
              <node role="creator:3" type="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit:7" id="1169579427521">
                <node role="elementType:7" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="1169584833447">
                  <link role="concept:16" targetNodeId="1.1169125787135:0" />
                </node>
                <node role="initValue:7" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1169579769346">
                  <link role="variableDeclaration:3" targetNodeId="1169579397877" resolveInfo="concept" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1169579427535">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1206577009949">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1169579427537">
              <link role="variableDeclaration:3" targetNodeId="1169579427518" resolveInfo="result" />
            </node>
            <node role="operation:3" type="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation:7" id="1169579427538">
              <node role="argument:7" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="1238255026559">
                <link role="baseMethodDeclaration:3" targetNodeId="20.1238254781295" resolveInfo="getDirectSuperInterfacesAndTheirSupers" />
                <link role="classConcept:3" targetNodeId="20.1237995590703" resolveInfo="SModelUtil" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1238255026560">
                  <link role="variableDeclaration:3" targetNodeId="1169579397877" resolveInfo="concept" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1169579455948">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1169579458668">
            <link role="variableDeclaration:3" targetNodeId="1169579427518" resolveInfo="result" />
          </node>
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1169579397877">
        <property name="name:3" value="concept" />
        <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="1169579397878">
          <link role="concept:16" targetNodeId="1.1071489090640:0" />
        </node>
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1178546097083" />
    </node>
    <node role="staticMethod:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration:3" id="1169756554461">
      <property name="name:3" value="AL_isNodeStereotypeAndSingular" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="1169756574667" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1169756554463">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1169757477412">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AndExpression:3" id="1169757477413">
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="1169757477414">
              <link role="classConcept:3" targetNodeId="1167253485745" resolveInfo="QueriesUtil" />
              <link role="baseMethodDeclaration:3" targetNodeId="1169757278235" resolveInfo="AL_isSingular" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1169757477415">
                <link role="variableDeclaration:3" targetNodeId="1169756601121" resolveInfo="al" />
              </node>
            </node>
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1203721698873">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1203721698749">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1169757477418">
                  <link role="variableDeclaration:3" targetNodeId="1169756601121" resolveInfo="al" />
                </node>
                <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess:16" id="1169757477419">
                  <link role="property:16" targetNodeId="1.1149608445162:0" />
                </node>
              </node>
              <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Property_HasValue_Enum:16" id="1169757477420">
                <node role="value:16" type="jetbrains.mps.lang.smodel.structure.EnumMemberReference:16" id="1169757477421">
                  <link role="enumMember:16" targetNodeId="1.1149608364144:0" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1169756601121">
        <property name="name:3" value="al" />
        <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="1169756601122">
          <link role="concept:16" targetNodeId="1.1149608206811:0" />
        </node>
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1178546097209" />
    </node>
    <node role="staticMethod:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration:3" id="1169756792139">
      <property name="name:3" value="AL_isNodeStereotypeAndPlural" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="1169756792140" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1169756792141">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1169757409356">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AndExpression:3" id="1169757422281">
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="1169757441285">
              <link role="classConcept:3" targetNodeId="1167253485745" resolveInfo="QueriesUtil" />
              <link role="baseMethodDeclaration:3" targetNodeId="1169757354276" resolveInfo="AL_isPlural" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1169757444098">
                <link role="variableDeclaration:3" targetNodeId="1169756792174" resolveInfo="al" />
              </node>
            </node>
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1203721698666">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1203721698690">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1169757415368">
                  <link role="variableDeclaration:3" targetNodeId="1169756792174" resolveInfo="al" />
                </node>
                <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess:16" id="1169757415369">
                  <link role="property:16" targetNodeId="1.1149608445162:0" />
                </node>
              </node>
              <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Property_HasValue_Enum:16" id="1169757415370">
                <node role="value:16" type="jetbrains.mps.lang.smodel.structure.EnumMemberReference:16" id="1169757415371">
                  <link role="enumMember:16" targetNodeId="1.1149608364144:0" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1169756792174">
        <property name="name:3" value="al" />
        <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="1169756792175">
          <link role="concept:16" targetNodeId="1.1149608206811:0" />
        </node>
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1178546096820" />
    </node>
    <node role="staticMethod:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration:3" id="1169756924477">
      <property name="name:3" value="AL_isPropertyStereotypeAndSingular" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="1169756924478" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1169756924479">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1169757466213">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AndExpression:3" id="1169757466214">
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="1169757466215">
              <link role="classConcept:3" targetNodeId="1167253485745" resolveInfo="QueriesUtil" />
              <link role="baseMethodDeclaration:3" targetNodeId="1169757278235" resolveInfo="AL_isSingular" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1169757466216">
                <link role="variableDeclaration:3" targetNodeId="1169756924512" resolveInfo="al" />
              </node>
            </node>
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1203721698851">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1203721698920">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1169757466219">
                  <link role="variableDeclaration:3" targetNodeId="1169756924512" resolveInfo="al" />
                </node>
                <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess:16" id="1169757466220">
                  <link role="property:16" targetNodeId="1.1149608445162:0" />
                </node>
              </node>
              <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Property_HasValue_Enum:16" id="1169757466221">
                <node role="value:16" type="jetbrains.mps.lang.smodel.structure.EnumMemberReference:16" id="1169757466222">
                  <link role="enumMember:16" targetNodeId="1.1149608344284:0" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1169756924512">
        <property name="name:3" value="al" />
        <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="1169756924513">
          <link role="concept:16" targetNodeId="1.1149608206811:0" />
        </node>
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1178546097111" />
    </node>
    <node role="staticMethod:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration:3" id="1169756924514">
      <property name="name:3" value="AL_isPropertyStereotypeAndPlural" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="1169756924515" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1169756924516">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1169757524215">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AndExpression:3" id="1169757524216">
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="1169757524217">
              <link role="classConcept:3" targetNodeId="1167253485745" resolveInfo="QueriesUtil" />
              <link role="baseMethodDeclaration:3" targetNodeId="1169757354276" resolveInfo="AL_isPlural" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1169757524218">
                <link role="variableDeclaration:3" targetNodeId="1169756924549" resolveInfo="al" />
              </node>
            </node>
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1203721698767">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1203721698747">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1169757524221">
                  <link role="variableDeclaration:3" targetNodeId="1169756924549" resolveInfo="al" />
                </node>
                <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess:16" id="1169757524222">
                  <link role="property:16" targetNodeId="1.1149608445162:0" />
                </node>
              </node>
              <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Property_HasValue_Enum:16" id="1169757524223">
                <node role="value:16" type="jetbrains.mps.lang.smodel.structure.EnumMemberReference:16" id="1169757524224">
                  <link role="enumMember:16" targetNodeId="1.1149608344284:0" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1169756924549">
        <property name="name:3" value="al" />
        <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="1169756924550">
          <link role="concept:16" targetNodeId="1.1149608206811:0" />
        </node>
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1178546096993" />
    </node>
    <node role="staticMethod:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration:3" id="1169757053313">
      <property name="name:3" value="AL_isLinkStereotypeAndSingular" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="1169757053314" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1169757053315">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1169757556826">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AndExpression:3" id="1169757556827">
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="1169757556828">
              <link role="classConcept:3" targetNodeId="1167253485745" resolveInfo="QueriesUtil" />
              <link role="baseMethodDeclaration:3" targetNodeId="1169757278235" resolveInfo="AL_isSingular" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1169757556829">
                <link role="variableDeclaration:3" targetNodeId="1169757053348" resolveInfo="al" />
              </node>
            </node>
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1203721698976">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1203721698995">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1169757556832">
                  <link role="variableDeclaration:3" targetNodeId="1169757053348" resolveInfo="al" />
                </node>
                <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess:16" id="1169757556833">
                  <link role="property:16" targetNodeId="1.1149608445162:0" />
                </node>
              </node>
              <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Property_HasValue_Enum:16" id="1169757556834">
                <node role="value:16" type="jetbrains.mps.lang.smodel.structure.EnumMemberReference:16" id="1169757556835">
                  <link role="enumMember:16" targetNodeId="1.1149608316236:0" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1169757053348">
        <property name="name:3" value="al" />
        <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="1169757053349">
          <link role="concept:16" targetNodeId="1.1149608206811:0" />
        </node>
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1178546096796" />
    </node>
    <node role="staticMethod:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration:3" id="1169757053350">
      <property name="name:3" value="AL_isLinkStereotypeAndPlural" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="1169757053351" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1169757053352">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1169757582703">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AndExpression:3" id="1169757582704">
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="1169757582705">
              <link role="classConcept:3" targetNodeId="1167253485745" resolveInfo="QueriesUtil" />
              <link role="baseMethodDeclaration:3" targetNodeId="1169757354276" resolveInfo="AL_isPlural" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1169757582706">
                <link role="variableDeclaration:3" targetNodeId="1169757053385" resolveInfo="al" />
              </node>
            </node>
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1203721698721">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1203721698899">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1169757582709">
                  <link role="variableDeclaration:3" targetNodeId="1169757053385" resolveInfo="al" />
                </node>
                <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess:16" id="1169757582710">
                  <link role="property:16" targetNodeId="1.1149608445162:0" />
                </node>
              </node>
              <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Property_HasValue_Enum:16" id="1169757582711">
                <node role="value:16" type="jetbrains.mps.lang.smodel.structure.EnumMemberReference:16" id="1169757582712">
                  <link role="enumMember:16" targetNodeId="1.1149608316236:0" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1169757053385">
        <property name="name:3" value="al" />
        <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="1169757053386">
          <link role="concept:16" targetNodeId="1.1149608206811:0" />
        </node>
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1178546097207" />
    </node>
    <node role="staticMethod:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration:3" id="1169757278235">
      <property name="name:3" value="AL_isSingular" />
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1169757325607">
        <property name="name:3" value="al" />
        <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="1169757325608">
          <link role="concept:16" targetNodeId="1.1149608206811:0" />
        </node>
      </node>
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="1169757282816" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1169757278237">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1169757317264">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1169757317265">
            <property name="name:3" value="b1" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="1169757317266" />
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1203721698974">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1203721698668">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1169757328765">
                  <link role="variableDeclaration:3" targetNodeId="1169757325607" resolveInfo="al" />
                </node>
                <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess:16" id="1204741508255">
                  <link role="property:16" targetNodeId="1.1204741022738:0" resolveInfo="sourceCardinality" />
                </node>
              </node>
              <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Property_HasValue_Enum:16" id="1169757317271">
                <node role="value:16" type="jetbrains.mps.lang.smodel.structure.EnumMemberReference:16" id="1169757317272">
                  <link role="enumMember:16" targetNodeId="1.1204742406468:0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1169757317282">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1169757317285">
            <link role="variableDeclaration:3" targetNodeId="1169757317265" resolveInfo="b1" />
          </node>
        </node>
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1178546096940" />
    </node>
    <node role="staticMethod:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration:3" id="1169757354276">
      <property name="name:3" value="AL_isPlural" />
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1169757354277">
        <property name="name:3" value="al" />
        <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="1169757354278">
          <link role="concept:16" targetNodeId="1.1149608206811:0" />
        </node>
      </node>
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="1169757354279" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1169757354280">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1169757354281">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1169757354282">
            <property name="name:3" value="b1" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="1169757354283" />
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1203721698642">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1203721698662">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1169757354286">
                  <link role="variableDeclaration:3" targetNodeId="1169757354277" resolveInfo="al" />
                </node>
                <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess:16" id="1204741513116">
                  <link role="property:16" targetNodeId="1.1204741022738:0" resolveInfo="sourceCardinality" />
                </node>
              </node>
              <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Property_HasValue_Enum:16" id="1169757354288">
                <node role="value:16" type="jetbrains.mps.lang.smodel.structure.EnumMemberReference:16" id="1169757354289">
                  <link role="enumMember:16" targetNodeId="1.1204742457437:0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1169757354299">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1169757354302">
            <link role="variableDeclaration:3" targetNodeId="1169757354282" resolveInfo="b1" />
          </node>
        </node>
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1178546097263" />
    </node>
    <node role="staticMethod:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration:3" id="1198509981825">
      <property name="name:3" value="conceptClassFQName" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="1225192520839" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1198509981827" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1198509981828">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1198510042562">
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1203721698694">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1198510046330">
              <link role="variableDeclaration:3" targetNodeId="1198510030076" resolveInfo="conceptDeclaration" />
            </node>
            <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation:16" id="1198510050006" />
          </node>
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1198510042564">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1198510051070">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="1198510052072">
                <property name="value:3" value="jetbrains.mps.core.structure.BaseConcept" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1198510069870">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.PlusExpression:3" id="1198511443433">
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.PlusExpression:3" id="1198511474425">
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="1198511487106">
                <property name="value:3" value="." />
              </node>
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1204740459675">
                <node role="operand:3" type="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression:16" id="1198511443435">
                  <node role="leftExpression:16" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1203721698792">
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1198511443437">
                      <link role="variableDeclaration:3" targetNodeId="1198510030076" resolveInfo="conceptDeclaration" />
                    </node>
                    <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation:16" id="1198511443438" />
                  </node>
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1204740459676">
                  <link role="baseMethodDeclaration:3" targetNodeId="2.~SModel.getLongName():java.lang.String" resolveInfo="getLongName" />
                </node>
              </node>
            </node>
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1203721698644">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1198511443440">
                <link role="variableDeclaration:3" targetNodeId="1198510030076" resolveInfo="conceptDeclaration" />
              </node>
              <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess:16" id="1198511443441">
                <link role="property:16" targetNodeId="15.1169194664001:0" resolveInfo="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1198510030076">
        <property name="name:3" value="conceptDeclaration" />
        <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="1198510030077">
          <link role="concept:16" targetNodeId="1.1169125787135:0" resolveInfo="AbstractConceptDeclaration" />
        </node>
      </node>
    </node>
    <node role="staticMethod:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration:3" id="1234209362027">
      <property name="name:3" value="getEnumClassResolveInfo" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="1234209369156" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1234209362029" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1234209362030">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1234209424112">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.PlusExpression:3" id="1234209459226">
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1234209471090">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1234209469635">
                <link role="variableDeclaration:3" targetNodeId="1234209401923" resolveInfo="enumType" />
              </node>
              <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess:16" id="1234209471594">
                <link role="property:16" targetNodeId="15.1169194664001:0" resolveInfo="name" />
              </node>
            </node>
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.PlusExpression:3" id="1234209440644">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.PlusExpression:3" id="1234209429255">
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="1234209424113">
                  <property name="value:3" value="[" />
                </node>
                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1234209436186">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1234209433728">
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1234209432305">
                      <link role="variableDeclaration:3" targetNodeId="1234209401923" resolveInfo="enumType" />
                    </node>
                    <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation:16" id="1234209434857" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Model_GetLongNameOperation:16" id="1234209437596" />
                </node>
              </node>
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="1234209440803">
                <property name="value:3" value="]" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1234209401923">
        <property name="name:3" value="enumDeclaration" />
        <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="1234209401924">
          <link role="concept:16" targetNodeId="1.1082978164219:0" resolveInfo="EnumerationDataTypeDeclaration" />
        </node>
      </node>
    </node>
    <node role="staticMethod:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration:3" id="1204743923327">
      <property name="name:3" value="AL_class_getterName" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="1225192521630" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1204743923329" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1204743923330">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1204743997723">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.PlusExpression:3" id="1204744020609">
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="1204744020610">
              <link role="baseMethodDeclaration:3" targetNodeId="16.~NameUtil.capitalize(java.lang.String):java.lang.String" resolveInfo="capitalize" />
              <link role="classConcept:3" targetNodeId="16.~NameUtil" resolveInfo="NameUtil" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1204744020611">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1204744020612">
                  <link role="variableDeclaration:3" targetNodeId="1204743945346" resolveInfo="node" />
                </node>
                <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess:16" id="1204744040336">
                  <link role="property:16" targetNodeId="1.1204740973143:0" resolveInfo="role" />
                </node>
              </node>
            </node>
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="1204744020614">
              <property name="value:3" value="get" />
            </node>
          </node>
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1204743945346">
        <property name="name:3" value="node" />
        <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="1204743945347">
          <link role="concept:16" targetNodeId="1.1149608206811:0" resolveInfo="AnnotationLinkDeclaration" />
        </node>
      </node>
    </node>
    <node role="staticMethod:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration:3" id="1204744191597">
      <property name="name:3" value="AL_class_listGetterName" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="1225192520128" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1204744191599" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1204744191600">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1204744252761">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1204744252762">
            <property name="name:3" value="role" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="1225192520872" />
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="1204744252764">
              <link role="classConcept:3" targetNodeId="16.~NameUtil" resolveInfo="NameUtil" />
              <link role="baseMethodDeclaration:3" targetNodeId="16.~NameUtil.pluralize(java.lang.String):java.lang.String" resolveInfo="pluralize" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1204744252765">
                <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess:16" id="1204744257930">
                  <link role="property:16" targetNodeId="1.1204740973143:0" resolveInfo="role" />
                </node>
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1204744256101">
                  <link role="variableDeclaration:3" targetNodeId="1204744224477" resolveInfo="node" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1204744252768">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.PlusExpression:3" id="1204744252769">
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="1204744252770">
              <link role="classConcept:3" targetNodeId="16.~NameUtil" resolveInfo="NameUtil" />
              <link role="baseMethodDeclaration:3" targetNodeId="16.~NameUtil.capitalize(java.lang.String):java.lang.String" resolveInfo="capitalize" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1204744252771">
                <link role="variableDeclaration:3" targetNodeId="1204744252762" resolveInfo="role" />
              </node>
            </node>
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="1204744252772">
              <property name="value:3" value="get" />
            </node>
          </node>
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1204744224477">
        <property name="name:3" value="node" />
        <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="1204744224478">
          <link role="concept:16" targetNodeId="1.1149608206811:0" resolveInfo="AnnotationLinkDeclaration" />
        </node>
      </node>
    </node>
    <node role="staticMethod:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration:3" id="1204744392098">
      <property name="name:3" value="AL_class_setterName" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="1225192521035" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1204744392100" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1204744392101">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1204744469542">
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="1204744469543">
            <link role="classConcept:3" targetNodeId="1167253485745" resolveInfo="QueriesUtil" />
            <link role="baseMethodDeclaration:3" targetNodeId="1169757278235" resolveInfo="AL_isSingular" />
            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1204744473154">
              <link role="variableDeclaration:3" targetNodeId="1204744418040" resolveInfo="node" />
            </node>
          </node>
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1204744469545">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1204744469546">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.PlusExpression:3" id="1204744469547">
                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="1204744469548">
                  <link role="classConcept:3" targetNodeId="16.~NameUtil" resolveInfo="NameUtil" />
                  <link role="baseMethodDeclaration:3" targetNodeId="16.~NameUtil.capitalize(java.lang.String):java.lang.String" resolveInfo="capitalize" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1204744469549">
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1204744475749">
                      <link role="variableDeclaration:3" targetNodeId="1204744418040" resolveInfo="node" />
                    </node>
                    <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess:16" id="1204744482345">
                      <link role="property:16" targetNodeId="1.1204740973143:0" resolveInfo="role" />
                    </node>
                  </node>
                </node>
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="1204744469552">
                  <property name="value:3" value="set" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1204744469553">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.PlusExpression:3" id="1204744469554">
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="1204744469555">
              <link role="classConcept:3" targetNodeId="16.~NameUtil" resolveInfo="NameUtil" />
              <link role="baseMethodDeclaration:3" targetNodeId="16.~NameUtil.capitalize(java.lang.String):java.lang.String" resolveInfo="capitalize" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1204744469556">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1204744478047">
                  <link role="variableDeclaration:3" targetNodeId="1204744418040" resolveInfo="node" />
                </node>
                <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess:16" id="1204744480282">
                  <link role="property:16" targetNodeId="1.1204740973143:0" resolveInfo="role" />
                </node>
              </node>
            </node>
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="1204744469559">
              <property name="value:3" value="add" />
            </node>
          </node>
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1204744418040">
        <property name="name:3" value="node" />
        <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="1204744418041">
          <link role="concept:16" targetNodeId="1.1149608206811:0" resolveInfo="AnnotationLinkDeclaration" />
        </node>
      </node>
    </node>
    <node role="staticMethod:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration:3" id="1225099380388">
      <property name="name:3" value="getInputLanguage" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1225099382845">
        <link role="classifier:3" targetNodeId="2.~Language" resolveInfo="Language" />
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1225099380390" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1225099380391">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1225099425951">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="1225099438344">
            <link role="baseMethodDeclaration:3" targetNodeId="2.~Language.getLanguageFor(jetbrains.mps.smodel.SModelDescriptor):jetbrains.mps.smodel.Language" resolveInfo="getLanguageFor" />
            <link role="classConcept:3" targetNodeId="2.~Language" resolveInfo="Language" />
            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1225099438345">
              <node role="operand:3" type="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression:16" id="1225099438346">
                <node role="leftExpression:16" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1225099438347">
                  <link role="variableDeclaration:3" targetNodeId="1225099388565" resolveInfo="inputModel" />
                </node>
              </node>
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1225099438348">
                <link role="baseMethodDeclaration:3" targetNodeId="2.~SModel.getModelDescriptor():jetbrains.mps.smodel.SModelDescriptor" resolveInfo="getModelDescriptor" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1225099388565">
        <property name="name:3" value="inputModel" />
        <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SModelType:16" id="1225099388566" />
      </node>
    </node>
    <node role="staticMethod:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration:3" id="545838410333635448">
      <property name="name:3" value="getPropertyIndex" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="545838410333635456" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="545838410333635450" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="545838410333635451">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="545838410333635571">
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="545838410333635572">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="545838410333635581">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="545838410333635583">
                <property name="value:3" value="-1" />
              </node>
            </node>
          </node>
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="545838410333635576">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="545838410333635575">
              <link role="variableDeclaration:3" targetNodeId="545838410333635457" resolveInfo="property" />
            </node>
            <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess:16" id="545838410333635580">
              <link role="property:16" targetNodeId="1.9026942911489198753:0" resolveInfo="doNotGenerate" />
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="545838410333635464">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="545838410333635465">
            <property name="name:3" value="dataType" />
            <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="545838410333635466">
              <link role="concept:16" targetNodeId="1.1082978164218:0" resolveInfo="DataTypeDeclaration" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="545838410333635467">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="545838410333635468">
                <link role="variableDeclaration:3" targetNodeId="545838410333635457" resolveInfo="property" />
              </node>
              <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SLinkAccess:16" id="545838410333635469">
                <link role="link:16" targetNodeId="1.1082985295845:0" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="545838410333635470">
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="545838410333635471">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="545838410333635472">
              <link role="variableDeclaration:3" targetNodeId="545838410333635465" resolveInfo="dataType" />
            </node>
            <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation:16" id="545838410333635473">
              <node role="conceptArgument:16" type="jetbrains.mps.lang.smodel.structure.RefConcept_Reference:16" id="545838410333635474">
                <link role="conceptDeclaration:16" targetNodeId="1.1083243159079:0" resolveInfo="PrimitiveDataTypeDeclaration" />
              </node>
            </node>
          </node>
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="545838410333635475">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="545838410333635492">
              <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="545838410333635493">
                <property name="name:3" value="pdtd" />
                <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="545838410333635494">
                  <link role="concept:16" targetNodeId="1.1083243159079:0" resolveInfo="PrimitiveDataTypeDeclaration" />
                </node>
                <node role="initializer:3" type="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression:16" id="545838410333635497">
                  <link role="concept:16" targetNodeId="1.1083243159079:0" resolveInfo="PrimitiveDataTypeDeclaration" />
                  <node role="leftExpression:16" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="545838410333635496">
                    <link role="variableDeclaration:3" targetNodeId="545838410333635465" resolveInfo="dataType" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="545838410333635500">
              <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="545838410333635501">
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="545838410333635502">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="545838410333635515">
                    <property name="value:3" value="0" />
                  </node>
                </node>
              </node>
              <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="545838410333635509">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="545838410333635508">
                  <link role="variableDeclaration:3" targetNodeId="545838410333635493" resolveInfo="pdtd" />
                </node>
                <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall:16" id="545838410333635513">
                  <link role="baseMethodDeclaration:16" targetNodeId="22.1220268752134" resolveInfo="isString" />
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="545838410333635519">
              <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="545838410333635520">
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="545838410333635529">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="545838410333635531">
                    <property name="value:3" value="1" />
                  </node>
                </node>
              </node>
              <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="545838410333635524">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="545838410333635523">
                  <link role="variableDeclaration:3" targetNodeId="545838410333635493" resolveInfo="pdtd" />
                </node>
                <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall:16" id="545838410333635528">
                  <link role="baseMethodDeclaration:16" targetNodeId="22.1220268791641" resolveInfo="isBoolean" />
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="545838410333635533">
              <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="545838410333635534">
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="545838410333635535">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="545838410333635541">
                    <property name="value:3" value="2" />
                  </node>
                </node>
              </node>
              <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="545838410333635537">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="545838410333635538">
                  <link role="variableDeclaration:3" targetNodeId="545838410333635493" resolveInfo="pdtd" />
                </node>
                <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall:16" id="545838410333635542">
                  <link role="baseMethodDeclaration:16" targetNodeId="22.1220268780075" resolveInfo="isInteger" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="545838410333635481">
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="545838410333635482">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="545838410333635483">
              <link role="variableDeclaration:3" targetNodeId="545838410333635465" resolveInfo="dataType" />
            </node>
            <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation:16" id="545838410333635484">
              <node role="conceptArgument:16" type="jetbrains.mps.lang.smodel.structure.RefConcept_Reference:16" id="545838410333635485">
                <link role="conceptDeclaration:16" targetNodeId="1.1082978499127:0" resolveInfo="ConstrainedDataTypeDeclaration" />
              </node>
            </node>
          </node>
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="545838410333635486">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="545838410333635487">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="545838410333635516">
                <property name="value:3" value="0" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="545838410333635552">
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="545838410333635553">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="545838410333635560">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="545838410333635564">
                <property name="value:3" value="3" />
              </node>
            </node>
          </node>
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="545838410333635556">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="545838410333635557">
              <link role="variableDeclaration:3" targetNodeId="545838410333635465" resolveInfo="dataType" />
            </node>
            <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation:16" id="545838410333635558">
              <node role="conceptArgument:16" type="jetbrains.mps.lang.smodel.structure.RefConcept_Reference:16" id="545838410333635559">
                <link role="conceptDeclaration:16" targetNodeId="1.1082978164219:0" resolveInfo="EnumerationDataTypeDeclaration" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="545838410333635489">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="545838410333635566">
            <property name="value:3" value="4" />
          </node>
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="545838410333635457">
        <property name="name:3" value="property" />
        <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="545838410333635458">
          <link role="concept:16" targetNodeId="1.1071489288299:0" resolveInfo="PropertyDeclaration" />
        </node>
      </node>
    </node>
    <node role="staticMethod:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration:3" id="545838410333767100">
      <property name="name:3" value="getInterfacePropertyIndex" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="545838410333767101" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="545838410333767102" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="545838410333767103">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="545838410333767104">
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="545838410333767105">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="545838410333767106">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="545838410333767172">
                <property name="value:3" value="4" />
              </node>
            </node>
          </node>
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="545838410333767108">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="545838410333767109">
              <link role="variableDeclaration:3" targetNodeId="545838410333767167" resolveInfo="property" />
            </node>
            <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess:16" id="545838410333767110">
              <link role="property:16" targetNodeId="1.9026942911489198753:0" resolveInfo="doNotGenerate" />
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="545838410333767111">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="545838410333767112">
            <property name="name:3" value="dataType" />
            <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="545838410333767113">
              <link role="concept:16" targetNodeId="1.1082978164218:0" resolveInfo="DataTypeDeclaration" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="545838410333767114">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="545838410333767115">
                <link role="variableDeclaration:3" targetNodeId="545838410333767167" resolveInfo="property" />
              </node>
              <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SLinkAccess:16" id="545838410333767116">
                <link role="link:16" targetNodeId="1.1082985295845:0" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="545838410333767117">
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="545838410333767118">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="545838410333767119">
              <link role="variableDeclaration:3" targetNodeId="545838410333767112" resolveInfo="dataType" />
            </node>
            <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation:16" id="545838410333767120">
              <node role="conceptArgument:16" type="jetbrains.mps.lang.smodel.structure.RefConcept_Reference:16" id="545838410333767121">
                <link role="conceptDeclaration:16" targetNodeId="1.1083243159079:0" resolveInfo="PrimitiveDataTypeDeclaration" />
              </node>
            </node>
          </node>
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="545838410333767122">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="545838410333767123">
              <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="545838410333767124">
                <property name="name:3" value="pdtd" />
                <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="545838410333767125">
                  <link role="concept:16" targetNodeId="1.1083243159079:0" resolveInfo="PrimitiveDataTypeDeclaration" />
                </node>
                <node role="initializer:3" type="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression:16" id="545838410333767126">
                  <link role="concept:16" targetNodeId="1.1083243159079:0" resolveInfo="PrimitiveDataTypeDeclaration" />
                  <node role="leftExpression:16" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="545838410333767127">
                    <link role="variableDeclaration:3" targetNodeId="545838410333767112" resolveInfo="dataType" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="545838410333767128">
              <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="545838410333767129">
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="545838410333767130">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="545838410333767131">
                    <property name="value:3" value="0" />
                  </node>
                </node>
              </node>
              <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="545838410333767132">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="545838410333767133">
                  <link role="variableDeclaration:3" targetNodeId="545838410333767124" resolveInfo="pdtd" />
                </node>
                <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall:16" id="545838410333767134">
                  <link role="baseMethodDeclaration:16" targetNodeId="22.1220268752134" resolveInfo="isString" />
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="545838410333767135">
              <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="545838410333767136">
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="545838410333767137">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="545838410333767138">
                    <property name="value:3" value="1" />
                  </node>
                </node>
              </node>
              <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="545838410333767139">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="545838410333767140">
                  <link role="variableDeclaration:3" targetNodeId="545838410333767124" resolveInfo="pdtd" />
                </node>
                <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall:16" id="545838410333767141">
                  <link role="baseMethodDeclaration:16" targetNodeId="22.1220268791641" resolveInfo="isBoolean" />
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="545838410333767142">
              <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="545838410333767143">
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="545838410333767144">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="545838410333767145">
                    <property name="value:3" value="2" />
                  </node>
                </node>
              </node>
              <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="545838410333767146">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="545838410333767147">
                  <link role="variableDeclaration:3" targetNodeId="545838410333767124" resolveInfo="pdtd" />
                </node>
                <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall:16" id="545838410333767148">
                  <link role="baseMethodDeclaration:16" targetNodeId="22.1220268780075" resolveInfo="isInteger" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="545838410333767149">
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="545838410333767150">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="545838410333767151">
              <link role="variableDeclaration:3" targetNodeId="545838410333767112" resolveInfo="dataType" />
            </node>
            <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation:16" id="545838410333767152">
              <node role="conceptArgument:16" type="jetbrains.mps.lang.smodel.structure.RefConcept_Reference:16" id="545838410333767153">
                <link role="conceptDeclaration:16" targetNodeId="1.1082978499127:0" resolveInfo="ConstrainedDataTypeDeclaration" />
              </node>
            </node>
          </node>
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="545838410333767154">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="545838410333767155">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="545838410333767156">
                <property name="value:3" value="0" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="545838410333767157">
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="545838410333767158">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="545838410333767159">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="545838410333767160">
                <property name="value:3" value="3" />
              </node>
            </node>
          </node>
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="545838410333767161">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="545838410333767162">
              <link role="variableDeclaration:3" targetNodeId="545838410333767112" resolveInfo="dataType" />
            </node>
            <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation:16" id="545838410333767163">
              <node role="conceptArgument:16" type="jetbrains.mps.lang.smodel.structure.RefConcept_Reference:16" id="545838410333767164">
                <link role="conceptDeclaration:16" targetNodeId="1.1082978164219:0" resolveInfo="EnumerationDataTypeDeclaration" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="545838410333767165">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="545838410333767174">
            <property name="value:3" value="5" />
          </node>
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="545838410333767167">
        <property name="name:3" value="property" />
        <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="545838410333767168">
          <link role="concept:16" targetNodeId="1.1071489288299:0" resolveInfo="PropertyDeclaration" />
        </node>
      </node>
    </node>
    <node role="staticMethod:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration:3" id="545838410333635415">
      <property name="name:3" value="sortedProperties" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.collections.structure.SequenceType:7" id="545838410333635419">
        <node role="elementType:7" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="545838410333635421">
          <link role="concept:16" targetNodeId="1.1071489288299:0" resolveInfo="PropertyDeclaration" />
        </node>
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="545838410333635417" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="545838410333635418">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="545838410333635426">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="545838410333635428">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="545838410333635427">
              <link role="variableDeclaration:3" targetNodeId="545838410333635422" resolveInfo="r" />
            </node>
            <node role="operation:3" type="jetbrains.mps.baseLanguage.collections.structure.SortOperation:7" id="545838410333635432">
              <node role="closure:7" type="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral:3" id="545838410333635433">
                <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="545838410333635434">
                  <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="545838410333635567">
                    <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalStaticMethodCall:3" id="545838410333635568">
                      <link role="baseMethodDeclaration:3" targetNodeId="545838410333635448" resolveInfo="getPropertyIndex" />
                      <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="545838410333635569">
                        <link role="variableDeclaration:3" targetNodeId="545838410333635435" resolveInfo="it" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="parameter:3" type="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration:7" id="545838410333635435">
                  <property name="name:7" value="it" />
                  <node role="type:7" type="jetbrains.mps.baseLanguage.structure.WildCardType:3" id="545838410333635436" />
                </node>
              </node>
              <node role="ascending:7" type="jetbrains.mps.baseLanguage.collections.structure.SortDirection:7" id="545838410333635437">
                <property name="value:7" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="545838410333635422">
        <property name="name:3" value="r" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.collections.structure.SequenceType:7" id="545838410333635423">
          <node role="elementType:7" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="545838410333635425">
            <link role="concept:16" targetNodeId="1.1071489288299:0" resolveInfo="PropertyDeclaration" />
          </node>
        </node>
      </node>
    </node>
    <node role="staticMethod:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration:3" id="545838410333767181">
      <property name="name:3" value="sortedPropertiesForInterface" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.collections.structure.SequenceType:7" id="545838410333767182">
        <node role="elementType:7" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="545838410333767183">
          <link role="concept:16" targetNodeId="1.1071489288299:0" resolveInfo="PropertyDeclaration" />
        </node>
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="545838410333767184" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="545838410333767185">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="545838410333767186">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="545838410333767187">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="545838410333767188">
              <link role="variableDeclaration:3" targetNodeId="545838410333767198" resolveInfo="r" />
            </node>
            <node role="operation:3" type="jetbrains.mps.baseLanguage.collections.structure.SortOperation:7" id="545838410333767189">
              <node role="closure:7" type="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral:3" id="545838410333767190">
                <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="545838410333767191">
                  <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="545838410333767192">
                    <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalStaticMethodCall:3" id="545838410333767193">
                      <link role="baseMethodDeclaration:3" targetNodeId="545838410333635448" resolveInfo="getPropertyIndex" />
                      <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="545838410333767194">
                        <link role="variableDeclaration:3" targetNodeId="545838410333767195" resolveInfo="it" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="parameter:3" type="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration:7" id="545838410333767195">
                  <property name="name:7" value="it" />
                  <node role="type:7" type="jetbrains.mps.baseLanguage.structure.WildCardType:3" id="545838410333767196" />
                </node>
              </node>
              <node role="ascending:7" type="jetbrains.mps.baseLanguage.collections.structure.SortDirection:7" id="545838410333767197">
                <property name="value:7" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="545838410333767198">
        <property name="name:3" value="r" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.collections.structure.SequenceType:7" id="545838410333767199">
          <node role="elementType:7" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="545838410333767200">
            <link role="concept:16" targetNodeId="1.1071489288299:0" resolveInfo="PropertyDeclaration" />
          </node>
        </node>
      </node>
    </node>
    <node role="staticMethod:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration:3" id="545838410333635606">
      <property name="name:3" value="getLinkIndex" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="545838410333635610" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="545838410333635608" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="545838410333635609">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="545838410333635613">
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="545838410333635617">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="545838410333635616">
              <link role="variableDeclaration:3" targetNodeId="545838410333635611" resolveInfo="link" />
            </node>
            <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess:16" id="545838410333635621">
              <link role="property:16" targetNodeId="1.3236994869861844876:0" resolveInfo="doNotGenerate" />
            </node>
          </node>
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="545838410333635615">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="545838410333635622">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="545838410333635624">
                <property name="value:3" value="-1" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="545838410333635654">
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="545838410333635655">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="545838410333635656">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="545838410333653469">
                <property name="value:3" value="0" />
              </node>
            </node>
          </node>
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.LocalStaticMethodCall:3" id="545838410333635658">
            <link role="baseMethodDeclaration:3" targetNodeId="1167263502163" resolveInfo="isRefLink_card_1_nospec" />
            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="545838410333635659">
              <link role="variableDeclaration:3" targetNodeId="545838410333635611" resolveInfo="link" />
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="545838410333635661">
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="545838410333635662">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="545838410333635663">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="545838410333653471">
                <property name="value:3" value="1" />
              </node>
            </node>
          </node>
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.LocalStaticMethodCall:3" id="545838410333635665">
            <link role="baseMethodDeclaration:3" targetNodeId="1167263992044" resolveInfo="isRefLink_card_1_spec" />
            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="545838410333635666">
              <link role="variableDeclaration:3" targetNodeId="545838410333635611" resolveInfo="link" />
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="545838410333635630">
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="545838410333635631">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="545838410333635636">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="545838410333653473">
                <property name="value:3" value="2" />
              </node>
            </node>
          </node>
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.LocalStaticMethodCall:3" id="545838410333635634">
            <link role="baseMethodDeclaration:3" targetNodeId="1167265030512" resolveInfo="isAggLink_card_1_nospec" />
            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="545838410333635635">
              <link role="variableDeclaration:3" targetNodeId="545838410333635611" resolveInfo="link" />
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="545838410333635640">
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="545838410333635641">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="545838410333635642">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="545838410333635643">
                <property name="value:3" value="3" />
              </node>
            </node>
          </node>
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.LocalStaticMethodCall:3" id="545838410333635644">
            <link role="baseMethodDeclaration:3" targetNodeId="1167265071207" resolveInfo="isAggLink_card_1_spec" />
            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="545838410333635645">
              <link role="variableDeclaration:3" targetNodeId="545838410333635611" resolveInfo="link" />
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="545838410333635647">
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="545838410333635648">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="545838410333635649">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="545838410333635670">
                <property name="value:3" value="4" />
              </node>
            </node>
          </node>
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.LocalStaticMethodCall:3" id="545838410333635651">
            <link role="baseMethodDeclaration:3" targetNodeId="1167265145921" resolveInfo="isAggLink_card_n_nospec" />
            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="545838410333635652">
              <link role="variableDeclaration:3" targetNodeId="545838410333635611" resolveInfo="link" />
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="545838410333635626">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="545838410333635628">
            <property name="value:3" value="5" />
          </node>
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="545838410333635611">
        <property name="name:3" value="link" />
        <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="545838410333635612">
          <link role="concept:16" targetNodeId="1.1071489288298:0" resolveInfo="LinkDeclaration" />
        </node>
      </node>
    </node>
    <node role="staticMethod:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration:3" id="545838410333767042">
      <property name="name:3" value="getInterfaceLinkIndex" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="545838410333767043" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="545838410333767044" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="545838410333767045">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="545838410333767046">
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="545838410333767047">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="545838410333767048">
              <link role="variableDeclaration:3" targetNodeId="545838410333767085" resolveInfo="link" />
            </node>
            <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess:16" id="545838410333767049">
              <link role="property:16" targetNodeId="1.3236994869861844876:0" resolveInfo="doNotGenerate" />
            </node>
          </node>
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="545838410333767050">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="545838410333767051">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="545838410333767052">
                <property name="value:3" value="-1" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="545838410333767065">
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="545838410333767066">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="545838410333767067">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="545838410333767068">
                <property name="value:3" value="1" />
              </node>
            </node>
          </node>
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.LocalStaticMethodCall:3" id="545838410333767069">
            <link role="baseMethodDeclaration:3" targetNodeId="1167265030512" resolveInfo="isAggLink_card_1_nospec" />
            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="545838410333767070">
              <link role="variableDeclaration:3" targetNodeId="545838410333767085" resolveInfo="link" />
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="545838410333767071">
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="545838410333767072">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="545838410333767073">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="545838410333767088">
                <property name="value:3" value="2" />
              </node>
            </node>
          </node>
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.LocalStaticMethodCall:3" id="545838410333767075">
            <link role="baseMethodDeclaration:3" targetNodeId="1167265071207" resolveInfo="isAggLink_card_1_spec" />
            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="545838410333767076">
              <link role="variableDeclaration:3" targetNodeId="545838410333767085" resolveInfo="link" />
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="545838410333767077">
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="545838410333767078">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="545838410333767079">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="545838410333767080">
                <property name="value:3" value="3" />
              </node>
            </node>
          </node>
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.LocalStaticMethodCall:3" id="545838410333767081">
            <link role="baseMethodDeclaration:3" targetNodeId="1167265145921" resolveInfo="isAggLink_card_n_nospec" />
            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="545838410333767082">
              <link role="variableDeclaration:3" targetNodeId="545838410333767085" resolveInfo="link" />
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="545838410333767053">
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="545838410333767054">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="545838410333767055">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="545838410333767090">
                <property name="value:3" value="4" />
              </node>
            </node>
          </node>
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.LocalStaticMethodCall:3" id="545838410333767057">
            <link role="baseMethodDeclaration:3" targetNodeId="1167263502163" resolveInfo="isRefLink_card_1_nospec" />
            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="545838410333767058">
              <link role="variableDeclaration:3" targetNodeId="545838410333767085" resolveInfo="link" />
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="545838410333767059">
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="545838410333767060">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="545838410333767061">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="545838410333767092">
                <property name="value:3" value="5" />
              </node>
            </node>
          </node>
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.LocalStaticMethodCall:3" id="545838410333767063">
            <link role="baseMethodDeclaration:3" targetNodeId="1167263992044" resolveInfo="isRefLink_card_1_spec" />
            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="545838410333767064">
              <link role="variableDeclaration:3" targetNodeId="545838410333767085" resolveInfo="link" />
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="545838410333767083">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="545838410333767084">
            <property name="value:3" value="5" />
          </node>
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="545838410333767085">
        <property name="name:3" value="link" />
        <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="545838410333767086">
          <link role="concept:16" targetNodeId="1.1071489288298:0" resolveInfo="LinkDeclaration" />
        </node>
      </node>
    </node>
    <node role="staticMethod:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration:3" id="545838410333635586">
      <property name="name:3" value="sortedLinks" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.collections.structure.SequenceType:7" id="545838410333635587">
        <node role="elementType:7" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="545838410333635588">
          <link role="concept:16" targetNodeId="1.1071489288298:0" resolveInfo="LinkDeclaration" />
        </node>
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="545838410333635589" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="545838410333635590">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="545838410333635591">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="545838410333635592">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="545838410333635593">
              <link role="variableDeclaration:3" targetNodeId="545838410333635603" resolveInfo="r" />
            </node>
            <node role="operation:3" type="jetbrains.mps.baseLanguage.collections.structure.SortOperation:7" id="545838410333635594">
              <node role="closure:7" type="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral:3" id="545838410333635595">
                <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="545838410333635596">
                  <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="545838410333635597">
                    <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalStaticMethodCall:3" id="545838410333635598">
                      <link role="baseMethodDeclaration:3" targetNodeId="545838410333635606" resolveInfo="getLinkIndex" />
                      <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="545838410333635599">
                        <link role="variableDeclaration:3" targetNodeId="545838410333635600" resolveInfo="it" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="parameter:3" type="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration:7" id="545838410333635600">
                  <property name="name:7" value="it" />
                  <node role="type:7" type="jetbrains.mps.baseLanguage.structure.WildCardType:3" id="545838410333635601" />
                </node>
              </node>
              <node role="ascending:7" type="jetbrains.mps.baseLanguage.collections.structure.SortDirection:7" id="545838410333635602">
                <property name="value:7" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="545838410333635603">
        <property name="name:3" value="r" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.collections.structure.SequenceType:7" id="545838410333635604">
          <node role="elementType:7" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="545838410333635605">
            <link role="concept:16" targetNodeId="1.1071489288298:0" resolveInfo="LinkDeclaration" />
          </node>
        </node>
      </node>
    </node>
    <node role="staticMethod:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration:3" id="545838410333767017">
      <property name="name:3" value="sortedLinksForInterface" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.collections.structure.SequenceType:7" id="545838410333767018">
        <node role="elementType:7" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="545838410333767019">
          <link role="concept:16" targetNodeId="1.1071489288298:0" resolveInfo="LinkDeclaration" />
        </node>
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="545838410333767020" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="545838410333767021">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="545838410333767022">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="545838410333767023">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="545838410333767024">
              <link role="variableDeclaration:3" targetNodeId="545838410333767034" resolveInfo="r" />
            </node>
            <node role="operation:3" type="jetbrains.mps.baseLanguage.collections.structure.SortOperation:7" id="545838410333767025">
              <node role="closure:7" type="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral:3" id="545838410333767026">
                <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="545838410333767027">
                  <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="545838410333767028">
                    <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalStaticMethodCall:3" id="545838410333767029">
                      <link role="baseMethodDeclaration:3" targetNodeId="545838410333767042" resolveInfo="getInterfaceLinkIndex" />
                      <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="545838410333767030">
                        <link role="variableDeclaration:3" targetNodeId="545838410333767031" resolveInfo="it" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="parameter:3" type="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration:7" id="545838410333767031">
                  <property name="name:7" value="it" />
                  <node role="type:7" type="jetbrains.mps.baseLanguage.structure.WildCardType:3" id="545838410333767032" />
                </node>
              </node>
              <node role="ascending:7" type="jetbrains.mps.baseLanguage.collections.structure.SortDirection:7" id="545838410333767033">
                <property name="value:7" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="545838410333767034">
        <property name="name:3" value="r" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.collections.structure.SequenceType:7" id="545838410333767035">
          <node role="elementType:7" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="545838410333767036">
            <link role="concept:16" targetNodeId="1.1071489288298:0" resolveInfo="LinkDeclaration" />
          </node>
        </node>
      </node>
    </node>
    <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1178550081282" />
  </node>
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="1212077391612">
    <property name="name:3" value="LinkDeclarationUtil" />
    <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1212077391613" />
    <node role="staticMethod:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration:3" id="1212077459446">
      <property name="name:3" value="getterMethodName" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="1225192521594" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1212077459448" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1212077459449">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1212077566684">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.PlusExpression:3" id="1212077572625">
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="1212077579316">
              <link role="baseMethodDeclaration:3" targetNodeId="16.~NameUtil.capitalize(java.lang.String):java.lang.String" resolveInfo="capitalize" />
              <link role="classConcept:3" targetNodeId="16.~NameUtil" resolveInfo="NameUtil" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1212077583350">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1212077581911">
                  <link role="variableDeclaration:3" targetNodeId="1212077459450" resolveInfo="link" />
                </node>
                <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess:16" id="1212077584071">
                  <link role="property:16" targetNodeId="1.1071599776563:0" resolveInfo="role" />
                </node>
              </node>
            </node>
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="1212077568640">
              <property name="value:3" value="get" />
            </node>
          </node>
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1212077459450">
        <property name="name:3" value="link" />
        <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="1212077459451">
          <link role="concept:16" targetNodeId="1.1071489288298:0" resolveInfo="LinkDeclaration" />
        </node>
      </node>
    </node>
    <node role="staticMethod:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration:3" id="1212077597994">
      <property name="name:3" value="setterMethodName" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="1225192521233" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1212077597996" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1212077597997">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1212077597998">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.PlusExpression:3" id="1212077597999">
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="1212077598000">
              <link role="baseMethodDeclaration:3" targetNodeId="16.~NameUtil.capitalize(java.lang.String):java.lang.String" resolveInfo="capitalize" />
              <link role="classConcept:3" targetNodeId="16.~NameUtil" resolveInfo="NameUtil" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1212077598001">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1212077598002">
                  <link role="variableDeclaration:3" targetNodeId="1212077598005" resolveInfo="link" />
                </node>
                <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess:16" id="1212077598003">
                  <link role="property:16" targetNodeId="1.1071599776563:0" resolveInfo="role" />
                </node>
              </node>
            </node>
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="1212077598004">
              <property name="value:3" value="set" />
            </node>
          </node>
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1212077598005">
        <property name="name:3" value="link" />
        <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="1212077598006">
          <link role="concept:16" targetNodeId="1.1071489288298:0" resolveInfo="LinkDeclaration" />
        </node>
      </node>
    </node>
  </node>
</model>


<?xml version="1.0" encoding="UTF-8"?>
<model name="jetbrains.mps.baseLanguage.sandbox.test">
  <language namespace="jetbrains.mps.baseLanguage" />
  <maxImportIndex value="27" />
  <import index="1" modelUID="java.lang@java_stub" />
  <import index="26" modelUID="jetbrains.mps.baseLanguage.sandbox.misc" />
  <import index="27" modelUID="java.util@java_stub" />
  <node type="jetbrains.mps.baseLanguage.Interface" id="1115766127296">
    <property name="name" value="IBaseInterface" />
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1115766147547">
      <property name="name" value="baseInterfaceMethod" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1115766147565" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.VoidType" id="1115766151082" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.PublicVisibility" id="1178546095217" />
    </node>
    <node role="visibility" type="jetbrains.mps.baseLanguage.PublicVisibility" id="1178550081072" />
  </node>
  <node type="jetbrains.mps.baseLanguage.Interface" id="1115766166286">
    <property name="name" value="AnInterface" />
    <property name="todo" value="this is a test interface" />
    <node role="staticField" type="jetbrains.mps.baseLanguage.StaticFieldDeclaration" id="1128642293906">
      <property name="name" value="AAA" />
      <node role="type" type="jetbrains.mps.baseLanguage.ClassifierType" id="1128642300361">
        <link role="classifier" extResolveInfo="1.[ClassConcept]String" />
      </node>
      <node role="initializer" type="jetbrains.mps.baseLanguage.StringLiteral" id="1128642306191">
        <property name="value" value="aaa" />
      </node>
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1115766214538">
      <property name="name" value="baseInterfaceMethod" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1115766214540" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.VoidType" id="1115766218166" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.PublicVisibility" id="1178546095629" />
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1115766241542">
      <property name="name" value="anInterfaceMethod" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1115766241544" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.VoidType" id="1115766243764" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.PublicVisibility" id="1178546095436" />
    </node>
    <node role="extendedInterface" type="jetbrains.mps.baseLanguage.ClassifierType" id="1115766202021">
      <link role="classifier" targetNodeId="1115766127296" />
    </node>
    <node role="visibility" type="jetbrains.mps.baseLanguage.PublicVisibility" id="1178550081188" />
  </node>
  <node type="jetbrains.mps.baseLanguage.ClassConcept" id="1115766267843">
    <property name="name" value="BaseClass" />
    <node role="field" type="jetbrains.mps.baseLanguage.FieldDeclaration" id="1141251347107">
      <property name="name" value="int_field_base1" />
      <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1141251350859" />
    </node>
    <node role="field" type="jetbrains.mps.baseLanguage.FieldDeclaration" id="1141251368255">
      <property name="name" value="int_field_base2" />
      <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1141251368256" />
    </node>
    <node role="staticMethod" type="jetbrains.mps.baseLanguage.StaticMethodDeclaration" id="1137896398465">
      <property name="name" value="STM1" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.IntegerType" id="1137896405234" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1137896398514" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.PublicVisibility" id="1178546096770" />
    </node>
    <node role="staticField" type="jetbrains.mps.baseLanguage.StaticFieldDeclaration" id="1137892410631">
      <property name="name" value="STF1" />
      <node role="type" type="jetbrains.mps.baseLanguage.ClassifierType" id="1137892420070">
        <link role="classifier" extResolveInfo="1.[Classifier]String" />
      </node>
    </node>
    <node role="staticField" type="jetbrains.mps.baseLanguage.StaticFieldDeclaration" id="1137892424556">
      <property name="name" value="STF2" />
      <node role="type" type="jetbrains.mps.baseLanguage.ClassifierType" id="1137892428277">
        <link role="classifier" extResolveInfo="1.[Classifier]String" />
      </node>
    </node>
    <node role="staticField" type="jetbrains.mps.baseLanguage.StaticFieldDeclaration" id="1137892431715">
      <property name="name" value="STF3" />
      <node role="type" type="jetbrains.mps.baseLanguage.ClassifierType" id="1137892434983">
        <link role="classifier" extResolveInfo="1.[Classifier]String" />
      </node>
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1115766285313">
      <property name="name" value="baseInterfaceMethod" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1115766285315" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.VoidType" id="1115766288301" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.PublicVisibility" id="1178546095341" />
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1115766295021">
      <property name="name" value="anInterfaceMethod" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1115766295023" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.VoidType" id="1115766297524" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.PublicVisibility" id="1178546095198" />
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1115766326104">
      <property name="name" value="baseClassMethod" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1115766326106" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.VoidType" id="1115766328169" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.PublicVisibility" id="1178546094920" />
    </node>
    <node role="implementedInterface" type="jetbrains.mps.baseLanguage.ClassifierType" id="1115766274125">
      <link role="classifier" targetNodeId="1115766166286" />
    </node>
    <node role="superclass" type="jetbrains.mps.baseLanguage.ClassifierType" id="1165789417561">
      <link role="classifier" extResolveInfo="1.[Classifier]Object" />
    </node>
    <node role="visibility" type="jetbrains.mps.baseLanguage.PublicVisibility" id="1178550081141" />
  </node>
  <node type="jetbrains.mps.baseLanguage.ClassConcept" id="1115766310400">
    <property name="name" value="AClass" />
    <node role="staticField" type="jetbrains.mps.baseLanguage.StaticFieldDeclaration" id="1141080210673">
      <property name="name" value="iiii" />
      <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1141080214379" />
      <node role="initializer" type="jetbrains.mps.baseLanguage.IntegerConstant" id="1141080350995">
        <property name="value" value="10" />
      </node>
    </node>
    <node role="staticMethod" type="jetbrains.mps.baseLanguage.StaticMethodDeclaration" id="1137989368509">
      <property name="name" value="myStaticMethod" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.IntegerType" id="1137989388935" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1137989368574">
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1140562454496">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1140562454495">
            <property name="name" value="i" />
            <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1140562454513" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1140570484090">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1140570484420">
            <property name="name" value="aa" />
            <node role="type" type="jetbrains.mps.baseLanguage.ClassifierType" id="1140570831756">
              <link role="classifier" targetNodeId="1115766310400" />
              <node role="parameter" type="jetbrains.mps.baseLanguage.IntegerType" id="1140575434613" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.ParenthesizedExpression" id="1140832851506">
              <node role="expression" type="jetbrains.mps.baseLanguage.NewExpression" id="1140832744945">
                <link role="baseMethodDeclaration" targetNodeId="1137820838257" />
                <node role="typeParameter" type="jetbrains.mps.baseLanguage.IntegerType" id="1140832793436" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.IntegerConstant" id="1140832796031">
                  <property name="value" value="10" />
                </node>
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.IntegerConstant" id="1140832798220">
                  <property name="value" value="10" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.IfStatement" id="1141079511195">
          <node role="condition" type="jetbrains.mps.baseLanguage.NotEqualsExpression" id="1143594244449">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.NullLiteral" id="1143594246843" />
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.StringLiteral" id="1143594241011" />
          </node>
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.StatementList" id="1141079511213">
            <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1143594260141">
              <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1143594260142">
                <property name="name" value="s" />
                <node role="type" type="jetbrains.mps.baseLanguage.ClassifierType" id="1143594260143">
                  <link role="classifier" extResolveInfo="1.[Classifier]String" />
                </node>
                <node role="initializer" type="jetbrains.mps.baseLanguage.PlusExpression" id="1143594269943">
                  <node role="rightExpression" type="jetbrains.mps.baseLanguage.StringLiteral" id="1143594272399" />
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.StringLiteral" id="1143594265817" />
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1158671293919">
              <node role="expression" type="jetbrains.mps.baseLanguage.NewExpression" id="1158671293920">
                <link role="baseMethodDeclaration" targetNodeId="1137820838257" resolveInfo="AClass" />
                <node role="typeParameter" type="jetbrains.mps.baseLanguage.IntegerType" id="1158671335430" />
                <node role="typeParameter" type="jetbrains.mps.baseLanguage.IntegerType" id="1158671332952" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.IntegerConstant" id="1158671358268">
                  <property name="value" value="1" />
                </node>
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.IntegerConstant" id="1158671369826">
                  <property name="value" value="2" />
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1158671531551">
              <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1158671531552">
                <property name="name" value="classs" />
                <node role="type" type="jetbrains.mps.baseLanguage.ClassifierType" id="1158671531553">
                  <link role="classifier" targetNodeId="1115766310400" resolveInfo="AClass" />
                  <node role="parameter" type="jetbrains.mps.baseLanguage.ClassifierType" id="1158671581402">
                    <link role="classifier" extResolveInfo="1.[Classifier]String" />
                  </node>
                  <node role="parameter" type="jetbrains.mps.baseLanguage.ClassifierType" id="1158671575940">
                    <link role="classifier" extResolveInfo="1.[Classifier]String" />
                  </node>
                </node>
                <node role="initializer" type="jetbrains.mps.baseLanguage.NewExpression" id="1158671556635">
                  <link role="baseMethodDeclaration" targetNodeId="1137820838257" resolveInfo="AClass" />
                  <node role="actualArgument" type="jetbrains.mps.baseLanguage.IntegerConstant" id="1158671556636">
                    <property name="value" value="2" />
                  </node>
                  <node role="actualArgument" type="jetbrains.mps.baseLanguage.IntegerConstant" id="1158671556637">
                    <property name="value" value="1" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1158671598765">
              <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1158671598766">
                <property name="name" value="cls" />
                <node role="type" type="jetbrains.mps.baseLanguage.ClassifierType" id="1158671598767">
                  <link role="classifier" targetNodeId="1115766310400" resolveInfo="AClass" />
                  <node role="parameter" type="jetbrains.mps.baseLanguage.ClassifierType" id="1158671610115">
                    <link role="classifier" extResolveInfo="1.[Classifier]String" />
                  </node>
                  <node role="parameter" type="jetbrains.mps.baseLanguage.ClassifierType" id="1158671613938">
                    <link role="classifier" extResolveInfo="1.[Classifier]Integer" />
                  </node>
                </node>
                <node role="initializer" type="jetbrains.mps.baseLanguage.NewExpression" id="1158671622918">
                  <link role="baseMethodDeclaration" targetNodeId="1137820838257" resolveInfo="AClass" />
                  <node role="actualArgument" type="jetbrains.mps.baseLanguage.IntegerConstant" id="1158671650971">
                    <property name="value" value="1" />
                  </node>
                  <node role="actualArgument" type="jetbrains.mps.baseLanguage.IntegerConstant" id="1158671646202">
                    <property name="value" value="2" />
                  </node>
                  <node role="typeParameter" type="jetbrains.mps.baseLanguage.ClassifierType" id="1158671669962">
                    <link role="classifier" extResolveInfo="1.[Classifier]String" />
                  </node>
                  <node role="typeParameter" type="jetbrains.mps.baseLanguage.ClassifierType" id="1158671678721">
                    <link role="classifier" extResolveInfo="1.[Classifier]Integer" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1140575569883">
        <property name="name" value="parm" />
        <node role="type" type="jetbrains.mps.baseLanguage.ArrayType" id="1140575573244">
          <node role="componentType" type="jetbrains.mps.baseLanguage.ClassifierType" id="1140575569882">
            <link role="classifier" extResolveInfo="1.[Classifier]String" />
          </node>
        </node>
      </node>
      <node role="visibility" type="jetbrains.mps.baseLanguage.PublicVisibility" id="1178546097011" />
    </node>
    <node role="staticMethod" type="jetbrains.mps.baseLanguage.StaticMethodDeclaration" id="1144185153675">
      <property name="name" value="testCastOp" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.ClassifierType" id="1144185159835">
        <link role="classifier" targetNodeId="1115766310400" />
      </node>
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1144185153677">
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1144188577117">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1144188577118">
            <property name="name" value="v" />
            <node role="type" type="jetbrains.mps.baseLanguage.ClassifierType" id="1144188577119">
              <link role="classifier" targetNodeId="1115766310400" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.CastExpression" id="1144188584106">
              <node role="type" type="jetbrains.mps.baseLanguage.ClassifierType" id="1149184403605">
                <link role="classifier" targetNodeId="1115766310400" />
              </node>
              <node role="expression" type="jetbrains.mps.baseLanguage.NullLiteral" id="1144188587937" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1144190319382">
          <node role="expression" type="jetbrains.mps.baseLanguage.InstanceMethodCall" id="1144190323525">
            <link role="baseMethodDeclaration" targetNodeId="1115766338748" />
            <node role="instance" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1144190319383">
              <link role="variableDeclaration" targetNodeId="1144188577118" />
            </node>
            <node role="actualArgument" type="jetbrains.mps.baseLanguage.CastExpression" id="1144190327479">
              <node role="expression" type="jetbrains.mps.baseLanguage.NullLiteral" id="1144190331404" />
              <node role="type" type="jetbrains.mps.baseLanguage.ClassifierType" id="1149184411170">
                <link role="classifier" targetNodeId="1115766310400" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.ReturnStatement" id="1144185181789">
          <node role="expression" type="jetbrains.mps.baseLanguage.CastExpression" id="1144187975222">
            <node role="expression" type="jetbrains.mps.baseLanguage.NullLiteral" id="1144187982585" />
            <node role="type" type="jetbrains.mps.baseLanguage.ClassifierType" id="1149184414375">
              <link role="classifier" targetNodeId="1115766310400" />
            </node>
          </node>
        </node>
      </node>
      <node role="visibility" type="jetbrains.mps.baseLanguage.PublicVisibility" id="1178546097158" />
    </node>
    <node role="staticMethod" type="jetbrains.mps.baseLanguage.StaticMethodDeclaration" id="1144188002436">
      <property name="name" value="testCastOp2" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.ClassifierType" id="1149184424704">
        <link role="classifier" targetNodeId="1115766310400" />
      </node>
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1144188002438">
        <node role="statement" type="jetbrains.mps.baseLanguage.ReturnStatement" id="1144188011643">
          <node role="expression" type="jetbrains.mps.baseLanguage.CastExpression" id="1144188015270">
            <node role="expression" type="jetbrains.mps.baseLanguage.NullLiteral" id="1144188018944" />
            <node role="type" type="jetbrains.mps.baseLanguage.ClassifierType" id="1149184426878">
              <link role="classifier" targetNodeId="1115766310400" />
            </node>
          </node>
        </node>
      </node>
      <node role="visibility" type="jetbrains.mps.baseLanguage.PublicVisibility" id="1178546097061" />
    </node>
    <node role="constructor" type="jetbrains.mps.baseLanguage.ConstructorDeclaration" id="1137820838257">
      <node role="returnType" type="jetbrains.mps.baseLanguage.Type" id="1137820900216" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1137820838258">
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1178551432379">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1178551432380">
            <node role="type" type="jetbrains.mps.baseLanguage.ClassifierType" id="1178551432381">
              <link role="classifier" targetNodeId="26.1178551248023" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1140484304846">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1140484304845">
            <property name="name" value="aaa" />
            <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1140566518425" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1137904439079">
          <node role="expression" type="jetbrains.mps.baseLanguage.SuperMethodCall" id="1137905243674">
            <link role="baseMethodDeclaration" targetNodeId="1115766295021" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1137908251832">
          <node role="expression" type="jetbrains.mps.baseLanguage.SuperMethodCall" id="1137908251848">
            <link role="baseMethodDeclaration" extResolveInfo="1.method ([Classifier]Object).([InstanceMethodDeclaration]clone() : (jetbrains.mps.baseLanguage.types.classifier/jetbrains.mps.baseLanguage.types.classifier [Object]))" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1138060178103">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1138060178102">
            <property name="name" value="aaa" />
            <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1138060218806" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.ParenthesizedExpression" id="1141436898157">
              <node role="expression" type="jetbrains.mps.baseLanguage.PlusExpression" id="1142048271962">
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.IntegerConstant" id="1138060189777">
                  <property name="value" value="10" />
                </node>
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.StaticFieldReference" id="1149276146474">
                  <link role="variableDeclaration" extResolveInfo="1.static field ([Classifier]Byte).([StaticFieldDeclaration]MAX_VALUE : (jetbrains.mps.baseLanguage.types.byte/jetbrains.mps.baseLanguage.types.byte))" />
                  <link role="classifier" extResolveInfo="1.[Classifier]Byte" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.WhileStatement" id="1154536494177">
          <node role="condition" type="jetbrains.mps.baseLanguage.BooleanConstant" id="1154536496837">
            <property name="value" value="true" />
          </node>
          <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1154536494179">
            <node role="statement" type="jetbrains.mps.baseLanguage.BreakStatement" id="1154540178627" />
            <node role="statement" type="jetbrains.mps.baseLanguage.ContinueStatement" id="1154540194208" />
          </node>
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1137820843009">
        <property name="name" value="ffff" />
        <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1137820843010" />
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1140566439956">
        <property name="name" value="ii" />
        <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1140566443865" />
      </node>
      <node role="visibility" type="jetbrains.mps.baseLanguage.PublicVisibility" id="1178546096311" />
    </node>
    <node role="constructor" type="jetbrains.mps.baseLanguage.ConstructorDeclaration" id="1136027151595">
      <node role="returnType" type="jetbrains.mps.baseLanguage.Type" id="1136027212036" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1136027151611">
        <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1136027167330">
          <node role="expression" type="jetbrains.mps.baseLanguage.PlusExpression" id="1136027208535">
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.AssignmentExpression" id="1136027199546">
              <node role="lValue" type="jetbrains.mps.baseLanguage.FieldReference" id="1137962301255">
                <link role="variableDeclaration" targetNodeId="1137736415066" />
                <node role="instance" type="jetbrains.mps.baseLanguage.ThisExpression" id="1136027196763" />
              </node>
              <node role="rValue" type="jetbrains.mps.baseLanguage.ParameterReference" id="1136027204954">
                <link role="variableDeclaration" targetNodeId="1136027173099" />
              </node>
            </node>
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.PlusExpression" id="1137736473149">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1137989716648">
                <link role="variableDeclaration" targetNodeId="1136027175492" />
              </node>
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.PlusExpression" id="1149802424378">
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.FieldReference" id="1149802492693">
                  <link role="variableDeclaration" targetNodeId="1127094836077" />
                  <node role="instance" type="jetbrains.mps.baseLanguage.ThisExpression" id="1149802492694" />
                </node>
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.FieldReference" id="1149276136988">
                  <link role="variableDeclaration" targetNodeId="1127094836077" />
                  <node role="instance" type="jetbrains.mps.baseLanguage.ThisExpression" id="1137736492593" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1137714177491">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1137714177490">
            <property name="name" value="bbb" />
            <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1137714177492" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1164042302991">
          <node role="expression" type="jetbrains.mps.baseLanguage.AssignmentExpression" id="1164042307337">
            <node role="lValue" type="jetbrains.mps.baseLanguage.ParameterReference" id="1164042302992">
              <link role="variableDeclaration" targetNodeId="1136027173099" resolveInfo="fffff" />
            </node>
            <node role="rValue" type="jetbrains.mps.baseLanguage.EnumConstantReference" id="1164043423254">
              <link role="enumConstantDeclaration" targetNodeId="1137816485867" resolveInfo="EC2" />
              <link role="enumClass" targetNodeId="1137816471209" resolveInfo="EnumClass" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1144458338335">
          <node role="expression" type="jetbrains.mps.baseLanguage.StaticFieldReference" id="1144458418386">
            <link role="variableDeclaration" targetNodeId="1141080210673" />
            <link role="classifier" targetNodeId="1115766310400" />
          </node>
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1136027173099">
        <property name="name" value="fffff" />
        <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1136027173100" />
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1136027175492">
        <property name="name" value="g" />
        <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1136027177055" />
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1138061156632">
        <property name="name" value="ii" />
        <node role="type" type="jetbrains.mps.baseLanguage.ArrayType" id="1140575559256">
          <node role="componentType" type="jetbrains.mps.baseLanguage.IntegerType" id="1138061178325" />
        </node>
      </node>
      <node role="visibility" type="jetbrains.mps.baseLanguage.PublicVisibility" id="1178546096339" />
    </node>
    <node role="field" type="jetbrains.mps.baseLanguage.FieldDeclaration" id="1127094836077">
      <property name="name" value="aaa" />
      <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1127094838614" />
      <node role="initializer" type="jetbrains.mps.baseLanguage.IntegerConstant" id="1141079734437">
        <property name="value" value="10" />
      </node>
    </node>
    <node role="field" type="jetbrains.mps.baseLanguage.FieldDeclaration" id="1137736415066">
      <property name="name" value="bbb" />
      <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1142293069419" />
    </node>
    <node role="field" type="jetbrains.mps.baseLanguage.FieldDeclaration" id="1137994194082">
      <property name="name" value="ccc" />
      <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1137994208443" />
      <node role="initializer" type="jetbrains.mps.baseLanguage.StaticFieldReference" id="1164053993891">
        <link role="variableDeclaration" extResolveInfo="1.static field ([Classifier]Integer).([StaticFieldDeclaration]MAX_VALUE : (jetbrains.mps.baseLanguage.types.int/jetbrains.mps.baseLanguage.types.int))" />
        <link role="classifier" extResolveInfo="1.[Classifier]Integer" />
      </node>
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1115766338748">
      <property name="name" value="aClassMethod" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1115766338750">
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1126142422028">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1126142422092">
            <property name="name" value="aClass" />
            <node role="type" type="jetbrains.mps.baseLanguage.ClassifierType" id="1126142422093">
              <link role="classifier" targetNodeId="1115766310400" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.NewExpression" id="1137820870855">
              <link role="baseMethodDeclaration" targetNodeId="1137820838257" />
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.IntegerConstant" id="1140732377588">
                <property name="value" value="10" />
              </node>
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.IntegerConstant" id="1140833730446">
                <property name="value" value="100" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1127094882893">
          <node role="expression" type="jetbrains.mps.baseLanguage.AssignmentExpression" id="1140550332727">
            <node role="lValue" type="jetbrains.mps.baseLanguage.FieldReference" id="1164050809368">
              <link role="variableDeclaration" targetNodeId="1127094836077" resolveInfo="aaa" />
              <node role="instance" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1127094882894">
                <link role="variableDeclaration" targetNodeId="1126142422092" />
              </node>
            </node>
            <node role="rValue" type="jetbrains.mps.baseLanguage.IntegerConstant" id="1143859016220">
              <property name="value" value="1000" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1127098721977">
          <node role="expression" type="jetbrains.mps.baseLanguage.InstanceMethodCall" id="1127098788159">
            <link role="baseMethodDeclaration" targetNodeId="1115766338748" />
            <node role="instance" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1127098721978">
              <link role="variableDeclaration" targetNodeId="1126142422092" />
            </node>
            <node role="actualArgument" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1134570268619">
              <link role="variableDeclaration" targetNodeId="1126142422092" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.IfStatement" id="1128642323287">
          <node role="condition" type="jetbrains.mps.baseLanguage.NotEqualsExpression" id="1128646343751">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.PlusExpression" id="1128646375936">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.IntegerConstant" id="1128646379594">
                <property name="value" value="0" />
              </node>
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParenthesizedExpression" id="1128646349362">
                <node role="expression" type="jetbrains.mps.baseLanguage.MinusExpression" id="1140722172948">
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.IntegerConstant" id="1128646357333">
                    <property name="value" value="1" />
                  </node>
                  <node role="rightExpression" type="jetbrains.mps.baseLanguage.IntegerConstant" id="1140731586791">
                    <property name="value" value="1000" />
                  </node>
                </node>
              </node>
            </node>
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1128642331321">
              <link role="variableDeclaration" targetNodeId="1126142365135" />
            </node>
          </node>
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.StatementList" id="1128642323336">
            <node role="statement" type="jetbrains.mps.baseLanguage.ReturnStatement" id="1128646394815">
              <node role="expression" type="jetbrains.mps.baseLanguage.FieldReference" id="1128646403852">
                <link role="variableDeclaration" targetNodeId="1127094836077" />
                <node role="instance" type="jetbrains.mps.baseLanguage.ThisExpression" id="1128646403853" />
              </node>
            </node>
          </node>
          <node role="ifFalseStatement" type="jetbrains.mps.baseLanguage.IfStatement" id="1128646438615">
            <node role="condition" type="jetbrains.mps.baseLanguage.InstanceOfExpression" id="1128646454639">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.NullLiteral" id="1128646441821" />
              <node role="classType" type="jetbrains.mps.baseLanguage.ClassifierType" id="1128646459593">
                <link role="classifier" targetNodeId="1115766127296" />
              </node>
            </node>
            <node role="ifTrue" type="jetbrains.mps.baseLanguage.StatementList" id="1128646438617" />
            <node role="ifFalseStatement" type="jetbrains.mps.baseLanguage.BlockStatement" id="1128646445995">
              <node role="statements" type="jetbrains.mps.baseLanguage.StatementList" id="1128646445996" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.WhileStatement" id="1128646408338">
          <node role="condition" type="jetbrains.mps.baseLanguage.InstanceOfExpression" id="1128646416859">
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1128646414154">
              <link role="variableDeclaration" targetNodeId="1126142422092" />
            </node>
            <node role="classType" type="jetbrains.mps.baseLanguage.ClassifierType" id="1128646422704">
              <link role="classifier" extResolveInfo="1.[Interface]Appendable" />
            </node>
          </node>
          <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1128646408356">
            <node role="statement" type="jetbrains.mps.baseLanguage.ReturnStatement" id="1128646431002">
              <node role="expression" type="jetbrains.mps.baseLanguage.NullLiteral" id="1128646434082" />
            </node>
          </node>
        </node>
      </node>
      <node role="returnType" type="jetbrains.mps.baseLanguage.VoidType" id="1115766340908" />
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1126142365135">
        <property name="name" value="someName" />
        <node role="type" type="jetbrains.mps.baseLanguage.ClassifierType" id="1126142365229">
          <link role="classifier" targetNodeId="1115766310400" />
        </node>
      </node>
      <node role="visibility" type="jetbrains.mps.baseLanguage.PublicVisibility" id="1178546095481" />
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1130270268759">
      <property name="name" value="callStatic" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.VoidType" id="1130270271199" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1130270268761">
        <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1130270293573">
          <node role="expression" type="jetbrains.mps.baseLanguage.StaticMethodCall" id="1130270293668">
            <link role="baseMethodDeclaration" targetNodeId="1130270248176" />
            <link role="classConcept" targetNodeId="1130270238222" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1130270344612">
          <node role="expression" type="jetbrains.mps.baseLanguage.AssignmentExpression" id="1130270730196">
            <node role="lValue" type="jetbrains.mps.baseLanguage.StaticFieldReference" id="1149184443880">
              <link role="variableDeclaration" targetNodeId="1130270307248" />
              <link role="classifier" targetNodeId="1130270238222" />
            </node>
            <node role="rValue" type="jetbrains.mps.baseLanguage.StaticMethodCall" id="1130270744652">
              <link role="baseMethodDeclaration" targetNodeId="1130270248176" />
              <link role="classConcept" targetNodeId="1130270238222" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1137817063935">
          <node role="expression" type="jetbrains.mps.baseLanguage.MethodCall" id="1137817063934">
            <link role="baseMethodDeclaration" targetNodeId="1137817086064" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.ReturnStatement" id="1137816820174">
          <node role="expression" type="jetbrains.mps.baseLanguage.StaticMethodCall" id="1137816822865">
            <link role="classConcept" extResolveInfo="1.[Classifier]String" />
            <link role="baseMethodDeclaration" extResolveInfo="1.static method ([Classifier]String).([StaticMethodDeclaration]valueOf((jetbrains.mps.baseLanguage.types.classifier/jetbrains.mps.baseLanguage.types.classifier [Object])) : (jetbrains.mps.baseLanguage.types.classifier/jetbrains.mps.baseLanguage.types.classifier [String]))" />
            <node role="actualArgument" type="jetbrains.mps.baseLanguage.NullLiteral" id="1140571422560" />
          </node>
        </node>
      </node>
      <node role="visibility" type="jetbrains.mps.baseLanguage.PublicVisibility" id="1178546095577" />
    </node>
    <node role="typeVariableDeclaration" type="jetbrains.mps.baseLanguage.TypeVariableDeclaration" id="1140819423550">
      <property name="name" value="T1" />
    </node>
    <node role="typeVariableDeclaration" type="jetbrains.mps.baseLanguage.TypeVariableDeclaration" id="1140819429834">
      <property name="name" value="T2" />
    </node>
    <node role="superclass" type="jetbrains.mps.baseLanguage.ClassifierType" id="1165789387154">
      <link role="classifier" targetNodeId="1115766267843" resolveInfo="BaseClass" />
    </node>
    <node role="visibility" type="jetbrains.mps.baseLanguage.PublicVisibility" id="1178550081068" />
  </node>
  <node type="jetbrains.mps.baseLanguage.ClassConcept" id="1115766355096">
    <property name="name" value="TESTMethodCalls" />
    <node role="constructor" type="jetbrains.mps.baseLanguage.ConstructorDeclaration" id="1149095908682">
      <node role="returnType" type="jetbrains.mps.baseLanguage.Type" id="1149095908683" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1149095908684" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.PublicVisibility" id="1178546096167" />
    </node>
    <node role="field" type="jetbrains.mps.baseLanguage.FieldDeclaration" id="1141251199520">
      <property name="name" value="int_field1" />
      <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1141251204725" />
    </node>
    <node role="field" type="jetbrains.mps.baseLanguage.FieldDeclaration" id="1141251214746">
      <property name="name" value="int_field2" />
      <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1141251214747" />
    </node>
    <node role="staticMethod" type="jetbrains.mps.baseLanguage.StaticMethodDeclaration" id="1115766367394">
      <property name="name" value="mmm" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1115766367412">
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1115766387882">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1115766387883">
            <property name="name" value="c1" />
            <node role="type" type="jetbrains.mps.baseLanguage.ClassifierType" id="1115766387884">
              <property name="todo" value="remove this variable" />
              <link role="classifier" targetNodeId="1115766310400" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1141260819355">
          <node role="expression" type="jetbrains.mps.baseLanguage.FieldReference" id="1141260821763">
            <link role="variableDeclaration" targetNodeId="1127094836077" />
            <node role="instance" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1141260819354">
              <link role="variableDeclaration" targetNodeId="1115766387883" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1115766395168">
          <node role="expression" type="jetbrains.mps.baseLanguage.InstanceMethodCall" id="1141181490823">
            <link role="baseMethodDeclaration" targetNodeId="1115766338748" />
            <node role="instance" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1115766395169">
              <link role="variableDeclaration" targetNodeId="1115766387883" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1141254382021">
          <node role="expression" type="jetbrains.mps.baseLanguage.SuperMethodCall" id="1141254382163">
            <link role="baseMethodDeclaration" extResolveInfo="1.method ([Classifier]Object).([InstanceMethodDeclaration]notifyAll() : (jetbrains.mps.baseLanguage.types.void/jetbrains.mps.baseLanguage.types.void))" />
          </node>
        </node>
      </node>
      <node role="returnType" type="jetbrains.mps.baseLanguage.VoidType" id="1115766375256" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.PublicVisibility" id="1178546096843" />
    </node>
    <node role="staticMethod" type="jetbrains.mps.baseLanguage.StaticMethodDeclaration" id="1141169035607">
      <property name="name" value="mmm1" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.VoidType" id="1141169038313" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1141169035672">
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1141169045410">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1141169045409">
            <property name="name" value="c1" />
            <node role="type" type="jetbrains.mps.baseLanguage.ClassifierType" id="1141251235654">
              <link role="classifier" targetNodeId="1115766355096" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.NewExpression" id="1141169055678">
              <link role="baseMethodDeclaration" targetNodeId="1127521381925" />
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.IntegerConstant" id="1141181305421">
                <property name="value" value="0" />
              </node>
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.IntegerConstant" id="1141181316532">
                <property name="value" value="0" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1141251317898">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1141251317897">
            <property name="name" value="iii" />
            <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1141251317915" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.FieldReference" id="1141260810727">
              <link role="variableDeclaration" targetNodeId="1141251199520" />
              <node role="instance" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1141251334262">
                <link role="variableDeclaration" targetNodeId="1141169045409" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="visibility" type="jetbrains.mps.baseLanguage.PublicVisibility" id="1178546096863" />
    </node>
    <node role="staticMethod" type="jetbrains.mps.baseLanguage.StaticMethodDeclaration" id="1141261088482">
      <property name="name" value="aaaaaaa" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.VoidType" id="1141261091923" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1141261088484">
        <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1141261099175">
          <node role="expression" type="jetbrains.mps.baseLanguage.MethodCall" id="1141261099174">
            <link role="baseMethodDeclaration" targetNodeId="1137817086064" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1141261392399">
          <node role="expression" type="jetbrains.mps.baseLanguage.StaticFieldReference" id="1141270148123">
            <link role="variableDeclaration" targetNodeId="1137892410631" />
            <link role="classifier" targetNodeId="1115766355096" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1141267060839">
          <node role="expression" type="jetbrains.mps.baseLanguage.StaticFieldReference" id="1141267060838">
            <link role="variableDeclaration" targetNodeId="1137892424556" />
            <link role="classifier" targetNodeId="1115766355096" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.IfStatement" id="1141270193661">
          <node role="condition" type="jetbrains.mps.baseLanguage.EqualsExpression" id="1141270199009">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.BooleanConstant" id="1141270201808" />
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.BooleanConstant" id="1141270196992">
              <property name="value" value="true" />
            </node>
          </node>
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.StatementList" id="1141270193678">
            <node role="statement" type="jetbrains.mps.baseLanguage.ReturnStatement" id="1141270204684">
              <node role="expression" type="jetbrains.mps.baseLanguage.NullLiteral" id="1141270206827" />
            </node>
          </node>
        </node>
      </node>
      <node role="visibility" type="jetbrains.mps.baseLanguage.PublicVisibility" id="1178546097089" />
    </node>
    <node role="superclass" type="jetbrains.mps.baseLanguage.ClassifierType" id="1165789484625">
      <link role="classifier" targetNodeId="1115766267843" resolveInfo="BaseClass" />
    </node>
    <node role="visibility" type="jetbrains.mps.baseLanguage.PublicVisibility" id="1178550081281" />
  </node>
  <node type="jetbrains.mps.baseLanguage.ClassConcept" id="1119992601482">
    <property name="name" value="TestInt" />
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1119993863122">
      <property name="name" value="aaa" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1119993863499">
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1178898075315">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1178898075316">
            <property name="name" value="sssss" />
            <node role="type" type="jetbrains.mps.baseLanguage.ClassifierType" id="1178898075317">
              <link role="classifier" extResolveInfo="1.[Classifier]Iterable" />
              <node role="parameter" type="jetbrains.mps.baseLanguage.ClassifierType" id="1178898081124">
                <link role="classifier" extResolveInfo="1.[Classifier]String" />
              </node>
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.NewExpression" id="1178898104152">
              <link role="baseMethodDeclaration" extResolveInfo="27.constructor [Classifier]ArrayList[ConstructorDeclaration] ()" />
              <node role="typeParameter" type="jetbrains.mps.baseLanguage.ClassifierType" id="1178898110130">
                <link role="classifier" extResolveInfo="1.[Classifier]String" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.ForeachStatement" id="1178898010330">
          <node role="iterable" type="jetbrains.mps.baseLanguage.NewExpression" id="1179231217598">
            <link role="baseMethodDeclaration" extResolveInfo="27.constructor [Classifier]ArrayList[ConstructorDeclaration] ()" />
            <node role="typeParameter" type="jetbrains.mps.baseLanguage.ClassifierType" id="1179231226653">
              <link role="classifier" extResolveInfo="1.[Classifier]String" />
            </node>
          </node>
          <node role="variable" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1178898010332">
            <property name="name" value="s" />
            <node role="type" type="jetbrains.mps.baseLanguage.ClassifierType" id="1178898013078">
              <link role="classifier" extResolveInfo="1.[Classifier]String" />
            </node>
          </node>
          <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1178898010334" />
        </node>
      </node>
      <node role="returnType" type="jetbrains.mps.baseLanguage.IntegerType" id="1119993866157" />
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1119993881455">
        <property name="name" value="iii" />
        <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1119993881456" />
      </node>
      <node role="visibility" type="jetbrains.mps.baseLanguage.PublicVisibility" id="1178546095175" />
    </node>
    <node role="visibility" type="jetbrains.mps.baseLanguage.PublicVisibility" id="1178550081025" />
  </node>
  <node type="jetbrains.mps.baseLanguage.ClassConcept" id="1127501659937">
    <property name="name" value="TestArrays" />
    <node role="constructor" type="jetbrains.mps.baseLanguage.ConstructorDeclaration" id="1127521381925">
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1127521385662">
        <property name="name" value="args" />
        <node role="type" type="jetbrains.mps.baseLanguage.ArrayType" id="1127521404777">
          <node role="componentType" type="jetbrains.mps.baseLanguage.ClassifierType" id="1127521404778">
            <link role="classifier" extResolveInfo="1.[ClassConcept]String" />
          </node>
        </node>
      </node>
      <node role="returnType" type="jetbrains.mps.baseLanguage.Type" id="1127521515935" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1127521382005">
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1127754752083">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1127754752131">
            <property name="name" value="aaa" />
            <node role="type" type="jetbrains.mps.baseLanguage.TypeVariableReference" id="1127754756539">
              <link role="typeVariableDeclaration" targetNodeId="1127509349664" />
            </node>
          </node>
        </node>
      </node>
      <node role="visibility" type="jetbrains.mps.baseLanguage.PublicVisibility" id="1178546096316" />
    </node>
    <node role="staticField" type="jetbrains.mps.baseLanguage.StaticFieldDeclaration" id="1127521372765">
      <property name="name" value="bbb" />
      <node role="type" type="jetbrains.mps.baseLanguage.ArrayType" id="1127521376986">
        <node role="componentType" type="jetbrains.mps.baseLanguage.ClassifierType" id="1127521377018">
          <link role="classifier" extResolveInfo="1.[ClassConcept]AbstractStringBuilder" />
        </node>
      </node>
    </node>
    <node role="field" type="jetbrains.mps.baseLanguage.FieldDeclaration" id="1127505657359">
      <property name="name" value="aaa" />
      <node role="type" type="jetbrains.mps.baseLanguage.ArrayType" id="1127511843639">
        <node role="componentType" type="jetbrains.mps.baseLanguage.ClassifierType" id="1127511843796">
          <link role="classifier" targetNodeId="1115766127296" />
        </node>
      </node>
    </node>
    <node role="field" type="jetbrains.mps.baseLanguage.FieldDeclaration" id="1127758831744">
      <property name="name" value="i" />
      <node role="type" type="jetbrains.mps.baseLanguage.ArrayType" id="1127758837090">
        <node role="componentType" type="jetbrains.mps.baseLanguage.IntegerType" id="1127758837106" />
      </node>
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1127501681001">
      <property name="name" value="method" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1127501681440" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.ArrayType" id="1127520302970">
        <node role="componentType" type="jetbrains.mps.baseLanguage.TypeVariableReference" id="1127520308379">
          <link role="typeVariableDeclaration" targetNodeId="1127509349664" />
        </node>
      </node>
      <node role="visibility" type="jetbrains.mps.baseLanguage.PublicVisibility" id="1178546094919" />
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1127754693390">
      <property name="name" value="wqwe" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.ClassifierType" id="1127754701003">
        <link role="classifier" targetNodeId="1115766166286" />
      </node>
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1127758799756">
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1127759093843">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1127759093844">
            <property name="name" value="qa" />
            <node role="type" type="jetbrains.mps.baseLanguage.ClassifierType" id="1127759093845">
              <link role="classifier" extResolveInfo="1.[ClassConcept]Boolean" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1127759103488">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1127759103489">
            <property name="name" value="as" />
            <node role="type" type="jetbrains.mps.baseLanguage.ArrayType" id="1127759103490">
              <node role="componentType" type="jetbrains.mps.baseLanguage.ClassifierType" id="1127759103491">
                <link role="classifier" extResolveInfo="1.[Classifier]Boolean" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1127759155712">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1127759155713">
            <property name="name" value="aaa" />
            <node role="type" type="jetbrains.mps.baseLanguage.BooleanType" id="1127759155745" />
          </node>
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1127762107148">
        <property name="name" value="assd" />
        <node role="type" type="jetbrains.mps.baseLanguage.ArrayType" id="1127762107149">
          <node role="componentType" type="jetbrains.mps.baseLanguage.ClassifierType" id="1127762107150">
            <link role="classifier" extResolveInfo="1.[ClassConcept]String" />
          </node>
        </node>
      </node>
      <node role="visibility" type="jetbrains.mps.baseLanguage.PublicVisibility" id="1178546095004" />
    </node>
    <node role="typeVariableDeclaration" type="jetbrains.mps.baseLanguage.TypeVariableDeclaration" id="1127509349664">
      <property name="name" value="T1" />
    </node>
    <node role="typeVariableDeclaration" type="jetbrains.mps.baseLanguage.TypeVariableDeclaration" id="1127509355540">
      <property name="name" value="T2" />
    </node>
    <node role="visibility" type="jetbrains.mps.baseLanguage.PublicVisibility" id="1178550081516" />
  </node>
  <node type="jetbrains.mps.baseLanguage.ClassConcept" id="1130270238222">
    <property name="name" value="StaticClass" />
    <node role="staticField" type="jetbrains.mps.baseLanguage.StaticFieldDeclaration" id="1130270307248">
      <property name="name" value="staticField" />
      <node role="type" type="jetbrains.mps.baseLanguage.ClassifierType" id="1130270311953">
        <link role="classifier" extResolveInfo="1.[Classifier]String" />
      </node>
    </node>
    <node role="staticMethod" type="jetbrains.mps.baseLanguage.StaticMethodDeclaration" id="1130270248176">
      <property name="name" value="staticMethod" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.ClassifierType" id="1130270332204">
        <link role="classifier" extResolveInfo="1.[Classifier]String" />
      </node>
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1130270248257" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.PublicVisibility" id="1178546096986" />
    </node>
    <node role="visibility" type="jetbrains.mps.baseLanguage.PublicVisibility" id="1178550081261" />
  </node>
  <node type="jetbrains.mps.baseLanguage.EnumClass" id="1137816471209">
    <property name="name" value="EnumClass" />
    <node role="staticMethod" type="jetbrains.mps.baseLanguage.StaticMethodDeclaration" id="1137892365869">
      <property name="name" value="STM1" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.VoidType" id="1137892370622" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1137892365933" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.PublicVisibility" id="1178546096966" />
    </node>
    <node role="staticMethod" type="jetbrains.mps.baseLanguage.StaticMethodDeclaration" id="1137892377201">
      <property name="name" value="STM1" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.VoidType" id="1137892381017" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1137892377219" />
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1137892388486">
        <property name="name" value="i" />
        <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1137892388519" />
      </node>
      <node role="visibility" type="jetbrains.mps.baseLanguage.PublicVisibility" id="1178546096792" />
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1137816490149">
      <property name="name" value="get" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.ClassifierType" id="1137816496918">
        <link role="classifier" targetNodeId="1137816471209" />
      </node>
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1137816490182" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.PublicVisibility" id="1178546095561" />
    </node>
    <node role="enumConstant" type="jetbrains.mps.baseLanguage.EnumConstantDeclaration" id="1137816482507">
      <property name="name" value="EC1" />
    </node>
    <node role="enumConstant" type="jetbrains.mps.baseLanguage.EnumConstantDeclaration" id="1137816485867">
      <property name="name" value="EC2" />
    </node>
    <node role="enumConstant" type="jetbrains.mps.baseLanguage.EnumConstantDeclaration" id="1137892355071">
      <property name="name" value="EC3" />
    </node>
    <node role="visibility" type="jetbrains.mps.baseLanguage.PublicVisibility" id="1178550080869" />
  </node>
  <node type="jetbrains.mps.baseLanguage.MethodDeclaration" id="1137817029273">
    <property name="name" value="freeStandingMethod" />
    <node role="returnType" type="jetbrains.mps.baseLanguage.VoidType" id="1137817032307" />
    <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1137817029478" />
  </node>
  <node type="jetbrains.mps.baseLanguage.MethodDeclaration" id="1137817086064">
    <property name="name" value="freeStandingMethod1" />
    <node role="returnType" type="jetbrains.mps.baseLanguage.VoidType" id="1137817086065" />
    <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1137817086066" />
  </node>
  <node type="jetbrains.mps.baseLanguage.ClassConcept" id="1137951629318">
    <property name="name" value="GenaricClasS" />
    <node role="staticMethod" type="jetbrains.mps.baseLanguage.StaticMethodDeclaration" id="1158760513059">
      <property name="name" value="main" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.VoidType" id="1158760516468" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1158760513061">
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1158760539548">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1158760539549">
            <property name="name" value="gcls" />
            <node role="type" type="jetbrains.mps.baseLanguage.ClassifierType" id="1158760539550">
              <link role="classifier" targetNodeId="1137951629318" resolveInfo="GenaricClasS" />
              <node role="parameter" type="jetbrains.mps.baseLanguage.ClassifierType" id="1158760559818">
                <link role="classifier" extResolveInfo="1.[Classifier]String" />
              </node>
              <node role="parameter" type="jetbrains.mps.baseLanguage.ClassifierType" id="1158760564992">
                <link role="classifier" extResolveInfo="1.[Classifier]String" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1158760591560">
          <node role="expression" type="jetbrains.mps.baseLanguage.InstanceMethodCall" id="1158760595610">
            <link role="baseMethodDeclaration" targetNodeId="1158760365773" resolveInfo="foo" />
            <node role="instance" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1158760591561">
              <link role="variableDeclaration" targetNodeId="1158760539549" resolveInfo="gcls" />
            </node>
          </node>
        </node>
      </node>
      <node role="visibility" type="jetbrains.mps.baseLanguage.PublicVisibility" id="1178546096988" />
    </node>
    <node role="field" type="jetbrains.mps.baseLanguage.FieldDeclaration" id="1158760427175">
      <property name="name" value="myT" />
      <node role="type" type="jetbrains.mps.baseLanguage.TypeVariableReference" id="1158760431006">
        <link role="typeVariableDeclaration" targetNodeId="1137951638585" resolveInfo="T1" />
      </node>
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1137951651024">
      <property name="name" value="aaa" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.VoidType" id="1137951657808" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1137951651073">
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1149800298201">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1149800298202">
            <property name="name" value="a" />
            <node role="type" type="jetbrains.mps.baseLanguage.TypeVariableReference" id="1149801094579">
              <link role="typeVariableDeclaration" targetNodeId="1137951644445" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1149801249224">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1149801249225">
            <property name="name" value="b" />
            <node role="type" type="jetbrains.mps.baseLanguage.TypeVariableReference" id="1149801249226">
              <link role="typeVariableDeclaration" targetNodeId="1137951644445" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.ParameterReference" id="1149801660917">
              <link role="variableDeclaration" targetNodeId="1137951727089" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1158760348580">
          <node role="expression" type="jetbrains.mps.baseLanguage.AssignmentExpression" id="1158760349317">
            <node role="lValue" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1158760348581">
              <link role="variableDeclaration" targetNodeId="1149801249225" resolveInfo="b" />
            </node>
            <node role="rValue" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1158760351740">
              <link role="variableDeclaration" targetNodeId="1149800298202" resolveInfo="a" />
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1137951727089">
        <property name="name" value="t" />
        <node role="type" type="jetbrains.mps.baseLanguage.ArrayType" id="1137951790656">
          <node role="componentType" type="jetbrains.mps.baseLanguage.TypeVariableReference" id="1137951796078">
            <link role="typeVariableDeclaration" targetNodeId="1137951638585" />
          </node>
        </node>
      </node>
      <node role="visibility" type="jetbrains.mps.baseLanguage.PublicVisibility" id="1178546095483" />
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1158760365773">
      <property name="name" value="foo" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1158760365774">
        <node role="statement" type="jetbrains.mps.baseLanguage.ReturnStatement" id="1158760395779">
          <node role="expression" type="jetbrains.mps.baseLanguage.FieldReference" id="1158760440757">
            <link role="variableDeclaration" targetNodeId="1158760427175" resolveInfo="myT" />
            <node role="instance" type="jetbrains.mps.baseLanguage.ThisExpression" id="1158760440758" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1158764469485">
          <node role="expression" type="jetbrains.mps.baseLanguage.ThisExpression" id="1158764469486" />
        </node>
      </node>
      <node role="returnType" type="jetbrains.mps.baseLanguage.TypeVariableReference" id="1158760369855">
        <link role="typeVariableDeclaration" targetNodeId="1137951638585" resolveInfo="T1" />
      </node>
      <node role="visibility" type="jetbrains.mps.baseLanguage.PublicVisibility" id="1178546095151" />
    </node>
    <node role="typeVariableDeclaration" type="jetbrains.mps.baseLanguage.TypeVariableDeclaration" id="1137951638585">
      <property name="name" value="T1" />
    </node>
    <node role="typeVariableDeclaration" type="jetbrains.mps.baseLanguage.TypeVariableDeclaration" id="1137951644445">
      <property name="name" value="T2" />
    </node>
    <node role="visibility" type="jetbrains.mps.baseLanguage.PublicVisibility" id="1178550081422" />
  </node>
  <node type="jetbrains.mps.baseLanguage.ClassConcept" id="1137951701097">
    <property name="name" value="GenaricClass2" />
    <node role="typeVariableDeclaration" type="jetbrains.mps.baseLanguage.TypeVariableDeclaration" id="1137951701101">
      <property name="name" value="T1_2" />
    </node>
    <node role="typeVariableDeclaration" type="jetbrains.mps.baseLanguage.TypeVariableDeclaration" id="1137951701102">
      <property name="name" value="T2_2" />
    </node>
    <node role="visibility" type="jetbrains.mps.baseLanguage.PublicVisibility" id="1178550081542" />
  </node>
  <node type="jetbrains.mps.baseLanguage.ClassConcept" id="1143597067381">
    <property name="name" value="TestStrings" />
    <node role="staticMethod" type="jetbrains.mps.baseLanguage.StaticMethodDeclaration" id="1143597077569">
      <property name="name" value="method" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.VoidType" id="1143597081978" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1143597077571">
        <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1143597092573">
          <node role="expression" type="jetbrains.mps.baseLanguage.PlusExpression" id="1143597096106">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.StringLiteral" id="1143597099609" />
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.StringLiteral" id="1143597092574">
              <property name="value" value=" " />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1143597947805">
          <node role="expression" type="jetbrains.mps.baseLanguage.PlusExpression" id="1143597949385">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.StringLiteral" id="1143597950841" />
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.IntegerConstant" id="1143597947806">
              <property name="value" value="1" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1143601191740">
          <node role="expression" type="jetbrains.mps.baseLanguage.PlusExpression" id="1143601193289">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.PlusExpression" id="1143601226106">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.StringLiteral" id="1143601229921" />
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.IntegerConstant" id="1143601195073">
                <property name="value" value="1" />
              </node>
            </node>
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.IntegerConstant" id="1143601191741">
              <property name="value" value="1" />
            </node>
          </node>
        </node>
      </node>
      <node role="visibility" type="jetbrains.mps.baseLanguage.PublicVisibility" id="1178546096862" />
    </node>
    <node role="visibility" type="jetbrains.mps.baseLanguage.PublicVisibility" id="1178550081256" />
  </node>
  <node type="jetbrains.mps.baseLanguage.ClassConcept" id="1154983906165">
    <property name="name" value="BClass" />
    <node role="staticInnerClassifiers" type="jetbrains.mps.baseLanguage.ClassConcept" id="1178620483811">
      <property name="name" value="ABCDEF" />
      <node role="constructor" type="jetbrains.mps.baseLanguage.ConstructorDeclaration" id="1178620515084">
        <node role="returnType" type="jetbrains.mps.baseLanguage.VoidType" id="1178620515085" />
        <node role="visibility" type="jetbrains.mps.baseLanguage.PublicVisibility" id="1178620515086" />
        <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1178620515087" />
      </node>
      <node role="visibility" type="jetbrains.mps.baseLanguage.PublicVisibility" id="1178620483812" />
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1154983913134">
      <property name="name" value="a" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.ClassifierType" id="1154984176523">
        <link role="classifier" targetNodeId="1115766310400" />
      </node>
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1154983913136">
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1178620497235">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1178620497236">
            <property name="name" value="abcedf" />
            <node role="type" type="jetbrains.mps.baseLanguage.ClassifierType" id="1178620497237">
              <link role="classifier" targetNodeId="1178620483811" resolveInfo="ABCDEF" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.NewExpression" id="1178620504501">
              <link role="baseMethodDeclaration" targetNodeId="1178620515084" resolveInfo="ABCDEF" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.ReturnStatement" id="1154983993574">
          <node role="expression" type="jetbrains.mps.baseLanguage.FieldReference" id="1154984278606">
            <link role="variableDeclaration" targetNodeId="1127094836077" />
            <node role="instance" type="jetbrains.mps.baseLanguage.ParameterReference" id="1154984276980">
              <link role="variableDeclaration" targetNodeId="1154984147638" />
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1154984147638">
        <property name="name" value="c" />
        <node role="type" type="jetbrains.mps.baseLanguage.ClassifierType" id="1154984147639">
          <link role="classifier" targetNodeId="1115766310400" />
        </node>
      </node>
      <node role="visibility" type="jetbrains.mps.baseLanguage.PublicVisibility" id="1178546094916" />
    </node>
    <node role="visibility" type="jetbrains.mps.baseLanguage.PublicVisibility" id="1178550081260" />
  </node>
  <node type="jetbrains.mps.baseLanguage.ClassConcept" id="1179231288895">
    <property name="name" value="TestInts" />
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1179231297631">
      <property name="name" value="foo" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.VoidType" id="1179231297632" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.PublicVisibility" id="1179231297633" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1179231297634">
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1179231383420">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1179231383421">
            <property name="name" value="aaa" />
            <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1179231383422" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.ParenthesizedExpression" id="1179231383423">
              <node role="expression" type="jetbrains.mps.baseLanguage.PlusExpression" id="1179231383424">
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.IntegerConstant" id="1179231383425">
                  <property name="value" value="10" />
                </node>
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.FloatingPointConstant" id="1179231383426">
                  <property name="value" value="10.0" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="visibility" type="jetbrains.mps.baseLanguage.PublicVisibility" id="1179231288896" />
  </node>
</model>


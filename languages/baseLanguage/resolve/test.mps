<?xml version="1.0" encoding="UTF-8"?>
<model name="jetbrains.mps.baseLanguage.resolve.test">
  <language namespace="jetbrains.mps.baseLanguage" />
  <language namespace="jetbrains.mps.comments" />
  <maxImportIndex value="234" />
  <import index="1" modelUID="jetbrains.mps.resolve@java_stub" />
  <import index="2" modelUID="java.lang@java_stub" />
  <import index="233" modelUID="java.util@java_stub" />
  <import index="234" modelUID="java.io@java_stub" />
  <node type="jetbrains.mps.baseLanguage.ClassConcept" id="1121166935562">
    <property name="name" value="New" />
    <node role="field" type="jetbrains.mps.baseLanguage.FieldDeclaration" id="1145454091021">
      <node role="type" type="jetbrains.mps.baseLanguage.ClassifierType" id="1145454115975">
        <link role="classifier" extResolveInfo="233.[Classifier]HashMap" />
        <node role="parameter" type="jetbrains.mps.baseLanguage.Type" id="1145455617337" />
      </node>
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1121172586148">
      <property name="name" value="method" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1121172586150">
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1136557137601">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1136557137600">
            <property name="name" value="a" />
            <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1136557137618" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.PlusExpression" id="1136557143483">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.IntegerConstant" id="1136557145782">
                <property name="value" value="50" />
              </node>
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.IntegerConstant" id="1136557153705">
                <property name="value" value="3" />
              </node>
              <node role="_attr_$attribute" type="jetbrains.mps.comments.Comment" id="1136558206868">
                <property name="text" value="ghghgghghghgh" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.ReturnStatement" id="1121172602904">
          <node role="expression" type="jetbrains.mps.baseLanguage.IntegerConstant" id="1121172606578">
            <property name="value" value="5" />
            <node role="_attr_$attribute" type="jetbrains.mps.comments.Comment" id="1136559219369">
              <property name="text" value="dd" />
            </node>
          </node>
          <node role="_attr_$attribute" type="jetbrains.mps.comments.Comment" id="1136557518639">
            <property name="text" value="fff" />
          </node>
        </node>
      </node>
      <node role="returnType" type="jetbrains.mps.baseLanguage.IntegerType" id="1121172588964" />
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1121172596090">
        <property name="name" value="b" />
        <node role="type" type="jetbrains.mps.baseLanguage.BooleanType" id="1121172596091" />
      </node>
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1121172619861">
      <property name="name" value="boo" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1121172619863">
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1121172709121">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1121172709122">
            <property name="name" value="f" />
            <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1121172709123" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.IntegerConstant" id="1121172718766">
              <property name="value" value="6" />
              <node role="_attr_$property_attribute$value" type="jetbrains.mps.comments.PropertyComment" id="1136560232293">
                <property name="propertyName" value="value" />
                <property name="text" value="property comment" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1144073578625">
          <node role="expression" type="jetbrains.mps.baseLanguage.InstanceMethodCall" id="1144073578626">
            <link role="baseMethodDeclaration" targetNodeId="1121172586148" />
            <node role="instance" type="jetbrains.mps.baseLanguage.ThisExpression" id="1144073578627" />
            <node role="actualArgument" type="jetbrains.mps.baseLanguage.CastExpression" id="1144073580722">
              <node role="expression" type="jetbrains.mps.baseLanguage.Expression" id="1144073580724" />
              <node role="type" type="jetbrains.mps.baseLanguage.BooleanType" id="1144074930583" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1121172642193">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1121172642210">
            <property name="name" value="d" />
            <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1121172642211" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.InstanceMethodCall" id="1121438925079">
              <link role="baseMethodDeclaration" targetNodeId="1121438897509" />
              <node role="instance" type="jetbrains.mps.baseLanguage.ThisExpression" id="1121438925080" />
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1121438925081">
                <link role="variableDeclaration" targetNodeId="1121172709122" />
                <node role="_attr_$link_attribute$variableDeclaration" type="jetbrains.mps.comments.LinkComment" id="1136570488350">
                  <property name="linkRole" value="variableDeclaration" />
                  <property name="text" value="dsdsdsdsd" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="returnType" type="jetbrains.mps.baseLanguage.BooleanType" id="1121172625567" />
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1121438897509">
      <property name="name" value="method" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1121438897513">
        <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1136570573762">
          <node role="expression" type="jetbrains.mps.baseLanguage.AssignmentExpression" id="1136570576311">
            <node role="lValue" type="jetbrains.mps.baseLanguage.ParameterReference" id="1136570573761">
              <link role="variableDeclaration" targetNodeId="1121438897511" />
            </node>
            <node role="rValue" type="jetbrains.mps.baseLanguage.PlusExpression" id="1136570579629">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.IntegerConstant" id="1136570581412">
                <property name="value" value="1" />
              </node>
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1136570578891">
                <link role="variableDeclaration" targetNodeId="1121438897511" />
                <node role="_attr_$link_attribute$variableDeclaration" type="jetbrains.mps.comments.LinkComment" id="1136570618386">
                  <property name="linkRole" value="variableDeclaration" />
                  <property name="text" value="link comment" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="returnType" type="jetbrains.mps.baseLanguage.IntegerType" id="1121438897510" />
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1121438897511">
        <property name="name" value="k" />
        <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1121438897512" />
      </node>
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1144313193353">
      <property name="name" value="test" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.VoidType" id="1144313196146" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1144313193355">
        <node role="statement" type="jetbrains.mps.baseLanguage.WhileStatement" id="1144313201022">
          <node role="condition" type="jetbrains.mps.baseLanguage.BooleanConstant" id="1144313203525">
            <property name="value" value="true" />
          </node>
          <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1144313201024">
            <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1144313205119">
              <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1144313205120">
                <property name="name" value="a" />
                <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1144313205121" />
                <node role="initializer" type="jetbrains.mps.baseLanguage.IntegerConstant" id="1144313207358">
                  <property name="value" value="239" />
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1144313208688">
              <node role="expression" type="jetbrains.mps.baseLanguage.PlusExpression" id="1144313209174">
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1144313210302">
                  <link role="variableDeclaration" targetNodeId="1144313205120" />
                </node>
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1144313208689">
                  <link role="variableDeclaration" targetNodeId="1144313205120" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.ForeachStatement" id="1144313214465">
          <node role="iterable" type="jetbrains.mps.baseLanguage.NullLiteral" id="1144313221611" />
          <node role="variable" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1144313214467">
            <property name="name" value="a" />
            <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1144313218251" />
          </node>
          <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1144313214469">
            <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1144313227612">
              <node role="expression" type="jetbrains.mps.baseLanguage.PlusExpression" id="1144313227613">
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1144313227614">
                  <link role="variableDeclaration" targetNodeId="1144313214467" />
                </node>
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1144313227615">
                  <link role="variableDeclaration" targetNodeId="1144313214467" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.ForeachStatement" id="1158936076226">
          <node role="iterable" type="jetbrains.mps.baseLanguage.NewExpression" id="1158936093029">
            <link role="baseMethodDeclaration" extResolveInfo="233.constructor [Classifier]ArrayList[ConstructorDeclaration] ()" />
            <node role="typeParameter" type="jetbrains.mps.baseLanguage.ClassifierType" id="1158936643573">
              <link role="classifier" extResolveInfo="2.[Classifier]String" />
            </node>
          </node>
          <node role="variable" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1158936076228">
            <property name="name" value="z" />
            <node role="type" type="jetbrains.mps.baseLanguage.ClassifierType" id="1158936085497">
              <link role="classifier" extResolveInfo="2.[Classifier]String" />
            </node>
          </node>
          <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1158936076230" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.ClassConcept" id="1121167096060">
    <property name="name" value="New1" />
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1121172827473">
      <property name="name" value="boo" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1121172827475">
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1121172827476">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1121172827477">
            <property name="name" value="f" />
            <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1121172827478" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.IntegerConstant" id="1121172827479">
              <property name="value" value="6" />
              <node role="_attr_$property_attribute$value" type="jetbrains.mps.comments.PropertyComment" id="1136562675102">
                <property name="propertyName" value="value" />
                <property name="text" value="sdsdsd" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1127826357147">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1127826357148">
            <property name="name" value="a" />
            <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1127826357149" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.IntegerConstant" id="1127826360679">
              <property name="value" value="45" />
            </node>
          </node>
          <node role="_attr_$attribute" type="jetbrains.mps.comments.Comment" id="1136562682166">
            <property name="text" value="blah-blah-blah" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1127826363866">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1127826363867">
            <property name="name" value="b" />
            <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1127826363868" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.MinusExpression" id="1127826375617">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.IntegerConstant" id="1127826375698">
                <property name="value" value="56" />
              </node>
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.IntegerConstant" id="1127826375699">
                <property name="value" value="7" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1127826369884">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1127826369885">
            <property name="name" value="c" />
            <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1127826369886" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1122541557333">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1122541557334">
            <property name="name" value="k" />
            <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1122541557335" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.IntegerConstant" id="1122541565463">
              <property name="value" value="42" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1122554832025">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1122554832026">
            <property name="name" value="g" />
            <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1122554832027" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.InstanceMethodCall" id="1122554832028">
              <link role="baseMethodDeclaration" targetNodeId="1121253849301" />
              <node role="instance" type="jetbrains.mps.baseLanguage.ThisExpression" id="1122554832029" />
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1122554832030">
                <link role="variableDeclaration" targetNodeId="1121172827477" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1122743714510">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1122743714511">
            <property name="name" value="g" />
            <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1122743714512" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.InstanceMethodCall" id="1122743714513">
              <link role="baseMethodDeclaration" targetNodeId="1121253849301" />
              <node role="instance" type="jetbrains.mps.baseLanguage.ThisExpression" id="1122743714514" />
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1122743714515">
                <link role="variableDeclaration" targetNodeId="1121172827477" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1155028227705">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1155028227706">
            <property name="name" value="d" />
            <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1155028227707" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.IfStatement" id="1155028185806">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.StatementList" id="1155028185808">
            <node role="statement" type="jetbrains.mps.baseLanguage.IfStatement" id="1155028902092">
              <node role="ifTrue" type="jetbrains.mps.baseLanguage.StatementList" id="1155028902094">
                <node role="statement" type="jetbrains.mps.baseLanguage.IfStatement" id="1155029339620">
                  <node role="ifTrue" type="jetbrains.mps.baseLanguage.StatementList" id="1155029339622" />
                  <node role="condition" type="jetbrains.mps.baseLanguage.EqualsExpression" id="1155029386780">
                    <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParenthesizedExpression" id="1155029386781">
                      <node role="expression" type="jetbrains.mps.baseLanguage.EqualsExpression" id="1155029386782">
                        <node role="leftExpression" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1155029342529">
                          <link role="variableDeclaration" targetNodeId="1127826357148" />
                        </node>
                        <node role="rightExpression" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1155029345752">
                          <link role="variableDeclaration" targetNodeId="1127826363867" />
                        </node>
                      </node>
                    </node>
                    <node role="rightExpression" type="jetbrains.mps.baseLanguage.ParenthesizedExpression" id="1155029386783">
                      <node role="expression" type="jetbrains.mps.baseLanguage.EqualsExpression" id="1155029386784">
                        <node role="leftExpression" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1155029360439">
                          <link role="variableDeclaration" targetNodeId="1127826369885" />
                        </node>
                        <node role="rightExpression" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1155029373771">
                          <link role="variableDeclaration" targetNodeId="1155028227706" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="condition" type="jetbrains.mps.baseLanguage.EqualsExpression" id="1155029449810">
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParenthesizedExpression" id="1155029449811">
                  <node role="expression" type="jetbrains.mps.baseLanguage.ParenthesizedExpression" id="1155029449812">
                    <node role="expression" type="jetbrains.mps.baseLanguage.EqualsExpression" id="1155029449813">
                      <node role="leftExpression" type="jetbrains.mps.baseLanguage.EqualsExpression" id="1155029449814">
                        <node role="leftExpression" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1155028905111">
                          <link role="variableDeclaration" targetNodeId="1127826363867" />
                        </node>
                        <node role="rightExpression" type="jetbrains.mps.baseLanguage.ParenthesizedExpression" id="1155029449815">
                          <node role="expression" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1155028908052">
                            <link role="variableDeclaration" targetNodeId="1127826357148" />
                          </node>
                        </node>
                      </node>
                      <node role="rightExpression" type="jetbrains.mps.baseLanguage.ParenthesizedExpression" id="1155029449816">
                        <node role="expression" type="jetbrains.mps.baseLanguage.EqualsExpression" id="1155029449817">
                          <node role="leftExpression" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1155029435494">
                            <link role="variableDeclaration" targetNodeId="1127826369885" />
                          </node>
                          <node role="rightExpression" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1155029447547">
                            <link role="variableDeclaration" targetNodeId="1155028227706" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1155028950161">
                  <link role="variableDeclaration" targetNodeId="1127826369885" />
                </node>
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.OrExpression" id="1155028647905">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.EqualsExpression" id="1155028657972">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1155028663397">
                <link role="variableDeclaration" targetNodeId="1127826357148" />
              </node>
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1155028656581">
                <link role="variableDeclaration" targetNodeId="1155028227706" />
              </node>
            </node>
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParenthesizedExpression" id="1155028639615">
              <node role="expression" type="jetbrains.mps.baseLanguage.EqualsExpression" id="1155028639616">
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParenthesizedExpression" id="1155028639617">
                  <node role="expression" type="jetbrains.mps.baseLanguage.DivExpression" id="1155028639618">
                    <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParenthesizedExpression" id="1155028639619">
                      <node role="expression" type="jetbrains.mps.baseLanguage.PlusExpression" id="1155028639620">
                        <node role="leftExpression" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1155028188653">
                          <link role="variableDeclaration" targetNodeId="1127826357148" />
                        </node>
                        <node role="rightExpression" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1155028195782">
                          <link role="variableDeclaration" targetNodeId="1127826363867" />
                        </node>
                      </node>
                    </node>
                    <node role="rightExpression" type="jetbrains.mps.baseLanguage.ParenthesizedExpression" id="1155028639621">
                      <node role="expression" type="jetbrains.mps.baseLanguage.MinusExpression" id="1155028639622">
                        <node role="leftExpression" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1155028233614">
                          <link role="variableDeclaration" targetNodeId="1155028227706" />
                        </node>
                        <node role="rightExpression" type="jetbrains.mps.baseLanguage.MulExpression" id="1155028639623">
                          <node role="leftExpression" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1155028202352">
                            <link role="variableDeclaration" targetNodeId="1127826369885" />
                          </node>
                          <node role="rightExpression" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1155028245991">
                            <link role="variableDeclaration" targetNodeId="1155028227706" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1155028630155">
                  <link role="variableDeclaration" targetNodeId="1155028227706" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1145454150553">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1145454150554">
            <node role="type" type="jetbrains.mps.baseLanguage.ClassifierType" id="1145454150555">
              <link role="classifier" extResolveInfo="233.[Classifier]HashMap" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.IfStatement" id="1155029772493">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.StatementList" id="1155029772495">
            <node role="statement" type="jetbrains.mps.baseLanguage.ReturnStatement" id="1155030884182">
              <node role="expression" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1155030889575">
                <link role="variableDeclaration" targetNodeId="1127826357148" />
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.ParenthesizedExpression" id="1155030134494">
            <node role="expression" type="jetbrains.mps.baseLanguage.InstanceOfExpression" id="1155030134495">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1155029777421">
                <link role="variableDeclaration" targetNodeId="1127826357148" />
              </node>
              <node role="classType" type="jetbrains.mps.baseLanguage.ClassifierType" id="1155029785719">
                <link role="classifier" extResolveInfo="2.[Classifier]String" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1127826564092">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1127826564093">
            <property name="name" value="g" />
            <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1127826564094" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.InstanceMethodCall" id="1127826564095">
              <link role="baseMethodDeclaration" targetNodeId="1121253849301" />
              <node role="instance" type="jetbrains.mps.baseLanguage.ThisExpression" id="1127826564096" />
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1127826564097">
                <link role="variableDeclaration" targetNodeId="1121172827477" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1124880034787">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1124880034707">
            <property name="name" value="str" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.StringLiteral" id="1124810751895">
              <property name="value" value="rub ber sds sd s lkj lk d" />
            </node>
            <node role="type" type="jetbrains.mps.baseLanguage.ClassifierType" id="1124880034788">
              <link role="classifier" extResolveInfo="2.[ClassConcept]String" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1124810796149">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1124810796150">
            <property name="name" value="guu" />
            <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1124810796151" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1141117531113">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1141117531112">
            <property name="name" value="s" />
            <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1141117531145" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1141117542257">
          <node role="expression" type="jetbrains.mps.baseLanguage.ThisExpression" id="1141117543274" />
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1124810808950">
          <node role="expression" type="jetbrains.mps.baseLanguage.AssignmentExpression" id="1124810811173">
            <node role="lValue" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1124810810140">
              <link role="variableDeclaration" targetNodeId="1124810796150" />
            </node>
            <node role="rValue" type="jetbrains.mps.baseLanguage.PlusExpression" id="1124810814849">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.PlusExpression" id="1142343172312">
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.Expression" id="1142343172313" />
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.IntegerConstant" id="1142343156139">
                  <property name="value" value="42" />
                </node>
              </node>
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1124810813205">
                <link role="variableDeclaration" targetNodeId="1124810796150" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1124885755499">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1124885755500">
            <property name="name" value="foo" />
            <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1124885755501" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.PlusExpression" id="1124885763756">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1124885766290">
                <link role="variableDeclaration" targetNodeId="1124810796150" />
              </node>
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.IntegerConstant" id="1124885761847">
                <property name="value" value="239" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1149323020690">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1149323020691">
            <property name="name" value="b" />
            <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1149323020692" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.PlusExpression" id="1149323131055">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.IntegerConstant" id="1149323066371">
                <property name="value" value="1" />
              </node>
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.ParenthesizedExpression" id="1149323131056">
                <node role="expression" type="jetbrains.mps.baseLanguage.MinusExpression" id="1149323131057">
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.PlusExpression" id="1149323131058">
                    <node role="leftExpression" type="jetbrains.mps.baseLanguage.IntegerConstant" id="1149323079288">
                      <property name="value" value="2" />
                    </node>
                    <node role="rightExpression" type="jetbrains.mps.baseLanguage.IntegerConstant" id="1149323082946">
                      <property name="value" value="3" />
                    </node>
                  </node>
                  <node role="rightExpression" type="jetbrains.mps.baseLanguage.IntegerConstant" id="1149323089456">
                    <property name="value" value="4" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1149323176359">
          <node role="expression" type="jetbrains.mps.baseLanguage.InstanceMethodCall" id="1149323189510">
            <link role="baseMethodDeclaration" extResolveInfo="234.method ([Classifier]PrintStream).([InstanceMethodDeclaration]print((jetbrains.mps.baseLanguage.types.classifier/jetbrains.mps.baseLanguage.types.classifier [Object])) : (jetbrains.mps.baseLanguage.types.void/jetbrains.mps.baseLanguage.types.void))" />
            <node role="instance" type="jetbrains.mps.baseLanguage.StaticFieldReference" id="1149323176360">
              <link role="classifier" extResolveInfo="2.[Classifier]System" />
              <link role="variableDeclaration" extResolveInfo="2.static field ([Classifier]System).([StaticFieldDeclaration]out : (jetbrains.mps.baseLanguage.types.classifier/jetbrains.mps.baseLanguage.types.classifier [PrintStream]))" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1149323202575">
          <node role="expression" type="jetbrains.mps.baseLanguage.InstanceMethodCall" id="1149323222626">
            <link role="baseMethodDeclaration" extResolveInfo="234.method ([Classifier]PrintStream).([InstanceMethodDeclaration]print((jetbrains.mps.baseLanguage.types.classifier/jetbrains.mps.baseLanguage.types.classifier [Object])) : (jetbrains.mps.baseLanguage.types.void/jetbrains.mps.baseLanguage.types.void))" />
            <node role="instance" type="jetbrains.mps.baseLanguage.StaticFieldReference" id="1149323202576">
              <link role="classifier" extResolveInfo="2.[Classifier]System" />
              <link role="variableDeclaration" extResolveInfo="2.static field ([Classifier]System).([StaticFieldDeclaration]out : (jetbrains.mps.baseLanguage.types.classifier/jetbrains.mps.baseLanguage.types.classifier [PrintStream]))" />
            </node>
          </node>
        </node>
      </node>
      <node role="returnType" type="jetbrains.mps.baseLanguage.BooleanType" id="1121172827474" />
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1121253849301">
      <property name="name" value="method" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1121253849319">
        <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1145453171309">
          <node role="expression" type="jetbrains.mps.baseLanguage.ParenthesizedExpression" id="1145453171310">
            <node role="expression" type="jetbrains.mps.baseLanguage.PlusExpression" id="1145453177938">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.ParenthesizedExpression" id="1145453181238">
                <node role="expression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1145453186864">
                  <link role="variableDeclaration" targetNodeId="1121253857102" />
                </node>
              </node>
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1145453175250">
                <link role="variableDeclaration" targetNodeId="1121253857102" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1149080449740">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1149080449741">
            <property name="name" value="a" />
            <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1149080449742" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1149087339164">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1149087339165">
            <property name="name" value="e" />
            <node role="type" type="jetbrains.mps.baseLanguage.ArrayType" id="1149087345325">
              <node role="componentType" type="jetbrains.mps.baseLanguage.IntegerType" id="1149087339166" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.StaticFieldReference" id="1149087416656">
              <link role="classifier" extResolveInfo="2.[Classifier]System" />
              <link role="variableDeclaration" extResolveInfo="2.static field ([Classifier]System).([StaticFieldDeclaration]out : (jetbrains.mps.baseLanguage.types.classifier/jetbrains.mps.baseLanguage.types.classifier [PrintStream]))" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1158940878568">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1158940878569">
            <property name="name" value="cs" />
            <node role="type" type="jetbrains.mps.baseLanguage.ClassifierType" id="1158940878570">
              <link role="classifier" extResolveInfo="2.[Classifier]CharSequence" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1158940852953">
          <node role="expression" type="jetbrains.mps.baseLanguage.CastExpression" id="1158940852954">
            <node role="type" type="jetbrains.mps.baseLanguage.ClassifierType" id="1158940864472">
              <link role="classifier" extResolveInfo="2.[Classifier]String" />
            </node>
            <node role="expression" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1158940886228">
              <link role="variableDeclaration" targetNodeId="1158940878569" resolveInfo="cs" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1158940894199">
          <node role="expression" type="jetbrains.mps.baseLanguage.CastExpression" id="1158940894200">
            <node role="type" type="jetbrains.mps.baseLanguage.ClassifierType" id="1158940897609">
              <link role="classifier" extResolveInfo="2.[Classifier]Exception" />
            </node>
            <node role="expression" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1158940900719">
              <link role="variableDeclaration" targetNodeId="1158940878569" resolveInfo="cs" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.Statement" id="1158941295135" />
      </node>
      <node role="returnType" type="jetbrains.mps.baseLanguage.IntegerType" id="1121253852508" />
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1121253857102">
        <property name="name" value="k" />
        <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1121253857103" />
      </node>
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1121187219606">
      <property name="name" value="method" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1121187219610">
        <node role="statement" type="jetbrains.mps.baseLanguage.ReturnStatement" id="1121187219611">
          <node role="expression" type="jetbrains.mps.baseLanguage.IntegerConstant" id="1121187219612">
            <property name="value" value="5" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1155291460319">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1155291460320">
            <property name="name" value="s" />
            <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1155291460321" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.IntegerConstant" id="1155291471089">
              <property name="value" value="4" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1155291480450">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1155291480451">
            <property name="name" value="k" />
            <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1155291480452" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.IntegerConstant" id="1155291487110">
              <property name="value" value="5" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1155291440565">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1155291440566">
            <property name="name" value="f" />
            <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1155291440567" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1155291436496">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1155291436497">
            <property name="name" value="g" />
            <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1155291436498" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.InstanceMethodCall" id="1155291436499">
              <link role="baseMethodDeclaration" targetNodeId="1121253849301" />
              <node role="instance" type="jetbrains.mps.baseLanguage.ThisExpression" id="1155291436500" />
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1155291436501">
                <link role="variableDeclaration" targetNodeId="1155291440566" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="returnType" type="jetbrains.mps.baseLanguage.IntegerType" id="1121187219607" />
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1121187219608">
        <property name="name" value="b" />
        <node role="type" type="jetbrains.mps.baseLanguage.BooleanType" id="1121187219609" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.ClassConcept" id="1122810884186">
    <property name="name" value="TestExternalResolver1" />
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1122811034967">
      <property name="name" value="method" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1122811034984" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.IntegerType" id="1122811038985" />
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1122811043955">
        <property name="name" value="k" />
        <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1122811043956" />
      </node>
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1122811049785">
      <property name="name" value="method" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1122811049818" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.IntegerType" id="1122811052054" />
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1122811058821">
        <property name="name" value="k" />
        <node role="type" type="jetbrains.mps.baseLanguage.BooleanType" id="1122811058822" />
      </node>
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1122811070354">
      <property name="name" value="method" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1122811070387" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.IntegerType" id="1122811071919" />
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1122811082827">
        <property name="name" value="k" />
        <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1122811082828" />
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1122811087172">
        <property name="name" value="b" />
        <node role="type" type="jetbrains.mps.baseLanguage.BooleanType" id="1122811089439" />
      </node>
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1122811099050">
      <property name="name" value="foo" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1122811099083" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.IntegerType" id="1122811101021" />
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1122811107288">
        <property name="name" value="k" />
        <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1122811107289" />
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1122811110274">
        <property name="name" value="b" />
        <node role="type" type="jetbrains.mps.baseLanguage.BooleanType" id="1122811112963" />
      </node>
    </node>
    <node role="staticMethod" type="jetbrains.mps.baseLanguage.StaticMethodDeclaration" id="1122810898062">
      <property name="name" value="method" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1122810898158" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.IntegerType" id="1122810903752" />
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1122810910175">
        <property name="name" value="k" />
        <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1122810910176" />
      </node>
    </node>
    <node role="staticMethod" type="jetbrains.mps.baseLanguage.StaticMethodDeclaration" id="1122810915724">
      <property name="name" value="method" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1122810915757" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.IntegerType" id="1122810919540" />
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1122810934025">
        <property name="name" value="k" />
        <node role="type" type="jetbrains.mps.baseLanguage.BooleanType" id="1122810934026" />
      </node>
    </node>
    <node role="staticMethod" type="jetbrains.mps.baseLanguage.StaticMethodDeclaration" id="1122810990512">
      <property name="name" value="method" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1122810990545" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.IntegerType" id="1122810993656" />
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1122811003282">
        <property name="name" value="k" />
        <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1122811003283" />
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1122811005627">
        <property name="name" value="b" />
        <node role="type" type="jetbrains.mps.baseLanguage.BooleanType" id="1122811009207" />
      </node>
    </node>
    <node role="staticMethod" type="jetbrains.mps.baseLanguage.StaticMethodDeclaration" id="1122811015943">
      <property name="name" value="foo" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1122811015976" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.IntegerType" id="1122811018993" />
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1122811024572">
        <property name="name" value="k" />
        <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1122811024573" />
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1122811028371">
        <property name="name" value="b" />
        <node role="type" type="jetbrains.mps.baseLanguage.BooleanType" id="1122811030122" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.ClassConcept" id="1122811255194">
    <property name="name" value="TestExternalResolver2" />
    <node role="staticMethod" type="jetbrains.mps.baseLanguage.StaticMethodDeclaration" id="1122811350761">
      <property name="name" value="method" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1122811350762" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.IntegerType" id="1122811350763" />
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1122811350764">
        <property name="name" value="k" />
        <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1122811350765" />
      </node>
    </node>
    <node role="staticMethod" type="jetbrains.mps.baseLanguage.StaticMethodDeclaration" id="1122811350766">
      <property name="name" value="method" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1122811350767" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.IntegerType" id="1122811350768" />
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1122811350769">
        <property name="name" value="k" />
        <node role="type" type="jetbrains.mps.baseLanguage.BooleanType" id="1122811350770" />
      </node>
    </node>
    <node role="staticMethod" type="jetbrains.mps.baseLanguage.StaticMethodDeclaration" id="1122811350771">
      <property name="name" value="method" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1122811350772" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.IntegerType" id="1122811350773" />
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1122811350774">
        <property name="name" value="k" />
        <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1122811350775" />
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1122811350776">
        <property name="name" value="b" />
        <node role="type" type="jetbrains.mps.baseLanguage.BooleanType" id="1122811350777" />
      </node>
    </node>
    <node role="staticMethod" type="jetbrains.mps.baseLanguage.StaticMethodDeclaration" id="1122811350778">
      <property name="name" value="foo" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1122811350779" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.IntegerType" id="1122811350780" />
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1122811350781">
        <property name="name" value="k" />
        <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1122811350782" />
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1122811350783">
        <property name="name" value="b" />
        <node role="type" type="jetbrains.mps.baseLanguage.BooleanType" id="1122811350784" />
      </node>
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1122811296075">
      <property name="name" value="method" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1122811296076" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.IntegerType" id="1122811296077" />
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1122811296078">
        <property name="name" value="k" />
        <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1122811296079" />
      </node>
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1122811296080">
      <property name="name" value="method" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1122811296081" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.IntegerType" id="1122811296082" />
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1122811296083">
        <property name="name" value="k" />
        <node role="type" type="jetbrains.mps.baseLanguage.BooleanType" id="1122811296084" />
      </node>
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1122811296085">
      <property name="name" value="method" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1122811296086" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.IntegerType" id="1122811296087" />
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1122811296088">
        <property name="name" value="k" />
        <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1122811296089" />
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1122811296090">
        <property name="name" value="b" />
        <node role="type" type="jetbrains.mps.baseLanguage.BooleanType" id="1122811296091" />
      </node>
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1122811296092">
      <property name="name" value="foo" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1122811296093" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.IntegerType" id="1122811296094" />
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1122811296095">
        <property name="name" value="k" />
        <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1122811296096" />
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1122811296097">
        <property name="name" value="b" />
        <node role="type" type="jetbrains.mps.baseLanguage.BooleanType" id="1122811296098" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.ClassConcept" id="1122983374125">
    <property name="name" value="TestJavaStub" />
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1122983385064">
      <property name="name" value="test1" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1122983385144">
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1122985412888">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1122985412889">
            <property name="name" value="resolver" />
            <node role="type" type="jetbrains.mps.baseLanguage.ClassifierType" id="1122985412890">
              <link role="classifier" extResolveInfo="1.[ClassConcept]Resolver" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1122986116623">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1122986116624">
            <property name="name" value="y" />
            <node role="type" type="jetbrains.mps.baseLanguage.VoidType" id="1122986116625" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.StaticMethodCall" id="1122986121554">
              <link role="classConcept" extResolveInfo="1.[Classifier]Resolver" />
              <link role="baseMethodDeclaration" extResolveInfo="1.static method ([Classifier]Resolver).([StaticMethodDeclaration]resolve((jetbrains.mps.baseLanguage.types.classifier/jetbrains.mps.baseLanguage.types.classifier [SReference]), (jetbrains.mps.baseLanguage.types.classifier/jetbrains.mps.baseLanguage.types.classifier [IOperationContext])) : (jetbrains.mps.baseLanguage.types.boolean/jetbrains.mps.baseLanguage.types.boolean))" />
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.NullLiteral" id="1135404547718" />
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.NewExpression" id="1135405140427" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.ReturnStatement" id="1123250623839">
          <node role="expression" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1123250655403">
            <link role="variableDeclaration" targetNodeId="1122986116624" />
          </node>
        </node>
      </node>
      <node role="returnType" type="jetbrains.mps.baseLanguage.VoidType" id="1122983393504" />
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.ClassConcept" id="1123686506460">
    <property name="name" value="TestSubstitution" />
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1123686579243">
      <property name="name" value="method" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1123686579370">
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1123686625797">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1123686625798">
            <property name="name" value="a" />
            <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1123686625799" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1124289166509">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1124289166510">
            <property name="name" value="f" />
            <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1124289166511" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1123686641052">
          <node role="expression" type="jetbrains.mps.baseLanguage.AssignmentExpression" id="1123686643898">
            <node role="lValue" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1123686641053">
              <link role="variableDeclaration" targetNodeId="1123686625798" />
            </node>
            <node role="rValue" type="jetbrains.mps.baseLanguage.InstanceMethodCall" id="1123754350342">
              <link role="baseMethodDeclaration" targetNodeId="1123686657150" />
              <node role="instance" type="jetbrains.mps.baseLanguage.ThisExpression" id="1123754350343" />
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.ParameterReference" id="1123754365250">
                <link role="variableDeclaration" targetNodeId="1123686600435" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1123760548335">
          <node role="expression" type="jetbrains.mps.baseLanguage.NullLiteral" id="1123760549775" />
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1123760423269">
          <node role="expression" type="jetbrains.mps.baseLanguage.NullLiteral" id="1123760423270" />
        </node>
      </node>
      <node role="returnType" type="jetbrains.mps.baseLanguage.VoidType" id="1123686583387" />
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1123686600435">
        <property name="name" value="k" />
        <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1123686600436" />
      </node>
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1123686657150">
      <property name="name" value="boo" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1123686657277">
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1123686672545">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1123686672546">
            <property name="name" value="x" />
            <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1123686672547" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.IntegerConstant" id="1123686676643">
              <property name="value" value="2" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1123686804081">
          <node role="expression" type="jetbrains.mps.baseLanguage.AssignmentExpression" id="1123686806037">
            <node role="lValue" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1123686804082">
              <link role="variableDeclaration" targetNodeId="1123686672546" />
            </node>
            <node role="rValue" type="jetbrains.mps.baseLanguage.PlusExpression" id="1123686812089">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1123686813435">
                <link role="variableDeclaration" targetNodeId="1123686797000" />
              </node>
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1123686810461">
                <link role="variableDeclaration" targetNodeId="1123686672546" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1123686724391">
          <node role="expression" type="jetbrains.mps.baseLanguage.InstanceMethodCall" id="1123686748121">
            <link role="baseMethodDeclaration" targetNodeId="1123686579243" />
            <node role="instance" type="jetbrains.mps.baseLanguage.ThisExpression" id="1123686748122" />
            <node role="actualArgument" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1123686758733">
              <link role="variableDeclaration" targetNodeId="1123686672546" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1131709214228">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1131709214229">
            <property name="name" value="s" />
            <node role="type" type="jetbrains.mps.baseLanguage.ClassifierType" id="1131709214230">
              <link role="classifier" extResolveInfo="2.[Classifier]String" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.StringLiteral" id="1131709227779">
              <property name="value" value="fff" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1131709234219">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1131709234220">
            <property name="name" value="v" />
            <node role="type" type="jetbrains.mps.baseLanguage.ClassifierType" id="1131709234221">
              <link role="classifier" extResolveInfo="2.[Classifier]String" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.NewExpression" id="1135404958750" />
          </node>
        </node>
      </node>
      <node role="returnType" type="jetbrains.mps.baseLanguage.IntegerType" id="1123686663216" />
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1123686797000">
        <property name="name" value="u" />
        <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1123686797001" />
      </node>
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1124801169522">
      <property name="name" value="method" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1124801169523" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.IntegerType" id="1124801169524" />
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1124801169525">
        <property name="name" value="k" />
        <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1124801169526" />
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1124801169527">
        <property name="name" value="b" />
        <node role="type" type="jetbrains.mps.baseLanguage.BooleanType" id="1124801169528" />
      </node>
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1124801204468">
      <property name="name" value="method" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1124801204469" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.IntegerType" id="1124801204470" />
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1124801204471">
        <property name="name" value="k" />
        <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1124801204472" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.ClassConcept" id="1175862165829">
    <property name="name" value="Test" />
    <node role="constructor" type="jetbrains.mps.baseLanguage.ConstructorDeclaration" id="1175862168518">
      <node role="returnType" type="jetbrains.mps.baseLanguage.Type" id="1175862168519" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1175862168520">
        <node role="statement" type="jetbrains.mps.baseLanguage.SuperConstructorInvocation" id="1175862183748">
          <link role="constructorDeclaration" extResolveInfo="2.constructor [Classifier]Object[ConstructorDeclaration] ()" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.ClassConcept" id="1175862194311">
    <property name="name" value="Test2" />
    <node role="constructor" type="jetbrains.mps.baseLanguage.ConstructorDeclaration" id="1175862199079">
      <node role="returnType" type="jetbrains.mps.baseLanguage.Type" id="1175862199080" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1175862199081">
        <node role="statement" type="jetbrains.mps.baseLanguage.SuperConstructorInvocation" id="1175863227019">
          <link role="constructorDeclaration" targetNodeId="1175862168518" resolveInfo="Test" />
        </node>
      </node>
    </node>
    <node role="superclass" type="jetbrains.mps.baseLanguage.ClassifierType" id="1175862198297">
      <link role="classifier" targetNodeId="1175862165829" resolveInfo="Test" />
    </node>
  </node>
</model>


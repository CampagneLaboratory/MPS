<?xml version="1.0" encoding="UTF-8"?>
<model name="jetbrains.mps.baseLanguage.sandbox.genTest">
  <persistence version="1" />
  <refactoringHistory />
  <language namespace="jetbrains.mps.baseLanguage" />
  <language namespace="jetbrains.mps.baseLanguageInternal" />
  <maxImportIndex value="6" />
  <import index="5" modelUID="jetbrains.mps.ide.command@java_stub" version="-1" />
  <import index="6" modelUID="java.lang@java_stub" version="-1" />
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept" id="1196072461367">
    <property name="name" value="ABC" />
    <node role="method" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" id="1198591047295">
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.VoidType" id="1198591047296" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1198591047297" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1198591047298">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1198591054718">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1198591054719">
            <property name="name" value="o" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1198591054720">
              <link role="classifier" targetNodeId="6.~Object" resolveInfo="Object" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1198591059302">
              <property name="value" value="11" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1198600579616">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1198600581667">
            <link role="baseMethodDeclaration" targetNodeId="6.~Object.clone():java.lang.Object" resolveInfo="clone" />
            <node role="instance" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1198600579617">
              <link role="variableDeclaration" targetNodeId="1198591054719" resolveInfo="o" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1198591060461">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1198591070747">
            <link role="baseMethodDeclaration" targetNodeId="6.~String.toString():java.lang.String" resolveInfo="toString" />
            <node role="instance" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1198591068415">
              <link role="baseMethodDeclaration" targetNodeId="6.~String.toString():java.lang.String" resolveInfo="toString" />
              <node role="instance" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1198591065958">
                <link role="baseMethodDeclaration" targetNodeId="6.~String.toString():java.lang.String" resolveInfo="toString" />
                <node role="instance" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1198591064079">
                  <link role="baseMethodDeclaration" targetNodeId="6.~String.toString():java.lang.String" resolveInfo="toString" />
                  <node role="instance" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1198591061825">
                    <link role="baseMethodDeclaration" targetNodeId="6.~Object.toString():java.lang.String" resolveInfo="toString" />
                    <node role="instance" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1198591060462">
                      <link role="variableDeclaration" targetNodeId="1198591054719" resolveInfo="o" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" id="1198513873558">
      <property name="name" value="aa" />
      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1198513876860">
        <property name="name" value="t" />
        <node role="type" type="jetbrains.mps.baseLanguage.structure.IntegerType" id="1198513877659" />
      </node>
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1198513875874">
        <link role="classifier" targetNodeId="6.~Object" resolveInfo="Object" />
      </node>
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1198513873560" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1198513873561" />
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" id="1198513854277">
      <property name="name" value="a" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1198513865585">
        <link role="classifier" targetNodeId="6.~Object" resolveInfo="Object" />
      </node>
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1198513854279" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1198513854280">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1198588391572">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1198588391573">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1198588412712">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1198588413621">
                <property name="value" value="23" />
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1198588409474">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1198588410524" />
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1198588400407">
              <link role="baseMethodDeclaration" targetNodeId="6.~Object.toString():java.lang.String" resolveInfo="toString" />
              <node role="instance" type="jetbrains.mps.baseLanguage.structure.ThisExpression" id="1198588428812" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" id="1198513855406">
      <property name="name" value="b" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.VoidType" id="1198513855407" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1198513855408" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1198513855409">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1198513869758">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1198513869759">
            <link role="baseMethodDeclaration" targetNodeId="1198513854277" resolveInfo="a" />
            <node role="instance" type="jetbrains.mps.baseLanguage.structure.ThisExpression" id="1198513869760" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1198587176396">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1198587176397">
            <property name="name" value="a" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.IntegerType" id="1198587176398" />
          </node>
        </node>
      </node>
    </node>
    <node role="staticMethod" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" id="1198513842826">
      <property name="name" value="bb" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.VoidType" id="1198513842827" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1198513842828" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1198513842829" />
    </node>
    <node role="staticMethod" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" id="1196072468468">
      <property name="name" value="aa" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.VoidType" id="1196072468469" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1196072468470" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1196072468471">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1196335570644">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1196335570645">
            <property name="name" value="o" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1196335570646">
              <link role="classifier" targetNodeId="6.~Object" resolveInfo="Object" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1196335573559" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1198513846525">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.LocalStaticMethodCall" id="1198513846526">
            <link role="baseMethodDeclaration" targetNodeId="1196072468468" resolveInfo="aa" />
          </node>
        </node>
      </node>
    </node>
    <node role="constructor" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" id="1196072464744">
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.VoidType" id="1196072464745" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility" id="1196072466936" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1196072464747">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1196336047646">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1196336047647">
            <property name="name" value="abc" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1196336047648">
              <link role="classifier" targetNodeId="1196072461367" resolveInfo="ABC" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.NewExpression" id="1196336051243">
              <link role="baseMethodDeclaration" targetNodeId="1196072464744" resolveInfo="ABC" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept" id="1196335717102">
    <property name="name" value="AAAA" />
    <node role="staticMethod" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" id="1198681051909">
      <property name="name" value="test" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.VoidType" id="1198681051910" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1198681051911" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1198681051912">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1198681054834">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1198681054835">
            <property name="name" value="a" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.IntegerType" id="1198681054836" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" id="1198681060515">
              <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.Expression" id="1198681060517" />
              <node role="ifFalse" type="jetbrains.mps.baseLanguage.structure.Expression" id="1198681060518" />
              <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1198681058246">
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1198681059467">
                  <property name="value" value="3" />
                </node>
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1198681057620">
                  <property name="value" value="2" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1196335717103" />
  </node>
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept" id="1196335720640">
    <property name="name" value="BBBB" />
    <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1196335720641" />
  </node>
</model>


<?xml version="1.0" encoding="UTF-8"?>
<model name="jetbrains.mps.ide.common">
  <persistence version="1" />
  <refactoringHistory />
  <language namespace="jetbrains.mps.ide.uiLanguage" />
  <language namespace="jetbrains.mps.baseLanguage">
    <languageAspect modelUID="jetbrains.mps.baseLanguage.structure" version="0" />
  </language>
  <language namespace="jetbrains.mps.uiLanguage" />
  <language namespace="jetbrains.mps.bootstrap.constraintsLanguage">
    <languageAspect modelUID="jetbrains.mps.bootstrap.constraintsLanguage.structure" version="0" />
  </language>
  <language namespace="jetbrains.mps.baseLanguage.classifiers" />
  <maxImportIndex value="5" />
  <import index="1" modelUID="java.lang@java_stub" version="-1" />
  <import index="2" modelUID="java.util@java_stub" version="-1" />
  <import index="3" modelUID="java.awt@java_stub" version="-1" />
  <import index="4" modelUID="jetbrains.mps.ide.ui.filechoosers.treefilechooser@java_stub" version="-1" />
  <import index="5" modelUID="jetbrains.mps.vfs@java_stub" version="-1" />
  <visible index="2" modelUID="jetbrains.mps.uiLanguage.components" />
  <node type="jetbrains.mps.uiLanguage.structure.ComponentDeclaration" id="1203601634745">
    <property name="name" value="PathField" />
    <node role="root" type="jetbrains.mps.uiLanguage.structure.ComponentInstance" id="1203601640840">
      <link role="componentDeclaration" targetNodeId="2v.1202816402995" resolveInfo="Panel" />
      <node role="content" type="jetbrains.mps.uiLanguage.structure.AttributeValue" id="1203601642060">
        <link role="attribute" targetNodeId="2v.1202393600503" resolveInfo="layout" />
        <node role="value" type="jetbrains.mps.baseLanguage.structure.NewExpression" id="1203601643000">
          <link role="baseMethodDeclaration" targetNodeId="3.~BorderLayout.&lt;init&gt;()" resolveInfo="BorderLayout" />
        </node>
      </node>
      <node role="content" type="jetbrains.mps.uiLanguage.structure.ComponentInstance" id="1203601653846">
        <property name="name" value="pathField" />
        <link role="componentDeclaration" targetNodeId="2v.1202464198724" resolveInfo="TextField" />
        <node role="content" type="jetbrains.mps.uiLanguage.structure.AttributeValue" id="1203601680572">
          <link role="attribute" targetNodeId="2v.1202464208353" resolveInfo="text" />
          <node role="value" type="jetbrains.mps.uiLanguage.structure.BindExpression" id="1203601681731">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203601686659">
              <node role="operand" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpresson" id="1205754224173" />
              <node role="operation" type="jetbrains.mps.uiLanguage.structure.AttributeReferenceOperation" id="1203601687630">
                <link role="attribute" targetNodeId="1203601661865" resolveInfo="text" />
              </node>
            </node>
          </node>
        </node>
        <node role="content" type="jetbrains.mps.uiLanguage.structure.AttributeValue" id="1203601991465">
          <link role="attribute" targetNodeId="2v.1202818338918" resolveInfo="columns" />
          <node role="value" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1203602003865">
            <property name="value" value="40" />
          </node>
        </node>
        <node role="content" type="jetbrains.mps.uiLanguage.structure.LayoutConstraint" id="1203601691507">
          <node role="constraint" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference" id="1203601704010">
            <link role="classifier" targetNodeId="3.~BorderLayout" resolveInfo="BorderLayout" />
            <link role="variableDeclaration" targetNodeId="3.~BorderLayout.CENTER" resolveInfo="CENTER" />
          </node>
        </node>
      </node>
      <node role="content" type="jetbrains.mps.uiLanguage.structure.ComponentInstance" id="1203601707293">
        <link role="componentDeclaration" targetNodeId="2v.1202393560969" resolveInfo="Button" />
        <node role="content" type="jetbrains.mps.uiLanguage.structure.AttributeValue" id="1203601708701">
          <link role="attribute" targetNodeId="2v.1202393575288" resolveInfo="text" />
          <node role="value" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1203601709359">
            <property name="value" value="..." />
          </node>
        </node>
        <node role="content" type="jetbrains.mps.uiLanguage.structure.ActionHandler" id="1203605502672">
          <node role="handler" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203605531678">
            <node role="operand" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpresson" id="1205754224325" />
            <node role="operation" type="jetbrains.mps.uiLanguage.structure.ComponentMethodCallOperation" id="1203605532959">
              <link role="baseMethodDeclaration" targetNodeId="1203605506361" resolveInfo="choosePathClicked" />
            </node>
          </node>
        </node>
        <node role="content" type="jetbrains.mps.uiLanguage.structure.LayoutConstraint" id="1203601719721">
          <node role="constraint" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference" id="1203601721316">
            <link role="classifier" targetNodeId="3.~BorderLayout" resolveInfo="BorderLayout" />
            <link role="variableDeclaration" targetNodeId="3.~BorderLayout.EAST" resolveInfo="EAST" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.uiLanguage.structure.ComponentController" id="1203601659817">
    <link role="component" targetNodeId="1203601634745" resolveInfo="PathField" />
    <node role="componentMethod" type="jetbrains.mps.uiLanguage.structure.ComponentMethodDeclaration" id="1203605506361">
      <property name="name" value="choosePathClicked" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.VoidType" id="1203605517894" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1203605506363">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1203605544101">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1203605544102">
            <property name="name" value="oldPath" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1203605544103">
              <link role="classifier" targetNodeId="1.~String" resolveInfo="String" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203605584048">
              <node role="operand" type="jetbrains.mps.uiLanguage.structure.ComponentReference" id="1203605578127">
                <link role="component" targetNodeId="1203601653846" resolveInfo="pathField" />
              </node>
              <node role="operation" type="jetbrains.mps.uiLanguage.structure.AttributeReferenceOperation" id="1203605585565">
                <link role="attribute" targetNodeId="2v.1202464208353" resolveInfo="text" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1203605648064">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1203605648065">
            <property name="name" value="chooser" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1203605648066">
              <link role="classifier" targetNodeId="4.~TreeFileChooser" resolveInfo="TreeFileChooser" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.NewExpression" id="1203605651006">
              <link role="baseMethodDeclaration" targetNodeId="4.~TreeFileChooser.&lt;init&gt;()" resolveInfo="TreeFileChooser" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1203605653852">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1203605657590">
            <link role="baseMethodDeclaration" targetNodeId="4.~TreeFileChooser.setMode(int):void" resolveInfo="setMode" />
            <node role="instance" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1203605699313">
              <link role="variableDeclaration" targetNodeId="1203605648065" resolveInfo="chooser" />
            </node>
            <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203605663842">
              <node role="operand" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpresson" id="1205754224241" />
              <node role="operation" type="jetbrains.mps.uiLanguage.structure.AttributeReferenceOperation" id="1203605664782">
                <link role="attribute" targetNodeId="1203605603115" resolveInfo="mode" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1203605676534">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1203605676535">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1203605686592">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1203605691393">
                <link role="baseMethodDeclaration" targetNodeId="4.~TreeFileChooser.setInitialFile(jetbrains.mps.vfs.IFile):void" resolveInfo="setInitialFile" />
                <node role="instance" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1203605686593">
                  <link role="variableDeclaration" targetNodeId="1203605648065" resolveInfo="chooser" />
                </node>
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.NewExpression" id="1203605704955">
                  <link role="baseMethodDeclaration" targetNodeId="5.~FileSystemFile.&lt;init&gt;(java.lang.String)" resolveInfo="FileSystemFile" />
                  <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1203605709097">
                    <link role="variableDeclaration" targetNodeId="1203605544102" resolveInfo="oldPath" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1203605683948">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1203605684810" />
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1203605683322">
              <link role="variableDeclaration" targetNodeId="1203605544102" resolveInfo="oldPath" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1203605716177">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1203605716178">
            <property name="name" value="result" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1203605716179">
              <link role="classifier" targetNodeId="5.~IFile" resolveInfo="IFile" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1203605724184">
              <link role="baseMethodDeclaration" targetNodeId="4.~TreeFileChooser.showDialog():jetbrains.mps.vfs.IFile" resolveInfo="showDialog" />
              <node role="instance" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1203605719291">
                <link role="variableDeclaration" targetNodeId="1203605648065" resolveInfo="chooser" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1203605744312">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1203605744313">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1203605748477">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1203605757001">
                <node role="rValue" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1203605761148">
                  <link role="baseMethodDeclaration" targetNodeId="5.~IFile.getPath():java.lang.String" resolveInfo="getPath" />
                  <node role="instance" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1203605757801">
                    <link role="variableDeclaration" targetNodeId="1203605716178" resolveInfo="result" />
                  </node>
                </node>
                <node role="lValue" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203605755201">
                  <node role="operand" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpresson" id="1205754224086" />
                  <node role="operation" type="jetbrains.mps.uiLanguage.structure.AttributeReferenceOperation" id="1203605756203">
                    <link role="attribute" targetNodeId="1203601661865" resolveInfo="path" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1203605745802">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1203605746664" />
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1203605745129">
              <link role="variableDeclaration" targetNodeId="1203605716178" resolveInfo="result" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="attribute" type="jetbrains.mps.uiLanguage.structure.AttributeDeclaration" id="1203601661865">
      <property name="name" value="path" />
      <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1203601663492">
        <link role="classifier" targetNodeId="1.~String" resolveInfo="String" />
      </node>
    </node>
    <node role="attribute" type="jetbrains.mps.uiLanguage.structure.AttributeDeclaration" id="1203605603115">
      <property name="name" value="mode" />
      <node role="type" type="jetbrains.mps.baseLanguage.structure.IntegerType" id="1203605604679" />
    </node>
    <node role="constructor" type="jetbrains.mps.uiLanguage.structure.ComponentConstructor" id="1203605607368">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1203605613683">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1203605616825">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1203605620471">
            <node role="rValue" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference" id="1203605635110">
              <link role="classifier" targetNodeId="4.~TreeFileChooser" resolveInfo="TreeFileChooser" />
              <link role="variableDeclaration" targetNodeId="4.~TreeFileChooser.MODE_DIRECTORIES" resolveInfo="MODE_DIRECTORIES" />
            </node>
            <node role="lValue" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203605617937">
              <node role="operand" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpresson" id="1205754224233" />
              <node role="operation" type="jetbrains.mps.uiLanguage.structure.AttributeReferenceOperation" id="1203605618907">
                <link role="attribute" targetNodeId="1203605603115" resolveInfo="mode" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>


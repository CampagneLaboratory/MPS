<?xml version="1.0" encoding="UTF-8"?>
<model name="jetbrains.mps.ide.newSolutionDialog">
  <persistence version="1" />
  <refactoringHistory />
  <language namespace="jetbrains.mps.baseLanguage">
    <languageAspect modelUID="jetbrains.mps.baseLanguage.structure" version="0" />
  </language>
  <language namespace="jetbrains.mps.uiLanguage" />
  <language namespace="jetbrains.mps.ide.uiLanguage" />
  <language namespace="jetbrains.mps.bootstrap.smodelLanguage">
    <languageAspect modelUID="jetbrains.mps.bootstrap.smodelLanguage.structure" version="0" />
  </language>
  <language namespace="jetbrains.mps.bootstrap.constraintsLanguage">
    <languageAspect modelUID="jetbrains.mps.bootstrap.constraintsLanguage.structure" version="0" />
  </language>
  <language namespace="jetbrains.mps.baseLanguage.classifiers" />
  <maxImportIndex value="12" />
  <import index="1" modelUID="java.lang@java_stub" version="-1" />
  <import index="2" modelUID="java.io@java_stub" version="-1" />
  <import index="3" modelUID="jetbrains.mps.ide.common" version="-1" />
  <import index="4" modelUID="jetbrains.mps.project@java_stub" version="-1" />
  <import index="5" modelUID="jetbrains.mps.smodel@java_stub" version="-1" />
  <import index="6" modelUID="jetbrains.mps.projectLanguage.structure" version="-1" />
  <import index="7" modelUID="jetbrains.mps.projectLanguage@java_stub" version="-1" />
  <import index="8" modelUID="jetbrains.mps.vfs@java_stub" version="-1" />
  <import index="9" modelUID="jetbrains.mps.util@java_stub" version="-1" />
  <import index="10" modelUID="jetbrains.mps.core.structure" version="-1" />
  <import index="11" modelUID="java.awt@java_stub" version="-1" />
  <import index="12" modelUID="jetbrains.mps.ide.command@java_stub" version="-1" />
  <visible index="2" modelUID="jetbrains.mps.uiLanguage.components" />
  <node type="jetbrains.mps.uiLanguage.structure.ComponentDeclaration" id="1203592850595">
    <property name="name" value="NewSolutionDialog" />
    <node role="root" type="jetbrains.mps.ide.uiLanguage.structure.IDEDialog" id="1203592858466">
      <property name="title" value="New Solution" />
      <node role="button" type="jetbrains.mps.ide.uiLanguage.structure.IDEDialogButton" id="1203592889702">
        <property name="text" value="OK" />
        <property name="isDefault" value="true" />
        <node role="handler" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203600069487">
          <node role="operand" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpresson" id="1205754224338" />
          <node role="operation" type="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodCallOperation" id="1205834446440">
            <link role="member" targetNodeId="1203599983021" resolveInfo="onOk" />
          </node>
        </node>
      </node>
      <node role="button" type="jetbrains.mps.ide.uiLanguage.structure.IDEDialogButton" id="1203592903913">
        <property name="text" value="Cancel" />
        <node role="handler" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203600074898">
          <node role="operand" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpresson" id="1205754224270" />
          <node role="operation" type="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodCallOperation" id="1205834446433">
            <link role="member" targetNodeId="1203599986635" resolveInfo="onCancel" />
          </node>
        </node>
      </node>
      <node role="contentPane" type="jetbrains.mps.uiLanguage.structure.Grid" id="1203602941241">
        <node role="row" type="jetbrains.mps.uiLanguage.structure.GridRow" id="1203602941774">
          <node role="component" type="jetbrains.mps.uiLanguage.structure.ComponentInstance" id="1203602945712">
            <link role="componentDeclaration" targetNodeId="2v.1202465811094" resolveInfo="Label" />
            <node role="content" type="jetbrains.mps.uiLanguage.structure.AttributeValue" id="1203602949355">
              <link role="attribute" targetNodeId="2v.1202465836231" resolveInfo="text" />
              <node role="value" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1203602959523">
                <property name="value" value="Name:" />
              </node>
            </node>
          </node>
        </node>
        <node role="row" type="jetbrains.mps.uiLanguage.structure.GridRow" id="1203602962695">
          <node role="component" type="jetbrains.mps.uiLanguage.structure.ComponentInstance" id="1203602964681">
            <link role="componentDeclaration" targetNodeId="2v.1202464198724" resolveInfo="TextField" />
            <node role="content" type="jetbrains.mps.uiLanguage.structure.AttributeValue" id="1203602966057">
              <link role="attribute" targetNodeId="2v.1202464208353" resolveInfo="text" />
              <node role="value" type="jetbrains.mps.uiLanguage.structure.BindExpression" id="1203602967918">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203602969515">
                  <node role="operand" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpresson" id="1205754224099" />
                  <node role="operation" type="jetbrains.mps.uiLanguage.structure.AttributeReferenceOperation" id="1203602991695">
                    <link role="member" targetNodeId="1203602979314" resolveInfo="solutionName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="row" type="jetbrains.mps.uiLanguage.structure.GridRow" id="1203602993055">
          <node role="component" type="jetbrains.mps.uiLanguage.structure.ComponentInstance" id="1203602994947">
            <link role="componentDeclaration" targetNodeId="2v.1202465811094" resolveInfo="Label" />
            <node role="content" type="jetbrains.mps.uiLanguage.structure.AttributeValue" id="1203602996448">
              <link role="attribute" targetNodeId="2v.1202465836231" resolveInfo="text" />
              <node role="value" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1203602997075">
                <property name="value" value="Solution Path:" />
              </node>
            </node>
          </node>
        </node>
        <node role="row" type="jetbrains.mps.uiLanguage.structure.GridRow" id="1203603003092">
          <node role="component" type="jetbrains.mps.uiLanguage.structure.ComponentInstance" id="1203603037281">
            <link role="componentDeclaration" targetNodeId="3.1203601634745" resolveInfo="PathField" />
            <node role="content" type="jetbrains.mps.uiLanguage.structure.AttributeValue" id="1203603040079">
              <link role="attribute" targetNodeId="3.1203601661865" resolveInfo="path" />
              <node role="value" type="jetbrains.mps.uiLanguage.structure.BindExpression" id="1203603041300">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203603042303">
                  <node role="operand" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpresson" id="1205754224079" />
                  <node role="operation" type="jetbrains.mps.uiLanguage.structure.AttributeReferenceOperation" id="1203603044368">
                    <link role="member" targetNodeId="1203602985004" resolveInfo="solutionPath" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.uiLanguage.structure.ComponentController" id="1203593910897">
    <link role="component" targetNodeId="1203592850595" resolveInfo="NewSolutionDialog" />
    <node role="componentMethod" type="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodDeclaration" id="1203599983021">
      <property name="name" value="onOk" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.VoidType" id="1203599984696" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1203599983023">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1203609641409">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1203609641410">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1203609659284">
              <node role="expression" type="jetbrains.mps.ide.uiLanguage.structure.ReportErrorExpression" id="1203609659285">
                <node role="errorText" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1203609660537">
                  <property name="value" value="Enter solution directory" />
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1203609667930" />
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1203610224477">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1203610226324">
              <property name="value" value="0" />
            </node>
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1203610222179">
              <link role="baseMethodDeclaration" targetNodeId="1.~String.length():int" resolveInfo="length" />
              <node role="instance" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203609643304">
                <node role="operand" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpresson" id="1205754224182" />
                <node role="operation" type="jetbrains.mps.uiLanguage.structure.AttributeReferenceOperation" id="1203609646385">
                  <link role="member" targetNodeId="1203602985004" resolveInfo="solutionPath" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1203609669182">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1203609669183">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1203609680057">
              <node role="expression" type="jetbrains.mps.ide.uiLanguage.structure.ReportErrorExpression" id="1203609680058">
                <node role="errorText" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1203609680982">
                  <property name="value" value="Enter solution name" />
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1203609685687" />
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1203609676990">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1203609678931">
              <property name="value" value="0" />
            </node>
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1203609676364">
              <link role="baseMethodDeclaration" targetNodeId="1.~String.length():int" resolveInfo="length" />
              <node role="instance" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203609672156">
                <node role="operand" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpresson" id="1205754224218" />
                <node role="operation" type="jetbrains.mps.uiLanguage.structure.AttributeReferenceOperation" id="1203609673861">
                  <link role="member" targetNodeId="1203602979314" resolveInfo="solutionName" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1203609690220">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1203609690221">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1203609709582">
              <node role="expression" type="jetbrains.mps.ide.uiLanguage.structure.ReportErrorExpression" id="1203609709583">
                <node role="errorText" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1203609710304">
                  <property name="value" value="Duplicate solution name" />
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1203609715274" />
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1203609706843">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1203609707768" />
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1203609699291">
              <link role="baseMethodDeclaration" targetNodeId="5.~MPSModuleRepository.getModuleByUID(java.lang.String):jetbrains.mps.project.IModule" resolveInfo="getModuleByUID" />
              <node role="instance" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1203609693116">
                <link role="baseMethodDeclaration" targetNodeId="5.~MPSModuleRepository.getInstance():jetbrains.mps.smodel.MPSModuleRepository" resolveInfo="getInstance" />
                <link role="classConcept" targetNodeId="5.~MPSModuleRepository" resolveInfo="MPSModuleRepository" />
              </node>
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203609701653">
                <node role="operand" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpresson" id="1205754224184" />
                <node role="operation" type="jetbrains.mps.uiLanguage.structure.AttributeReferenceOperation" id="1203609705155">
                  <link role="member" targetNodeId="1203602979314" resolveInfo="solutionName" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1203609752877">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1203609752878">
            <property name="name" value="descriptorPath" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1203609752879">
              <link role="classifier" targetNodeId="1.~String" resolveInfo="String" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="1203609766416">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="1203609771452">
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="1203609780069">
                  <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1203609784822">
                    <property name="value" value=".msd" />
                  </node>
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203609777362">
                    <node role="operand" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpresson" id="1205754224181" />
                    <node role="operation" type="jetbrains.mps.uiLanguage.structure.AttributeReferenceOperation" id="1203609779318">
                      <link role="member" targetNodeId="1203602979314" resolveInfo="solutionName" />
                    </node>
                  </node>
                </node>
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference" id="1203609769185">
                  <link role="classifier" targetNodeId="2.~File" resolveInfo="File" />
                  <link role="variableDeclaration" targetNodeId="2.~File.separator" resolveInfo="separator" />
                </node>
              </node>
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203609764257">
                <node role="operand" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpresson" id="1205754224309" />
                <node role="operation" type="jetbrains.mps.uiLanguage.structure.AttributeReferenceOperation" id="1203609765915">
                  <link role="member" targetNodeId="1203602985004" resolveInfo="solutionPath" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1203609799597">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1203609799598">
            <property name="name" value="file" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1203609799599">
              <link role="classifier" targetNodeId="2.~File" resolveInfo="File" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.NewExpression" id="1203609802742">
              <link role="baseMethodDeclaration" targetNodeId="2.~File.&lt;init&gt;(java.lang.String)" resolveInfo="File" />
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1203609806290">
                <link role="variableDeclaration" targetNodeId="1203609752878" resolveInfo="descriptorPath" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1203609812979">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1203609812980">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1203609817894">
              <node role="expression" type="jetbrains.mps.ide.uiLanguage.structure.ReportErrorExpression" id="1203609817895">
                <node role="errorText" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1203609818663">
                  <property name="value" value="Solution file already exists" />
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1203609826852" />
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1203609816424">
            <link role="baseMethodDeclaration" targetNodeId="2.~File.exists():boolean" resolveInfo="exists" />
            <node role="instance" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1203609814030">
              <link role="variableDeclaration" targetNodeId="1203609799598" resolveInfo="file" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1203609837750">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1203609837751">
            <property name="name" value="dir" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1203609837752">
              <link role="classifier" targetNodeId="2.~File" resolveInfo="File" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1203609843648">
              <link role="baseMethodDeclaration" targetNodeId="2.~File.getParentFile():java.io.File" resolveInfo="getParentFile" />
              <node role="instance" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1203609840551">
                <link role="variableDeclaration" targetNodeId="1203609799598" resolveInfo="file" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1203609830761">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1203609830762">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1203609863406">
              <node role="expression" type="jetbrains.mps.ide.uiLanguage.structure.ReportErrorExpression" id="1203609863407">
                <node role="errorText" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1203609864128">
                  <property name="value" value="Path should be absolute" />
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1203609870583" />
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotExpression" id="1203609846493">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1203609849373">
              <link role="baseMethodDeclaration" targetNodeId="2.~File.isAbsolute():boolean" resolveInfo="isAbsolute" />
              <node role="instance" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1203609847183">
                <link role="variableDeclaration" targetNodeId="1203609837751" resolveInfo="dir" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1203610947767">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1203610947768">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1203611016782">
              <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1203611016783">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1203611022997">
                  <node role="expression" type="jetbrains.mps.ide.uiLanguage.structure.ReportErrorExpression" id="1203611022998">
                    <node role="errorText" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1203611024266">
                      <property name="value" value="Enter correct path" />
                    </node>
                  </node>
                </node>
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1203611029487" />
              </node>
              <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotExpression" id="1203611018020">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1203611018225">
                  <link role="classConcept" targetNodeId="9.~DirectoryUtil" resolveInfo="DirectoryUtil" />
                  <link role="baseMethodDeclaration" targetNodeId="9.~DirectoryUtil.askToCreateNewDirectory(java.awt.Frame,java.io.File):boolean" resolveInfo="askToCreateNewDirectory" />
                  <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.CastExpression" id="1203611018226">
                    <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1203611018227">
                      <link role="classifier" targetNodeId="11.~Frame" resolveInfo="Frame" />
                    </node>
                    <node role="expression" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1203611018228">
                      <link role="baseMethodDeclaration" targetNodeId="11.~Window.getOwner():java.awt.Window" resolveInfo="getOwner" />
                      <node role="instance" type="jetbrains.mps.ide.uiLanguage.structure.DialogExpression" id="1203611018229" />
                    </node>
                  </node>
                  <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1203611018230">
                    <link role="variableDeclaration" targetNodeId="1203609837751" resolveInfo="dir" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotExpression" id="1203610949005">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1203610952104">
              <link role="baseMethodDeclaration" targetNodeId="2.~File.exists():boolean" resolveInfo="exists" />
              <node role="instance" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1203610949726">
                <link role="variableDeclaration" targetNodeId="1203609837751" resolveInfo="dir" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1203611041567">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1203611041568">
            <property name="name" value="descriptorFile" />
            <property name="isFinal" value="true" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1203611175254">
              <link role="classifier" targetNodeId="2.~File" resolveInfo="File" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203611179523">
              <node role="operand" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpresson" id="1205754224170" />
              <node role="operation" type="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodCallOperation" id="1205834446430">
                <link role="member" targetNodeId="1203611075447" resolveInfo="prepareToCreateNewSolutionDescriptorFile" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1203611188885">
                  <link role="variableDeclaration" targetNodeId="1203609752878" resolveInfo="descriptorPath" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1203611190216">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1203611190217">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1203611196959">
              <node role="expression" type="jetbrains.mps.ide.uiLanguage.structure.ReportErrorExpression" id="1203611196960">
                <node role="errorText" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="1203611201120">
                  <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1203611202904">
                    <link role="variableDeclaration" targetNodeId="1203609752878" resolveInfo="descriptorPath" />
                  </node>
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1203611198087">
                    <property name="value" value="Can't create " />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1203611204703" />
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1203611192752">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1203611193755" />
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1203611192126">
              <link role="variableDeclaration" targetNodeId="1203611041568" resolveInfo="descriptorFile" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1203606974763">
          <node role="expression" type="jetbrains.mps.ide.uiLanguage.structure.DisposeDialogExpression" id="1203606974764" />
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1203611229471">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1203611233555">
            <link role="baseMethodDeclaration" targetNodeId="12.~CommandProcessor.executeCommand(java.lang.Runnable):void" resolveInfo="executeCommand" />
            <node role="instance" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1203611230255">
              <link role="baseMethodDeclaration" targetNodeId="12.~CommandProcessor.instance():jetbrains.mps.ide.command.CommandProcessor" resolveInfo="instance" />
              <link role="classConcept" targetNodeId="12.~CommandProcessor" resolveInfo="CommandProcessor" />
            </node>
            <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1203611238338">
              <node role="creator" type="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" id="1203611238339">
                <node role="cls" type="jetbrains.mps.baseLanguage.structure.AnonymousClass" id="1203611238340">
                  <link role="classifier" targetNodeId="1.~Runnable" resolveInfo="Runnable" />
                  <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1203611238341" />
                  <node role="method" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" id="1203611241311">
                    <property name="name" value="run" />
                    <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1203611241312" />
                    <node role="returnType" type="jetbrains.mps.baseLanguage.structure.VoidType" id="1203611241313" />
                    <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1203611241314">
                      <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1203611256459">
                        <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1203611260621">
                          <node role="rValue" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203611267344">
                            <node role="operand" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpresson" id="1205754224213" />
                            <node role="operation" type="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodCallOperation" id="1205834446426">
                              <link role="member" targetNodeId="1203608542333" resolveInfo="createNewSolution" />
                              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203611278223">
                                <node role="operand" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpresson" id="1205754224227" />
                                <node role="operation" type="jetbrains.mps.uiLanguage.structure.AttributeReferenceOperation" id="1203611279709">
                                  <link role="member" targetNodeId="1203602979314" resolveInfo="solutionName" />
                                </node>
                              </node>
                              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1203611416048">
                                <link role="baseMethodDeclaration" targetNodeId="8.~FileSystem.getFile(java.io.File):jetbrains.mps.vfs.IFile" resolveInfo="getFile" />
                                <link role="classConcept" targetNodeId="8.~FileSystem" resolveInfo="FileSystem" />
                                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1203611416440">
                                  <link role="variableDeclaration" targetNodeId="1203611041568" resolveInfo="descriptorFile" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node role="lValue" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203611257524">
                            <node role="operand" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpresson" id="1205754224357" />
                            <node role="operation" type="jetbrains.mps.uiLanguage.structure.AttributeReferenceOperation" id="1203611259010">
                              <link role="member" targetNodeId="1203611245237" resolveInfo="result" />
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
        </node>
      </node>
    </node>
    <node role="componentMethod" type="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodDeclaration" id="1203599986635">
      <property name="name" value="onCancel" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.VoidType" id="1203599987700" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1203599986637">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1203606976985">
          <node role="expression" type="jetbrains.mps.ide.uiLanguage.structure.DisposeDialogExpression" id="1203606976986" />
        </node>
      </node>
    </node>
    <node role="componentMethod" type="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodDeclaration" id="1203611075447">
      <property name="name" value="prepareToCreateNewSolutionDescriptorFile" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1203611077169">
        <link role="classifier" targetNodeId="2.~File" resolveInfo="File" />
      </node>
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1203611075449">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1203611091672">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1203611091673">
            <property name="name" value="solutionDescriptorFile" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1203611091674">
              <link role="classifier" targetNodeId="2.~File" resolveInfo="File" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.NewExpression" id="1203611096676">
              <link role="baseMethodDeclaration" targetNodeId="2.~File.&lt;init&gt;(java.lang.String)" resolveInfo="File" />
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1203611099709">
                <link role="variableDeclaration" targetNodeId="1203611087420" resolveInfo="path" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1203686540609">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1203686540610">
            <property name="name" value="dir" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1203686540611">
              <link role="classifier" targetNodeId="2.~File" resolveInfo="File" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1203686540612">
              <link role="baseMethodDeclaration" targetNodeId="2.~File.getParentFile():java.io.File" resolveInfo="getParentFile" />
              <node role="instance" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1203686540613">
                <link role="variableDeclaration" targetNodeId="1203611091673" resolveInfo="solutionDescriptorFile" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1203686540614">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1203686540615">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1203686540616">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1203686540617">
                <link role="baseMethodDeclaration" targetNodeId="2.~File.mkdirs():boolean" resolveInfo="mkdirs" />
                <node role="instance" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1203686540618">
                  <link role="variableDeclaration" targetNodeId="1203686540610" resolveInfo="dir" />
                </node>
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotExpression" id="1203686540619">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1203686540620">
              <link role="baseMethodDeclaration" targetNodeId="2.~File.exists():boolean" resolveInfo="exists" />
              <node role="instance" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1203686540621">
                <link role="variableDeclaration" targetNodeId="1203686540610" resolveInfo="dir" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1203611120996">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1203686555667">
            <link role="variableDeclaration" targetNodeId="1203611091673" resolveInfo="solutionDescriptorFile" />
          </node>
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1203611087420">
        <property name="name" value="path" />
        <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1203611087421">
          <link role="classifier" targetNodeId="1.~String" resolveInfo="String" />
        </node>
      </node>
    </node>
    <node role="componentMethod" type="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodDeclaration" id="1203608542333">
      <property name="name" value="createNewSolution" />
      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1203608557260">
        <property name="name" value="solutionName" />
        <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1203608558543">
          <link role="classifier" targetNodeId="1.~String" resolveInfo="String" />
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1203608561247">
        <property name="name" value="solutionDescriptorFile" />
        <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1203609563118">
          <link role="classifier" targetNodeId="8.~IFile" resolveInfo="IFile" />
        </node>
      </node>
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1203608548586">
        <link role="classifier" targetNodeId="4.~Solution" resolveInfo="Solution" />
      </node>
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1203608542335">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1203609286776">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1203609286777">
            <property name="name" value="solutionDescriptor" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1203609286778">
              <link role="concept" targetNodeId="6.1125083141692" resolveInfo="SolutionDescriptor" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1203609291389">
              <node role="creator" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeCreator" id="1203609291390">
                <node role="createdType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1203609291391">
                  <link role="concept" targetNodeId="6.1125083141692" resolveInfo="SolutionDescriptor" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1203609296159">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204026468268">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204026466265">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1203609296160">
                <link role="variableDeclaration" targetNodeId="1203609286777" resolveInfo="solutionDescriptor" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1203609300400">
                <link role="property" targetNodeId="6.1192529514316" resolveInfo="externallyVisible" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Property_SetOperation" id="1203609302263">
              <node role="value" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1203609302937">
                <property name="value" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1203609318949">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204026471160">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204026473397">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1203609318950">
                <link role="variableDeclaration" targetNodeId="1203609286777" resolveInfo="solutionDescriptor" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1203609321266">
                <link role="property" targetNodeId="6.1196168859480" resolveInfo="compileInMPS" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Property_SetOperation" id="1203609323067">
              <node role="value" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203609326352">
                <node role="operand" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpresson" id="1205754224240" />
                <node role="operation" type="jetbrains.mps.uiLanguage.structure.AttributeReferenceOperation" id="1203609328869">
                  <link role="member" targetNodeId="1203608417492" resolveInfo="compileInMPS" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1203609386089">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1203609386090">
            <property name="name" value="fileName" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1203609386091">
              <link role="classifier" targetNodeId="1.~String" resolveInfo="String" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1203609392221">
              <link role="baseMethodDeclaration" targetNodeId="8.~IFile.getName():java.lang.String" resolveInfo="getName" />
              <node role="instance" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1203609389937">
                <link role="variableDeclaration" targetNodeId="1203608561247" resolveInfo="solutionDescriptorFile" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1203609372420">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204026475602">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204026478979">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1203609372421">
                <link role="variableDeclaration" targetNodeId="1203609286777" resolveInfo="solutionDescriptor" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1203609376066">
                <link role="property" targetNodeId="10.1169194664001" resolveInfo="name" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Property_SetOperation" id="1203609378288">
              <node role="value" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1203609397647">
                <link role="baseMethodDeclaration" targetNodeId="1.~String.substring(int,int):java.lang.String" resolveInfo="substring" />
                <node role="instance" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1203609394894">
                  <link role="variableDeclaration" targetNodeId="1203609386090" resolveInfo="fileName" />
                </node>
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1203609398835">
                  <property name="value" value="0" />
                </node>
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.MinusExpression" id="1203609403014">
                  <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1203609404048">
                    <property name="value" value="4" />
                  </node>
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1203609402481">
                    <link role="baseMethodDeclaration" targetNodeId="1.~String.length():int" resolveInfo="length" />
                    <node role="instance" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1203609400025">
                      <link role="variableDeclaration" targetNodeId="1203609386090" resolveInfo="fileName" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1203609412581">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1203609412582">
            <property name="name" value="modelRoot" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1203609412583">
              <link role="concept" targetNodeId="6.1102073020496" resolveInfo="ModelRoot" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1203609415945">
              <node role="creator" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeCreator" id="1203609415946">
                <node role="createdType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1203609415947">
                  <link role="concept" targetNodeId="6.1102073020496" resolveInfo="ModelRoot" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1203609431262">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204026480809">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204026482843">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1203609431263">
                <link role="variableDeclaration" targetNodeId="1203609412582" resolveInfo="modelRoot" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1203609433143">
                <link role="property" targetNodeId="6.1102073030931" resolveInfo="prefix" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Property_SetOperation" id="1203609435506">
              <node role="value" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1203609436039">
                <property name="value" value="" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1203609438119">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204026488066">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204026486970">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1203609438120">
                <link role="variableDeclaration" targetNodeId="1203609412582" resolveInfo="modelRoot" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1203609448328">
                <link role="property" targetNodeId="6.1102068622239" resolveInfo="path" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Property_SetOperation" id="1203609450348">
              <node role="value" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1203609460965">
                <link role="baseMethodDeclaration" targetNodeId="8.~IFile.getAbsolutePath():java.lang.String" resolveInfo="getAbsolutePath" />
                <node role="instance" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1203609457806">
                  <link role="baseMethodDeclaration" targetNodeId="8.~IFile.getParent():jetbrains.mps.vfs.IFile" resolveInfo="getParent" />
                  <node role="instance" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1203609454381">
                    <link role="variableDeclaration" targetNodeId="1203608561247" resolveInfo="solutionDescriptorFile" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1203609418527">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204026497837">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204026496413">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1203609418528">
                <link role="variableDeclaration" targetNodeId="1203609286777" resolveInfo="solutionDescriptor" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1203609421173">
                <link role="link" targetNodeId="6.1129130493108" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.LinkList_AddChildOperation" id="1203609423446">
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1203609425151">
                <link role="variableDeclaration" targetNodeId="1203609412582" resolveInfo="modelRoot" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1203609547133">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1203609550119">
            <link role="baseMethodDeclaration" targetNodeId="7.~DescriptorsPersistence.saveSolutionDescriptor(jetbrains.mps.vfs.IFile,jetbrains.mps.projectLanguage.structure.SolutionDescriptor):void" resolveInfo="saveSolutionDescriptor" />
            <link role="classConcept" targetNodeId="7.~DescriptorsPersistence" resolveInfo="DescriptorsPersistence" />
            <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1203609578307">
              <link role="variableDeclaration" targetNodeId="1203608561247" resolveInfo="solutionDescriptorFile" />
            </node>
            <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204672721538">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1203609582621">
                <link role="variableDeclaration" targetNodeId="1203609286777" resolveInfo="solutionDescriptor" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAdapterOperation" id="1203609586438" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1203609593660">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1203609603930">
            <link role="baseMethodDeclaration" targetNodeId="4.~MPSProject.addProjectSolution(java.io.File):jetbrains.mps.project.Solution" resolveInfo="addProjectSolution" />
            <node role="instance" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203609596929">
              <node role="operand" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpresson" id="1205754224280" />
              <node role="operation" type="jetbrains.mps.uiLanguage.structure.AttributeReferenceOperation" id="1203609598384">
                <link role="member" targetNodeId="1203608445166" resolveInfo="project" />
              </node>
            </node>
            <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1203609612418">
              <link role="baseMethodDeclaration" targetNodeId="8.~IFile.toFile():java.io.File" resolveInfo="toFile" />
              <node role="instance" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1203609610025">
                <link role="variableDeclaration" targetNodeId="1203608561247" resolveInfo="solutionDescriptorFile" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="componentMethod" type="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodDeclaration" id="1203676067041">
      <property name="name" value="updateSolutionPath" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.VoidType" id="1203676068373" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1203676067043">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1203679190577">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1203679190578">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1203679196194" />
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1203679357021">
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203679357022">
              <node role="operation" type="jetbrains.mps.uiLanguage.structure.AttributeReferenceOperation" id="1203679357023">
                <link role="member" targetNodeId="1203608445166" resolveInfo="project" />
              </node>
              <node role="operand" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpresson" id="1205754224196" />
            </node>
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1203679357025" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1203676097254">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1203676097255">
            <property name="name" value="path" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1203676097256">
              <link role="classifier" targetNodeId="1.~String" resolveInfo="String" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1203676141052">
              <link role="baseMethodDeclaration" targetNodeId="9.~FileUtil.getCanonicalPath(java.io.File):java.lang.String" resolveInfo="getCanonicalPath" />
              <link role="classConcept" targetNodeId="9.~FileUtil" resolveInfo="FileUtil" />
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1203676833281">
                <link role="baseMethodDeclaration" targetNodeId="2.~File.getParentFile():java.io.File" resolveInfo="getParentFile" />
                <node role="instance" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1203676829872">
                  <link role="baseMethodDeclaration" targetNodeId="4.~MPSProject.getProjectFile():java.io.File" resolveInfo="getProjectFile" />
                  <node role="instance" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203676141554">
                    <node role="operand" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpresson" id="1205754224129" />
                    <node role="operation" type="jetbrains.mps.uiLanguage.structure.AttributeReferenceOperation" id="1203676141556">
                      <link role="member" targetNodeId="1203608445166" resolveInfo="project" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1203676147982">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1203676147983">
            <property name="name" value="prefix" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1203676147984">
              <link role="classifier" targetNodeId="1.~String" resolveInfo="String" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="1203676151941">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="1203676158179">
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="1203676163246">
                  <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference" id="1203676166249">
                    <link role="classifier" targetNodeId="2.~File" resolveInfo="File" />
                    <link role="variableDeclaration" targetNodeId="2.~File.separator" resolveInfo="separator" />
                  </node>
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1203676159932">
                    <property name="value" value="solutions" />
                  </node>
                </node>
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference" id="1203676156522">
                  <link role="classifier" targetNodeId="2.~File" resolveInfo="File" />
                  <link role="variableDeclaration" targetNodeId="2.~File.separator" resolveInfo="separator" />
                </node>
              </node>
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1203676151471">
                <link role="variableDeclaration" targetNodeId="1203676097255" resolveInfo="path" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1203676180745">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1203676180746">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1203676214757">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1203676220341">
                <node role="rValue" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="1203676222157">
                  <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203676228693">
                    <node role="operand" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpresson" id="1205754224238" />
                    <node role="operation" type="jetbrains.mps.uiLanguage.structure.AttributeReferenceOperation" id="1203676230164">
                      <link role="member" targetNodeId="1203602979314" resolveInfo="solutionName" />
                    </node>
                  </node>
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1203676221391">
                    <link role="variableDeclaration" targetNodeId="1203676147983" resolveInfo="prefix" />
                  </node>
                </node>
                <node role="lValue" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203676215181">
                  <node role="operand" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpresson" id="1205754224329" />
                  <node role="operation" type="jetbrains.mps.uiLanguage.structure.AttributeReferenceOperation" id="1203676217121">
                    <link role="member" targetNodeId="1203602985004" resolveInfo="solutionPath" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.OrExpression" id="1203676197730">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1203676208302">
              <link role="baseMethodDeclaration" targetNodeId="1.~String.startsWith(java.lang.String):boolean" resolveInfo="startsWith" />
              <node role="instance" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203676203234">
                <node role="operand" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpresson" id="1205754224092" />
                <node role="operation" type="jetbrains.mps.uiLanguage.structure.AttributeReferenceOperation" id="1203676205345">
                  <link role="member" targetNodeId="1203602985004" resolveInfo="solutionPath" />
                </node>
              </node>
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1203676209928">
                <link role="variableDeclaration" targetNodeId="1203676147983" resolveInfo="prefix" />
              </node>
            </node>
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1203676193866">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1203676193130">
                <link role="baseMethodDeclaration" targetNodeId="1.~String.length():int" resolveInfo="length" />
                <node role="instance" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203676186672">
                  <node role="operand" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpresson" id="1205754224039" />
                  <node role="operation" type="jetbrains.mps.uiLanguage.structure.AttributeReferenceOperation" id="1203676190174">
                    <link role="member" targetNodeId="1203602985004" resolveInfo="solutionPath" />
                  </node>
                </node>
              </node>
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1203676195260">
                <property name="value" value="0" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="constructor" type="jetbrains.mps.uiLanguage.structure.ComponentConstructor" id="1203593931549">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1203593931550">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1203677539392">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1203677550231">
            <node role="rValue" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1203677550844">
              <property name="value" value="" />
            </node>
            <node role="lValue" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203677539659">
              <node role="operand" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpresson" id="1205754224025" />
              <node role="operation" type="jetbrains.mps.uiLanguage.structure.AttributeReferenceOperation" id="1203677542803">
                <link role="member" targetNodeId="1203602985004" resolveInfo="solutionPath" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1203677557221">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1203677560023">
            <node role="rValue" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1203677560854">
              <property name="value" value="NewSolution" />
            </node>
            <node role="lValue" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203677557598">
              <node role="operand" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpresson" id="1205754224324" />
              <node role="operation" type="jetbrains.mps.uiLanguage.structure.AttributeReferenceOperation" id="1203677559178">
                <link role="member" targetNodeId="1203602979314" resolveInfo="solutionName" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="attribute" type="jetbrains.mps.uiLanguage.structure.AttributeDeclaration" id="1203602979314">
      <property name="name" value="solutionName" />
      <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1203602981581">
        <link role="classifier" targetNodeId="1.~String" resolveInfo="String" />
      </node>
      <node role="onChange" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203677055759">
        <node role="operand" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpresson" id="1205754224098" />
        <node role="operation" type="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodCallOperation" id="1205834446437">
          <link role="member" targetNodeId="1203676067041" resolveInfo="updateSolutionPath" />
        </node>
      </node>
    </node>
    <node role="attribute" type="jetbrains.mps.uiLanguage.structure.AttributeDeclaration" id="1203602985004">
      <property name="name" value="solutionPath" />
      <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1203602986897">
        <link role="classifier" targetNodeId="1.~String" resolveInfo="String" />
      </node>
    </node>
    <node role="attribute" type="jetbrains.mps.uiLanguage.structure.AttributeDeclaration" id="1203608417492">
      <property name="name" value="compileInMPS" />
      <node role="type" type="jetbrains.mps.baseLanguage.structure.BooleanType" id="1203608423968" />
      <node role="initializer" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1207741528677">
        <property name="value" value="true" />
      </node>
    </node>
    <node role="attribute" type="jetbrains.mps.uiLanguage.structure.AttributeDeclaration" id="1203608445166">
      <property name="name" value="project" />
      <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1203608452906">
        <link role="classifier" targetNodeId="4.~MPSProject" resolveInfo="MPSProject" />
      </node>
      <node role="onChange" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203679348409">
        <node role="operand" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpresson" id="1205754224141" />
        <node role="operation" type="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodCallOperation" id="1205834446435">
          <link role="member" targetNodeId="1203676067041" resolveInfo="updateSolutionPath" />
        </node>
      </node>
    </node>
    <node role="attribute" type="jetbrains.mps.uiLanguage.structure.AttributeDeclaration" id="1203611245237">
      <property name="name" value="result" />
      <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1203611246723">
        <link role="classifier" targetNodeId="4.~Solution" resolveInfo="Solution" />
      </node>
    </node>
  </node>
</model>


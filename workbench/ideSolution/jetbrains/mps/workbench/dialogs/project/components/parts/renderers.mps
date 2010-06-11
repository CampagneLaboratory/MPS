<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:4cfa2d82-0f6c-496f-bd56-08bca0eb8e02(jetbrains.mps.workbench.dialogs.project.components.parts.renderers)">
  <persistence version="4" />
  <refactoringHistory />
  <language namespace="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590283(jetbrains.mps.lang.core.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="3" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902c1(jetbrains.mps.baseLanguage.constraints)" version="83" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902db(jetbrains.mps.baseLanguage.blTypes.constraints)" version="0" />
  <maxImportIndex value="20" />
  <import index="1" modelUID="f:java_stub#java.awt(java.awt@java_stub)" version="-1" />
  <import index="2" modelUID="f:java_stub#javax.swing(javax.swing@java_stub)" version="-1" />
  <import index="3" modelUID="f:java_stub#jetbrains.mps.project.structure.project(jetbrains.mps.project.structure.project@java_stub)" version="-1" />
  <import index="4" modelUID="f:java_stub#javax.swing.table(javax.swing.table@java_stub)" version="-1" />
  <import index="5" modelUID="f:java_stub#jetbrains.mps.project.structure.modules.mappingpriorities(jetbrains.mps.project.structure.modules.mappingpriorities@java_stub)" version="-1" />
  <import index="6" modelUID="f:java_stub#javax.swing.border(javax.swing.border@java_stub)" version="-1" />
  <import index="7" modelUID="f:java_stub#jetbrains.mps.project(jetbrains.mps.project@java_stub)" version="-1" />
  <import index="8" modelUID="f:java_stub#com.intellij.openapi.vfs(com.intellij.openapi.vfs@java_stub)" version="-1" />
  <import index="9" modelUID="f:java_stub#jetbrains.mps.vfs(jetbrains.mps.vfs@java_stub)" version="-1" />
  <import index="10" modelUID="f:java_stub#jetbrains.mps.smodel(jetbrains.mps.smodel@java_stub)" version="-1" />
  <import index="11" modelUID="f:java_stub#org.jetbrains.annotations(org.jetbrains.annotations@java_stub)" version="-1" />
  <import index="12" modelUID="f:java_stub#com.intellij.openapi.util(com.intellij.openapi.util@java_stub)" version="-1" />
  <import index="13" modelUID="f:java_stub#jetbrains.mps.project.structure.model(jetbrains.mps.project.structure.model@java_stub)" version="-1" />
  <import index="14" modelUID="f:java_stub#jetbrains.mps.util(jetbrains.mps.util@java_stub)" version="-1" />
  <import index="15" modelUID="f:java_stub#jetbrains.mps.project.structure.modules(jetbrains.mps.project.structure.modules@java_stub)" version="-1" />
  <import index="16" modelUID="f:java_stub#jetbrains.mps.ide.ui(jetbrains.mps.ide.ui@java_stub)" version="-1" />
  <import index="17" modelUID="f:java_stub#javax.swing.tree(javax.swing.tree@java_stub)" version="-1" />
  <import index="18" modelUID="f:java_stub#com.intellij.ui(com.intellij.ui@java_stub)" version="-1" />
  <import index="19" modelUID="f:java_stub#jetbrains.mps.project.structure.project.testconfigurations(jetbrains.mps.project.structure.project.testconfigurations@java_stub)" version="-1" />
  <import index="20" modelUID="r:54883260-1d2e-4108-8311-3a1f6d27f2b4(jetbrains.mps.workbench.dialogs.project.components.parts)" version="-1" />
  <visible index="2" modelUID="f:java_stub#java.lang(java.lang@java_stub)" />
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="1560298786499489409">
    <property name="name:3" value="PathRenderer" />
    <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1560298786499489410" />
    <node role="superclass:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499489411">
      <link role="classifier:3" targetNodeId="1560298786499492799" resolveInfo="StringPathRenderer" />
    </node>
    <node role="constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="1560298786499489412">
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1560298786499489413" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1560298786499489414" />
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1560298786499489415">
      <property name="name:3" value="getListCellRendererComponent" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1560298786499489416" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499489417">
        <link role="classifier:3" targetNodeId="1.~Component" />
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499489418">
        <property name="name:3" value="list" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499489419">
          <link role="classifier:3" targetNodeId="2.~JList" />
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499489420">
        <property name="name:3" value="value" />
        <property name="isFinal:3" value="true" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499489421">
          <link role="classifier:3" targetNodeId="2v.~Object" />
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499489422">
        <property name="name:3" value="index" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="1560298786499489423" />
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499489424">
        <property name="name:3" value="isSelected" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="1560298786499489425" />
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499489426">
        <property name="name:3" value="cellHasFocus" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="1560298786499489427" />
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1560298786499489428">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1560298786499489429">
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="1560298786499489430">
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499489431">
              <link role="variableDeclaration:3" targetNodeId="1560298786499489420" resolveInfo="value" />
            </node>
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="1560298786499489432" />
          </node>
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1560298786499489433">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1560298786499489434">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1560298786499489435">
                <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="1560298786499489436">
                  <link role="baseMethodDeclaration:3" targetNodeId="2.~JLabel.&lt;init&gt;()" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1560298786499489437">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1560298786499489438">
            <property name="name:3" value="path" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499489439">
              <link role="classifier:3" targetNodeId="2v.~String" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499489440">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression:3" id="1560298786499489441">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.CastExpression:3" id="1560298786499489442">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499489443">
                    <link role="variableDeclaration:3" targetNodeId="1560298786499489420" resolveInfo="value" />
                  </node>
                  <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499489444">
                    <link role="classifier:3" targetNodeId="3.~Path" />
                  </node>
                </node>
              </node>
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499489445">
                <link role="baseMethodDeclaration:3" targetNodeId="3.~Path.getPath():java.lang.String" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1560298786499489446">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.SuperMethodCall:3" id="1560298786499489447">
            <link role="baseMethodDeclaration:3" targetNodeId="1560298786499492805" resolveInfo="getListCellRendererComponent" />
            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499489448">
              <link role="variableDeclaration:3" targetNodeId="1560298786499489418" resolveInfo="list" />
            </node>
            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499489449">
              <link role="variableDeclaration:3" targetNodeId="1560298786499489438" resolveInfo="path" />
            </node>
            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499489450">
              <link role="variableDeclaration:3" targetNodeId="1560298786499489422" resolveInfo="index" />
            </node>
            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499489451">
              <link role="variableDeclaration:3" targetNodeId="1560298786499489424" resolveInfo="isSelected" />
            </node>
            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499489452">
              <link role="variableDeclaration:3" targetNodeId="1560298786499489426" resolveInfo="cellHasFocus" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="1560298786499489478">
    <property name="name:3" value="RuleTypeRenderer" />
    <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1560298786499489479" />
    <node role="superclass:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499489480">
      <link role="classifier:3" targetNodeId="4.~DefaultTableCellRenderer" />
    </node>
    <node role="constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="1560298786499489481">
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1560298786499489482" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1560298786499489483" />
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1560298786499489484">
      <property name="name:3" value="getTableCellRendererComponent" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1560298786499489485" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499489486">
        <link role="classifier:3" targetNodeId="1.~Component" />
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499489487">
        <property name="name:3" value="table" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499489488">
          <link role="classifier:3" targetNodeId="2.~JTable" />
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499489489">
        <property name="name:3" value="value" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499489490">
          <link role="classifier:3" targetNodeId="2v.~Object" />
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499489491">
        <property name="name:3" value="isSelected" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="1560298786499489492" />
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499489493">
        <property name="name:3" value="hasFocus" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="1560298786499489494" />
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499489495">
        <property name="name:3" value="row" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="1560298786499489496" />
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499489497">
        <property name="name:3" value="column" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="1560298786499489498" />
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1560298786499489499">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1560298786499489500">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1560298786499489501">
            <property name="name:3" value="caption" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499489502">
              <link role="classifier:3" targetNodeId="2v.~String" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499489503">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression:3" id="1560298786499489504">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.CastExpression:3" id="1560298786499489505">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499489506">
                    <link role="variableDeclaration:3" targetNodeId="1560298786499489489" resolveInfo="value" />
                  </node>
                  <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499489507">
                    <link role="classifier:3" targetNodeId="5.~RuleType" />
                  </node>
                </node>
              </node>
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499489508">
                <link role="baseMethodDeclaration:3" targetNodeId="5.~RuleType.getPresentation():java.lang.String" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1560298786499489509">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1560298786499489510">
            <property name="name:3" value="comp" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499489511">
              <link role="classifier:3" targetNodeId="2.~JComponent" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.CastExpression:3" id="1560298786499489512">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.SuperMethodCall:3" id="1560298786499489513">
                <link role="baseMethodDeclaration:3" targetNodeId="4.~DefaultTableCellRenderer.getTableCellRendererComponent(javax.swing.JTable,java.lang.Object,boolean,boolean,int,int):java.awt.Component" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499489514">
                  <link role="variableDeclaration:3" targetNodeId="1560298786499489487" resolveInfo="table" />
                </node>
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499489515">
                  <link role="variableDeclaration:3" targetNodeId="1560298786499489501" resolveInfo="caption" />
                </node>
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499489516">
                  <link role="variableDeclaration:3" targetNodeId="1560298786499489491" resolveInfo="isSelected" />
                </node>
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499489517">
                  <link role="variableDeclaration:3" targetNodeId="1560298786499489493" resolveInfo="hasFocus" />
                </node>
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499489518">
                  <link role="variableDeclaration:3" targetNodeId="1560298786499489495" resolveInfo="row" />
                </node>
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499489519">
                  <link role="variableDeclaration:3" targetNodeId="1560298786499489497" resolveInfo="column" />
                </node>
              </node>
              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499489520">
                <link role="classifier:3" targetNodeId="2.~JComponent" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1560298786499489521">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="1560298786499489522">
            <link role="classConcept:3" targetNodeId="1560298786499489478" resolveInfo="RuleTypeRenderer" />
            <link role="baseMethodDeclaration:3" targetNodeId="1560298786499489525" resolveInfo="createCenterAlignmentInCell" />
            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499489523">
              <link role="variableDeclaration:3" targetNodeId="1560298786499489510" resolveInfo="comp" />
            </node>
          </node>
        </node>
      </node>
      <node role="annotation:3" type="jetbrains.mps.baseLanguage.structure.AnnotationInstance:3" id="1560298786499489524">
        <link role="annotation:3" targetNodeId="2v.~Override" />
      </node>
    </node>
    <node role="staticMethod:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration:3" id="1560298786499489525">
      <property name="name:3" value="createCenterAlignmentInCell" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1560298786499489526" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499489527">
        <link role="classifier:3" targetNodeId="2.~JComponent" />
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499489528">
        <property name="name:3" value="comp" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499489529">
          <link role="classifier:3" targetNodeId="2.~JComponent" />
        </node>
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1560298786499489530">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1560298786499489531">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1560298786499489532">
            <property name="name:3" value="compPanel" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499489533">
              <link role="classifier:3" targetNodeId="2.~JPanel" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1560298786499489534">
              <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="1560298786499489535">
                <link role="baseMethodDeclaration:3" targetNodeId="2.~JPanel.&lt;init&gt;(java.awt.LayoutManager)" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1560298786499489536">
                  <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="1560298786499489537">
                    <link role="baseMethodDeclaration:3" targetNodeId="1.~GridBagLayout.&lt;init&gt;()" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1560298786499489538">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1560298786499489539">
            <property name="name:3" value="constraints" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499489540">
              <link role="classifier:3" targetNodeId="1.~GridBagConstraints" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1560298786499489541">
              <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="1560298786499489542">
                <link role="baseMethodDeclaration:3" targetNodeId="1.~GridBagConstraints.&lt;init&gt;(int,int,int,int,double,double,int,int,java.awt.Insets,int,int)" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1560298786499489543">
                  <property name="value:3" value="1" />
                </node>
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1560298786499489544">
                  <property name="value:3" value="1" />
                </node>
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1560298786499489545">
                  <property name="value:3" value="1" />
                </node>
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1560298786499489546">
                  <property name="value:3" value="1" />
                </node>
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1560298786499489547">
                  <property name="value:3" value="1" />
                </node>
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1560298786499489548">
                  <property name="value:3" value="1" />
                </node>
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="1560298786499489549">
                  <link role="classifier:3" targetNodeId="1.~GridBagConstraints" />
                  <link role="variableDeclaration:3" targetNodeId="1.~GridBagConstraints.CENTER" />
                </node>
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="1560298786499489550">
                  <link role="classifier:3" targetNodeId="1.~GridBagConstraints" />
                  <link role="variableDeclaration:3" targetNodeId="1.~GridBagConstraints.NONE" />
                </node>
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1560298786499489551">
                  <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="1560298786499489552">
                    <link role="baseMethodDeclaration:3" targetNodeId="1.~Insets.&lt;init&gt;(int,int,int,int)" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1560298786499489553">
                      <property name="value:3" value="0" />
                    </node>
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1560298786499489554">
                      <property name="value:3" value="0" />
                    </node>
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1560298786499489555">
                      <property name="value:3" value="0" />
                    </node>
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1560298786499489556">
                      <property name="value:3" value="0" />
                    </node>
                  </node>
                </node>
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1560298786499489557">
                  <property name="value:3" value="0" />
                </node>
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1560298786499489558">
                  <property name="value:3" value="0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1560298786499489559">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499489560">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499489561">
              <link role="variableDeclaration:3" targetNodeId="1560298786499489532" resolveInfo="compPanel" />
            </node>
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499489562">
              <link role="baseMethodDeclaration:3" targetNodeId="1.~Container.add(java.awt.Component,java.lang.Object):void" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499489563">
                <link role="variableDeclaration:3" targetNodeId="1560298786499489528" resolveInfo="comp" />
              </node>
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499489564">
                <link role="variableDeclaration:3" targetNodeId="1560298786499489539" resolveInfo="constraints" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1560298786499489565">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499489566">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499489567">
              <link role="variableDeclaration:3" targetNodeId="1560298786499489532" resolveInfo="compPanel" />
            </node>
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499489568">
              <link role="baseMethodDeclaration:3" targetNodeId="2.~JComponent.setBackground(java.awt.Color):void" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499489569">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499489570">
                  <link role="variableDeclaration:3" targetNodeId="1560298786499489528" resolveInfo="comp" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499489571">
                  <link role="baseMethodDeclaration:3" targetNodeId="1.~Component.getBackground():java.awt.Color" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1560298786499489572">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499489573">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499489574">
              <link role="variableDeclaration:3" targetNodeId="1560298786499489532" resolveInfo="compPanel" />
            </node>
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499489575">
              <link role="baseMethodDeclaration:3" targetNodeId="2.~JComponent.setBorder(javax.swing.border.Border):void" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1560298786499489576">
                <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="1560298786499489577">
                  <link role="baseMethodDeclaration:3" targetNodeId="6.~EmptyBorder.&lt;init&gt;(int,int,int,int)" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1560298786499489578">
                    <property name="value:3" value="2" />
                  </node>
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1560298786499489579">
                    <property name="value:3" value="2" />
                  </node>
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1560298786499489580">
                    <property name="value:3" value="2" />
                  </node>
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1560298786499489581">
                    <property name="value:3" value="2" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1560298786499489582">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499489583">
            <link role="variableDeclaration:3" targetNodeId="1560298786499489532" resolveInfo="compPanel" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="1560298786499490098">
    <property name="name:3" value="ProjectPathRenderer" />
    <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1560298786499490099" />
    <node role="superclass:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499490100">
      <link role="classifier:3" targetNodeId="1560298786499489409" resolveInfo="PathRenderer" />
    </node>
    <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="1560298786499490101">
      <property name="name:3" value="myProject" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499490102">
        <link role="classifier:3" targetNodeId="7.~MPSProject" />
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="1560298786499490103" />
    </node>
    <node role="constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="1560298786499490104">
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1560298786499490105" />
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499490106">
        <property name="name:3" value="project" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499490107">
          <link role="classifier:3" targetNodeId="7.~MPSProject" />
        </node>
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1560298786499490108">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1560298786499490109">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="1560298786499490110">
            <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="8692480643148204471">
              <link role="variableDeclaration:3" targetNodeId="1560298786499490101" resolveInfo="myProject" />
            </node>
            <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499490114">
              <link role="variableDeclaration:3" targetNodeId="1560298786499490106" resolveInfo="project" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1560298786499490115">
      <property name="name:3" value="getListCellRendererComponent" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1560298786499490116" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499490117">
        <link role="classifier:3" targetNodeId="1.~Component" />
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499490118">
        <property name="name:3" value="list" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499490119">
          <link role="classifier:3" targetNodeId="2.~JList" />
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499490120">
        <property name="name:3" value="value" />
        <property name="isFinal:3" value="true" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499490121">
          <link role="classifier:3" targetNodeId="2v.~Object" />
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499490122">
        <property name="name:3" value="index" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="1560298786499490123" />
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499490124">
        <property name="name:3" value="isSelected" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="1560298786499490125" />
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499490126">
        <property name="name:3" value="cellHasFocus" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="1560298786499490127" />
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1560298786499490128">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1560298786499490129">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1560298786499490130">
            <property name="name:3" value="path" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499490131">
              <link role="classifier:3" targetNodeId="3.~Path" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.CastExpression:3" id="1560298786499490132">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499490133">
                <link role="variableDeclaration:3" targetNodeId="1560298786499490120" resolveInfo="value" />
              </node>
              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499490134">
                <link role="classifier:3" targetNodeId="3.~Path" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1560298786499490135">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1560298786499490136">
            <property name="name:3" value="result" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499490137">
              <link role="classifier:3" targetNodeId="1.~Component" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.SuperMethodCall:3" id="1560298786499490138">
              <link role="baseMethodDeclaration:3" targetNodeId="1560298786499489415" resolveInfo="getListCellRendererComponent" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499490139">
                <link role="variableDeclaration:3" targetNodeId="1560298786499490118" resolveInfo="list" />
              </node>
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499490140">
                <link role="variableDeclaration:3" targetNodeId="1560298786499490130" resolveInfo="path" />
              </node>
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499490141">
                <link role="variableDeclaration:3" targetNodeId="1560298786499490122" resolveInfo="index" />
              </node>
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499490142">
                <link role="variableDeclaration:3" targetNodeId="1560298786499490124" resolveInfo="isSelected" />
              </node>
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499490143">
                <link role="variableDeclaration:3" targetNodeId="1560298786499490126" resolveInfo="cellHasFocus" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1560298786499490144">
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499490145">
            <link role="variableDeclaration:3" targetNodeId="1560298786499490124" resolveInfo="isSelected" />
          </node>
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1560298786499490146">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1560298786499490147">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499490148">
                <link role="variableDeclaration:3" targetNodeId="1560298786499490136" resolveInfo="result" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1560298786499490149">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1560298786499490150">
            <property name="name:3" value="isContained" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="1560298786499490151" />
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.BooleanConstant:3" id="1560298786499490152" />
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ForeachStatement:3" id="1560298786499490153">
          <node role="iterable:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499490154">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="8692480643148204923">
              <link role="variableDeclaration:3" targetNodeId="1560298786499490101" resolveInfo="myProject" />
            </node>
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499490158">
              <link role="baseMethodDeclaration:3" targetNodeId="7.~MPSProject.getAllModulePaths():java.util.List" />
            </node>
          </node>
          <node role="variable:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1560298786499490159">
            <property name="name:3" value="p" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499490160">
              <link role="classifier:3" targetNodeId="3.~Path" />
            </node>
          </node>
          <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1560298786499490161">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1560298786499490162">
              <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499490163">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499490164">
                  <link role="variableDeclaration:3" targetNodeId="1560298786499490159" resolveInfo="p" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499490165">
                  <link role="baseMethodDeclaration:3" targetNodeId="3.~Path.isSamePath(jetbrains.mps.project.structure.project.Path):boolean" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499490166">
                    <link role="variableDeclaration:3" targetNodeId="1560298786499490130" resolveInfo="path" />
                  </node>
                </node>
              </node>
              <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1560298786499490167">
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1560298786499490168">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="1560298786499490169">
                    <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499490170">
                      <link role="variableDeclaration:3" targetNodeId="1560298786499490150" resolveInfo="isContained" />
                    </node>
                    <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.BooleanConstant:3" id="1560298786499490171">
                      <property name="value:3" value="true" />
                    </node>
                  </node>
                </node>
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.BreakStatement:3" id="1560298786499490172" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1560298786499490173">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1560298786499490174">
            <property name="name:3" value="file" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499490175">
              <link role="classifier:3" targetNodeId="8.~VirtualFile" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="1560298786499490176">
              <link role="classConcept:3" targetNodeId="9.~VFileSystem" />
              <link role="baseMethodDeclaration:3" targetNodeId="9.~VFileSystem.getFile(java.lang.String):com.intellij.openapi.vfs.VirtualFile" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499490177">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499490178">
                  <link role="variableDeclaration:3" targetNodeId="1560298786499490130" resolveInfo="path" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499490179">
                  <link role="baseMethodDeclaration:3" targetNodeId="3.~Path.getPath():java.lang.String" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1560298786499490180">
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.AndExpression:3" id="1560298786499490181">
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.AndExpression:3" id="1560298786499490182">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="1560298786499490183">
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499490184">
                  <link role="variableDeclaration:3" targetNodeId="1560298786499490174" resolveInfo="file" />
                </node>
                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="1560298786499490185" />
              </node>
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499490186">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499490187">
                  <link role="variableDeclaration:3" targetNodeId="1560298786499490174" resolveInfo="file" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499490188">
                  <link role="baseMethodDeclaration:3" targetNodeId="8.~VirtualFile.exists():boolean" />
                </node>
              </node>
            </node>
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NotExpression:3" id="1560298786499490189">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499490190">
                <link role="variableDeclaration:3" targetNodeId="1560298786499490150" resolveInfo="isContained" />
              </node>
            </node>
          </node>
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1560298786499490191">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1560298786499490192">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceMethodCall:3" id="1200564340082201565">
                <link role="baseMethodDeclaration:3" targetNodeId="2.~JComponent.setForeground(java.awt.Color):void" resolveInfo="setForeground" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1560298786499490196">
                  <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="1560298786499490197">
                    <link role="baseMethodDeclaration:3" targetNodeId="1.~Color.&lt;init&gt;(int,int,int)" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1560298786499490198">
                      <property name="value:3" value="128" />
                    </node>
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1560298786499490199">
                      <property name="value:3" value="0" />
                    </node>
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1560298786499490200">
                      <property name="value:3" value="128" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1560298786499490201">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499490202">
            <link role="variableDeclaration:3" targetNodeId="1560298786499490136" resolveInfo="result" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="1560298786499492721">
    <property name="name:3" value="ProjectLevelRenderer" />
    <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1560298786499492722" />
    <node role="superclass:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499492723">
      <link role="classifier:3" targetNodeId="2.~DefaultListCellRenderer" />
    </node>
    <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="1560298786499492724">
      <property name="name:3" value="myModuleScope" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499492725">
        <link role="classifier:3" targetNodeId="10.~IScope" />
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="1560298786499492726" />
    </node>
    <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="1560298786499492727">
      <property name="name:3" value="myProjectScope" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499492728">
        <link role="classifier:3" targetNodeId="10.~IScope" />
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="1560298786499492729" />
    </node>
    <node role="constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="1560298786499492730">
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1560298786499492731" />
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499492732">
        <property name="name:3" value="moduleScope" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499492733">
          <link role="classifier:3" targetNodeId="10.~IScope" />
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499492734">
        <property name="name:3" value="projectScope" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499492735">
          <link role="classifier:3" targetNodeId="10.~IScope" />
        </node>
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1560298786499492736">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1560298786499492737">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="1560298786499492738">
            <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="8692480643148204857">
              <link role="variableDeclaration:3" targetNodeId="1560298786499492724" resolveInfo="myModuleScope" />
            </node>
            <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499492742">
              <link role="variableDeclaration:3" targetNodeId="1560298786499492732" resolveInfo="moduleScope" />
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1560298786499492743">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="1560298786499492744">
            <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="8692480643148204008">
              <link role="variableDeclaration:3" targetNodeId="1560298786499492727" resolveInfo="myProjectScope" />
            </node>
            <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499492748">
              <link role="variableDeclaration:3" targetNodeId="1560298786499492734" resolveInfo="projectScope" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1560298786499492749">
      <property name="name:3" value="getProjectScope" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1560298786499492750" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499492751">
        <link role="classifier:3" targetNodeId="10.~IScope" />
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1560298786499492752">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1560298786499492753">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="8692480643148205128">
            <link role="variableDeclaration:3" targetNodeId="1560298786499492727" resolveInfo="myProjectScope" />
          </node>
        </node>
      </node>
      <node role="annotation:3" type="jetbrains.mps.baseLanguage.structure.AnnotationInstance:3" id="1560298786499492757">
        <link role="annotation:3" targetNodeId="11.~Nullable" />
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1560298786499492758">
      <property name="name:3" value="getModuleScope" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1560298786499492759" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499492760">
        <link role="classifier:3" targetNodeId="10.~IScope" />
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1560298786499492761">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1560298786499492762">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="8692480643148204495">
            <link role="variableDeclaration:3" targetNodeId="1560298786499492724" resolveInfo="myModuleScope" />
          </node>
        </node>
      </node>
      <node role="annotation:3" type="jetbrains.mps.baseLanguage.structure.AnnotationInstance:3" id="1560298786499492766">
        <link role="annotation:3" targetNodeId="11.~Nullable" />
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1560298786499492775">
      <property name="name:3" value="getItemLabel" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1560298786499492776" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499492777">
        <link role="classifier:3" targetNodeId="2v.~String" />
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499492778">
        <property name="name:3" value="value" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499492779">
          <link role="classifier:3" targetNodeId="2v.~Object" />
        </node>
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1560298786499492780">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1560298786499492781">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499492782">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499492783">
              <link role="variableDeclaration:3" targetNodeId="1560298786499492778" resolveInfo="value" />
            </node>
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499492784">
              <link role="baseMethodDeclaration:3" targetNodeId="2v.~Object.toString():java.lang.String" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="1560298786499492799">
    <property name="name:3" value="StringPathRenderer" />
    <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1560298786499492800" />
    <node role="superclass:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499492801">
      <link role="classifier:3" targetNodeId="2.~DefaultListCellRenderer" />
    </node>
    <node role="constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="1560298786499492802">
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1560298786499492803" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1560298786499492804" />
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1560298786499492805">
      <property name="name:3" value="getListCellRendererComponent" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1560298786499492806" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499492807">
        <link role="classifier:3" targetNodeId="1.~Component" />
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499492808">
        <property name="name:3" value="list" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499492809">
          <link role="classifier:3" targetNodeId="2.~JList" />
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499492810">
        <property name="name:3" value="value" />
        <property name="isFinal:3" value="true" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499492811">
          <link role="classifier:3" targetNodeId="2v.~Object" />
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499492812">
        <property name="name:3" value="index" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="1560298786499492813" />
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499492814">
        <property name="name:3" value="isSelected" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="1560298786499492815" />
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499492816">
        <property name="name:3" value="cellHasFocus" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="1560298786499492817" />
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1560298786499492818">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1560298786499492819">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1560298786499492820">
            <property name="name:3" value="path" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499492821">
              <link role="classifier:3" targetNodeId="2v.~String" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.CastExpression:3" id="1560298786499492822">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499492823">
                <link role="variableDeclaration:3" targetNodeId="1560298786499492810" resolveInfo="value" />
              </node>
              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499492824">
                <link role="classifier:3" targetNodeId="2v.~String" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1560298786499492825">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1560298786499492826">
            <property name="name:3" value="result" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499492827">
              <link role="classifier:3" targetNodeId="1.~Component" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.SuperMethodCall:3" id="1560298786499492828">
              <link role="baseMethodDeclaration:3" targetNodeId="2.~DefaultListCellRenderer.getListCellRendererComponent(javax.swing.JList,java.lang.Object,int,boolean,boolean):java.awt.Component" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499492829">
                <link role="variableDeclaration:3" targetNodeId="1560298786499492808" resolveInfo="list" />
              </node>
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499492830">
                <link role="variableDeclaration:3" targetNodeId="1560298786499492820" resolveInfo="path" />
              </node>
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499492831">
                <link role="variableDeclaration:3" targetNodeId="1560298786499492812" resolveInfo="index" />
              </node>
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499492832">
                <link role="variableDeclaration:3" targetNodeId="1560298786499492814" resolveInfo="isSelected" />
              </node>
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499492833">
                <link role="variableDeclaration:3" targetNodeId="1560298786499492816" resolveInfo="cellHasFocus" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1560298786499492834">
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="1560298786499492835">
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499492836">
              <link role="variableDeclaration:3" targetNodeId="1560298786499492820" resolveInfo="path" />
            </node>
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="1560298786499492837" />
          </node>
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1560298786499492838">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1560298786499492839">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499492840">
                <link role="variableDeclaration:3" targetNodeId="1560298786499492826" resolveInfo="result" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1560298786499492841">
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499492842">
            <link role="variableDeclaration:3" targetNodeId="1560298786499492814" resolveInfo="isSelected" />
          </node>
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1560298786499492843">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1560298786499492844">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499492845">
                <link role="variableDeclaration:3" targetNodeId="1560298786499492826" resolveInfo="result" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1560298786499492851">
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.NotExpression:3" id="1866989091100466851">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="1866989091100466847">
              <link role="baseMethodDeclaration:3" targetNodeId="20.1866989091100461278" resolveInfo="isAvailable" />
              <link role="classConcept:3" targetNodeId="20.4972790448884483620" resolveInfo="StateUtil" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1866989091100466848">
                <link role="variableDeclaration:3" targetNodeId="1560298786499492820" resolveInfo="path" />
              </node>
            </node>
          </node>
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1560298786499492860">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1560298786499492861">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceMethodCall:3" id="1200564340082201727">
                <link role="baseMethodDeclaration:3" targetNodeId="2.~JComponent.setForeground(java.awt.Color):void" resolveInfo="setForeground" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="1560298786499492865">
                  <link role="classifier:3" targetNodeId="1.~Color" />
                  <link role="variableDeclaration:3" targetNodeId="1.~Color.RED" resolveInfo="RED" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1560298786499492866">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499492867">
            <link role="variableDeclaration:3" targetNodeId="1560298786499492826" resolveInfo="result" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="1560298786499492868">
    <property name="name:3" value="ModelRenderer" />
    <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1560298786499492869" />
    <node role="superclass:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499492870">
      <link role="classifier:3" targetNodeId="1560298786499492721" resolveInfo="ProjectLevelRenderer" />
    </node>
    <node role="constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="1560298786499492871">
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1560298786499492872" />
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499492873">
        <property name="name:3" value="moduleScope" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499492874">
          <link role="classifier:3" targetNodeId="10.~IScope" />
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499492875">
        <property name="name:3" value="projectScope" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499492876">
          <link role="classifier:3" targetNodeId="10.~IScope" />
        </node>
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1560298786499492877">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation:3" id="1560298786499492878">
          <link role="baseMethodDeclaration:3" targetNodeId="1560298786499492730" resolveInfo="ProjectLevelRenderer" />
          <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499492879">
            <link role="variableDeclaration:3" targetNodeId="1560298786499492873" resolveInfo="moduleScope" />
          </node>
          <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499492880">
            <link role="variableDeclaration:3" targetNodeId="1560298786499492875" resolveInfo="projectScope" />
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1560298786499492881">
      <property name="name:3" value="getItemLabel" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1560298786499492882" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499492883">
        <link role="classifier:3" targetNodeId="2v.~String" />
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499492884">
        <property name="name:3" value="value" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499492885">
          <link role="classifier:3" targetNodeId="2v.~Object" />
        </node>
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1560298786499492886">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1560298786499492887">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1560298786499492888">
            <property name="name:3" value="modelReference" />
            <property name="isFinal:3" value="true" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499492889">
              <link role="classifier:3" targetNodeId="10.~SModelReference" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.CastExpression:3" id="1560298786499492890">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499492891">
                <link role="variableDeclaration:3" targetNodeId="1560298786499492884" resolveInfo="value" />
              </node>
              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499492892">
                <link role="classifier:3" targetNodeId="10.~SModelReference" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1560298786499492893">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1560298786499492894">
            <property name="name:3" value="model" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499492895">
              <link role="classifier:3" targetNodeId="10.~SModelDescriptor" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499492896">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="1560298786499492897">
                <link role="classConcept:3" targetNodeId="10.~SModelRepository" />
                <link role="baseMethodDeclaration:3" targetNodeId="10.~SModelRepository.getInstance():jetbrains.mps.smodel.SModelRepository" />
              </node>
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499492898">
                <link role="baseMethodDeclaration:3" targetNodeId="10.~SModelRepository.getModelDescriptor(jetbrains.mps.smodel.SModelReference):jetbrains.mps.smodel.SModelDescriptor" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499492899">
                  <link role="variableDeclaration:3" targetNodeId="1560298786499492888" resolveInfo="modelReference" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1560298786499492900">
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="1560298786499492901">
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499492902">
              <link role="variableDeclaration:3" targetNodeId="1560298786499492894" resolveInfo="model" />
            </node>
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="1560298786499492903" />
          </node>
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1560298786499492904">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1560298786499492905">
              <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1560298786499492906">
                <property name="name:3" value="longName" />
                <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499492907">
                  <link role="classifier:3" targetNodeId="2v.~String" />
                </node>
                <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499492908">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499492909">
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499492910">
                      <link role="variableDeclaration:3" targetNodeId="1560298786499492888" resolveInfo="modelReference" />
                    </node>
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499492911">
                      <link role="baseMethodDeclaration:3" targetNodeId="10.~SModelReference.getSModelFqName():jetbrains.mps.smodel.SModelFqName" />
                    </node>
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499492912">
                    <link role="baseMethodDeclaration:3" targetNodeId="10.~SModelFqName.toString():java.lang.String" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1560298786499492913">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression:3" id="1560298786499492914">
                <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499492915">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499492916">
                    <link role="variableDeclaration:3" targetNodeId="1560298786499492906" resolveInfo="longName" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499492917">
                    <link role="baseMethodDeclaration:3" targetNodeId="2v.~String.equals(java.lang.Object):boolean" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="1560298786499492918">
                      <property name="value:3" value="" />
                    </node>
                  </node>
                </node>
                <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="1560298786499492919">
                  <property name="value:3" value="&lt;no name&gt;" />
                </node>
                <node role="ifFalse:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499492920">
                  <link role="variableDeclaration:3" targetNodeId="1560298786499492906" resolveInfo="longName" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1560298786499492921">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499492922">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499492923">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499492924">
                <link role="variableDeclaration:3" targetNodeId="1560298786499492888" resolveInfo="modelReference" />
              </node>
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499492925">
                <link role="baseMethodDeclaration:3" targetNodeId="10.~SModelReference.getSModelFqName():jetbrains.mps.smodel.SModelFqName" />
              </node>
            </node>
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499492926">
              <link role="baseMethodDeclaration:3" targetNodeId="10.~SModelFqName.toString():java.lang.String" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1560298786499492927">
      <property name="name:3" value="getListCellRendererComponent" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1560298786499492928" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499492929">
        <link role="classifier:3" targetNodeId="1.~Component" />
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499492930">
        <property name="name:3" value="list" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499492931">
          <link role="classifier:3" targetNodeId="2.~JList" />
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499492932">
        <property name="name:3" value="value" />
        <property name="isFinal:3" value="true" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499492933">
          <link role="classifier:3" targetNodeId="2v.~Object" />
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499492934">
        <property name="name:3" value="index" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="1560298786499492935" />
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499492936">
        <property name="name:3" value="isSelected" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="1560298786499492937" />
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499492938">
        <property name="name:3" value="cellHasFocus" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="1560298786499492939" />
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1560298786499492940">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1560298786499492941">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1560298786499492942">
            <property name="name:3" value="result" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499492943">
              <link role="classifier:3" targetNodeId="1.~Component" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.SuperMethodCall:3" id="1560298786499492944">
              <link role="baseMethodDeclaration:3" targetNodeId="2.~DefaultListCellRenderer.getListCellRendererComponent(javax.swing.JList,java.lang.Object,int,boolean,boolean):java.awt.Component" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499492945">
                <link role="variableDeclaration:3" targetNodeId="1560298786499492930" resolveInfo="list" />
              </node>
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499492946">
                <link role="variableDeclaration:3" targetNodeId="1560298786499492932" resolveInfo="value" />
              </node>
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499492947">
                <link role="variableDeclaration:3" targetNodeId="1560298786499492934" resolveInfo="index" />
              </node>
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499492948">
                <link role="variableDeclaration:3" targetNodeId="1560298786499492936" resolveInfo="isSelected" />
              </node>
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499492949">
                <link role="variableDeclaration:3" targetNodeId="1560298786499492938" resolveInfo="cellHasFocus" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1560298786499492950">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1560298786499492951">
            <property name="name:3" value="modelReference" />
            <property name="isFinal:3" value="true" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499492952">
              <link role="classifier:3" targetNodeId="10.~SModelReference" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.CastExpression:3" id="1560298786499492953">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499492954">
                <link role="variableDeclaration:3" targetNodeId="1560298786499492932" resolveInfo="value" />
              </node>
              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499492955">
                <link role="classifier:3" targetNodeId="10.~SModelReference" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1560298786499492956">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceMethodCall:3" id="1200564340082201875">
            <link role="baseMethodDeclaration:3" targetNodeId="2.~JLabel.setText(java.lang.String):void" resolveInfo="setText" />
            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceMethodCall:3" id="1200564340082201596">
              <link role="baseMethodDeclaration:3" targetNodeId="1560298786499492881" resolveInfo="getItemLabel" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499492963">
                <link role="variableDeclaration:3" targetNodeId="1560298786499492932" resolveInfo="value" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="7189497640396694854">
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7189497640396694855">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="7189497640396694861">
              <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7189497640396694862">
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7189497640396694879">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceMethodCall:3" id="1200564340082201828">
                    <link role="baseMethodDeclaration:3" targetNodeId="2.~JComponent.setForeground(java.awt.Color):void" resolveInfo="setForeground" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="7189497640396694883">
                      <link role="classifier:3" targetNodeId="1.~Color" resolveInfo="Color" />
                      <link role="variableDeclaration:3" targetNodeId="1.~Color.RED" resolveInfo="RED" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.NotExpression:3" id="7189497640396694893">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="7189497640396694877">
                  <link role="baseMethodDeclaration:3" targetNodeId="20.4972790448884504763" resolveInfo="isAvailable" />
                  <link role="classConcept:3" targetNodeId="20.4972790448884483620" resolveInfo="StateUtil" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7189497640396694878">
                    <link role="variableDeclaration:3" targetNodeId="1560298786499492951" resolveInfo="modelReference" />
                  </node>
                </node>
              </node>
              <node role="elsifClauses:3" type="jetbrains.mps.baseLanguage.structure.ElsifClause:3" id="7189497640396694865">
                <node role="statementList:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7189497640396694867">
                  <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7189497640396694884">
                    <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceMethodCall:3" id="1200564340082201568">
                      <link role="baseMethodDeclaration:3" targetNodeId="2.~JComponent.setForeground(java.awt.Color):void" resolveInfo="setForeground" />
                      <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7189497640396694888">
                        <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7189497640396694889">
                          <link role="baseMethodDeclaration:3" targetNodeId="1.~Color.&lt;init&gt;(int,int,int)" resolveInfo="Color" />
                          <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="7189497640396694890">
                            <property name="value:3" value="128" />
                          </node>
                          <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="7189497640396694891">
                            <property name="value:3" value="0" />
                          </node>
                          <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="7189497640396694892">
                            <property name="value:3" value="128" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.NotExpression:3" id="7189497640396694895">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="7189497640396694870">
                    <link role="classConcept:3" targetNodeId="20.4972790448884483620" resolveInfo="StateUtil" />
                    <link role="baseMethodDeclaration:3" targetNodeId="20.7189497640396633133" resolveInfo="isInScope" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceMethodCall:3" id="1200564340082201612">
                      <link role="baseMethodDeclaration:3" targetNodeId="1560298786499492758" resolveInfo="getModuleScope" />
                    </node>
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7189497640396694875">
                      <link role="variableDeclaration:3" targetNodeId="1560298786499492951" resolveInfo="modelReference" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.NotExpression:3" id="7189497640396694858">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7189497640396694860">
              <link role="variableDeclaration:3" targetNodeId="1560298786499492936" resolveInfo="isSelected" />
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1560298786499493028">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499493029">
            <link role="variableDeclaration:3" targetNodeId="1560298786499492942" resolveInfo="result" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="1560298786499493036">
    <property name="name:3" value="ManagerRenderer" />
    <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1560298786499493037" />
    <node role="superclass:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499493038">
      <link role="classifier:3" targetNodeId="2.~DefaultListCellRenderer" />
    </node>
    <node role="constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="1560298786499493039">
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1560298786499493040" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1560298786499493041" />
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1560298786499493042">
      <property name="name:3" value="getListCellRendererComponent" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1560298786499493043" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499493044">
        <link role="classifier:3" targetNodeId="1.~Component" />
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499493045">
        <property name="name:3" value="list" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499493046">
          <link role="classifier:3" targetNodeId="2.~JList" />
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499493047">
        <property name="name:3" value="value" />
        <property name="isFinal:3" value="true" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499493048">
          <link role="classifier:3" targetNodeId="2v.~Object" />
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499493049">
        <property name="name:3" value="index" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="1560298786499493050" />
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499493051">
        <property name="name:3" value="isSelected" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="1560298786499493052" />
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499493053">
        <property name="name:3" value="cellHasFocus" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="1560298786499493054" />
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1560298786499493055">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1560298786499493056">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1560298786499493057">
            <property name="name:3" value="manager" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499493058">
              <link role="classifier:3" targetNodeId="13.~ModelRootManager" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.CastExpression:3" id="1560298786499493059">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499493060">
                <link role="variableDeclaration:3" targetNodeId="1560298786499493047" resolveInfo="value" />
              </node>
              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499493061">
                <link role="classifier:3" targetNodeId="13.~ModelRootManager" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1560298786499493062">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1560298786499493063">
            <property name="name:3" value="representation" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499493064">
              <link role="classifier:3" targetNodeId="2v.~String" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression:3" id="1560298786499493065">
              <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="1560298786499493066">
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499493067">
                  <link role="variableDeclaration:3" targetNodeId="1560298786499493057" resolveInfo="manager" />
                </node>
                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="1560298786499493068" />
              </node>
              <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="1560298786499493069">
                <property name="value:3" value="" />
              </node>
              <node role="ifFalse:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="1560298786499493070">
                <link role="classConcept:3" targetNodeId="14.~NameUtil" />
                <link role="baseMethodDeclaration:3" targetNodeId="14.~NameUtil.shortNameFromLongName(java.lang.String):java.lang.String" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499493071">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499493072">
                    <link role="variableDeclaration:3" targetNodeId="1560298786499493057" resolveInfo="manager" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499493073">
                    <link role="baseMethodDeclaration:3" targetNodeId="13.~ModelRootManager.getClassName():java.lang.String" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1560298786499493074">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.SuperMethodCall:3" id="1560298786499493075">
            <link role="baseMethodDeclaration:3" targetNodeId="2.~DefaultListCellRenderer.getListCellRendererComponent(javax.swing.JList,java.lang.Object,int,boolean,boolean):java.awt.Component" />
            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499493076">
              <link role="variableDeclaration:3" targetNodeId="1560298786499493045" resolveInfo="list" />
            </node>
            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="6848311924529879215">
              <link role="variableDeclaration:3" targetNodeId="1560298786499493063" resolveInfo="representation" />
            </node>
            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499493078">
              <link role="variableDeclaration:3" targetNodeId="1560298786499493049" resolveInfo="index" />
            </node>
            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499493079">
              <link role="variableDeclaration:3" targetNodeId="1560298786499493051" resolveInfo="isSelected" />
            </node>
            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499493080">
              <link role="variableDeclaration:3" targetNodeId="1560298786499493053" resolveInfo="cellHasFocus" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="1560298786499493268">
    <property name="name:3" value="ModuleImportRenderer" />
    <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1560298786499493269" />
    <node role="superclass:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499493270">
      <link role="classifier:3" targetNodeId="1560298786499494573" resolveInfo="ModuleRenderer" />
    </node>
    <node role="constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="1560298786499493271">
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1560298786499493272" />
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499493273">
        <property name="name:3" value="moduleScope" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499493274">
          <link role="classifier:3" targetNodeId="10.~IScope" />
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499493275">
        <property name="name:3" value="projectScope" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499493276">
          <link role="classifier:3" targetNodeId="10.~IScope" />
        </node>
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1560298786499493277">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation:3" id="1560298786499493278">
          <link role="baseMethodDeclaration:3" targetNodeId="1560298786499494576" resolveInfo="ModuleRenderer" />
          <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499493279">
            <link role="variableDeclaration:3" targetNodeId="1560298786499493273" resolveInfo="moduleScope" />
          </node>
          <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499493280">
            <link role="variableDeclaration:3" targetNodeId="1560298786499493275" resolveInfo="projectScope" />
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1560298786499493281">
      <property name="name:3" value="getListCellRendererComponent" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1560298786499493282" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499493283">
        <link role="classifier:3" targetNodeId="1.~Component" />
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499493284">
        <property name="name:3" value="list" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499493285">
          <link role="classifier:3" targetNodeId="2.~JList" />
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499493286">
        <property name="name:3" value="value" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499493287">
          <link role="classifier:3" targetNodeId="2v.~Object" />
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499493288">
        <property name="name:3" value="index" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="1560298786499493289" />
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499493290">
        <property name="name:3" value="isSelected" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="1560298786499493291" />
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499493292">
        <property name="name:3" value="cellHasFocus" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="1560298786499493293" />
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1560298786499493294">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1560298786499493295">
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="1560298786499493296">
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499493297">
              <link role="variableDeclaration:3" targetNodeId="1560298786499493286" resolveInfo="value" />
            </node>
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="1560298786499493298" />
          </node>
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1560298786499493299">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1560298786499493300">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499493301">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1560298786499493302">
                  <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="1560298786499493303">
                    <link role="baseMethodDeclaration:3" targetNodeId="2.~DefaultListCellRenderer.&lt;init&gt;()" />
                  </node>
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499493304">
                  <link role="baseMethodDeclaration:3" targetNodeId="2.~DefaultListCellRenderer.getListCellRendererComponent(javax.swing.JList,java.lang.Object,int,boolean,boolean):java.awt.Component" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499493305">
                    <link role="variableDeclaration:3" targetNodeId="1560298786499493284" resolveInfo="list" />
                  </node>
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="1560298786499493306">
                    <property name="value:3" value="&lt;no module&gt;" />
                  </node>
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499493307">
                    <link role="variableDeclaration:3" targetNodeId="1560298786499493288" resolveInfo="index" />
                  </node>
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499493308">
                    <link role="variableDeclaration:3" targetNodeId="1560298786499493290" resolveInfo="isSelected" />
                  </node>
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499493309">
                    <link role="variableDeclaration:3" targetNodeId="1560298786499493292" resolveInfo="cellHasFocus" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1560298786499493310">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.SuperMethodCall:3" id="1560298786499493311">
            <link role="baseMethodDeclaration:3" targetNodeId="1560298786499494642" resolveInfo="getListCellRendererComponent" />
            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499493312">
              <link role="variableDeclaration:3" targetNodeId="1560298786499493284" resolveInfo="list" />
            </node>
            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499493313">
              <link role="variableDeclaration:3" targetNodeId="1560298786499493286" resolveInfo="value" />
            </node>
            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499493314">
              <link role="variableDeclaration:3" targetNodeId="1560298786499493288" resolveInfo="index" />
            </node>
            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499493315">
              <link role="variableDeclaration:3" targetNodeId="1560298786499493290" resolveInfo="isSelected" />
            </node>
            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499493316">
              <link role="variableDeclaration:3" targetNodeId="1560298786499493292" resolveInfo="cellHasFocus" />
            </node>
          </node>
        </node>
      </node>
      <node role="annotation:3" type="jetbrains.mps.baseLanguage.structure.AnnotationInstance:3" id="1560298786499493317">
        <link role="annotation:3" targetNodeId="2v.~Override" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="1560298786499494305">
    <property name="name:3" value="ListRendererAdapter" />
    <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1560298786499494306" />
    <node role="implementedInterface:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499494307">
      <link role="classifier:3" targetNodeId="4.~TableCellRenderer" />
    </node>
    <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="1560298786499494308">
      <property name="name:3" value="myCellRenderer" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499494309">
        <link role="classifier:3" targetNodeId="2.~ListCellRenderer" />
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="1560298786499494310" />
    </node>
    <node role="constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="1560298786499494311">
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1560298786499494312" />
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499494313">
        <property name="name:3" value="cellRenderer" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499494314">
          <link role="classifier:3" targetNodeId="2.~ListCellRenderer" />
        </node>
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1560298786499494315">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1560298786499494316">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="1560298786499494317">
            <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="8692480643148205164">
              <link role="variableDeclaration:3" targetNodeId="1560298786499494308" resolveInfo="myCellRenderer" />
            </node>
            <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499494321">
              <link role="variableDeclaration:3" targetNodeId="1560298786499494313" resolveInfo="cellRenderer" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1560298786499494322">
      <property name="name:3" value="getTableCellRendererComponent" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1560298786499494323" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499494324">
        <link role="classifier:3" targetNodeId="1.~Component" />
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499494325">
        <property name="name:3" value="table" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499494326">
          <link role="classifier:3" targetNodeId="2.~JTable" />
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499494327">
        <property name="name:3" value="value" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499494328">
          <link role="classifier:3" targetNodeId="2v.~Object" />
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499494329">
        <property name="name:3" value="isSelected" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="1560298786499494330" />
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499494331">
        <property name="name:3" value="hasFocus" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="1560298786499494332" />
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499494333">
        <property name="name:3" value="row" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="1560298786499494334" />
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499494335">
        <property name="name:3" value="column" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="1560298786499494336" />
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1560298786499494337">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1560298786499494338">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499494339">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="8692480643148205020">
              <link role="variableDeclaration:3" targetNodeId="1560298786499494308" resolveInfo="myCellRenderer" />
            </node>
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499494343">
              <link role="baseMethodDeclaration:3" targetNodeId="2.~ListCellRenderer.getListCellRendererComponent(javax.swing.JList,java.lang.Object,int,boolean,boolean):java.awt.Component" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1560298786499494344">
                <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="1560298786499494345">
                  <link role="baseMethodDeclaration:3" targetNodeId="2.~JList.&lt;init&gt;()" />
                </node>
              </node>
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499494346">
                <link role="variableDeclaration:3" targetNodeId="1560298786499494327" resolveInfo="value" />
              </node>
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499494347">
                <link role="variableDeclaration:3" targetNodeId="1560298786499494333" resolveInfo="row" />
              </node>
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499494348">
                <link role="variableDeclaration:3" targetNodeId="1560298786499494329" resolveInfo="isSelected" />
              </node>
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499494349">
                <link role="variableDeclaration:3" targetNodeId="1560298786499494331" resolveInfo="hasFocus" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="1560298786499494573">
    <property name="name:3" value="ModuleRenderer" />
    <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1560298786499494574" />
    <node role="superclass:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499494575">
      <link role="classifier:3" targetNodeId="1560298786499492721" resolveInfo="ProjectLevelRenderer" />
    </node>
    <node role="constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="1560298786499494576">
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1560298786499494577" />
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499494578">
        <property name="name:3" value="moduleScope" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499494579">
          <link role="classifier:3" targetNodeId="10.~IScope" />
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499494580">
        <property name="name:3" value="projectScope" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499494581">
          <link role="classifier:3" targetNodeId="10.~IScope" />
        </node>
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1560298786499494582">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation:3" id="1560298786499494583">
          <link role="baseMethodDeclaration:3" targetNodeId="1560298786499492730" resolveInfo="ProjectLevelRenderer" />
          <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499494584">
            <link role="variableDeclaration:3" targetNodeId="1560298786499494578" resolveInfo="moduleScope" />
          </node>
          <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499494585">
            <link role="variableDeclaration:3" targetNodeId="1560298786499494580" resolveInfo="projectScope" />
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1560298786499494586">
      <property name="name:3" value="getItemLabel" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1560298786499494587" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499494588">
        <link role="classifier:3" targetNodeId="2v.~String" />
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499494589">
        <property name="name:3" value="value" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499494590">
          <link role="classifier:3" targetNodeId="2v.~Object" />
        </node>
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1560298786499494591">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1560298786499494592">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1560298786499494593">
            <property name="name:3" value="moduleReference" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499494594">
              <link role="classifier:3" targetNodeId="15.~ModuleReference" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.CastExpression:3" id="1560298786499494595">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499494596">
                <link role="variableDeclaration:3" targetNodeId="1560298786499494589" resolveInfo="value" />
              </node>
              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499494597">
                <link role="classifier:3" targetNodeId="15.~ModuleReference" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1560298786499494598">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1560298786499494599">
            <property name="name:3" value="module" />
            <property name="isFinal:3" value="true" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499494600">
              <link role="classifier:3" targetNodeId="7.~IModule" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499494601">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="1560298786499494602">
                <link role="classConcept:3" targetNodeId="10.~MPSModuleRepository" />
                <link role="baseMethodDeclaration:3" targetNodeId="10.~MPSModuleRepository.getInstance():jetbrains.mps.smodel.MPSModuleRepository" />
              </node>
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499494603">
                <link role="baseMethodDeclaration:3" targetNodeId="10.~MPSModuleRepository.getModule(jetbrains.mps.project.structure.modules.ModuleReference):jetbrains.mps.project.IModule" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499494604">
                  <link role="variableDeclaration:3" targetNodeId="1560298786499494593" resolveInfo="moduleReference" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1560298786499494605">
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="1560298786499494606">
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499494607">
              <link role="variableDeclaration:3" targetNodeId="1560298786499494599" resolveInfo="module" />
            </node>
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="1560298786499494608" />
          </node>
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1560298786499494609">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1560298786499494610">
              <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1560298786499494611">
                <property name="name:3" value="moduleName" />
                <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499494612">
                  <link role="classifier:3" targetNodeId="2v.~String" />
                </node>
                <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499494613">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499494614">
                    <link role="variableDeclaration:3" targetNodeId="1560298786499494593" resolveInfo="moduleReference" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499494615">
                    <link role="baseMethodDeclaration:3" targetNodeId="15.~ModuleReference.getModuleFqName():java.lang.String" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1560298786499494616">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression:3" id="1560298786499494617">
                <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499494618">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499494619">
                    <link role="variableDeclaration:3" targetNodeId="1560298786499494611" resolveInfo="moduleName" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499494620">
                    <link role="baseMethodDeclaration:3" targetNodeId="2v.~String.equals(java.lang.Object):boolean" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="1560298786499494621">
                      <property name="value:3" value="" />
                    </node>
                  </node>
                </node>
                <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="1560298786499494622">
                  <property name="value:3" value="&lt;no name&gt;" />
                </node>
                <node role="ifFalse:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499494623">
                  <link role="variableDeclaration:3" targetNodeId="1560298786499494611" resolveInfo="moduleName" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1560298786499494624">
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.InstanceOfExpression:3" id="1560298786499494625">
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499494626">
              <link role="variableDeclaration:3" targetNodeId="1560298786499494599" resolveInfo="module" />
            </node>
            <node role="classType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499494627">
              <link role="classifier:3" targetNodeId="10.~Generator" />
            </node>
          </node>
          <node role="ifFalseStatement:3" type="jetbrains.mps.baseLanguage.structure.BlockStatement:3" id="1560298786499494628">
            <node role="statements:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1560298786499494629">
              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1560298786499494630">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499494631">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499494632">
                    <link role="variableDeclaration:3" targetNodeId="1560298786499494593" resolveInfo="moduleReference" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499494633">
                    <link role="baseMethodDeclaration:3" targetNodeId="15.~ModuleReference.getModuleFqName():java.lang.String" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1560298786499494634">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1560298786499494635">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499494636">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression:3" id="1560298786499494637">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.CastExpression:3" id="1560298786499494638">
                    <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499494639">
                      <link role="variableDeclaration:3" targetNodeId="1560298786499494599" resolveInfo="module" />
                    </node>
                    <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499494640">
                      <link role="classifier:3" targetNodeId="10.~Generator" />
                    </node>
                  </node>
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499494641">
                  <link role="baseMethodDeclaration:3" targetNodeId="10.~Generator.getAlias():java.lang.String" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1560298786499494642">
      <property name="name:3" value="getListCellRendererComponent" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1560298786499494643" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499494644">
        <link role="classifier:3" targetNodeId="1.~Component" />
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499494645">
        <property name="name:3" value="list" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499494646">
          <link role="classifier:3" targetNodeId="2.~JList" />
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499494647">
        <property name="name:3" value="value" />
        <property name="isFinal:3" value="true" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499494648">
          <link role="classifier:3" targetNodeId="2v.~Object" />
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499494649">
        <property name="name:3" value="index" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="1560298786499494650" />
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499494651">
        <property name="name:3" value="isSelected" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="1560298786499494652" />
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499494653">
        <property name="name:3" value="cellHasFocus" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="1560298786499494654" />
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1560298786499494655">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1560298786499494656">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1560298786499494657">
            <property name="name:3" value="moduleReference" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499494658">
              <link role="classifier:3" targetNodeId="15.~ModuleReference" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.CastExpression:3" id="1560298786499494659">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499494660">
                <link role="variableDeclaration:3" targetNodeId="1560298786499494647" resolveInfo="value" />
              </node>
              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499494661">
                <link role="classifier:3" targetNodeId="15.~ModuleReference" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1560298786499494662">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1560298786499494663">
            <property name="name:3" value="result" />
            <property name="isFinal:3" value="true" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499494664">
              <link role="classifier:3" targetNodeId="1.~Component" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.SuperMethodCall:3" id="1560298786499494665">
              <link role="baseMethodDeclaration:3" targetNodeId="2.~DefaultListCellRenderer.getListCellRendererComponent(javax.swing.JList,java.lang.Object,int,boolean,boolean):java.awt.Component" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499494666">
                <link role="variableDeclaration:3" targetNodeId="1560298786499494645" resolveInfo="list" />
              </node>
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499494667">
                <link role="variableDeclaration:3" targetNodeId="1560298786499494647" resolveInfo="value" />
              </node>
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499494668">
                <link role="variableDeclaration:3" targetNodeId="1560298786499494649" resolveInfo="index" />
              </node>
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499494669">
                <link role="variableDeclaration:3" targetNodeId="1560298786499494651" resolveInfo="isSelected" />
              </node>
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499494670">
                <link role="variableDeclaration:3" targetNodeId="1560298786499494653" resolveInfo="cellHasFocus" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1560298786499494671">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceMethodCall:3" id="1200564340082201772">
            <link role="baseMethodDeclaration:3" targetNodeId="2.~JLabel.setText(java.lang.String):void" resolveInfo="setText" />
            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceMethodCall:3" id="1200564340082201726">
              <link role="baseMethodDeclaration:3" targetNodeId="1560298786499494586" resolveInfo="getItemLabel" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499494678">
                <link role="variableDeclaration:3" targetNodeId="1560298786499494647" resolveInfo="value" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1560298786499494679">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1560298786499494680">
            <property name="name:3" value="module" />
            <property name="isFinal:3" value="true" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499494681">
              <link role="classifier:3" targetNodeId="7.~IModule" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499494682">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="1560298786499494683">
                <link role="classConcept:3" targetNodeId="10.~MPSModuleRepository" />
                <link role="baseMethodDeclaration:3" targetNodeId="10.~MPSModuleRepository.getInstance():jetbrains.mps.smodel.MPSModuleRepository" />
              </node>
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499494684">
                <link role="baseMethodDeclaration:3" targetNodeId="10.~MPSModuleRepository.getModule(jetbrains.mps.project.structure.modules.ModuleReference):jetbrains.mps.project.IModule" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499494685">
                  <link role="variableDeclaration:3" targetNodeId="1560298786499494657" resolveInfo="moduleReference" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1560298786499494686">
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="1560298786499494687">
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499494688">
              <link role="variableDeclaration:3" targetNodeId="1560298786499494680" resolveInfo="module" />
            </node>
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="1560298786499494689" />
          </node>
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1560298786499494690">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1560298786499494691">
              <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.NotExpression:3" id="1560298786499494692">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499494693">
                  <link role="variableDeclaration:3" targetNodeId="1560298786499494651" resolveInfo="isSelected" />
                </node>
              </node>
              <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1560298786499494694">
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1560298786499494695">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceMethodCall:3" id="1200564340082201694">
                    <link role="baseMethodDeclaration:3" targetNodeId="2.~JComponent.setForeground(java.awt.Color):void" resolveInfo="setForeground" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="1560298786499494699">
                      <link role="classifier:3" targetNodeId="1.~Color" />
                      <link role="variableDeclaration:3" targetNodeId="1.~Color.RED" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1560298786499494700">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499494701">
                <link role="variableDeclaration:3" targetNodeId="1560298786499494663" resolveInfo="result" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1560298786499494702">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499494703">
            <link role="variableDeclaration:3" targetNodeId="1560298786499494663" resolveInfo="result" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="1560298786499494750">
    <property name="name:3" value="RuleOperandRenderer" />
    <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1560298786499494751" />
    <node role="implementedInterface:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499494752">
      <link role="classifier:3" targetNodeId="4.~TableCellRenderer" />
    </node>
    <node role="constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="1560298786499494753">
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1560298786499494754" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1560298786499494755" />
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1560298786499494756">
      <property name="name:3" value="getTableCellRendererComponent" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1560298786499494757" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499494758">
        <link role="classifier:3" targetNodeId="1.~Component" />
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499494759">
        <property name="name:3" value="table" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499494760">
          <link role="classifier:3" targetNodeId="2.~JTable" />
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499494761">
        <property name="name:3" value="value" />
        <property name="isFinal:3" value="true" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499494762">
          <link role="classifier:3" targetNodeId="2v.~Object" />
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499494763">
        <property name="name:3" value="isSelected" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="1560298786499494764" />
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499494765">
        <property name="name:3" value="hasFocus" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="1560298786499494766" />
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499494767">
        <property name="name:3" value="row" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="1560298786499494768" />
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499494769">
        <property name="name:3" value="column" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="1560298786499494770" />
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1560298786499494771">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1560298786499494772">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1560298786499494773">
            <property name="name:3" value="incomplete" />
            <property name="isFinal:3" value="true" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ArrayType:3" id="1560298786499494774">
              <node role="componentType:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="1560298786499494775" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1560298786499494776">
              <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ArrayCreatorWithInitializer:3" id="1560298786499494777">
                <node role="initValue:3" type="jetbrains.mps.baseLanguage.structure.BooleanConstant:3" id="1560298786499494778" />
                <node role="componentType:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="1560298786499494779" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1560298786499494780">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1560298786499494781">
            <property name="name:3" value="tree" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499494782">
              <link role="classifier:3" targetNodeId="16.~MPSTree" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1560298786499494783">
              <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator:3" id="1560298786499494784">
                <node role="cls:3" type="jetbrains.mps.baseLanguage.structure.AnonymousClass:3" id="1560298786499494785">
                  <property name="name:3" value="" />
                  <link role="classifier:3" targetNodeId="16.~MPSTree" resolveInfo="MPSTree" />
                  <link role="baseMethodDeclaration:3" targetNodeId="16.~MPSTree.&lt;init&gt;()" />
                  <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1560298786499494786">
                    <property name="name:3" value="rebuild" />
                    <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.ProtectedVisibility:3" id="1560298786499494787" />
                    <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499494788">
                      <link role="classifier:3" targetNodeId="16.~MPSTreeNode" />
                    </node>
                    <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1560298786499495183">
                      <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1560298786499495184">
                        <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1560298786499495185">
                          <property name="name:3" value="root" />
                          <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499495186">
                            <link role="classifier:3" targetNodeId="16.~TextMPSTreeNode" />
                          </node>
                          <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1560298786499495187">
                            <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="1560298786499495188">
                              <link role="baseMethodDeclaration:3" targetNodeId="16.~TextMPSTreeNode.&lt;init&gt;(java.lang.String,jetbrains.mps.smodel.IOperationContext)" />
                              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="1560298786499495189">
                                <property name="value:3" value="" />
                              </node>
                              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="1560298786499495190" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1560298786499495191">
                        <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="1560298786499495192">
                          <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression:3" id="1560298786499495193">
                            <node role="array:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499495194">
                              <link role="variableDeclaration:3" targetNodeId="1560298786499494773" resolveInfo="incomplete" />
                            </node>
                            <node role="index:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1560298786499495195">
                              <property name="value:3" value="0" />
                            </node>
                          </node>
                          <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.NotExpression:3" id="1560298786499495196">
                            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499495197">
                              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="1560298786499495198">
                                <link role="classConcept:3" targetNodeId="1560298786499494750" resolveInfo="RuleOperandRenderer" />
                              </node>
                              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499495199">
                                <link role="baseMethodDeclaration:3" targetNodeId="1560298786499494904" resolveInfo="add" />
                                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499495200">
                                  <link role="variableDeclaration:3" targetNodeId="1560298786499495185" resolveInfo="root" />
                                </node>
                                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.CastExpression:3" id="1560298786499495201">
                                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499495202">
                                    <link role="variableDeclaration:3" targetNodeId="1560298786499494761" resolveInfo="value" />
                                  </node>
                                  <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499495203">
                                    <link role="classifier:3" targetNodeId="5.~MappingConfig_AbstractRef" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1560298786499495204">
                        <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499495205">
                          <link role="variableDeclaration:3" targetNodeId="1560298786499495185" resolveInfo="root" />
                        </node>
                      </node>
                    </node>
                    <node role="annotation:3" type="jetbrains.mps.baseLanguage.structure.AnnotationInstance:3" id="1560298786499495206">
                      <link role="annotation:3" targetNodeId="2v.~Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1560298786499494789">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499494790">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499494791">
              <link role="variableDeclaration:3" targetNodeId="1560298786499494781" resolveInfo="tree" />
            </node>
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499494792">
              <link role="baseMethodDeclaration:3" targetNodeId="2.~JTree.setRootVisible(boolean):void" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.BooleanConstant:3" id="1560298786499494793" />
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1560298786499494794">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499494795">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499494796">
              <link role="variableDeclaration:3" targetNodeId="1560298786499494781" resolveInfo="tree" />
            </node>
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499494797">
              <link role="baseMethodDeclaration:3" targetNodeId="16.~MPSTree.rebuildNow():void" />
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1560298786499494798">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499494799">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499494800">
              <link role="variableDeclaration:3" targetNodeId="1560298786499494781" resolveInfo="tree" />
            </node>
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499494801">
              <link role="baseMethodDeclaration:3" targetNodeId="16.~MPSTree.expandAll():void" />
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1560298786499494802">
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.AndExpression:3" id="1560298786499494803">
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499494804">
              <link role="variableDeclaration:3" targetNodeId="1560298786499494763" resolveInfo="isSelected" />
            </node>
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NotExpression:3" id="1560298786499494805">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499494806">
                <link role="variableDeclaration:3" targetNodeId="1560298786499494765" resolveInfo="hasFocus" />
              </node>
            </node>
          </node>
          <node role="ifFalseStatement:3" type="jetbrains.mps.baseLanguage.structure.BlockStatement:3" id="1560298786499494807">
            <node role="statements:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1560298786499494808">
              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1560298786499494809">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499494810">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499494811">
                    <link role="variableDeclaration:3" targetNodeId="1560298786499494781" resolveInfo="tree" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499494812">
                    <link role="baseMethodDeclaration:3" targetNodeId="2.~JComponent.setBackground(java.awt.Color):void" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression:3" id="1560298786499494813">
                      <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression:3" id="1560298786499494814">
                        <node role="array:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499494815">
                          <link role="variableDeclaration:3" targetNodeId="1560298786499494773" resolveInfo="incomplete" />
                        </node>
                        <node role="index:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1560298786499494816">
                          <property name="value:3" value="0" />
                        </node>
                      </node>
                      <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="1560298786499494817">
                        <link role="classifier:3" targetNodeId="1.~Color" />
                        <link role="variableDeclaration:3" targetNodeId="1.~Color.PINK" />
                      </node>
                      <node role="ifFalse:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499494818">
                        <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499494819">
                          <link role="variableDeclaration:3" targetNodeId="1560298786499494759" resolveInfo="table" />
                        </node>
                        <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499494820">
                          <link role="baseMethodDeclaration:3" targetNodeId="1.~Component.getBackground():java.awt.Color" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1560298786499494821">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499494822">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499494823">
                    <link role="variableDeclaration:3" targetNodeId="1560298786499494781" resolveInfo="tree" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499494824">
                    <link role="baseMethodDeclaration:3" targetNodeId="2.~JComponent.setForeground(java.awt.Color):void" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499494825">
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499494826">
                        <link role="variableDeclaration:3" targetNodeId="1560298786499494759" resolveInfo="table" />
                      </node>
                      <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499494827">
                        <link role="baseMethodDeclaration:3" targetNodeId="1.~Component.getForeground():java.awt.Color" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1560298786499494828">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499494829">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499494830">
                    <link role="variableDeclaration:3" targetNodeId="1560298786499494781" resolveInfo="tree" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499494831">
                    <link role="baseMethodDeclaration:3" targetNodeId="2.~JTree.setCellRenderer(javax.swing.tree.TreeCellRenderer):void" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1560298786499494832">
                      <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator:3" id="1560298786499494833">
                        <node role="cls:3" type="jetbrains.mps.baseLanguage.structure.AnonymousClass:3" id="1560298786499494834">
                          <property name="name:3" value="" />
                          <link role="classifier:3" targetNodeId="17.~DefaultTreeCellRenderer" resolveInfo="DefaultTreeCellRenderer" />
                          <link role="baseMethodDeclaration:3" targetNodeId="17.~DefaultTreeCellRenderer.&lt;init&gt;()" />
                          <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1560298786499494835">
                            <property name="name:3" value="getTreeCellRendererComponent" />
                            <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1560298786499494836" />
                            <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499494837">
                              <link role="classifier:3" targetNodeId="1.~Component" />
                            </node>
                            <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499494838">
                              <property name="name:3" value="tree" />
                              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499494839">
                                <link role="classifier:3" targetNodeId="2.~JTree" />
                              </node>
                            </node>
                            <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499494840">
                              <property name="name:3" value="value" />
                              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499494841">
                                <link role="classifier:3" targetNodeId="2v.~Object" />
                              </node>
                            </node>
                            <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499494842">
                              <property name="name:3" value="selected" />
                              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="1560298786499494843" />
                            </node>
                            <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499494844">
                              <property name="name:3" value="expanded" />
                              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="1560298786499494845" />
                            </node>
                            <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499494846">
                              <property name="name:3" value="leaf" />
                              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="1560298786499494847" />
                            </node>
                            <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499494848">
                              <property name="name:3" value="row" />
                              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="1560298786499494849" />
                            </node>
                            <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499494850">
                              <property name="name:3" value="hasFocus" />
                              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="1560298786499494851" />
                            </node>
                            <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1560298786499495207">
                              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1560298786499495208">
                                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceMethodCall:3" id="1200564340082201812">
                                  <link role="baseMethodDeclaration:3" targetNodeId="17.~DefaultTreeCellRenderer.setBackgroundNonSelectionColor(java.awt.Color):void" resolveInfo="setBackgroundNonSelectionColor" />
                                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499495212">
                                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499495213">
                                      <link role="variableDeclaration:3" targetNodeId="1560298786499494838" resolveInfo="tree" />
                                    </node>
                                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499495214">
                                      <link role="baseMethodDeclaration:3" targetNodeId="1.~Component.getBackground():java.awt.Color" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1560298786499495215">
                                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.SuperMethodCall:3" id="1560298786499495216">
                                  <link role="baseMethodDeclaration:3" targetNodeId="17.~DefaultTreeCellRenderer.getTreeCellRendererComponent(javax.swing.JTree,java.lang.Object,boolean,boolean,boolean,int,boolean):java.awt.Component" />
                                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499495217">
                                    <link role="variableDeclaration:3" targetNodeId="1560298786499494838" resolveInfo="tree" />
                                  </node>
                                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499495218">
                                    <link role="variableDeclaration:3" targetNodeId="1560298786499494840" resolveInfo="value" />
                                  </node>
                                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499495219">
                                    <link role="variableDeclaration:3" targetNodeId="1560298786499494842" resolveInfo="selected" />
                                  </node>
                                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499495220">
                                    <link role="variableDeclaration:3" targetNodeId="1560298786499494844" resolveInfo="expanded" />
                                  </node>
                                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499495221">
                                    <link role="variableDeclaration:3" targetNodeId="1560298786499494846" resolveInfo="leaf" />
                                  </node>
                                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499495222">
                                    <link role="variableDeclaration:3" targetNodeId="1560298786499494848" resolveInfo="row" />
                                  </node>
                                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499495223">
                                    <link role="variableDeclaration:3" targetNodeId="1560298786499494850" resolveInfo="hasFocus" />
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
              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1560298786499494852">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499494853">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499494854">
                    <link role="variableDeclaration:3" targetNodeId="1560298786499494781" resolveInfo="tree" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499494855">
                    <link role="baseMethodDeclaration:3" targetNodeId="2.~JTree.clearSelection():void" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1560298786499494856">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1560298786499494857">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499494858">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499494859">
                  <link role="variableDeclaration:3" targetNodeId="1560298786499494781" resolveInfo="tree" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499494860">
                  <link role="baseMethodDeclaration:3" targetNodeId="2.~JComponent.setForeground(java.awt.Color):void" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499494861">
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499494862">
                      <link role="variableDeclaration:3" targetNodeId="1560298786499494759" resolveInfo="table" />
                    </node>
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499494863">
                      <link role="baseMethodDeclaration:3" targetNodeId="2.~JTable.getSelectionForeground():java.awt.Color" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1560298786499494864">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499494865">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499494866">
                  <link role="variableDeclaration:3" targetNodeId="1560298786499494781" resolveInfo="tree" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499494867">
                  <link role="baseMethodDeclaration:3" targetNodeId="2.~JComponent.setBackground(java.awt.Color):void" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499494868">
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499494869">
                      <link role="variableDeclaration:3" targetNodeId="1560298786499494759" resolveInfo="table" />
                    </node>
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499494870">
                      <link role="baseMethodDeclaration:3" targetNodeId="2.~JTable.getSelectionBackground():java.awt.Color" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1560298786499494871">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499494872">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499494873">
                  <link role="variableDeclaration:3" targetNodeId="1560298786499494781" resolveInfo="tree" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499494874">
                  <link role="baseMethodDeclaration:3" targetNodeId="2.~JTree.addSelectionInterval(int,int):void" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1560298786499494875">
                    <property name="value:3" value="0" />
                  </node>
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.MinusExpression:3" id="1560298786499494876">
                    <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499494877">
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499494878">
                        <link role="variableDeclaration:3" targetNodeId="1560298786499494781" resolveInfo="tree" />
                      </node>
                      <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499494879">
                        <link role="baseMethodDeclaration:3" targetNodeId="2.~JTree.getRowCount():int" />
                      </node>
                    </node>
                    <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1560298786499494880">
                      <property name="value:3" value="1" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1560298786499494881">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499494882">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499494883">
              <link role="variableDeclaration:3" targetNodeId="1560298786499494781" resolveInfo="tree" />
            </node>
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499494884">
              <link role="baseMethodDeclaration:3" targetNodeId="2.~JComponent.setBorder(javax.swing.border.Border):void" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression:3" id="1560298786499494885">
                <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499494886">
                  <link role="variableDeclaration:3" targetNodeId="1560298786499494765" resolveInfo="hasFocus" />
                </node>
                <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1560298786499494887">
                  <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="1560298786499494888">
                    <link role="baseMethodDeclaration:3" targetNodeId="18.~DottedBorder.&lt;init&gt;(java.awt.Insets,java.awt.Color)" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1560298786499494889">
                      <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="1560298786499494890">
                        <link role="baseMethodDeclaration:3" targetNodeId="1.~Insets.&lt;init&gt;(int,int,int,int)" />
                        <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1560298786499494891">
                          <property name="value:3" value="1" />
                        </node>
                        <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1560298786499494892">
                          <property name="value:3" value="1" />
                        </node>
                        <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1560298786499494893">
                          <property name="value:3" value="1" />
                        </node>
                        <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1560298786499494894">
                          <property name="value:3" value="1" />
                        </node>
                      </node>
                    </node>
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="1560298786499494895">
                      <link role="classifier:3" targetNodeId="1.~Color" />
                      <link role="variableDeclaration:3" targetNodeId="1.~Color.BLACK" />
                    </node>
                  </node>
                </node>
                <node role="ifFalse:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1560298786499494896">
                  <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="1560298786499494897">
                    <link role="baseMethodDeclaration:3" targetNodeId="6.~EmptyBorder.&lt;init&gt;(int,int,int,int)" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1560298786499494898">
                      <property name="value:3" value="1" />
                    </node>
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1560298786499494899">
                      <property name="value:3" value="1" />
                    </node>
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1560298786499494900">
                      <property name="value:3" value="1" />
                    </node>
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1560298786499494901">
                      <property name="value:3" value="1" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1560298786499494902">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499494903">
            <link role="variableDeclaration:3" targetNodeId="1560298786499494781" resolveInfo="tree" />
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1560298786499494904">
      <property name="name:3" value="add" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="1560298786499494905" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="1560298786499494906" />
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499494907">
        <property name="name:3" value="root" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499494908">
          <link role="classifier:3" targetNodeId="16.~TextMPSTreeNode" />
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499494909">
        <property name="name:3" value="ref" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499494910">
          <link role="classifier:3" targetNodeId="5.~MappingConfig_AbstractRef" />
        </node>
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1560298786499494911">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1560298786499494912">
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="1560298786499494913">
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499494914">
              <link role="variableDeclaration:3" targetNodeId="1560298786499494909" resolveInfo="ref" />
            </node>
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="1560298786499494915" />
          </node>
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1560298786499494916">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1560298786499494917">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.BooleanConstant:3" id="1560298786499494918" />
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1560298786499494919">
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.InstanceOfExpression:3" id="1560298786499494920">
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499494921">
              <link role="variableDeclaration:3" targetNodeId="1560298786499494909" resolveInfo="ref" />
            </node>
            <node role="classType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499494922">
              <link role="classifier:3" targetNodeId="5.~MappingConfig_RefAllLocal" />
            </node>
          </node>
          <node role="ifFalseStatement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1560298786499494923">
            <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.InstanceOfExpression:3" id="1560298786499494924">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499494925">
                <link role="variableDeclaration:3" targetNodeId="1560298786499494909" resolveInfo="ref" />
              </node>
              <node role="classType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499494926">
                <link role="classifier:3" targetNodeId="5.~MappingConfig_RefAllGlobal" />
              </node>
            </node>
            <node role="ifFalseStatement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1560298786499494927">
              <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.InstanceOfExpression:3" id="1560298786499494928">
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499494929">
                  <link role="variableDeclaration:3" targetNodeId="1560298786499494909" resolveInfo="ref" />
                </node>
                <node role="classType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499494930">
                  <link role="classifier:3" targetNodeId="5.~MappingConfig_SimpleRef" />
                </node>
              </node>
              <node role="ifFalseStatement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1560298786499494931">
                <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.InstanceOfExpression:3" id="1560298786499494932">
                  <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499494933">
                    <link role="variableDeclaration:3" targetNodeId="1560298786499494909" resolveInfo="ref" />
                  </node>
                  <node role="classType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499494934">
                    <link role="classifier:3" targetNodeId="5.~MappingConfig_ExternalRef" />
                  </node>
                </node>
                <node role="ifFalseStatement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1560298786499494935">
                  <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.InstanceOfExpression:3" id="1560298786499494936">
                    <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499494937">
                      <link role="variableDeclaration:3" targetNodeId="1560298786499494909" resolveInfo="ref" />
                    </node>
                    <node role="classType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499494938">
                      <link role="classifier:3" targetNodeId="5.~MappingConfig_RefSet" />
                    </node>
                  </node>
                  <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1560298786499494939">
                    <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1560298786499494940">
                      <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1560298786499494941">
                        <property name="name:3" value="complete" />
                        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="1560298786499494942" />
                        <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.BooleanConstant:3" id="1560298786499494943">
                          <property name="value:3" value="true" />
                        </node>
                      </node>
                    </node>
                    <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ForeachStatement:3" id="1560298786499494944">
                      <node role="iterable:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499494945">
                        <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression:3" id="1560298786499494946">
                          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.CastExpression:3" id="1560298786499494947">
                            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499494948">
                              <link role="variableDeclaration:3" targetNodeId="1560298786499494909" resolveInfo="ref" />
                            </node>
                            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499494949">
                              <link role="classifier:3" targetNodeId="5.~MappingConfig_RefSet" />
                            </node>
                          </node>
                        </node>
                        <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499494950">
                          <link role="baseMethodDeclaration:3" targetNodeId="5.~MappingConfig_RefSet.getMappingConfigs():java.util.List" />
                        </node>
                      </node>
                      <node role="variable:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1560298786499494951">
                        <property name="name:3" value="mappingRef" />
                        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499494952">
                          <link role="classifier:3" targetNodeId="5.~MappingConfig_AbstractRef" />
                        </node>
                      </node>
                      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1560298786499494953">
                        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1560298786499494954">
                          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.NotExpression:3" id="1560298786499494955">
                            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceMethodCall:3" id="1200564340082201849">
                              <link role="baseMethodDeclaration:3" targetNodeId="1560298786499494904" resolveInfo="add" />
                              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499494959">
                                <link role="variableDeclaration:3" targetNodeId="1560298786499494907" resolveInfo="root" />
                              </node>
                              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499494960">
                                <link role="variableDeclaration:3" targetNodeId="1560298786499494951" resolveInfo="mappingRef" />
                              </node>
                            </node>
                          </node>
                          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1560298786499494961">
                            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1560298786499494962">
                              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="1560298786499494963">
                                <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499494964">
                                  <link role="variableDeclaration:3" targetNodeId="1560298786499494941" resolveInfo="complete" />
                                </node>
                                <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.BooleanConstant:3" id="1560298786499494965" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1560298786499494966">
                      <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499494967">
                        <link role="variableDeclaration:3" targetNodeId="1560298786499494941" resolveInfo="complete" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1560298786499494968">
                  <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1560298786499494969">
                    <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1560298786499494970">
                      <property name="name:3" value="refC" />
                      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499494971">
                        <link role="classifier:3" targetNodeId="5.~MappingConfig_ExternalRef" />
                      </node>
                      <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.CastExpression:3" id="1560298786499494972">
                        <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499494973">
                          <link role="variableDeclaration:3" targetNodeId="1560298786499494909" resolveInfo="ref" />
                        </node>
                        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499494974">
                          <link role="classifier:3" targetNodeId="5.~MappingConfig_ExternalRef" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1560298786499494975">
                    <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1560298786499494976">
                      <property name="name:3" value="generatorReference" />
                      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499494977">
                        <link role="classifier:3" targetNodeId="15.~ModuleReference" />
                      </node>
                      <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499494978">
                        <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499494979">
                          <link role="variableDeclaration:3" targetNodeId="1560298786499494970" resolveInfo="refC" />
                        </node>
                        <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499494980">
                          <link role="baseMethodDeclaration:3" targetNodeId="5.~MappingConfig_ExternalRef.getGenerator():jetbrains.mps.project.structure.modules.ModuleReference" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1560298786499494981">
                    <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="1560298786499494982">
                      <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499494983">
                        <link role="variableDeclaration:3" targetNodeId="1560298786499494976" resolveInfo="generatorReference" />
                      </node>
                      <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="1560298786499494984" />
                    </node>
                    <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1560298786499494985">
                      <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1560298786499494986">
                        <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499494987">
                          <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499494988">
                            <link role="variableDeclaration:3" targetNodeId="1560298786499494907" resolveInfo="root" />
                          </node>
                          <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499494989">
                            <link role="baseMethodDeclaration:3" targetNodeId="17.~DefaultMutableTreeNode.add(javax.swing.tree.MutableTreeNode):void" />
                            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1560298786499494990">
                              <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="1560298786499494991">
                                <link role="baseMethodDeclaration:3" targetNodeId="16.~TextMPSTreeNode.&lt;init&gt;(java.lang.String,jetbrains.mps.smodel.IOperationContext)" />
                                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="1560298786499494992">
                                  <property name="value:3" value="NOT FOUND: &lt;bad generator reference&gt;" />
                                </node>
                                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="1560298786499494993" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1560298786499494994">
                        <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.BooleanConstant:3" id="1560298786499494995" />
                      </node>
                    </node>
                  </node>
                  <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1560298786499494996">
                    <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1560298786499494997">
                      <property name="name:3" value="moduleRef" />
                      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499494998">
                        <link role="classifier:3" targetNodeId="15.~ModuleReference" />
                      </node>
                      <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499494999">
                        <link role="variableDeclaration:3" targetNodeId="1560298786499494976" resolveInfo="generatorReference" />
                      </node>
                    </node>
                  </node>
                  <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1560298786499495000">
                    <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1560298786499495001">
                      <property name="name:3" value="generator" />
                      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499495002">
                        <link role="classifier:3" targetNodeId="10.~Generator" />
                      </node>
                      <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.CastExpression:3" id="1560298786499495003">
                        <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499495004">
                          <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="1560298786499495005">
                            <link role="classConcept:3" targetNodeId="10.~MPSModuleRepository" />
                            <link role="baseMethodDeclaration:3" targetNodeId="10.~MPSModuleRepository.getInstance():jetbrains.mps.smodel.MPSModuleRepository" />
                          </node>
                          <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499495006">
                            <link role="baseMethodDeclaration:3" targetNodeId="10.~MPSModuleRepository.getModule(jetbrains.mps.project.structure.modules.ModuleReference):jetbrains.mps.project.IModule" />
                            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499495007">
                              <link role="variableDeclaration:3" targetNodeId="1560298786499494997" resolveInfo="moduleRef" />
                            </node>
                          </node>
                        </node>
                        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499495008">
                          <link role="classifier:3" targetNodeId="10.~Generator" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1560298786499495009">
                    <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="1560298786499495010">
                      <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499495011">
                        <link role="variableDeclaration:3" targetNodeId="1560298786499495001" resolveInfo="generator" />
                      </node>
                      <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="1560298786499495012" />
                    </node>
                    <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1560298786499495013">
                      <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1560298786499495014">
                        <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1560298786499495015">
                          <property name="name:3" value="genString" />
                          <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499495016">
                            <link role="classifier:3" targetNodeId="2v.~String" />
                          </node>
                          <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499495017">
                            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499495018">
                              <link role="variableDeclaration:3" targetNodeId="1560298786499494976" resolveInfo="generatorReference" />
                            </node>
                            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499495019">
                              <link role="baseMethodDeclaration:3" targetNodeId="15.~ModuleReference.getModuleFqName():java.lang.String" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1560298786499495020">
                        <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499495021">
                          <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499495022">
                            <link role="variableDeclaration:3" targetNodeId="1560298786499494907" resolveInfo="root" />
                          </node>
                          <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499495023">
                            <link role="baseMethodDeclaration:3" targetNodeId="17.~DefaultMutableTreeNode.add(javax.swing.tree.MutableTreeNode):void" />
                            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1560298786499495024">
                              <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="1560298786499495025">
                                <link role="baseMethodDeclaration:3" targetNodeId="16.~TextMPSTreeNode.&lt;init&gt;(java.lang.String,jetbrains.mps.smodel.IOperationContext)" />
                                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.PlusExpression:3" id="1560298786499495026">
                                  <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="1560298786499495027">
                                    <property name="value:3" value="NOT FOUND: " />
                                  </node>
                                  <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499495028">
                                    <link role="variableDeclaration:3" targetNodeId="1560298786499495015" resolveInfo="genString" />
                                  </node>
                                </node>
                                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="1560298786499495029" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1560298786499495030">
                        <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.BooleanConstant:3" id="1560298786499495031" />
                      </node>
                    </node>
                  </node>
                  <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1560298786499495032">
                    <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1560298786499495033">
                      <property name="name:3" value="child" />
                      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499495034">
                        <link role="classifier:3" targetNodeId="16.~TextMPSTreeNode" />
                      </node>
                      <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1560298786499495035">
                        <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="1560298786499495036">
                          <link role="baseMethodDeclaration:3" targetNodeId="16.~TextMPSTreeNode.&lt;init&gt;(java.lang.String,jetbrains.mps.smodel.IOperationContext)" />
                          <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499495037">
                            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499495038">
                              <link role="variableDeclaration:3" targetNodeId="1560298786499495001" resolveInfo="generator" />
                            </node>
                            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499495039">
                              <link role="baseMethodDeclaration:3" targetNodeId="10.~Generator.getAlias():java.lang.String" />
                            </node>
                          </node>
                          <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="1560298786499495040" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1560298786499495041">
                    <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499495042">
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499495043">
                        <link role="variableDeclaration:3" targetNodeId="1560298786499494907" resolveInfo="root" />
                      </node>
                      <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499495044">
                        <link role="baseMethodDeclaration:3" targetNodeId="17.~DefaultMutableTreeNode.add(javax.swing.tree.MutableTreeNode):void" />
                        <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499495045">
                          <link role="variableDeclaration:3" targetNodeId="1560298786499495033" resolveInfo="child" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1560298786499495046">
                    <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceMethodCall:3" id="1200564340082201788">
                      <link role="baseMethodDeclaration:3" targetNodeId="1560298786499494904" resolveInfo="add" />
                      <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499495050">
                        <link role="variableDeclaration:3" targetNodeId="1560298786499495033" resolveInfo="child" />
                      </node>
                      <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499495051">
                        <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499495052">
                          <link role="variableDeclaration:3" targetNodeId="1560298786499494970" resolveInfo="refC" />
                        </node>
                        <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499495053">
                          <link role="baseMethodDeclaration:3" targetNodeId="5.~MappingConfig_ExternalRef.getMappingConfig():jetbrains.mps.project.structure.modules.mappingpriorities.MappingConfig_AbstractRef" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1560298786499495054">
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1560298786499495055">
                  <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1560298786499495056">
                    <property name="name:3" value="refC" />
                    <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499495057">
                      <link role="classifier:3" targetNodeId="5.~MappingConfig_SimpleRef" />
                    </node>
                    <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.CastExpression:3" id="1560298786499495058">
                      <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499495059">
                        <link role="variableDeclaration:3" targetNodeId="1560298786499494909" resolveInfo="ref" />
                      </node>
                      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499495060">
                        <link role="classifier:3" targetNodeId="5.~MappingConfig_SimpleRef" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1560298786499495061">
                  <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1560298786499495062">
                    <property name="name:3" value="modelRef" />
                    <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499495063">
                      <link role="classifier:3" targetNodeId="10.~SModelReference" />
                    </node>
                    <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="1560298786499495064">
                      <link role="classConcept:3" targetNodeId="10.~SModelReference" />
                      <link role="baseMethodDeclaration:3" targetNodeId="10.~SModelReference.fromString(java.lang.String):jetbrains.mps.smodel.SModelReference" />
                      <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499495065">
                        <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499495066">
                          <link role="variableDeclaration:3" targetNodeId="1560298786499495056" resolveInfo="refC" />
                        </node>
                        <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499495067">
                          <link role="baseMethodDeclaration:3" targetNodeId="5.~MappingConfig_SimpleRef.getModelUID():java.lang.String" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1560298786499495068">
                  <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1560298786499495069">
                    <property name="name:3" value="nodeName" />
                    <node role="type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="1866989091100460892" />
                  </node>
                </node>
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1560298786499495072">
                  <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499495073">
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499495074">
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499495075">
                        <link role="variableDeclaration:3" targetNodeId="1560298786499495056" resolveInfo="refC" />
                      </node>
                      <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499495076">
                        <link role="baseMethodDeclaration:3" targetNodeId="5.~MappingConfig_SimpleRef.getNodeID():java.lang.String" />
                      </node>
                    </node>
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499495077">
                      <link role="baseMethodDeclaration:3" targetNodeId="2v.~String.equals(java.lang.Object):boolean" />
                      <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="1560298786499495078">
                        <property name="value:3" value="*" />
                      </node>
                    </node>
                  </node>
                  <node role="ifFalseStatement:3" type="jetbrains.mps.baseLanguage.structure.BlockStatement:3" id="1560298786499495079">
                    <node role="statements:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1560298786499495080">
                      <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1560298786499495081">
                        <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1560298786499495082">
                          <property name="name:3" value="p" />
                          <property name="isFinal:3" value="true" />
                          <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499495083">
                            <link role="classifier:3" targetNodeId="10.~SNodePointer" />
                          </node>
                          <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1560298786499495084">
                            <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="1560298786499495085">
                              <link role="baseMethodDeclaration:3" targetNodeId="10.~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" />
                              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499495086">
                                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499495087">
                                  <link role="variableDeclaration:3" targetNodeId="1560298786499495056" resolveInfo="refC" />
                                </node>
                                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499495088">
                                  <link role="baseMethodDeclaration:3" targetNodeId="5.~MappingConfig_SimpleRef.getModelUID():java.lang.String" />
                                </node>
                              </node>
                              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499495089">
                                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499495090">
                                  <link role="variableDeclaration:3" targetNodeId="1560298786499495056" resolveInfo="refC" />
                                </node>
                                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499495091">
                                  <link role="baseMethodDeclaration:3" targetNodeId="5.~MappingConfig_SimpleRef.getNodeID():java.lang.String" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1560298786499495092">
                        <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="1560298786499495093">
                          <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499495094">
                            <link role="variableDeclaration:3" targetNodeId="1560298786499495069" resolveInfo="nodeName" />
                          </node>
                          <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499495095">
                            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="1560298786499495096">
                              <link role="classConcept:3" targetNodeId="10.~ModelAccess" />
                              <link role="baseMethodDeclaration:3" targetNodeId="10.~ModelAccess.instance():jetbrains.mps.smodel.ModelAccess" />
                            </node>
                            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499495097">
                              <link role="baseMethodDeclaration:3" targetNodeId="10.~ModelAccess.runReadAction(com.intellij.openapi.util.Computable):java.lang.Object" />
                              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1560298786499495098">
                                <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator:3" id="1560298786499495099">
                                  <node role="cls:3" type="jetbrains.mps.baseLanguage.structure.AnonymousClass:3" id="1560298786499495100">
                                    <property name="name:3" value="" />
                                    <link role="classifier:3" targetNodeId="12.~Computable" resolveInfo="Computable" />
                                    <link role="baseMethodDeclaration:3" targetNodeId="2v.~Object.&lt;init&gt;()" />
                                    <node role="typeParameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499495101">
                                      <link role="classifier:3" targetNodeId="2v.~String" resolveInfo="String" />
                                    </node>
                                    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1560298786499495102">
                                      <property name="name:3" value="compute" />
                                      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1560298786499495103" />
                                      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499495104">
                                        <link role="classifier:3" targetNodeId="2v.~String" />
                                      </node>
                                      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1560298786499495224">
                                        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1560298786499495225">
                                          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1560298786499495226">
                                            <property name="name:3" value="model" />
                                            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499495227">
                                              <link role="classifier:3" targetNodeId="10.~SModelDescriptor" />
                                            </node>
                                            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499495228">
                                              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499495229">
                                                <link role="variableDeclaration:3" targetNodeId="1560298786499495082" resolveInfo="p" />
                                              </node>
                                              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499495230">
                                                <link role="baseMethodDeclaration:3" targetNodeId="10.~SNodePointer.getModel():jetbrains.mps.smodel.SModelDescriptor" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1560298786499495231">
                                          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1560298786499495232">
                                            <property name="name:3" value="node" />
                                            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499495233">
                                              <link role="classifier:3" targetNodeId="10.~SNode" />
                                            </node>
                                            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499495234">
                                              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499495235">
                                                <link role="variableDeclaration:3" targetNodeId="1560298786499495082" resolveInfo="p" />
                                              </node>
                                              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499495236">
                                                <link role="baseMethodDeclaration:3" targetNodeId="10.~SNodePointer.getNode():jetbrains.mps.smodel.SNode" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1560298786499495237">
                                          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.OrExpression:3" id="1560298786499495238">
                                            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="1560298786499495239">
                                              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499495240">
                                                <link role="variableDeclaration:3" targetNodeId="1560298786499495226" resolveInfo="model" />
                                              </node>
                                              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="1560298786499495241" />
                                            </node>
                                            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="1560298786499495242">
                                              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499495243">
                                                <link role="variableDeclaration:3" targetNodeId="1560298786499495232" resolveInfo="node" />
                                              </node>
                                              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="1560298786499495244" />
                                            </node>
                                          </node>
                                          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1560298786499495245">
                                            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1560298786499495246">
                                              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="1560298786499495247" />
                                            </node>
                                          </node>
                                        </node>
                                        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1560298786499495248">
                                          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.PlusExpression:3" id="1560298786499495249">
                                            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.PlusExpression:3" id="1560298786499495250">
                                              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499495251">
                                                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499495252">
                                                  <link role="variableDeclaration:3" targetNodeId="1560298786499495226" resolveInfo="model" />
                                                </node>
                                                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499495253">
                                                  <link role="baseMethodDeclaration:3" targetNodeId="10.~SModelDescriptor.getName():java.lang.String" />
                                                </node>
                                              </node>
                                              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="1560298786499495254">
                                                <property name="value:3" value="." />
                                              </node>
                                            </node>
                                            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499495255">
                                              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499495256">
                                                <link role="variableDeclaration:3" targetNodeId="1560298786499495232" resolveInfo="node" />
                                              </node>
                                              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499495257">
                                                <link role="baseMethodDeclaration:3" targetNodeId="10.~SNode.getName():java.lang.String" />
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
                      <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1560298786499495105">
                        <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="1560298786499495106">
                          <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499495107">
                            <link role="variableDeclaration:3" targetNodeId="1560298786499495069" resolveInfo="nodeName" />
                          </node>
                          <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="1560298786499495108" />
                        </node>
                        <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1560298786499495109">
                          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1560298786499495110">
                            <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1560298786499495111">
                              <property name="name:3" value="nodeString" />
                              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499495112">
                                <link role="classifier:3" targetNodeId="2v.~String" />
                              </node>
                              <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.PlusExpression:3" id="1560298786499495113">
                                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.PlusExpression:3" id="1560298786499495114">
                                  <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499495115">
                                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499495116">
                                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499495117">
                                        <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499495118">
                                          <link role="variableDeclaration:3" targetNodeId="1560298786499495082" resolveInfo="p" />
                                        </node>
                                        <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499495119">
                                          <link role="baseMethodDeclaration:3" targetNodeId="10.~SNodePointer.getModelReference():jetbrains.mps.smodel.SModelReference" />
                                        </node>
                                      </node>
                                      <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499495120">
                                        <link role="baseMethodDeclaration:3" targetNodeId="10.~SModelReference.getSModelFqName():jetbrains.mps.smodel.SModelFqName" />
                                      </node>
                                    </node>
                                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499495121">
                                      <link role="baseMethodDeclaration:3" targetNodeId="10.~SModelFqName.toString():java.lang.String" />
                                    </node>
                                  </node>
                                  <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="1560298786499495122">
                                    <property name="value:3" value=":" />
                                  </node>
                                </node>
                                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499495123">
                                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499495124">
                                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499495125">
                                      <link role="variableDeclaration:3" targetNodeId="1560298786499495082" resolveInfo="p" />
                                    </node>
                                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499495126">
                                      <link role="baseMethodDeclaration:3" targetNodeId="10.~SNodePointer.getNodeId():jetbrains.mps.smodel.SNodeId" />
                                    </node>
                                  </node>
                                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499495127">
                                    <link role="baseMethodDeclaration:3" targetNodeId="2v.~Object.toString():java.lang.String" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1560298786499495128">
                            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499495129">
                              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499495130">
                                <link role="variableDeclaration:3" targetNodeId="1560298786499494907" resolveInfo="root" />
                              </node>
                              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499495131">
                                <link role="baseMethodDeclaration:3" targetNodeId="17.~DefaultMutableTreeNode.add(javax.swing.tree.MutableTreeNode):void" />
                                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1560298786499495132">
                                  <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="1560298786499495133">
                                    <link role="baseMethodDeclaration:3" targetNodeId="16.~TextMPSTreeNode.&lt;init&gt;(java.lang.String,jetbrains.mps.smodel.IOperationContext)" />
                                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.PlusExpression:3" id="1560298786499495134">
                                      <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="1560298786499495135">
                                        <property name="value:3" value="NOT FOUND: " />
                                      </node>
                                      <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499495136">
                                        <link role="variableDeclaration:3" targetNodeId="1560298786499495111" resolveInfo="nodeString" />
                                      </node>
                                    </node>
                                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="1560298786499495137" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1560298786499495138">
                            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.BooleanConstant:3" id="1560298786499495139" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1560298786499495140">
                    <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1560298786499495141">
                      <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="1560298786499495142">
                        <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499495143">
                          <link role="variableDeclaration:3" targetNodeId="1560298786499495069" resolveInfo="nodeName" />
                        </node>
                        <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.PlusExpression:3" id="1560298786499495144">
                          <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499495145">
                            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499495146">
                              <link role="variableDeclaration:3" targetNodeId="1560298786499495062" resolveInfo="modelRef" />
                            </node>
                            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499495147">
                              <link role="baseMethodDeclaration:3" targetNodeId="10.~SModelReference.getShortName():java.lang.String" />
                            </node>
                          </node>
                          <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="1560298786499495148">
                            <property name="value:3" value=".*" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1560298786499495149">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499495150">
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499495151">
                      <link role="variableDeclaration:3" targetNodeId="1560298786499494907" resolveInfo="root" />
                    </node>
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499495152">
                      <link role="baseMethodDeclaration:3" targetNodeId="17.~DefaultMutableTreeNode.add(javax.swing.tree.MutableTreeNode):void" />
                      <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1560298786499495153">
                        <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="1560298786499495154">
                          <link role="baseMethodDeclaration:3" targetNodeId="16.~TextMPSTreeNode.&lt;init&gt;(java.lang.String,jetbrains.mps.smodel.IOperationContext)" />
                          <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499495155">
                            <link role="variableDeclaration:3" targetNodeId="1560298786499495069" resolveInfo="nodeName" />
                          </node>
                          <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="1560298786499495156" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1560298786499495157">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.BooleanConstant:3" id="1560298786499495158">
                    <property name="value:3" value="true" />
                  </node>
                </node>
              </node>
            </node>
            <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1560298786499495159">
              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1560298786499495160">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499495161">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499495162">
                    <link role="variableDeclaration:3" targetNodeId="1560298786499494907" resolveInfo="root" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499495163">
                    <link role="baseMethodDeclaration:3" targetNodeId="17.~DefaultMutableTreeNode.add(javax.swing.tree.MutableTreeNode):void" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1560298786499495164">
                      <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="1560298786499495165">
                        <link role="baseMethodDeclaration:3" targetNodeId="16.~TextMPSTreeNode.&lt;init&gt;(java.lang.String,jetbrains.mps.smodel.IOperationContext)" />
                        <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="1560298786499495166">
                          <property name="value:3" value="*.*" />
                        </node>
                        <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="1560298786499495167" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1560298786499495168">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.BooleanConstant:3" id="1560298786499495169">
                  <property name="value:3" value="true" />
                </node>
              </node>
            </node>
          </node>
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1560298786499495170">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1560298786499495171">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499495172">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499495173">
                  <link role="variableDeclaration:3" targetNodeId="1560298786499494907" resolveInfo="root" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499495174">
                  <link role="baseMethodDeclaration:3" targetNodeId="17.~DefaultMutableTreeNode.add(javax.swing.tree.MutableTreeNode):void" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1560298786499495175">
                    <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="1560298786499495176">
                      <link role="baseMethodDeclaration:3" targetNodeId="16.~TextMPSTreeNode.&lt;init&gt;(java.lang.String,jetbrains.mps.smodel.IOperationContext)" />
                      <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="1560298786499495177">
                        <property name="value:3" value="*" />
                      </node>
                      <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="1560298786499495178" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1560298786499495179">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.BooleanConstant:3" id="1560298786499495180">
                <property name="value:3" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1560298786499495181">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.BooleanConstant:3" id="1560298786499495182" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="1560298786499495877">
    <property name="name:3" value="TestConfigListCellRenderer" />
    <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1560298786499495878" />
    <node role="superclass:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499495879">
      <link role="classifier:3" targetNodeId="2.~DefaultListCellRenderer" />
    </node>
    <node role="constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="1560298786499495880">
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1560298786499495881" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1560298786499495882" />
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1560298786499495883">
      <property name="name:3" value="getListCellRendererComponent" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1560298786499495884" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499495885">
        <link role="classifier:3" targetNodeId="1.~Component" />
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499495886">
        <property name="name:3" value="list" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499495887">
          <link role="classifier:3" targetNodeId="2.~JList" />
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499495888">
        <property name="name:3" value="value" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499495889">
          <link role="classifier:3" targetNodeId="2v.~Object" />
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499495890">
        <property name="name:3" value="index" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="1560298786499495891" />
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499495892">
        <property name="name:3" value="isSelected" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="1560298786499495893" />
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499495894">
        <property name="name:3" value="cellHasFocus" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="1560298786499495895" />
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1560298786499495896">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1560298786499495897">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1560298786499495898">
            <property name="name:3" value="name" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499495899">
              <link role="classifier:3" targetNodeId="2v.~String" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499495900">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression:3" id="1560298786499495901">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.CastExpression:3" id="1560298786499495902">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499495903">
                    <link role="variableDeclaration:3" targetNodeId="1560298786499495888" resolveInfo="value" />
                  </node>
                  <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499495904">
                    <link role="classifier:3" targetNodeId="19.~BaseTestConfiguration" />
                  </node>
                </node>
              </node>
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499495905">
                <link role="baseMethodDeclaration:3" targetNodeId="19.~BaseTestConfiguration.getName():java.lang.String" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1560298786499495906">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.SuperMethodCall:3" id="1560298786499495907">
            <link role="baseMethodDeclaration:3" targetNodeId="2.~DefaultListCellRenderer.getListCellRendererComponent(javax.swing.JList,java.lang.Object,int,boolean,boolean):java.awt.Component" />
            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499495908">
              <link role="variableDeclaration:3" targetNodeId="1560298786499495886" resolveInfo="list" />
            </node>
            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1560298786499495909">
              <link role="variableDeclaration:3" targetNodeId="1560298786499495898" resolveInfo="name" />
            </node>
            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499495910">
              <link role="variableDeclaration:3" targetNodeId="1560298786499495890" resolveInfo="index" />
            </node>
            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499495911">
              <link role="variableDeclaration:3" targetNodeId="1560298786499495892" resolveInfo="isSelected" />
            </node>
            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499495912">
              <link role="variableDeclaration:3" targetNodeId="1560298786499495894" resolveInfo="cellHasFocus" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="1560298786499498121">
    <property name="name:3" value="BooleanRenderer" />
    <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1560298786499498122" />
    <node role="superclass:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499498123">
      <link role="classifier:3" targetNodeId="2.~DefaultListCellRenderer" />
    </node>
    <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="1560298786499498124">
      <property name="name:3" value="myCheckBox" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499498125">
        <link role="classifier:3" targetNodeId="2.~JCheckBox" />
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="1560298786499498126" />
    </node>
    <node role="constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="1560298786499498127">
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1560298786499498128" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1560298786499498129">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1560298786499498130">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="1560298786499498131">
            <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="8692480643148204953">
              <link role="variableDeclaration:3" targetNodeId="1560298786499498124" resolveInfo="myCheckBox" />
            </node>
            <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1560298786499498135">
              <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="1560298786499498136">
                <link role="baseMethodDeclaration:3" targetNodeId="2.~JCheckBox.&lt;init&gt;()" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1560298786499498137">
      <property name="name:3" value="getListCellRendererComponent" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1560298786499498138" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499498139">
        <link role="classifier:3" targetNodeId="1.~Component" />
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499498140">
        <property name="name:3" value="list" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499498141">
          <link role="classifier:3" targetNodeId="2.~JList" />
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499498142">
        <property name="name:3" value="value" />
        <property name="isFinal:3" value="true" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499498143">
          <link role="classifier:3" targetNodeId="2v.~Object" />
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499498144">
        <property name="name:3" value="index" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="1560298786499498145" />
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499498146">
        <property name="name:3" value="isSelected" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="1560298786499498147" />
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499498148">
        <property name="name:3" value="cellHasFocus" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="1560298786499498149" />
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1560298786499498150">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1560298786499498151">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499498152">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="8692480643148204734">
              <link role="variableDeclaration:3" targetNodeId="1560298786499498124" resolveInfo="myCheckBox" />
            </node>
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499498156">
              <link role="baseMethodDeclaration:3" targetNodeId="2.~AbstractButton.setSelected(boolean):void" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression:3" id="1560298786499498157">
                <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="1560298786499498158">
                  <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499498159">
                    <link role="variableDeclaration:3" targetNodeId="1560298786499498142" resolveInfo="value" />
                  </node>
                  <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="1560298786499498160" />
                </node>
                <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.BooleanConstant:3" id="1560298786499498161" />
                <node role="ifFalse:3" type="jetbrains.mps.baseLanguage.structure.CastExpression:3" id="1560298786499498162">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499498163">
                    <link role="variableDeclaration:3" targetNodeId="1560298786499498142" resolveInfo="value" />
                  </node>
                  <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499498164">
                    <link role="classifier:3" targetNodeId="2v.~Boolean" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1560298786499498165">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499498166">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="8692480643148204811">
              <link role="variableDeclaration:3" targetNodeId="1560298786499498124" resolveInfo="myCheckBox" />
            </node>
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499498170">
              <link role="baseMethodDeclaration:3" targetNodeId="2.~JComponent.setBackground(java.awt.Color):void" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression:3" id="1560298786499498171">
                <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499498172">
                  <link role="variableDeclaration:3" targetNodeId="1560298786499498146" resolveInfo="isSelected" />
                </node>
                <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499498173">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499498174">
                    <link role="variableDeclaration:3" targetNodeId="1560298786499498140" resolveInfo="list" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499498175">
                    <link role="baseMethodDeclaration:3" targetNodeId="2.~JList.getSelectionBackground():java.awt.Color" />
                  </node>
                </node>
                <node role="ifFalse:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499498176">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499498177">
                    <link role="variableDeclaration:3" targetNodeId="1560298786499498140" resolveInfo="list" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499498178">
                    <link role="baseMethodDeclaration:3" targetNodeId="1.~Component.getBackground():java.awt.Color" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1560298786499498179">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499498180">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="8692480643148205044">
              <link role="variableDeclaration:3" targetNodeId="1560298786499498124" resolveInfo="myCheckBox" />
            </node>
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499498184">
              <link role="baseMethodDeclaration:3" targetNodeId="2.~JComponent.setForeground(java.awt.Color):void" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression:3" id="1560298786499498185">
                <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499498186">
                  <link role="variableDeclaration:3" targetNodeId="1560298786499498146" resolveInfo="isSelected" />
                </node>
                <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499498187">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499498188">
                    <link role="variableDeclaration:3" targetNodeId="1560298786499498140" resolveInfo="list" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499498189">
                    <link role="baseMethodDeclaration:3" targetNodeId="2.~JList.getSelectionForeground():java.awt.Color" />
                  </node>
                </node>
                <node role="ifFalse:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1560298786499498190">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499498191">
                    <link role="variableDeclaration:3" targetNodeId="1560298786499498140" resolveInfo="list" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1560298786499498192">
                    <link role="baseMethodDeclaration:3" targetNodeId="1.~Component.getForeground():java.awt.Color" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1560298786499498193">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="8692480643148205066">
            <link role="variableDeclaration:3" targetNodeId="1560298786499498124" resolveInfo="myCheckBox" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="1560298786499498265">
    <property name="name:3" value="GeneratorRenderer" />
    <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1560298786499498266" />
    <node role="superclass:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499498267">
      <link role="classifier:3" targetNodeId="1560298786499494573" resolveInfo="ModuleRenderer" />
    </node>
    <node role="constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="1560298786499498268">
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1560298786499498269" />
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499498270">
        <property name="name:3" value="moduleScope" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499498271">
          <link role="classifier:3" targetNodeId="10.~IScope" />
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1560298786499498272">
        <property name="name:3" value="projectScope" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1560298786499498273">
          <link role="classifier:3" targetNodeId="10.~IScope" />
        </node>
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1560298786499498274">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation:3" id="1560298786499498275">
          <link role="baseMethodDeclaration:3" targetNodeId="1560298786499494576" resolveInfo="ModuleRenderer" />
          <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499498276">
            <link role="variableDeclaration:3" targetNodeId="1560298786499498270" resolveInfo="moduleScope" />
          </node>
          <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1560298786499498277">
            <link role="variableDeclaration:3" targetNodeId="1560298786499498272" resolveInfo="projectScope" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>


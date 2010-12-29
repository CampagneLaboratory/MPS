<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:9b4a89e1-ec38-42c4-b1bd-96ab47ffcb3f(jetbrains.mps.vcs.diff.changes)">
  <persistence version="6" />
  <language namespace="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" />
  <language namespace="7866978e-a0f0-4cc7-81bc-4d213d9375e1(jetbrains.mps.lang.smodel)" />
  <language namespace="83888646-71ce-4f1c-9c53-c54016f6ad4f(jetbrains.mps.baseLanguage.collections)" />
  <language namespace="fd392034-7849-419d-9071-12563d152375(jetbrains.mps.baseLanguage.closures)" />
  <language namespace="a247e09e-2435-45ba-b8d2-07e93feba96a(jetbrains.mps.baseLanguage.tuples)" />
  <language namespace="774bf8a0-62e5-41e1-af63-f4812e60e48b(jetbrains.mps.baseLanguage.checkedDots)" />
  <import index="6" modelUID="f:java_stub#jetbrains.mps.smodel(jetbrains.mps.smodel@java_stub)" version="-1" />
  <import index="9" modelUID="r:61e3d524-8c49-4491-b5e3-f6d6e9364527(jetbrains.mps.util)" version="0" />
  <import index="12" modelUID="f:java_stub#java.util(java.util@java_stub)" version="-1" />
  <import index="8" modelUID="f:java_stub#java.lang(java.lang@java_stub)" version="-1" />
  <import index="13" modelUID="f:java_stub#jetbrains.mps.lang.structure.structure(jetbrains.mps.lang.structure.structure@java_stub)" version="-1" />
  <import index="14" modelUID="f:java_stub#org.apache.commons.lang(org.apache.commons.lang@java_stub)" version="-1" />
  <import index="15" modelUID="f:java_stub#org.jetbrains.annotations(org.jetbrains.annotations@java_stub)" version="-1" />
  <import index="1" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="2" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="3" implicit="yes" />
  <import index="3" modelUID="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" version="16" implicit="yes" />
  <import index="4" modelUID="r:9b4a89e1-ec38-42c4-b1bd-96ab47ffcb3f(jetbrains.mps.vcs.diff.changes)" version="-1" implicit="yes" />
  <import index="5" modelUID="r:00000000-0000-4000-0000-011c8959032e(jetbrains.mps.baseLanguage.collections.structure)" version="7" implicit="yes" />
  <import index="7" modelUID="r:00000000-0000-4000-0000-011c89590338(jetbrains.mps.baseLanguage.closures.structure)" version="3" implicit="yes" />
  <import index="11" modelUID="r:309aeee7-bee8-445c-b31d-35928d1da75f(jetbrains.mps.baseLanguage.tuples.structure)" version="2" implicit="yes" />
  <import index="17" modelUID="r:5a550369-d6d9-4c89-a89b-1bb748dc20b3(jetbrains.mps.baseLanguage.checkedDots.structure)" version="-1" implicit="yes" />
  <root_stubs>
    <node type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="8813828754313712692">
      <property name="1.name:0" value="ModelChange" />
      <property name="2.abstractClass:3" value="true" />
    </node>
    <node type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="8813828754313712698">
      <property name="1.name:0" value="ChangeSet" />
    </node>
    <node type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="8813828754313730792">
      <property name="1.name:0" value="ChangeSetBuilder" />
    </node>
    <node type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="6359197607515881703">
      <property name="1.name:0" value="AddRootChange" />
    </node>
    <node type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="6359197607515894913">
      <property name="1.name:0" value="DeleteRootChange" />
    </node>
    <node type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="4972886494893223485">
      <property name="1.name:0" value="NodeGroupChange" />
      <property name="2.abstractClass:3" value="true" />
    </node>
    <node type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="4972886494893364987">
      <property name="1.name:0" value="InsertNodeGroupChange" />
    </node>
    <node type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="4972886494893365222">
      <property name="1.name:0" value="DeleteNodeGroupChange" />
    </node>
    <node type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="4972886494893365435">
      <property name="1.name:0" value="ReplaceNodeGroupChange" />
    </node>
    <node type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="2729259761016168456">
      <property name="1.name:0" value="SetPropertyChange" />
    </node>
    <node type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="2732852465125672459">
      <property name="1.name:0" value="SetReferenceChange" />
    </node>
  </root_stubs>
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="8813828754313712692">
    <property name="1.name:0" value="ModelChange" />
    <property name="2.abstractClass:3" value="true" />
    <node role="2.field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="6359197607515881709">
      <property name="1.name:0" value="myChangeSet" />
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="6359197607515881710" />
      <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="6359197607515881712">
        <link role="2.classifier:3" targetNodeId="8813828754313712698" resolveInfo="ChangeSet" />
      </node>
    </node>
    <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="8813828754313712693" />
    <node role="2.constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="6359197607515881713">
      <node role="2.returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="6359197607515881714" />
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.ProtectedVisibility:3" id="6359197607515881731" />
      <node role="2.body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="6359197607515881717">
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="6359197607515881720">
          <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="6359197607515881722">
            <node role="2.lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="6359197607515881733">
              <link role="2.variableDeclaration:3" targetNodeId="6359197607515881709" resolveInfo="myChangeSet" />
            </node>
            <node role="2.rValue:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="6359197607515881730">
              <link role="2.variableDeclaration:3" targetNodeId="6359197607515881718" resolveInfo="myChangeSet1" />
            </node>
          </node>
        </node>
      </node>
      <node role="2.parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="6359197607515881718">
        <property name="1.name:0" value="changeSet" />
        <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="6359197607515881719">
          <link role="2.classifier:3" targetNodeId="8813828754313712698" resolveInfo="ChangeSet" />
        </node>
      </node>
    </node>
    <node role="2.method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="6359197607515881758">
      <property name="1.name:0" value="getChangeSet" />
      <node role="2.returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="6359197607515881759">
        <link role="2.classifier:3" targetNodeId="8813828754313712698" resolveInfo="ChangeSet" />
      </node>
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="6359197607515881760" />
      <node role="2.body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="6359197607515881761">
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="6359197607515881762">
          <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="6359197607515881763">
            <link role="2.variableDeclaration:3" targetNodeId="6359197607515881709" resolveInfo="myChangeSet" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="8813828754313712698">
    <property name="1.name:0" value="ChangeSet" />
    <node role="2.field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="8813828754313712704">
      <property name="1.name:0" value="myOldModel" />
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="8813828754313712705" />
      <node role="2.type:3" type="jetbrains.mps.lang.smodel.structure.SModelType:16" id="8813828754313712707" />
    </node>
    <node role="2.field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="8813828754313712708">
      <property name="1.name:0" value="myNewModel" />
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="8813828754313712709" />
      <node role="2.type:3" type="jetbrains.mps.lang.smodel.structure.SModelType:16" id="8813828754313712711" />
    </node>
    <node role="2.field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="8813828754313712712">
      <property name="1.name:0" value="myModelChanges" />
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="8813828754313712713" />
      <node role="2.type:3" type="jetbrains.mps.baseLanguage.collections.structure.ListType:7" id="8813828754313712715">
        <node role="5.elementType:7" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="8813828754313712717">
          <link role="2.classifier:3" targetNodeId="8813828754313712692" resolveInfo="ModelChange" />
        </node>
      </node>
      <node role="2.initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="6359197607515881793">
        <node role="2.creator:3" type="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit:7" id="6359197607515881794">
          <node role="5.elementType:7" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="6359197607515881795">
            <link role="2.classifier:3" targetNodeId="8813828754313712692" resolveInfo="ModelChange" />
          </node>
        </node>
      </node>
    </node>
    <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="8813828754313712699" />
    <node role="2.constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="8813828754313712700">
      <node role="2.returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="8813828754313712701" />
      <node role="2.body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="8813828754313712703">
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="8813828754313712741">
          <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="8813828754313712743">
            <node role="2.rValue:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="8813828754313712746">
              <link role="2.variableDeclaration:3" targetNodeId="8813828754313712732" resolveInfo="oldModel" />
            </node>
            <node role="2.lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="8813828754313712742">
              <link role="2.variableDeclaration:3" targetNodeId="8813828754313712704" resolveInfo="myOldModel" />
            </node>
          </node>
        </node>
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="8813828754313712748">
          <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="8813828754313712750">
            <node role="2.rValue:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="8813828754313712753">
              <link role="2.variableDeclaration:3" targetNodeId="8813828754313712738" resolveInfo="newModel" />
            </node>
            <node role="2.lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="8813828754313712749">
              <link role="2.variableDeclaration:3" targetNodeId="8813828754313712708" resolveInfo="myNewModel" />
            </node>
          </node>
        </node>
      </node>
      <node role="2.parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="8813828754313712732">
        <property name="1.name:0" value="oldModel" />
        <node role="2.type:3" type="jetbrains.mps.lang.smodel.structure.SModelType:16" id="8813828754313712733" />
      </node>
      <node role="2.parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="8813828754313712738">
        <property name="1.name:0" value="newModel" />
        <node role="2.type:3" type="jetbrains.mps.lang.smodel.structure.SModelType:16" id="8813828754313712740" />
      </node>
    </node>
    <node role="2.method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="8813828754313712768">
      <property name="1.name:0" value="getModelChanges" />
      <node role="2.returnType:3" type="jetbrains.mps.baseLanguage.collections.structure.ListType:7" id="8813828754313712769">
        <node role="5.elementType:7" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="8813828754313712770">
          <link role="2.classifier:3" targetNodeId="8813828754313712692" resolveInfo="ModelChange" />
        </node>
      </node>
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="8813828754313712771" />
      <node role="2.body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="8813828754313712772">
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="8813828754313712773">
          <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="8813828754313712774">
            <link role="2.variableDeclaration:3" targetNodeId="8813828754313712712" resolveInfo="myModelChanges" />
          </node>
        </node>
      </node>
    </node>
    <node role="2.method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="8813828754313730810">
      <property name="1.name:0" value="getOldModel" />
      <node role="2.returnType:3" type="jetbrains.mps.lang.smodel.structure.SModelType:16" id="8813828754313730811" />
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="8813828754313730812" />
      <node role="2.body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="8813828754313730813">
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="8813828754313730814">
          <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="8813828754313730815">
            <link role="2.variableDeclaration:3" targetNodeId="8813828754313712704" resolveInfo="myOldModel" />
          </node>
        </node>
      </node>
    </node>
    <node role="2.method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="8813828754313730816">
      <property name="1.name:0" value="getNewModel" />
      <node role="2.returnType:3" type="jetbrains.mps.lang.smodel.structure.SModelType:16" id="8813828754313730817" />
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="8813828754313730818" />
      <node role="2.body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="8813828754313730819">
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="8813828754313730820">
          <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="8813828754313730821">
            <link role="2.variableDeclaration:3" targetNodeId="8813828754313712708" resolveInfo="myNewModel" />
          </node>
        </node>
      </node>
    </node>
    <node role="2.method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="6359197607515881796">
      <property name="1.name:0" value="add" />
      <node role="2.returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="6359197607515881797" />
      <node role="2.body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="6359197607515881799">
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="6359197607515881806">
          <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="6359197607515881808">
            <node role="2.operand:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="6359197607515881807">
              <link role="2.variableDeclaration:3" targetNodeId="8813828754313712712" resolveInfo="myModelChanges" />
            </node>
            <node role="2.operation:3" type="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation:7" id="6359197607515881812">
              <node role="5.argument:7" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="6359197607515881814">
                <link role="2.variableDeclaration:3" targetNodeId="6359197607515881804" resolveInfo="change" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="2.parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="6359197607515881804">
        <property name="1.name:0" value="change" />
        <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="6359197607515881805">
          <link role="2.classifier:3" targetNodeId="8813828754313712692" resolveInfo="ModelChange" />
        </node>
      </node>
    </node>
    <node role="2.method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="6359197607515895122">
      <property name="1.name:0" value="addAll" />
      <node role="2.returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="6359197607515895123" />
      <node role="2.body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="6359197607515895124">
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="6359197607515895125">
          <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="6359197607515895126">
            <node role="2.operand:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="6359197607515895127">
              <link role="2.variableDeclaration:3" targetNodeId="8813828754313712712" resolveInfo="myModelChanges" />
            </node>
            <node role="2.operation:3" type="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation:7" id="6359197607515895135">
              <node role="5.argument:7" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="6359197607515895136">
                <link role="2.variableDeclaration:3" targetNodeId="6359197607515895130" resolveInfo="change" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="2.parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="6359197607515895130">
        <property name="1.name:0" value="change" />
        <node role="2.type:3" type="jetbrains.mps.baseLanguage.collections.structure.SequenceType:7" id="6359197607515895132">
          <node role="5.elementType:7" type="jetbrains.mps.baseLanguage.structure.UpperBoundType:3" id="6359197607515897896">
            <node role="2.bound:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="6359197607515897898">
              <link role="2.classifier:3" targetNodeId="8813828754313712692" resolveInfo="ModelChange" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="8813828754313730792">
    <property name="1.name:0" value="ChangeSetBuilder" />
    <node role="2.staticInnerClassifiers:3" type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="2732852465125741204">
      <property name="2.nonStatic:3" value="false" />
      <property name="1.name:0" value="DefaultPropertySupport" />
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="2732852465125741210" />
      <node role="2.constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="2732852465125741206">
        <node role="2.returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="2732852465125741207" />
        <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="2732852465125741212" />
        <node role="2.body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="2732852465125741209" />
      </node>
      <node role="2.superclass:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="2732852465125741211">
        <link role="2.classifier:3" targetNodeId="6.~PropertySupport" resolveInfo="PropertySupport" />
      </node>
      <node role="2.method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="2732852465125741213">
        <property name="1.name:0" value="canSetValue" />
        <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.ProtectedVisibility:3" id="2732852465125741214" />
        <node role="2.returnType:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="2732852465125741215" />
        <node role="2.parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="2732852465125741216">
          <property name="1.name:0" value="string" />
          <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="2732852465125741227" />
        </node>
        <node role="2.body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="2732852465125741218">
          <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="2732852465125741225">
            <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.BooleanConstant:3" id="2732852465125741226">
              <property name="2.value:3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="2.method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="2732852465125679230">
      <property name="1.name:0" value="buildPropertyChanges" />
      <node role="2.returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="2732852465125679231" />
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="2732852465125679234" />
      <node role="2.body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="2732852465125679233">
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="2732852465125684233">
          <node role="2.localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="2732852465125684234">
            <property name="1.name:0" value="oldProperties" />
            <node role="2.type:3" type="jetbrains.mps.baseLanguage.collections.structure.MapType:7" id="2732852465125684235">
              <node role="5.keyType:7" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="2732852465125684236" />
              <node role="5.valueType:7" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="2732852465125684237" />
            </node>
            <node role="2.initializer:3" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression:3" id="2732852465125684238">
              <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.CastExpression:3" id="2732852465125684239">
                <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="2732852465125684240">
                  <node role="2.operand:3" type="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression:16" id="2732852465125684241">
                    <node role="3.leftExpression:16" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="2732852465125684242">
                      <link role="2.variableDeclaration:3" targetNodeId="2732852465125679235" resolveInfo="oldNode" />
                    </node>
                  </node>
                  <node role="2.operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="2732852465125684243">
                    <link role="2.baseMethodDeclaration:3" targetNodeId="6.~SNode.getProperties():java.util.Map" resolveInfo="getProperties" />
                  </node>
                </node>
                <node role="2.type:3" type="jetbrains.mps.baseLanguage.collections.structure.MapType:7" id="2732852465125684244">
                  <node role="5.keyType:7" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="2732852465125684245" />
                  <node role="5.valueType:7" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="2732852465125684246" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="2732852465125684247">
          <node role="2.localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="2732852465125684248">
            <property name="1.name:0" value="newProperties" />
            <node role="2.type:3" type="jetbrains.mps.baseLanguage.collections.structure.MapType:7" id="2732852465125684249">
              <node role="5.keyType:7" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="2732852465125684250" />
              <node role="5.valueType:7" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="2732852465125684251" />
            </node>
            <node role="2.initializer:3" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression:3" id="2732852465125684252">
              <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.CastExpression:3" id="2732852465125684253">
                <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="2732852465125684254">
                  <node role="2.operand:3" type="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression:16" id="2732852465125684255">
                    <node role="3.leftExpression:16" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="2732852465125684261">
                      <link role="2.variableDeclaration:3" targetNodeId="2732852465125679237" resolveInfo="newNode" />
                    </node>
                  </node>
                  <node role="2.operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="2732852465125684257">
                    <link role="2.baseMethodDeclaration:3" targetNodeId="6.~SNode.getProperties():java.util.Map" resolveInfo="getProperties" />
                  </node>
                </node>
                <node role="2.type:3" type="jetbrains.mps.baseLanguage.collections.structure.MapType:7" id="2732852465125684258">
                  <node role="5.keyType:7" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="2732852465125684259" />
                  <node role="5.valueType:7" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="2732852465125684260" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement:7" id="2732852465125684148">
          <node role="5.variable:7" type="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable:7" id="2732852465125684149">
            <property name="1.name:0" value="name" />
          </node>
          <node role="5.inputSequence:7" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="2732852465125684271">
            <node role="2.operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="2732852465125684264">
              <node role="2.operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="2732852465125684262">
                <link role="2.variableDeclaration:3" targetNodeId="2732852465125684234" resolveInfo="oldProperties" />
              </node>
              <node role="2.operation:3" type="jetbrains.mps.baseLanguage.collections.structure.GetKeysOperation:7" id="2732852465125684268" />
            </node>
            <node role="2.operation:3" type="jetbrains.mps.baseLanguage.collections.structure.UnionOperation:7" id="2732852465125684275">
              <node role="5.rightExpression:7" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="2732852465125684278">
                <node role="2.operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="2732852465125684277">
                  <link role="2.variableDeclaration:3" targetNodeId="2732852465125684248" resolveInfo="newProperties" />
                </node>
                <node role="2.operation:3" type="jetbrains.mps.baseLanguage.collections.structure.GetKeysOperation:7" id="2732852465125684282" />
              </node>
            </node>
          </node>
          <node role="2.body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="2732852465125684151">
            <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="2732852465125728812">
              <node role="2.localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="2732852465125728813">
                <property name="1.name:0" value="propertySupport" />
                <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="2732852465125728814">
                  <link role="2.classifier:3" targetNodeId="6.~PropertySupport" resolveInfo="PropertySupport" />
                </node>
                <node role="2.initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="2732852465125741228">
                  <node role="2.creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="2732852465125741230">
                    <link role="2.baseMethodDeclaration:3" targetNodeId="2732852465125741206" resolveInfo="ChangeSetBuilder.DefaultPropertySupport" />
                  </node>
                </node>
              </node>
            </node>
            <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="2732852465125685244">
              <node role="2.localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="2732852465125685245">
                <property name="1.name:0" value="propertyDeclaration" />
                <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="2732852465125685246">
                  <link role="2.classifier:3" targetNodeId="13.~PropertyDeclaration" resolveInfo="PropertyDeclaration" />
                </node>
                <node role="2.initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="2732852465125685247">
                  <node role="2.operand:3" type="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression:16" id="2732852465125685248">
                    <node role="3.leftExpression:16" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="2732852465125685249">
                      <link role="2.variableDeclaration:3" targetNodeId="2732852465125679235" resolveInfo="oldNode" />
                    </node>
                  </node>
                  <node role="2.operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="2732852465125685250">
                    <link role="2.baseMethodDeclaration:3" targetNodeId="6.~SNode.getPropertyDeclaration(java.lang.String):jetbrains.mps.lang.structure.structure.PropertyDeclaration" resolveInfo="getPropertyDeclaration" />
                    <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference:7" id="2732852465125685251">
                      <link role="5.variable:7" targetNodeId="2732852465125684149" resolveInfo="name" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="2732852465125728821">
              <node role="2.ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="2732852465125728822">
                <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="2732852465125728817">
                  <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="2732852465125728818">
                    <node role="2.rValue:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="2732852465125728815">
                      <link role="2.baseMethodDeclaration:3" targetNodeId="6.~PropertySupport.getPropertySupport(jetbrains.mps.lang.structure.structure.PropertyDeclaration):jetbrains.mps.smodel.PropertySupport" resolveInfo="getPropertySupport" />
                      <link role="2.classConcept:3" targetNodeId="6.~PropertySupport" resolveInfo="PropertySupport" />
                      <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="2732852465125728816">
                        <link role="2.variableDeclaration:3" targetNodeId="2732852465125685245" resolveInfo="propertyDeclaration" />
                      </node>
                    </node>
                    <node role="2.lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="2732852465125728819">
                      <link role="2.variableDeclaration:3" targetNodeId="2732852465125728813" resolveInfo="propertySupport" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="2.condition:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="2732852465125728831">
                <node role="2.rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="2732852465125728834" />
                <node role="2.leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="2732852465125728830">
                  <link role="2.variableDeclaration:3" targetNodeId="2732852465125685245" resolveInfo="propertyDeclaration" />
                </node>
              </node>
            </node>
            <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.Statement:3" id="2732852465125741234" />
            <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="2732852465125741116">
              <node role="2.localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="2732852465125741117">
                <property name="1.name:0" value="oldInternalValue" />
                <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="2732852465125741118" />
                <node role="2.initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="2732852465125741119">
                  <node role="2.operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="2732852465125741120">
                    <link role="2.variableDeclaration:3" targetNodeId="2732852465125728813" resolveInfo="propertySupport" />
                  </node>
                  <node role="2.operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="2732852465125741121">
                    <link role="2.baseMethodDeclaration:3" targetNodeId="6.~PropertySupport.toInternalValue(java.lang.String):java.lang.String" resolveInfo="toInternalValue" />
                    <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.collections.structure.MapElement:7" id="2732852465125741122">
                      <node role="5.key:7" type="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference:7" id="2732852465125741123">
                        <link role="5.variable:7" targetNodeId="2732852465125684149" resolveInfo="name" />
                      </node>
                      <node role="5.map:7" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="2732852465125741793">
                        <link role="2.variableDeclaration:3" targetNodeId="2732852465125684234" resolveInfo="oldProperties" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="2732852465125741784">
              <node role="2.localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="2732852465125741785">
                <property name="1.name:0" value="newInternalValue" />
                <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="2732852465125741786" />
                <node role="2.initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="2732852465125741787">
                  <node role="2.operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="2732852465125741788">
                    <link role="2.variableDeclaration:3" targetNodeId="2732852465125728813" resolveInfo="propertySupport" />
                  </node>
                  <node role="2.operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="2732852465125741789">
                    <link role="2.baseMethodDeclaration:3" targetNodeId="6.~PropertySupport.toInternalValue(java.lang.String):java.lang.String" resolveInfo="toInternalValue" />
                    <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.collections.structure.MapElement:7" id="2732852465125741790">
                      <node role="5.key:7" type="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference:7" id="2732852465125741791">
                        <link role="5.variable:7" targetNodeId="2732852465125684149" resolveInfo="name" />
                      </node>
                      <node role="5.map:7" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="2732852465125741792">
                        <link role="2.variableDeclaration:3" targetNodeId="2732852465125684248" resolveInfo="newProperties" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="2732852465125741018">
              <node role="2.condition:3" type="jetbrains.mps.baseLanguage.structure.NotExpression:3" id="2732852465125741019">
                <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="2732852465125741020">
                  <link role="2.classConcept:3" targetNodeId="14.~ObjectUtils" resolveInfo="ObjectUtils" />
                  <link role="2.baseMethodDeclaration:3" targetNodeId="14.~ObjectUtils.equals(java.lang.Object,java.lang.Object):boolean" resolveInfo="equals" />
                  <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="2732852465125741765">
                    <link role="2.variableDeclaration:3" targetNodeId="2732852465125741117" resolveInfo="oldInternalValue" />
                  </node>
                  <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="2732852465125741794">
                    <link role="2.variableDeclaration:3" targetNodeId="2732852465125741785" resolveInfo="newInternalValue" />
                  </node>
                </node>
              </node>
              <node role="2.ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="2732852465125741022">
                <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="2732852465125741143">
                  <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="2732852465125741144">
                    <node role="2.operand:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="2732852465125741145">
                      <link role="2.variableDeclaration:3" targetNodeId="6359197607515881901" resolveInfo="myChangeSet" />
                    </node>
                    <node role="2.operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="2732852465125741146">
                      <link role="2.baseMethodDeclaration:3" targetNodeId="6359197607515881796" resolveInfo="add" />
                      <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="2732852465125741147">
                        <node role="2.creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="2732852465125741148">
                          <link role="2.baseMethodDeclaration:3" targetNodeId="2732852465125548120" resolveInfo="SetPropertyChange" />
                          <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="2732852465125741149">
                            <link role="2.variableDeclaration:3" targetNodeId="6359197607515881901" resolveInfo="myChangeSet" />
                          </node>
                          <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="2732852465125741150">
                            <node role="2.operand:3" type="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression:16" id="2732852465125741151">
                              <node role="3.leftExpression:16" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="2732852465125741152">
                                <link role="2.variableDeclaration:3" targetNodeId="2732852465125679235" resolveInfo="oldNode" />
                              </node>
                            </node>
                            <node role="2.operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="2732852465125741153">
                              <link role="2.baseMethodDeclaration:3" targetNodeId="6.~SNode.getSNodeId():jetbrains.mps.smodel.SNodeId" resolveInfo="getSNodeId" />
                            </node>
                          </node>
                          <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference:7" id="2732852465125741154">
                            <link role="5.variable:7" targetNodeId="2732852465125684149" resolveInfo="name" />
                          </node>
                          <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.collections.structure.MapElement:7" id="2732852465125741155">
                            <node role="5.key:7" type="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference:7" id="2732852465125741156">
                              <link role="5.variable:7" targetNodeId="2732852465125684149" resolveInfo="name" />
                            </node>
                            <node role="5.map:7" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="2732852465125741157">
                              <link role="2.variableDeclaration:3" targetNodeId="2732852465125684248" resolveInfo="newProperties" />
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
      <node role="2.parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="2732852465125679235">
        <property name="1.name:0" value="oldNode" />
        <node role="2.type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="2732852465125679236" />
      </node>
      <node role="2.parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="2732852465125679237">
        <property name="1.name:0" value="newNode" />
        <node role="2.type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="2732852465125679239" />
      </node>
    </node>
    <node role="2.method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="2732852465125741808">
      <property name="1.name:0" value="buildReferenceChanges" />
      <node role="2.returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="2732852465125741809" />
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="2732852465125741810" />
      <node role="2.body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="2732852465125741811">
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="2732852465125742104">
          <node role="2.localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="2732852465125742105">
            <property name="1.name:0" value="oldReferences" />
            <node role="2.type:3" type="jetbrains.mps.baseLanguage.collections.structure.MapType:7" id="2732852465125742106">
              <node role="5.keyType:7" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="2732852465125742109" />
              <node role="5.valueType:7" type="jetbrains.mps.lang.smodel.structure.SReferenceType:16" id="2732852465125742110" />
            </node>
            <node role="2.initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="2732852465125742112">
              <node role="2.creator:3" type="jetbrains.mps.baseLanguage.collections.structure.HashMapCreator:7" id="2732852465125742113">
                <node role="5.keyType:7" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="2732852465125742114" />
                <node role="5.valueType:7" type="jetbrains.mps.lang.smodel.structure.SReferenceType:16" id="2732852465125742115" />
              </node>
            </node>
          </node>
        </node>
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="2732852465125742116">
          <node role="2.localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="2732852465125742117">
            <property name="1.name:0" value="newReferences" />
            <node role="2.type:3" type="jetbrains.mps.baseLanguage.collections.structure.MapType:7" id="2732852465125742118">
              <node role="5.keyType:7" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="2732852465125742119" />
              <node role="5.valueType:7" type="jetbrains.mps.lang.smodel.structure.SReferenceType:16" id="2732852465125742120" />
            </node>
            <node role="2.initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="2732852465125742121">
              <node role="2.creator:3" type="jetbrains.mps.baseLanguage.collections.structure.HashMapCreator:7" id="2732852465125742122">
                <node role="5.keyType:7" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="2732852465125742123" />
                <node role="5.valueType:7" type="jetbrains.mps.lang.smodel.structure.SReferenceType:16" id="2732852465125742124" />
              </node>
            </node>
          </node>
        </node>
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="2732852465125742126">
          <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="2732852465125742133">
            <node role="2.operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="2732852465125742128">
              <node role="2.operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="2732852465125742127">
                <link role="2.variableDeclaration:3" targetNodeId="2732852465125741914" resolveInfo="oldNode" />
              </node>
              <node role="2.operation:3" type="jetbrains.mps.lang.smodel.structure.Node_GetReferencesOperation:16" id="2732852465125742132" />
            </node>
            <node role="2.operation:3" type="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation:7" id="2732852465125742137">
              <node role="5.closure:7" type="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral:3" id="2732852465125742138">
                <node role="7.body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="2732852465125742139">
                  <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="2732852465125742142">
                    <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="2732852465125742157">
                      <node role="2.rValue:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="2732852465125742160">
                        <link role="2.variableDeclaration:3" targetNodeId="2732852465125742140" resolveInfo="ref" />
                      </node>
                      <node role="2.lValue:3" type="jetbrains.mps.baseLanguage.collections.structure.MapElement:7" id="2732852465125742148">
                        <node role="5.key:7" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="2732852465125742152">
                          <node role="2.operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="2732852465125742151">
                            <link role="2.variableDeclaration:3" targetNodeId="2732852465125742140" resolveInfo="ref" />
                          </node>
                          <node role="2.operation:3" type="jetbrains.mps.lang.smodel.structure.Reference_GetRoleOperation:16" id="2732852465125742156" />
                        </node>
                        <node role="5.map:7" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="2732852465125742143">
                          <link role="2.variableDeclaration:3" targetNodeId="2732852465125742105" resolveInfo="oldReferences" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="7.parameter:3" type="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration:7" id="2732852465125742140">
                  <property name="1.name:0" value="ref" />
                  <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.WildCardType:3" id="2732852465125742141" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="2732852465125742161">
          <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="2732852465125742162">
            <node role="2.operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="2732852465125742163">
              <node role="2.operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="2732852465125742179">
                <link role="2.variableDeclaration:3" targetNodeId="2732852465125741916" resolveInfo="newNode" />
              </node>
              <node role="2.operation:3" type="jetbrains.mps.lang.smodel.structure.Node_GetReferencesOperation:16" id="2732852465125742165" />
            </node>
            <node role="2.operation:3" type="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation:7" id="2732852465125742166">
              <node role="5.closure:7" type="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral:3" id="2732852465125742167">
                <node role="7.body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="2732852465125742168">
                  <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="2732852465125742169">
                    <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="2732852465125742170">
                      <node role="2.rValue:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="2732852465125742171">
                        <link role="2.variableDeclaration:3" targetNodeId="2732852465125742177" resolveInfo="ref" />
                      </node>
                      <node role="2.lValue:3" type="jetbrains.mps.baseLanguage.collections.structure.MapElement:7" id="2732852465125742172">
                        <node role="5.key:7" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="2732852465125742173">
                          <node role="2.operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="2732852465125742174">
                            <link role="2.variableDeclaration:3" targetNodeId="2732852465125742177" resolveInfo="ref" />
                          </node>
                          <node role="2.operation:3" type="jetbrains.mps.lang.smodel.structure.Reference_GetRoleOperation:16" id="2732852465125742175" />
                        </node>
                        <node role="5.map:7" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="2732852465125742180">
                          <link role="2.variableDeclaration:3" targetNodeId="2732852465125742117" resolveInfo="newReferences" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="7.parameter:3" type="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration:7" id="2732852465125742177">
                  <property name="1.name:0" value="ref" />
                  <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.WildCardType:3" id="2732852465125742178" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement:7" id="2732852465125741840">
          <node role="5.variable:7" type="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable:7" id="2732852465125741841">
            <property name="1.name:0" value="role" />
          </node>
          <node role="5.inputSequence:7" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="2732852465125741842">
            <node role="2.operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="2732852465125742182">
              <node role="2.operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="2732852465125742181">
                <link role="2.variableDeclaration:3" targetNodeId="2732852465125742105" resolveInfo="oldReferences" />
              </node>
              <node role="2.operation:3" type="jetbrains.mps.baseLanguage.collections.structure.GetKeysOperation:7" id="2732852465125742186" />
            </node>
            <node role="2.operation:3" type="jetbrains.mps.baseLanguage.collections.structure.UnionOperation:7" id="2732852465125741846">
              <node role="5.rightExpression:7" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="2732852465125742188">
                <node role="2.operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="2732852465125742187">
                  <link role="2.variableDeclaration:3" targetNodeId="2732852465125742117" resolveInfo="newReferences" />
                </node>
                <node role="2.operation:3" type="jetbrains.mps.baseLanguage.collections.structure.GetKeysOperation:7" id="2732852465125742192" />
              </node>
            </node>
          </node>
          <node role="2.body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="2732852465125741850">
            <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="2732852465125742220">
              <node role="2.localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="2732852465125742221">
                <property name="1.name:0" value="oldReference" />
                <node role="2.type:3" type="jetbrains.mps.lang.smodel.structure.SReferenceType:16" id="2732852465125742222" />
                <node role="2.initializer:3" type="jetbrains.mps.baseLanguage.collections.structure.MapElement:7" id="2732852465125742223">
                  <node role="5.key:7" type="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference:7" id="2732852465125742224">
                    <link role="5.variable:7" targetNodeId="2732852465125741841" resolveInfo="name" />
                  </node>
                  <node role="5.map:7" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="2732852465125742225">
                    <link role="2.variableDeclaration:3" targetNodeId="2732852465125742105" resolveInfo="oldReferences" />
                  </node>
                </node>
              </node>
            </node>
            <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="2732852465125742226">
              <node role="2.localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="2732852465125742227">
                <property name="1.name:0" value="newReference" />
                <node role="2.type:3" type="jetbrains.mps.lang.smodel.structure.SReferenceType:16" id="2732852465125742228" />
                <node role="2.initializer:3" type="jetbrains.mps.baseLanguage.collections.structure.MapElement:7" id="2732852465125742229">
                  <node role="5.key:7" type="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference:7" id="2732852465125742230">
                    <link role="5.variable:7" targetNodeId="2732852465125741841" resolveInfo="name" />
                  </node>
                  <node role="5.map:7" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="2732852465125742232">
                    <link role="2.variableDeclaration:3" targetNodeId="2732852465125742117" resolveInfo="newReferences" />
                  </node>
                </node>
              </node>
            </node>
            <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="2732852465125742235">
              <node role="2.ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="2732852465125742236">
                <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="2732852465125742940">
                  <node role="2.localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="2732852465125742941">
                    <property name="1.name:0" value="targetModel" />
                    <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="2732852465125742942">
                      <link role="2.classifier:3" targetNodeId="6.~SModelReference" resolveInfo="SModelReference" />
                    </node>
                    <node role="2.initializer:3" type="jetbrains.mps.baseLanguage.checkedDots.structure.CheckedDotExpression" id="2732852465125742961">
                      <node role="2.operand:3" type="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression:16" id="2732852465125742955">
                        <node role="3.leftExpression:16" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="2732852465125742950">
                          <node role="2.operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="2732852465125742945">
                            <node role="2.operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="2732852465125742944">
                              <link role="2.variableDeclaration:3" targetNodeId="2732852465125742227" resolveInfo="newReference" />
                            </node>
                            <node role="2.operation:3" type="jetbrains.mps.lang.smodel.structure.Reference_GetTargetOperation:16" id="2732852465125742949" />
                          </node>
                          <node role="2.operation:3" type="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation:16" id="2732852465125742954" />
                        </node>
                      </node>
                      <node role="2.operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="2732852465125742964">
                        <link role="2.baseMethodDeclaration:3" targetNodeId="6.~SModel.getSModelReference():jetbrains.mps.smodel.SModelReference" resolveInfo="getSModelReference" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="2732852465125742972">
                  <node role="2.ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="2732852465125742973">
                    <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.SingleLineComment:3" id="2732852465125742990">
                      <node role="2.commentPart:3" type="jetbrains.mps.baseLanguage.structure.TextCommentPart:3" id="2732852465125742991">
                        <property name="2.text:3" value="This is internal reference" />
                      </node>
                    </node>
                    <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="2732852465125742993">
                      <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="2732852465125742999">
                        <node role="2.rValue:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="2732852465125743002" />
                        <node role="2.lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="2732852465125742994">
                          <link role="2.variableDeclaration:3" targetNodeId="2732852465125742941" resolveInfo="targetModel" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="2.condition:3" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="2732852465125742981">
                    <node role="2.rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="2732852465125742985">
                      <node role="2.operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="2732852465125742984">
                        <link role="2.variableDeclaration:3" targetNodeId="2732852465125741916" resolveInfo="newNode" />
                      </node>
                      <node role="2.operation:3" type="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation:16" id="2732852465125742989" />
                    </node>
                    <node role="2.leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="2732852465125742976">
                      <node role="2.operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="2732852465125742977">
                        <node role="2.operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="2732852465125742978">
                          <link role="2.variableDeclaration:3" targetNodeId="2732852465125742227" resolveInfo="newReference" />
                        </node>
                        <node role="2.operation:3" type="jetbrains.mps.lang.smodel.structure.Reference_GetTargetOperation:16" id="2732852465125742979" />
                      </node>
                      <node role="2.operation:3" type="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation:16" id="2732852465125742980" />
                    </node>
                  </node>
                </node>
                <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="2732852465125742875">
                  <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="2732852465125742915">
                    <node role="2.operand:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="2732852465125742876">
                      <link role="2.variableDeclaration:3" targetNodeId="6359197607515881901" resolveInfo="myChangeSet" />
                    </node>
                    <node role="2.operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="2732852465125742919">
                      <link role="2.baseMethodDeclaration:3" targetNodeId="6359197607515881796" resolveInfo="add" />
                      <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="2732852465125742920">
                        <node role="2.creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="2732852465125742922">
                          <link role="2.baseMethodDeclaration:3" targetNodeId="2732852465125674155" resolveInfo="SetReferenceChange" />
                          <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="2732852465125742923">
                            <link role="2.variableDeclaration:3" targetNodeId="6359197607515881901" resolveInfo="myChangeSet" />
                          </node>
                          <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="2732852465125742928">
                            <node role="2.operand:3" type="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression:16" id="2732852465125742926">
                              <node role="3.leftExpression:16" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="2732852465125742925">
                                <link role="2.variableDeclaration:3" targetNodeId="2732852465125741914" resolveInfo="oldNode" />
                              </node>
                            </node>
                            <node role="2.operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="2732852465125742932">
                              <link role="2.baseMethodDeclaration:3" targetNodeId="6.~SNode.getSNodeId():jetbrains.mps.smodel.SNodeId" resolveInfo="getSNodeId" />
                            </node>
                          </node>
                          <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference:7" id="2732852465125742934">
                            <link role="5.variable:7" targetNodeId="2732852465125741841" resolveInfo="role" />
                          </node>
                          <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="2732852465125743004">
                            <link role="2.variableDeclaration:3" targetNodeId="2732852465125742941" resolveInfo="targetModel" />
                          </node>
                          <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.checkedDots.structure.CheckedDotExpression" id="2732852465125743023">
                            <node role="2.operand:3" type="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression:16" id="2732852465125743016">
                              <node role="3.leftExpression:16" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="2732852465125743011">
                                <node role="2.operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="2732852465125743006">
                                  <link role="2.variableDeclaration:3" targetNodeId="2732852465125742227" resolveInfo="newReference" />
                                </node>
                                <node role="2.operation:3" type="jetbrains.mps.lang.smodel.structure.Reference_GetTargetOperation:16" id="2732852465125743015" />
                              </node>
                            </node>
                            <node role="2.operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="2732852465125743022">
                              <link role="2.baseMethodDeclaration:3" targetNodeId="6.~SNode.getSNodeId():jetbrains.mps.smodel.SNodeId" resolveInfo="getSNodeId" />
                            </node>
                          </node>
                          <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="2732852465125762050">
                            <node role="2.operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="2732852465125762049">
                              <link role="2.variableDeclaration:3" targetNodeId="2732852465125742227" resolveInfo="newReference" />
                            </node>
                            <node role="2.operation:3" type="jetbrains.mps.lang.smodel.structure.Reference_GetResolveInfo:16" id="2732852465125762054" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="2.condition:3" type="jetbrains.mps.baseLanguage.structure.NotExpression:3" id="2732852465125742886">
                <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="2732852465125742889">
                  <link role="2.classConcept:3" targetNodeId="14.~ObjectUtils" resolveInfo="ObjectUtils" />
                  <link role="2.baseMethodDeclaration:3" targetNodeId="14.~ObjectUtils.equals(java.lang.Object,java.lang.Object):boolean" resolveInfo="equals" />
                  <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.checkedDots.structure.CheckedDotExpression" id="2732852465125742903">
                    <node role="2.operand:3" type="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression:16" id="2732852465125742893">
                      <node role="3.leftExpression:16" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="2732852465125742890">
                        <node role="2.operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="2732852465125742891">
                          <link role="2.variableDeclaration:3" targetNodeId="2732852465125742221" resolveInfo="oldReference" />
                        </node>
                        <node role="2.operation:3" type="jetbrains.mps.lang.smodel.structure.Reference_GetTargetOperation:16" id="2732852465125742892" />
                      </node>
                    </node>
                    <node role="2.operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="2732852465125742906">
                      <link role="2.baseMethodDeclaration:3" targetNodeId="6.~SNode.getSNodeId():jetbrains.mps.smodel.SNodeId" resolveInfo="getSNodeId" />
                    </node>
                  </node>
                  <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.checkedDots.structure.CheckedDotExpression" id="2732852465125742908">
                    <node role="2.operand:3" type="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression:16" id="2732852465125742909">
                      <node role="3.leftExpression:16" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="2732852465125742910">
                        <node role="2.operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="2732852465125742914">
                          <link role="2.variableDeclaration:3" targetNodeId="2732852465125742227" resolveInfo="newReference" />
                        </node>
                        <node role="2.operation:3" type="jetbrains.mps.lang.smodel.structure.Reference_GetTargetOperation:16" id="2732852465125742912" />
                      </node>
                    </node>
                    <node role="2.operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="2732852465125742913">
                      <link role="2.baseMethodDeclaration:3" targetNodeId="6.~SNode.getSNodeId():jetbrains.mps.smodel.SNodeId" resolveInfo="getSNodeId" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="2.parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="2732852465125741914">
        <property name="1.name:0" value="oldNode" />
        <node role="2.type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="2732852465125741915" />
      </node>
      <node role="2.parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="2732852465125741916">
        <property name="1.name:0" value="newNode" />
        <node role="2.type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="2732852465125741917" />
      </node>
    </node>
    <node role="2.method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="4972886494893367124">
      <property name="1.name:0" value="buildNodeChanges" />
      <node role="2.returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="4972886494893367125" />
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="4972886494893367128" />
      <node role="2.body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="4972886494893367127">
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="4972886494893415590">
          <node role="2.localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="4972886494893415591">
            <property name="1.name:0" value="nodeId" />
            <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="4972886494893415592">
              <link role="2.classifier:3" targetNodeId="6.~SNodeId" resolveInfo="SNodeId" />
            </node>
            <node role="2.initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4972886494893415593">
              <node role="2.operand:3" type="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression:16" id="4972886494893415594">
                <node role="3.leftExpression:16" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="4972886494893415595">
                  <link role="2.variableDeclaration:3" targetNodeId="4972886494893367133" resolveInfo="oldNode" />
                </node>
              </node>
              <node role="2.operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="4972886494893415596">
                <link role="2.baseMethodDeclaration:3" targetNodeId="6.~SNode.getSNodeId():jetbrains.mps.smodel.SNodeId" resolveInfo="getSNodeId" />
              </node>
            </node>
          </node>
        </node>
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="4972886494893394079">
          <node role="2.localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="4972886494893394080">
            <property name="1.name:0" value="newNode" />
            <node role="2.type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="4972886494893394090" />
            <node role="2.initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4972886494893394082">
              <node role="2.operand:3" type="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression:16" id="4972886494893394083">
                <node role="3.leftExpression:16" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="4972886494893394084">
                  <link role="2.variableDeclaration:3" targetNodeId="6359197607515881842" resolveInfo="myNewModel" />
                </node>
              </node>
              <node role="2.operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="4972886494893394085">
                <link role="2.baseMethodDeclaration:3" targetNodeId="6.~SModel.getNodeById(jetbrains.mps.smodel.SNodeId):jetbrains.mps.smodel.SNode" resolveInfo="getNodeById" />
                <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="4972886494893415597">
                  <link role="2.variableDeclaration:3" targetNodeId="4972886494893415591" resolveInfo="nodeId" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.Statement:3" id="2732852465125678674" />
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="2732852465125679241">
          <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceMethodCall:3" id="2732852465125679242">
            <link role="2.baseMethodDeclaration:3" targetNodeId="2732852465125679230" resolveInfo="buildPropertyChanges" />
            <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="2732852465125679243">
              <link role="2.variableDeclaration:3" targetNodeId="4972886494893367133" resolveInfo="oldNode" />
            </node>
            <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="2732852465125679245">
              <link role="2.variableDeclaration:3" targetNodeId="4972886494893394080" resolveInfo="newNode" />
            </node>
          </node>
        </node>
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="2732852465125741919">
          <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceMethodCall:3" id="2732852465125741920">
            <link role="2.baseMethodDeclaration:3" targetNodeId="2732852465125741808" resolveInfo="buildReferenceChanges" />
            <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="2732852465125741921">
              <link role="2.variableDeclaration:3" targetNodeId="4972886494893367133" resolveInfo="oldNode" />
            </node>
            <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="2732852465125741927">
              <link role="2.variableDeclaration:3" targetNodeId="4972886494893394080" resolveInfo="newNode" />
            </node>
          </node>
        </node>
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.Statement:3" id="2732852465125678676" />
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="4972886494893394200">
          <node role="2.localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="4972886494893394201">
            <property name="1.name:0" value="roles" />
            <node role="2.type:3" type="jetbrains.mps.baseLanguage.collections.structure.SetType:7" id="4972886494893394202">
              <node role="5.elementType:7" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="4972886494893394203" />
            </node>
            <node role="2.initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="4972886494893394204">
              <node role="2.creator:3" type="jetbrains.mps.baseLanguage.collections.structure.HashSetCreator:7" id="4972886494893394205">
                <node role="5.elementType:7" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="4972886494893394206" />
                <node role="5.copyFrom:7" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4972886494893394207">
                  <node role="2.operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4972886494893394208">
                    <node role="2.operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4972886494893394209">
                      <node role="2.operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="4972886494893394210">
                        <link role="2.variableDeclaration:3" targetNodeId="4972886494893367133" resolveInfo="oldNode" />
                      </node>
                      <node role="2.operation:3" type="jetbrains.mps.lang.smodel.structure.Node_GetChildrenOperation:16" id="4972886494893394211" />
                    </node>
                    <node role="2.operation:3" type="jetbrains.mps.baseLanguage.collections.structure.ConcatOperation:7" id="4972886494893394212">
                      <node role="5.rightExpression:7" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4972886494893394213">
                        <node role="2.operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="4972886494893394214">
                          <link role="2.variableDeclaration:3" targetNodeId="4972886494893394080" resolveInfo="newNode" />
                        </node>
                        <node role="2.operation:3" type="jetbrains.mps.lang.smodel.structure.Node_GetChildrenOperation:16" id="4972886494893394215" />
                      </node>
                    </node>
                  </node>
                  <node role="2.operation:3" type="jetbrains.mps.baseLanguage.collections.structure.SelectOperation:7" id="4972886494893394216">
                    <node role="5.closure:7" type="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral:3" id="4972886494893394217">
                      <node role="7.body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="4972886494893394218">
                        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="4972886494893394219">
                          <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4972886494893394220">
                            <node role="2.operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="4972886494893394221">
                              <link role="2.variableDeclaration:3" targetNodeId="4972886494893394223" resolveInfo="ch" />
                            </node>
                            <node role="2.operation:3" type="jetbrains.mps.lang.smodel.structure.Node_GetContainingRoleOperation:16" id="4972886494893394222" />
                          </node>
                        </node>
                      </node>
                      <node role="7.parameter:3" type="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration:7" id="4972886494893394223">
                        <property name="1.name:0" value="ch" />
                        <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.WildCardType:3" id="4972886494893394224" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement:7" id="4972886494893394226">
          <node role="5.variable:7" type="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable:7" id="4972886494893394227">
            <property name="1.name:0" value="role" />
          </node>
          <node role="5.inputSequence:7" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="4972886494893394230">
            <link role="2.variableDeclaration:3" targetNodeId="4972886494893394201" resolveInfo="roles" />
          </node>
          <node role="2.body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="4972886494893394229">
            <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="4972886494893399552">
              <node role="2.localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="4972886494893399553">
                <property name="1.name:0" value="oldChildren" />
                <node role="2.type:3" type="jetbrains.mps.baseLanguage.collections.structure.ListType:7" id="4972886494893399554">
                  <node role="5.elementType:7" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="4972886494893399557" />
                </node>
                <node role="2.initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4972886494893399562">
                  <node role="2.operand:3" type="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression:16" id="4972886494893399560">
                    <node role="3.leftExpression:16" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="4972886494893399559">
                      <link role="2.variableDeclaration:3" targetNodeId="4972886494893367133" resolveInfo="oldNode" />
                    </node>
                  </node>
                  <node role="2.operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="4972886494893399566">
                    <link role="2.baseMethodDeclaration:3" targetNodeId="6.~SNode.getChildren(java.lang.String):java.util.List" resolveInfo="getChildren" />
                    <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference:7" id="4972886494893399567">
                      <link role="5.variable:7" targetNodeId="4972886494893394227" resolveInfo="role" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="4972886494893399568">
              <node role="2.localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="4972886494893399569">
                <property name="1.name:0" value="newChildren" />
                <node role="2.type:3" type="jetbrains.mps.baseLanguage.collections.structure.ListType:7" id="4972886494893399570">
                  <node role="5.elementType:7" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="4972886494893399571" />
                </node>
                <node role="2.initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4972886494893399572">
                  <node role="2.operand:3" type="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression:16" id="4972886494893399573">
                    <node role="3.leftExpression:16" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="4972886494893399577">
                      <link role="2.variableDeclaration:3" targetNodeId="4972886494893394080" resolveInfo="newNode" />
                    </node>
                  </node>
                  <node role="2.operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="4972886494893399575">
                    <link role="2.baseMethodDeclaration:3" targetNodeId="6.~SNode.getChildren(java.lang.String):java.util.List" resolveInfo="getChildren" />
                    <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference:7" id="4972886494893399576">
                      <link role="5.variable:7" targetNodeId="4972886494893394227" resolveInfo="role" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="4972886494893401370">
              <node role="2.localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="4972886494893401371">
                <property name="1.name:0" value="oldIds" />
                <node role="2.type:3" type="jetbrains.mps.baseLanguage.collections.structure.ListType:7" id="4972886494893401421">
                  <node role="5.elementType:7" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="4972886494893401422">
                    <link role="2.classifier:3" targetNodeId="6.~SNodeId" resolveInfo="SNodeId" />
                  </node>
                </node>
                <node role="2.initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4972886494893401415">
                  <node role="2.operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4972886494893401374">
                    <node role="2.operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="4972886494893401375">
                      <link role="2.variableDeclaration:3" targetNodeId="4972886494893399553" resolveInfo="oldChildren" />
                    </node>
                    <node role="2.operation:3" type="jetbrains.mps.baseLanguage.collections.structure.SelectOperation:7" id="4972886494893401376">
                      <node role="5.closure:7" type="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral:3" id="4972886494893401377">
                        <node role="7.body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="4972886494893401378">
                          <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="4972886494893401379">
                            <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4972886494893401380">
                              <node role="2.operand:3" type="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression:16" id="4972886494893401381">
                                <node role="3.leftExpression:16" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="4972886494893401382">
                                  <link role="2.variableDeclaration:3" targetNodeId="4972886494893401384" resolveInfo="n" />
                                </node>
                              </node>
                              <node role="2.operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="4972886494893401383">
                                <link role="2.baseMethodDeclaration:3" targetNodeId="6.~SNode.getSNodeId():jetbrains.mps.smodel.SNodeId" resolveInfo="getSNodeId" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="7.parameter:3" type="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration:7" id="4972886494893401384">
                          <property name="1.name:0" value="n" />
                          <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.WildCardType:3" id="4972886494893401385" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="2.operation:3" type="jetbrains.mps.baseLanguage.collections.structure.ToListOperation:7" id="4972886494893401419" />
                </node>
              </node>
            </node>
            <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="4972886494893401386">
              <node role="2.localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="4972886494893401387">
                <property name="1.name:0" value="newIds" />
                <node role="2.type:3" type="jetbrains.mps.baseLanguage.collections.structure.ListType:7" id="4972886494893401424">
                  <node role="5.elementType:7" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="4972886494893401425">
                    <link role="2.classifier:3" targetNodeId="6.~SNodeId" resolveInfo="SNodeId" />
                  </node>
                </node>
                <node role="2.initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4972886494893401427">
                  <node role="2.operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4972886494893401390">
                    <node role="2.operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="4972886494893401402">
                      <link role="2.variableDeclaration:3" targetNodeId="4972886494893399569" resolveInfo="newChildren" />
                    </node>
                    <node role="2.operation:3" type="jetbrains.mps.baseLanguage.collections.structure.SelectOperation:7" id="4972886494893401392">
                      <node role="5.closure:7" type="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral:3" id="4972886494893401393">
                        <node role="7.body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="4972886494893401394">
                          <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="4972886494893401395">
                            <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4972886494893401396">
                              <node role="2.operand:3" type="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression:16" id="4972886494893401397">
                                <node role="3.leftExpression:16" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="4972886494893401398">
                                  <link role="2.variableDeclaration:3" targetNodeId="4972886494893401400" resolveInfo="n" />
                                </node>
                              </node>
                              <node role="2.operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="4972886494893401399">
                                <link role="2.baseMethodDeclaration:3" targetNodeId="6.~SNode.getSNodeId():jetbrains.mps.smodel.SNodeId" resolveInfo="getSNodeId" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="7.parameter:3" type="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration:7" id="4972886494893401400">
                          <property name="1.name:0" value="n" />
                          <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.WildCardType:3" id="4972886494893401401" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="2.operation:3" type="jetbrains.mps.baseLanguage.collections.structure.ToListOperation:7" id="4972886494893401431" />
                </node>
              </node>
            </node>
            <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="4972886494893415492">
              <node role="2.localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="4972886494893415493">
                <property name="1.name:0" value="finder" />
                <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="4972886494893415494">
                  <link role="2.classifier:3" targetNodeId="9.4972886494893373483:0" resolveInfo="LongestCommonSubsequenceFinder" />
                  <node role="2.parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="4972886494893415495">
                    <link role="2.classifier:3" targetNodeId="6.~SNodeId" resolveInfo="SNodeId" />
                  </node>
                </node>
                <node role="2.initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="4972886494893415496">
                  <node role="2.creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="4972886494893415497">
                    <link role="2.baseMethodDeclaration:3" targetNodeId="9.4972886494893373484:0" resolveInfo="LongestCommonSubsequenceFinder" />
                    <node role="2.typeParameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="4972886494893415498">
                      <link role="2.classifier:3" targetNodeId="6.~SNodeId" resolveInfo="SNodeId" />
                    </node>
                    <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="4972886494893415499">
                      <link role="2.variableDeclaration:3" targetNodeId="4972886494893401371" resolveInfo="oldIds" />
                    </node>
                    <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="4972886494893415500">
                      <link role="2.variableDeclaration:3" targetNodeId="4972886494893401387" resolveInfo="newIds" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.Statement:3" id="4972886494893418366" />
            <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.SingleLineComment:3" id="2732852465125678666">
              <node role="2.commentPart:3" type="jetbrains.mps.baseLanguage.structure.TextCommentPart:3" id="2732852465125678668">
                <property name="2.text:3" value="Finding insertings, deletings and replacings" />
              </node>
            </node>
            <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="3056334993733464204">
              <node role="2.localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="3056334993733464205">
                <property name="1.name:0" value="differentIndices" />
                <node role="2.type:3" type="jetbrains.mps.baseLanguage.collections.structure.ListType:7" id="3056334993733464206">
                  <node role="5.elementType:7" type="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleType:2" id="3056334993733464207">
                    <node role="11.componentType:2" type="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleType:2" id="3056334993733464208">
                      <node role="11.componentType:2" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="3056334993733464209" />
                      <node role="11.componentType:2" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="3056334993733464210" />
                    </node>
                    <node role="11.componentType:2" type="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleType:2" id="3056334993733464211">
                      <node role="11.componentType:2" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="3056334993733464212" />
                      <node role="11.componentType:2" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="3056334993733464213" />
                    </node>
                  </node>
                </node>
                <node role="2.initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="3056334993733464214">
                  <node role="2.operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="3056334993733464215">
                    <link role="2.variableDeclaration:3" targetNodeId="4972886494893415493" resolveInfo="finder" />
                  </node>
                  <node role="2.operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="3056334993733464216">
                    <link role="2.baseMethodDeclaration:3" targetNodeId="9.4972886494893402109:0" resolveInfo="getDifferentIndices" />
                  </node>
                </node>
              </node>
            </node>
            <node role="2.statement:3" type="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement:7" id="4972886494893401457">
              <node role="5.variable:7" type="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable:7" id="4972886494893401458">
                <property name="1.name:0" value="indices" />
              </node>
              <node role="2.body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="4972886494893401460">
                <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="4972886494893415522">
                  <node role="2.localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="4972886494893415523">
                    <property name="1.name:0" value="oldIndices" />
                    <node role="2.type:3" type="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleType:2" id="4972886494893415524">
                      <node role="11.componentType:2" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="4972886494893415528" />
                      <node role="11.componentType:2" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="4972886494893415527" />
                    </node>
                    <node role="2.initializer:3" type="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleMemberAccessExpression:2" id="4972886494893415531">
                      <node role="11.index:2" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="4972886494893418693">
                        <property name="2.value:3" value="0" />
                      </node>
                      <node role="11.tuple:2" type="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference:7" id="4972886494893415530">
                        <link role="5.variable:7" targetNodeId="4972886494893401458" resolveInfo="indices" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="4972886494893415535">
                  <node role="2.localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="4972886494893415536">
                    <property name="1.name:0" value="newIndices" />
                    <node role="2.type:3" type="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleType:2" id="4972886494893415537">
                      <node role="11.componentType:2" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="4972886494893415538" />
                      <node role="11.componentType:2" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="4972886494893415539" />
                    </node>
                    <node role="2.initializer:3" type="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleMemberAccessExpression:2" id="4972886494893415540">
                      <node role="11.tuple:2" type="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference:7" id="4972886494893415542">
                        <link role="5.variable:7" targetNodeId="4972886494893401458" resolveInfo="indices" />
                      </node>
                      <node role="11.index:2" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="4972886494893415543">
                        <property name="2.value:3" value="1" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="4972886494893415545">
                  <node role="2.ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="4972886494893415546">
                    <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="4972886494893415599">
                      <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4972886494893415601">
                        <node role="2.operand:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="4972886494893415600">
                          <link role="2.variableDeclaration:3" targetNodeId="6359197607515881901" resolveInfo="myChangeSet" />
                        </node>
                        <node role="2.operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="4972886494893415605">
                          <link role="2.baseMethodDeclaration:3" targetNodeId="6359197607515881796" resolveInfo="add" />
                          <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="4972886494893415608">
                            <node role="2.creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="4972886494893418198">
                              <link role="2.baseMethodDeclaration:3" targetNodeId="4972886494893365177" resolveInfo="InsertNodeGroupChange" />
                              <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="4972886494893418199">
                                <link role="2.variableDeclaration:3" targetNodeId="6359197607515881901" resolveInfo="myChangeSet" />
                              </node>
                              <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="4972886494893418201">
                                <link role="2.variableDeclaration:3" targetNodeId="4972886494893415591" resolveInfo="nodeId" />
                              </node>
                              <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference:7" id="4972886494893418204">
                                <link role="5.variable:7" targetNodeId="4972886494893394227" resolveInfo="role" />
                              </node>
                              <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleMemberAccessExpression:2" id="4972886494893418206">
                                <node role="11.index:2" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="4972886494893418209">
                                  <property name="2.value:3" value="0" />
                                </node>
                                <node role="11.tuple:2" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="4972886494893418205">
                                  <link role="2.variableDeclaration:3" targetNodeId="4972886494893415523" resolveInfo="oldIndices" />
                                </node>
                              </node>
                              <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleMemberAccessExpression:2" id="4972886494893418212">
                                <node role="11.index:2" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="4972886494893418215">
                                  <property name="2.value:3" value="0" />
                                </node>
                                <node role="11.tuple:2" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="4972886494893418211">
                                  <link role="2.variableDeclaration:3" targetNodeId="4972886494893415536" resolveInfo="newIndices" />
                                </node>
                              </node>
                              <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleMemberAccessExpression:2" id="4972886494893418218">
                                <node role="11.index:2" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="4972886494893418221">
                                  <property name="2.value:3" value="1" />
                                </node>
                                <node role="11.tuple:2" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="4972886494893418217">
                                  <link role="2.variableDeclaration:3" targetNodeId="4972886494893415536" resolveInfo="newIndices" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="2.condition:3" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="4972886494893415557">
                    <node role="2.rightExpression:3" type="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleMemberAccessExpression:2" id="4972886494893415561">
                      <node role="11.tuple:2" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="4972886494893415560">
                        <link role="2.variableDeclaration:3" targetNodeId="4972886494893415523" resolveInfo="oldIndices" />
                      </node>
                      <node role="11.index:2" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="4972886494893415565">
                        <property name="2.value:3" value="1" />
                      </node>
                    </node>
                    <node role="2.leftExpression:3" type="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleMemberAccessExpression:2" id="4972886494893415553">
                      <node role="11.index:2" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="4972886494893415556">
                        <property name="2.value:3" value="0" />
                      </node>
                      <node role="11.tuple:2" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="4972886494893415549">
                        <link role="2.variableDeclaration:3" targetNodeId="4972886494893415523" resolveInfo="oldIndices" />
                      </node>
                    </node>
                  </node>
                  <node role="2.elsifClauses:3" type="jetbrains.mps.baseLanguage.structure.ElsifClause:3" id="4972886494893415568">
                    <node role="2.condition:3" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="4972886494893415576">
                      <node role="2.rightExpression:3" type="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleMemberAccessExpression:2" id="4972886494893415580">
                        <node role="11.index:2" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="4972886494893415583">
                          <property name="2.value:3" value="1" />
                        </node>
                        <node role="11.tuple:2" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="4972886494893415579">
                          <link role="2.variableDeclaration:3" targetNodeId="4972886494893415536" resolveInfo="newIndices" />
                        </node>
                      </node>
                      <node role="2.leftExpression:3" type="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleMemberAccessExpression:2" id="4972886494893415572">
                        <node role="11.index:2" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="4972886494893415575">
                          <property name="2.value:3" value="0" />
                        </node>
                        <node role="11.tuple:2" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="4972886494893415571">
                          <link role="2.variableDeclaration:3" targetNodeId="4972886494893415536" resolveInfo="newIndices" />
                        </node>
                      </node>
                    </node>
                    <node role="2.statementList:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="4972886494893415570">
                      <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="4972886494893418222">
                        <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4972886494893418223">
                          <node role="2.operand:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="4972886494893418224">
                            <link role="2.variableDeclaration:3" targetNodeId="6359197607515881901" resolveInfo="myChangeSet" />
                          </node>
                          <node role="2.operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="4972886494893418225">
                            <link role="2.baseMethodDeclaration:3" targetNodeId="6359197607515881796" resolveInfo="add" />
                            <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="4972886494893418226">
                              <node role="2.creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="4972886494893418227">
                                <link role="2.baseMethodDeclaration:3" targetNodeId="4972886494893365305" resolveInfo="DeleteNodeGroupChange" />
                                <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="4972886494893418228">
                                  <link role="2.variableDeclaration:3" targetNodeId="6359197607515881901" resolveInfo="myChangeSet" />
                                </node>
                                <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="4972886494893418229">
                                  <link role="2.variableDeclaration:3" targetNodeId="4972886494893415591" resolveInfo="nodeId" />
                                </node>
                                <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference:7" id="4972886494893418230">
                                  <link role="5.variable:7" targetNodeId="4972886494893394227" resolveInfo="role" />
                                </node>
                                <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleMemberAccessExpression:2" id="4972886494893418231">
                                  <node role="11.index:2" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="4972886494893418232">
                                    <property name="2.value:3" value="0" />
                                  </node>
                                  <node role="11.tuple:2" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="4972886494893418233">
                                    <link role="2.variableDeclaration:3" targetNodeId="4972886494893415523" resolveInfo="oldIndices" />
                                  </node>
                                </node>
                                <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleMemberAccessExpression:2" id="4972886494893418234">
                                  <node role="11.index:2" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="4972886494893418235">
                                    <property name="2.value:3" value="1" />
                                  </node>
                                  <node role="11.tuple:2" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="4972886494893418240">
                                    <link role="2.variableDeclaration:3" targetNodeId="4972886494893415523" resolveInfo="oldIndices" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="2.ifFalseStatement:3" type="jetbrains.mps.baseLanguage.structure.BlockStatement:3" id="4972886494893415586">
                    <node role="2.statements:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="4972886494893415587">
                      <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="4972886494893418242">
                        <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4972886494893418244">
                          <node role="2.operand:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="4972886494893418243">
                            <link role="2.variableDeclaration:3" targetNodeId="6359197607515881901" resolveInfo="myChangeSet" />
                          </node>
                          <node role="2.operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="4972886494893418248">
                            <link role="2.baseMethodDeclaration:3" targetNodeId="6359197607515881796" resolveInfo="add" />
                            <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="4972886494893418249">
                              <node role="2.creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="4972886494893418251">
                                <link role="2.baseMethodDeclaration:3" targetNodeId="4972886494893365513" resolveInfo="ReplaceNodeGroupChange" />
                                <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="4972886494893418259">
                                  <link role="2.variableDeclaration:3" targetNodeId="6359197607515881901" resolveInfo="myChangeSet" />
                                </node>
                                <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="4972886494893418261">
                                  <link role="2.variableDeclaration:3" targetNodeId="4972886494893415591" resolveInfo="nodeId" />
                                </node>
                                <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference:7" id="4972886494893418264">
                                  <link role="5.variable:7" targetNodeId="4972886494893394227" resolveInfo="role" />
                                </node>
                                <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleMemberAccessExpression:2" id="4972886494893418266">
                                  <node role="11.index:2" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="4972886494893418269">
                                    <property name="2.value:3" value="0" />
                                  </node>
                                  <node role="11.tuple:2" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="4972886494893418265">
                                    <link role="2.variableDeclaration:3" targetNodeId="4972886494893415523" resolveInfo="oldIndices" />
                                  </node>
                                </node>
                                <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleMemberAccessExpression:2" id="4972886494893418272">
                                  <node role="11.index:2" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="4972886494893418275">
                                    <property name="2.value:3" value="1" />
                                  </node>
                                  <node role="11.tuple:2" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="4972886494893418278">
                                    <link role="2.variableDeclaration:3" targetNodeId="4972886494893415523" resolveInfo="oldIndices" />
                                  </node>
                                </node>
                                <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleMemberAccessExpression:2" id="4972886494893418281">
                                  <node role="11.index:2" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="4972886494893418284">
                                    <property name="2.value:3" value="0" />
                                  </node>
                                  <node role="11.tuple:2" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="4972886494893418280">
                                    <link role="2.variableDeclaration:3" targetNodeId="4972886494893415536" resolveInfo="newIndices" />
                                  </node>
                                </node>
                                <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleMemberAccessExpression:2" id="4972886494893418292">
                                  <node role="11.index:2" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="4972886494893418295">
                                    <property name="2.value:3" value="1" />
                                  </node>
                                  <node role="11.tuple:2" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="4972886494893418291">
                                    <link role="2.variableDeclaration:3" targetNodeId="4972886494893415536" resolveInfo="newIndices" />
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
              <node role="5.inputSequence:7" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="3056334993733464217">
                <link role="2.variableDeclaration:3" targetNodeId="3056334993733464205" resolveInfo="differentIndices" />
              </node>
            </node>
            <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.Statement:3" id="4972886494893418365" />
            <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.SingleLineComment:3" id="2732852465125678670">
              <node role="2.commentPart:3" type="jetbrains.mps.baseLanguage.structure.TextCommentPart:3" id="2732852465125678671">
                <property name="2.text:3" value="Finding changes for children" />
              </node>
            </node>
            <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="2729259761015898452">
              <node role="2.localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="2729259761015898453">
                <property name="1.name:0" value="commonIndices" />
                <node role="2.type:3" type="jetbrains.mps.baseLanguage.collections.structure.ListType:7" id="2729259761015898454">
                  <node role="5.elementType:7" type="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleType:2" id="2729259761015898455">
                    <node role="11.componentType:2" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="2729259761015898456" />
                    <node role="11.componentType:2" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="2729259761015898457" />
                  </node>
                </node>
                <node role="2.initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="2729259761015898458">
                  <node role="2.operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="2729259761015898459">
                    <link role="2.variableDeclaration:3" targetNodeId="4972886494893415493" resolveInfo="finder" />
                  </node>
                  <node role="2.operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="2729259761015898460">
                    <link role="2.baseMethodDeclaration:3" targetNodeId="9.4972886494893401870:0" resolveInfo="getCommonIndices" />
                  </node>
                </node>
              </node>
            </node>
            <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="4972886494893418349">
              <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4972886494893418368">
                <node role="2.operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4972886494893418350">
                  <node role="2.operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="2729259761015898461">
                    <link role="2.variableDeclaration:3" targetNodeId="2729259761015898453" resolveInfo="commonIndices" />
                  </node>
                  <node role="2.operation:3" type="jetbrains.mps.baseLanguage.collections.structure.SelectOperation:7" id="4972886494893418354">
                    <node role="5.closure:7" type="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral:3" id="4972886494893418355">
                      <node role="7.body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="4972886494893418356">
                        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="4972886494893418357">
                          <node role="2.expression:3" type="jetbrains.mps.baseLanguage.collections.structure.ListElementAccessExpression:7" id="4972886494893418358">
                            <node role="5.index:7" type="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleMemberAccessExpression:2" id="4972886494893418359">
                              <node role="11.tuple:2" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="4972886494893418360">
                                <link role="2.variableDeclaration:3" targetNodeId="4972886494893418363" resolveInfo="in" />
                              </node>
                              <node role="11.index:2" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="4972886494893418361">
                                <property name="2.value:3" value="0" />
                              </node>
                            </node>
                            <node role="5.list:7" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="4972886494893418362">
                              <link role="2.variableDeclaration:3" targetNodeId="4972886494893399553" resolveInfo="oldChildren" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="7.parameter:3" type="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration:7" id="4972886494893418363">
                        <property name="1.name:0" value="in" />
                        <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.WildCardType:3" id="4972886494893418364" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="2.operation:3" type="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation:7" id="4972886494893418372">
                  <node role="5.closure:7" type="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral:3" id="4972886494893418373">
                    <node role="7.body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="4972886494893418374">
                      <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="4972886494893418379">
                        <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceMethodCall:3" id="4972886494893418380">
                          <link role="2.baseMethodDeclaration:3" targetNodeId="4972886494893367124" resolveInfo="buildNodeChanges" />
                          <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="4972886494893418381">
                            <link role="2.variableDeclaration:3" targetNodeId="4972886494893418375" resolveInfo="child" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="7.parameter:3" type="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration:7" id="4972886494893418375">
                      <property name="1.name:0" value="child" />
                      <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.WildCardType:3" id="4972886494893418376" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="2.parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="4972886494893367133">
        <property name="1.name:0" value="oldNode" />
        <node role="2.type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="4972886494893367134" />
      </node>
    </node>
    <node role="2.method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="6359197607515881942">
      <property name="1.name:0" value="buildChanges" />
      <node role="2.returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="6359197607515881943" />
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="6359197607515881946" />
      <node role="2.body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="6359197607515881945">
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="3529748934259302">
          <node role="2.localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="3529748934259303">
            <property name="1.name:0" value="rootIds" />
            <node role="2.type:3" type="jetbrains.mps.baseLanguage.closures.structure.FunctionType:3" id="3529748934259304">
              <node role="7.parameterType:3" type="jetbrains.mps.lang.smodel.structure.SModelType:16" id="3529748934259305" />
              <node role="7.resultType:3" type="jetbrains.mps.baseLanguage.collections.structure.SetType:7" id="3529748934259306">
                <node role="5.elementType:7" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="3529748934259307">
                  <link role="2.classifier:3" targetNodeId="6.~SNodeId" resolveInfo="SNodeId" />
                </node>
              </node>
            </node>
            <node role="2.initializer:3" type="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral:3" id="3529748934259308">
              <node role="7.body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="3529748934259309">
                <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="3529748934259310">
                  <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="3529748934259311">
                    <node role="2.creator:3" type="jetbrains.mps.baseLanguage.collections.structure.HashSetCreator:7" id="3529748934259312">
                      <node role="5.copyFrom:7" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="3529748934259313">
                        <node role="2.operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="3529748934259314">
                          <node role="2.operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="3529748934259315">
                            <link role="2.variableDeclaration:3" targetNodeId="3529748934259328" resolveInfo="m" />
                          </node>
                          <node role="2.operation:3" type="jetbrains.mps.lang.smodel.structure.Model_RootsOperation:16" id="3529748934259316" />
                        </node>
                        <node role="2.operation:3" type="jetbrains.mps.baseLanguage.collections.structure.SelectOperation:7" id="3529748934259317">
                          <node role="5.closure:7" type="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral:3" id="3529748934259318">
                            <node role="7.body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="3529748934259319">
                              <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="3529748934259320">
                                <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="3529748934259321">
                                  <node role="2.operand:3" type="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression:16" id="3529748934259322">
                                    <node role="3.leftExpression:16" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="3529748934259323">
                                      <link role="2.variableDeclaration:3" targetNodeId="3529748934259325" resolveInfo="node" />
                                    </node>
                                  </node>
                                  <node role="2.operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="3529748934259324">
                                    <link role="2.baseMethodDeclaration:3" targetNodeId="6.~SNode.getSNodeId():jetbrains.mps.smodel.SNodeId" resolveInfo="getSNodeId" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node role="7.parameter:3" type="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration:7" id="3529748934259325">
                              <property name="1.name:0" value="node" />
                              <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.WildCardType:3" id="3529748934259326" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="5.elementType:7" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="3529748934259327">
                        <link role="2.classifier:3" targetNodeId="6.~SNodeId" resolveInfo="SNodeId" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="7.parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="3529748934259328">
                <property name="1.name:0" value="m" />
                <node role="2.type:3" type="jetbrains.mps.lang.smodel.structure.SModelType:16" id="3529748934259329" />
              </node>
            </node>
          </node>
        </node>
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="6359197607515894783">
          <node role="2.localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="6359197607515894784">
            <property name="1.name:0" value="oldRootIds" />
            <node role="2.type:3" type="jetbrains.mps.baseLanguage.collections.structure.SetType:7" id="6359197607515894785">
              <node role="5.elementType:7" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="6359197607515894786">
                <link role="2.classifier:3" targetNodeId="6.~SNodeId" resolveInfo="SNodeId" />
              </node>
            </node>
            <node role="2.initializer:3" type="jetbrains.mps.baseLanguage.closures.structure.CompactInvokeFunctionExpression:3" id="3529748934259332">
              <node role="7.parameter:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="3529748934264133">
                <link role="2.variableDeclaration:3" targetNodeId="6359197607515881838" resolveInfo="myOldModel" />
              </node>
              <node role="7.function:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="3529748934259333">
                <link role="2.variableDeclaration:3" targetNodeId="3529748934259303" resolveInfo="rootIds" />
              </node>
            </node>
          </node>
        </node>
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="6359197607515894804">
          <node role="2.localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="6359197607515894805">
            <property name="1.name:0" value="newRootIds" />
            <node role="2.type:3" type="jetbrains.mps.baseLanguage.collections.structure.SetType:7" id="6359197607515894806">
              <node role="5.elementType:7" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="6359197607515894807">
                <link role="2.classifier:3" targetNodeId="6.~SNodeId" resolveInfo="SNodeId" />
              </node>
            </node>
            <node role="2.initializer:3" type="jetbrains.mps.baseLanguage.closures.structure.CompactInvokeFunctionExpression:3" id="3529748934264136">
              <node role="7.function:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="3529748934264137">
                <link role="2.variableDeclaration:3" targetNodeId="3529748934259303" resolveInfo="rootIds" />
              </node>
              <node role="7.parameter:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="3529748934264138">
                <link role="2.variableDeclaration:3" targetNodeId="6359197607515881842" resolveInfo="myNewModel" />
              </node>
            </node>
          </node>
        </node>
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.Statement:3" id="6359197607515894894" />
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="6359197607515895115">
          <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="6359197607515895117">
            <node role="2.operand:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="6359197607515895116">
              <link role="2.variableDeclaration:3" targetNodeId="6359197607515881901" resolveInfo="myChangeSet" />
            </node>
            <node role="2.operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="6359197607515895121">
              <link role="2.baseMethodDeclaration:3" targetNodeId="6359197607515895122" resolveInfo="addAll" />
              <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="6359197607515895137">
                <node role="2.operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="6359197607515895138">
                  <node role="2.operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="6359197607515895139">
                    <link role="2.variableDeclaration:3" targetNodeId="6359197607515894805" resolveInfo="newRootIds" />
                  </node>
                  <node role="2.operation:3" type="jetbrains.mps.baseLanguage.collections.structure.ExcludeOperation:7" id="6359197607515895140">
                    <node role="5.rightExpression:7" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="6359197607515895141">
                      <link role="2.variableDeclaration:3" targetNodeId="6359197607515894784" resolveInfo="oldRootIds" />
                    </node>
                  </node>
                </node>
                <node role="2.operation:3" type="jetbrains.mps.baseLanguage.collections.structure.SelectOperation:7" id="6359197607515895142">
                  <node role="5.closure:7" type="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral:3" id="6359197607515895143">
                    <node role="7.body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="6359197607515895144">
                      <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="6359197607515895145">
                        <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="6359197607515895146">
                          <node role="2.creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="6359197607515895147">
                            <link role="2.baseMethodDeclaration:3" targetNodeId="6359197607515881765" resolveInfo="AddRootChange" />
                            <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="6359197607515895148">
                              <link role="2.variableDeclaration:3" targetNodeId="6359197607515881901" resolveInfo="myChangeSet" />
                            </node>
                            <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="6359197607515895149">
                              <link role="2.variableDeclaration:3" targetNodeId="6359197607515895150" resolveInfo="r" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="7.parameter:3" type="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration:7" id="6359197607515895150">
                      <property name="1.name:0" value="r" />
                      <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.WildCardType:3" id="6359197607515895151" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="6359197607515895152">
          <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="6359197607515895153">
            <node role="2.operand:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="6359197607515895154">
              <link role="2.variableDeclaration:3" targetNodeId="6359197607515881901" resolveInfo="myChangeSet" />
            </node>
            <node role="2.operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="6359197607515895155">
              <link role="2.baseMethodDeclaration:3" targetNodeId="6359197607515895122" resolveInfo="addAll" />
              <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="6359197607515895156">
                <node role="2.operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="6359197607515895157">
                  <node role="2.operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="6359197607515895171">
                    <link role="2.variableDeclaration:3" targetNodeId="6359197607515894784" resolveInfo="oldRootIds" />
                  </node>
                  <node role="2.operation:3" type="jetbrains.mps.baseLanguage.collections.structure.ExcludeOperation:7" id="6359197607515895159">
                    <node role="5.rightExpression:7" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="6359197607515895172">
                      <link role="2.variableDeclaration:3" targetNodeId="6359197607515894805" resolveInfo="newRootIds" />
                    </node>
                  </node>
                </node>
                <node role="2.operation:3" type="jetbrains.mps.baseLanguage.collections.structure.SelectOperation:7" id="6359197607515895161">
                  <node role="5.closure:7" type="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral:3" id="6359197607515895162">
                    <node role="7.body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="6359197607515895163">
                      <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="6359197607515895164">
                        <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="6359197607515895165">
                          <node role="2.creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="6359197607515895166">
                            <link role="2.baseMethodDeclaration:3" targetNodeId="6359197607515894919" resolveInfo="DeleteRootChange" />
                            <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="6359197607515895167">
                              <link role="2.variableDeclaration:3" targetNodeId="6359197607515881901" resolveInfo="myChangeSet" />
                            </node>
                            <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="6359197607515895168">
                              <link role="2.variableDeclaration:3" targetNodeId="6359197607515895169" resolveInfo="r" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="7.parameter:3" type="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration:7" id="6359197607515895169">
                      <property name="1.name:0" value="r" />
                      <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.WildCardType:3" id="6359197607515895170" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.Statement:3" id="4972886494893365745" />
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement:7" id="4972886494893365765">
          <node role="5.variable:7" type="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable:7" id="4972886494893365766">
            <property name="1.name:0" value="rootId" />
          </node>
          <node role="5.inputSequence:7" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4972886494893365770">
            <node role="2.operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="4972886494893365771">
              <link role="2.variableDeclaration:3" targetNodeId="6359197607515894784" resolveInfo="oldRootIds" />
            </node>
            <node role="2.operation:3" type="jetbrains.mps.baseLanguage.collections.structure.IntersectOperation:7" id="4972886494893365772">
              <node role="5.rightExpression:7" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="4972886494893365773">
                <link role="2.variableDeclaration:3" targetNodeId="6359197607515894805" resolveInfo="newRootIds" />
              </node>
            </node>
          </node>
          <node role="2.body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="4972886494893365768">
            <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="4972886494893367135">
              <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceMethodCall:3" id="4972886494893367136">
                <link role="2.baseMethodDeclaration:3" targetNodeId="4972886494893367124" resolveInfo="buildNodeChanges" />
                <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4972886494893367137">
                  <node role="2.operand:3" type="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression:16" id="4972886494893367138">
                    <node role="3.leftExpression:16" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="4972886494893367139">
                      <link role="2.variableDeclaration:3" targetNodeId="6359197607515881838" resolveInfo="myOldModel" />
                    </node>
                  </node>
                  <node role="2.operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="4972886494893367140">
                    <link role="2.baseMethodDeclaration:3" targetNodeId="6.~SModel.getNodeById(jetbrains.mps.smodel.SNodeId):jetbrains.mps.smodel.SNode" resolveInfo="getNodeById" />
                    <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference:7" id="4972886494893367141">
                      <link role="5.variable:7" targetNodeId="4972886494893365766" resolveInfo="rootId" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="2.field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="6359197607515881838">
      <property name="1.name:0" value="myOldModel" />
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="6359197607515881839" />
      <node role="2.type:3" type="jetbrains.mps.lang.smodel.structure.SModelType:16" id="6359197607515881841" />
    </node>
    <node role="2.field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="6359197607515881842">
      <property name="1.name:0" value="myNewModel" />
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="6359197607515881843" />
      <node role="2.type:3" type="jetbrains.mps.lang.smodel.structure.SModelType:16" id="6359197607515881845" />
    </node>
    <node role="2.field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="6359197607515881901">
      <property name="1.name:0" value="myChangeSet" />
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="6359197607515881902" />
      <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="6359197607515881904">
        <link role="2.classifier:3" targetNodeId="8813828754313712698" resolveInfo="ChangeSet" />
      </node>
    </node>
    <node role="2.staticMethod:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration:3" id="8813828754313730831">
      <property name="1.name:0" value="buildChangeSet" />
      <node role="2.returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="8813828754313730835">
        <link role="2.classifier:3" targetNodeId="8813828754313712698" resolveInfo="ChangeSet" />
      </node>
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="8813828754313730833" />
      <node role="2.body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="8813828754313730834">
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="6359197607515881920">
          <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="6359197607515881928">
            <node role="2.operand:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="6359197607515881921">
              <node role="2.creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="6359197607515881923">
                <link role="2.baseMethodDeclaration:3" targetNodeId="6359197607515881864" resolveInfo="ChangeSetBuilder" />
                <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="6359197607515881924">
                  <link role="2.variableDeclaration:3" targetNodeId="8813828754313730836" resolveInfo="oldModel" />
                </node>
                <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="6359197607515881926">
                  <link role="2.variableDeclaration:3" targetNodeId="8813828754313730838" resolveInfo="newModel" />
                </node>
              </node>
            </node>
            <node role="2.operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="6359197607515881932">
              <link role="2.fieldDeclaration:3" targetNodeId="6359197607515881901" resolveInfo="myChangeSet" />
            </node>
          </node>
        </node>
      </node>
      <node role="2.parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="8813828754313730836">
        <property name="1.name:0" value="oldModel" />
        <node role="2.type:3" type="jetbrains.mps.lang.smodel.structure.SModelType:16" id="8813828754313730837" />
      </node>
      <node role="2.parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="8813828754313730838">
        <property name="1.name:0" value="newModel" />
        <node role="2.type:3" type="jetbrains.mps.lang.smodel.structure.SModelType:16" id="8813828754313730840" />
      </node>
    </node>
    <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="8813828754313730793" />
    <node role="2.constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="6359197607515881864">
      <node role="2.returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="6359197607515881865" />
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="6359197607515881900" />
      <node role="2.body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="6359197607515881868">
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="6359197607515881871">
          <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="6359197607515881873">
            <node role="2.lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="6359197607515881897">
              <link role="2.variableDeclaration:3" targetNodeId="6359197607515881838" resolveInfo="myOldModel" />
            </node>
            <node role="2.rValue:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="6359197607515881881">
              <link role="2.variableDeclaration:3" targetNodeId="6359197607515881869" resolveInfo="myOldModel1" />
            </node>
          </node>
        </node>
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="6359197607515881884">
          <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="6359197607515881886">
            <node role="2.lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="6359197607515881899">
              <link role="2.variableDeclaration:3" targetNodeId="6359197607515881842" resolveInfo="myNewModel" />
            </node>
            <node role="2.rValue:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="6359197607515881894">
              <link role="2.variableDeclaration:3" targetNodeId="6359197607515881882" resolveInfo="myNewModel1" />
            </node>
          </node>
        </node>
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="6359197607515881906">
          <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="6359197607515881912">
            <node role="2.rValue:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="6359197607515881915">
              <node role="2.creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="6359197607515881916">
                <link role="2.baseMethodDeclaration:3" targetNodeId="8813828754313712700" resolveInfo="ChangeSet" />
                <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="6359197607515881917">
                  <link role="2.variableDeclaration:3" targetNodeId="6359197607515881869" resolveInfo="oldModel" />
                </node>
                <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="6359197607515881919">
                  <link role="2.variableDeclaration:3" targetNodeId="6359197607515881882" resolveInfo="newModel" />
                </node>
              </node>
            </node>
            <node role="2.lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="6359197607515881907">
              <link role="2.variableDeclaration:3" targetNodeId="6359197607515881901" resolveInfo="myChangeSet" />
            </node>
          </node>
        </node>
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="6359197607515895112">
          <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceMethodCall:3" id="6359197607515895113">
            <link role="2.baseMethodDeclaration:3" targetNodeId="6359197607515881942" resolveInfo="buildChanges" />
          </node>
        </node>
      </node>
      <node role="2.parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="6359197607515881869">
        <property name="1.name:0" value="oldModel" />
        <node role="2.type:3" type="jetbrains.mps.lang.smodel.structure.SModelType:16" id="6359197607515881870" />
      </node>
      <node role="2.parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="6359197607515881882">
        <property name="1.name:0" value="newModel" />
        <node role="2.type:3" type="jetbrains.mps.lang.smodel.structure.SModelType:16" id="6359197607515881883" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="6359197607515881703">
    <property name="1.name:0" value="AddRootChange" />
    <node role="2.field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="6359197607515881781">
      <property name="1.name:0" value="myNodeId" />
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="6359197607515881782" />
      <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="6359197607515881784">
        <link role="2.classifier:3" targetNodeId="6.~SNodeId" resolveInfo="SNodeId" />
      </node>
    </node>
    <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="6359197607515881704" />
    <node role="2.superclass:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="6359197607515881764">
      <link role="2.classifier:3" targetNodeId="8813828754313712692" resolveInfo="ModelChange" />
    </node>
    <node role="2.constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="6359197607515881765">
      <node role="2.returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="6359197607515881766" />
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="6359197607515881767" />
      <node role="2.body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="6359197607515881769">
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation:3" id="6359197607515881770">
          <link role="2.baseMethodDeclaration:3" targetNodeId="6359197607515881713" resolveInfo="ModelChange" />
          <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="6359197607515881774">
            <link role="2.variableDeclaration:3" targetNodeId="6359197607515881771" resolveInfo="changeSet" />
          </node>
        </node>
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="6359197607515881786">
          <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="6359197607515881788">
            <node role="2.rValue:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="6359197607515881791">
              <link role="2.variableDeclaration:3" targetNodeId="6359197607515881775" resolveInfo="nodeId" />
            </node>
            <node role="2.lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="6359197607515881787">
              <link role="2.variableDeclaration:3" targetNodeId="6359197607515881781" resolveInfo="myNodeId" />
            </node>
          </node>
        </node>
      </node>
      <node role="2.parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="6359197607515881771">
        <property name="1.name:0" value="changeSet" />
        <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="6359197607515881773">
          <link role="2.classifier:3" targetNodeId="8813828754313712698" resolveInfo="ChangeSet" />
        </node>
      </node>
      <node role="2.parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="6359197607515881775">
        <property name="1.name:0" value="nodeId" />
        <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="6359197607515881777">
          <link role="2.classifier:3" targetNodeId="6.~SNodeId" resolveInfo="SNodeId" />
        </node>
      </node>
    </node>
    <node role="2.method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="6359197607515894937">
      <property name="1.name:0" value="toString" />
      <node role="2.returnType:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="6359197607515894938" />
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="6359197607515894939" />
      <node role="2.body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="6359197607515894940">
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="6359197607515894941">
          <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.PlusExpression:3" id="6359197607515895092">
            <node role="2.leftExpression:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="6359197607515895091">
              <property name="2.value:3" value="Add root " />
            </node>
            <node role="2.rightExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="6359197607515895095">
              <link role="2.variableDeclaration:3" targetNodeId="6359197607515881781" resolveInfo="myNodeId" />
            </node>
          </node>
        </node>
      </node>
      <node role="2.annotation:3" type="jetbrains.mps.baseLanguage.structure.AnnotationInstance:3" id="6359197607515894949">
        <link role="2.annotation:3" targetNodeId="8.~Override" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="6359197607515894913">
    <property name="1.name:0" value="DeleteRootChange" />
    <node role="2.method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="6359197607515895100">
      <property name="1.name:0" value="toString" />
      <node role="2.returnType:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="6359197607515895101" />
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="6359197607515895102" />
      <node role="2.body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="6359197607515895103">
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="6359197607515895104">
          <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.PlusExpression:3" id="6359197607515895107">
            <node role="2.leftExpression:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="6359197607515895108">
              <property name="2.value:3" value="Delete root " />
            </node>
            <node role="2.rightExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="6359197607515895109">
              <link role="2.variableDeclaration:3" targetNodeId="6359197607515894914" resolveInfo="myNodeId" />
            </node>
          </node>
        </node>
      </node>
      <node role="2.annotation:3" type="jetbrains.mps.baseLanguage.structure.AnnotationInstance:3" id="6359197607515895110">
        <link role="2.annotation:3" targetNodeId="8.~Override" resolveInfo="Override" />
      </node>
    </node>
    <node role="2.field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="6359197607515894914">
      <property name="1.name:0" value="myNodeId" />
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="6359197607515894915" />
      <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="6359197607515894916">
        <link role="2.classifier:3" targetNodeId="6.~SNodeId" resolveInfo="SNodeId" />
      </node>
    </node>
    <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="6359197607515894917" />
    <node role="2.superclass:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="6359197607515894918">
      <link role="2.classifier:3" targetNodeId="8813828754313712692" resolveInfo="ModelChange" />
    </node>
    <node role="2.constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="6359197607515894919">
      <node role="2.returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="6359197607515894920" />
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="6359197607515894921" />
      <node role="2.body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="6359197607515894922">
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation:3" id="6359197607515894923">
          <link role="2.baseMethodDeclaration:3" targetNodeId="6359197607515881713" resolveInfo="ModelChange" />
          <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="6359197607515894924">
            <link role="2.variableDeclaration:3" targetNodeId="6359197607515894929" resolveInfo="changeSet" />
          </node>
        </node>
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="6359197607515894925">
          <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="6359197607515894926">
            <node role="2.rValue:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="6359197607515894927">
              <link role="2.variableDeclaration:3" targetNodeId="6359197607515894931" resolveInfo="nodeId" />
            </node>
            <node role="2.lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="6359197607515894928">
              <link role="2.variableDeclaration:3" targetNodeId="6359197607515894914" resolveInfo="myNodeId" />
            </node>
          </node>
        </node>
      </node>
      <node role="2.parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="6359197607515894929">
        <property name="1.name:0" value="changeSet" />
        <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="6359197607515894930">
          <link role="2.classifier:3" targetNodeId="8813828754313712698" resolveInfo="ChangeSet" />
        </node>
      </node>
      <node role="2.parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="6359197607515894931">
        <property name="1.name:0" value="nodeId" />
        <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="6359197607515894932">
          <link role="2.classifier:3" targetNodeId="6.~SNodeId" resolveInfo="SNodeId" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="4972886494893223485">
    <property name="1.name:0" value="NodeGroupChange" />
    <property name="2.abstractClass:3" value="true" />
    <node role="2.field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="4972886494893223503">
      <property name="1.name:0" value="myParentNodeId" />
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="4972886494893223504" />
      <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="4972886494893223506">
        <link role="2.classifier:3" targetNodeId="6.~SNodeId" resolveInfo="SNodeId" />
      </node>
    </node>
    <node role="2.field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="4972886494893223507">
      <property name="1.name:0" value="myRole" />
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="4972886494893223508" />
      <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="4972886494893223510" />
    </node>
    <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="4972886494893223486" />
    <node role="2.superclass:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="4972886494893223491">
      <link role="2.classifier:3" targetNodeId="8813828754313712692" resolveInfo="ModelChange" />
    </node>
    <node role="2.constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="4972886494893364937">
      <node role="2.returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="4972886494893364938" />
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="4972886494893364939" />
      <node role="2.body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="4972886494893364941">
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation:3" id="4972886494893364942">
          <link role="2.baseMethodDeclaration:3" targetNodeId="6359197607515881713" resolveInfo="ModelChange" />
          <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="4972886494893364946">
            <link role="2.variableDeclaration:3" targetNodeId="4972886494893364943" resolveInfo="changeSet" />
          </node>
        </node>
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="4972886494893364949">
          <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="4972886494893364951">
            <node role="2.lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="4972886494893364954">
              <link role="2.variableDeclaration:3" targetNodeId="4972886494893223503" resolveInfo="myParentNodeId" />
            </node>
            <node role="2.rValue:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="4972886494893364955">
              <link role="2.variableDeclaration:3" targetNodeId="4972886494893364947" resolveInfo="parentNodeId" />
            </node>
          </node>
        </node>
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="4972886494893364958">
          <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="4972886494893364960">
            <node role="2.lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="4972886494893364963">
              <link role="2.variableDeclaration:3" targetNodeId="4972886494893223507" resolveInfo="myRole" />
            </node>
            <node role="2.rValue:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="4972886494893364964">
              <link role="2.variableDeclaration:3" targetNodeId="4972886494893364956" resolveInfo="role" />
            </node>
          </node>
        </node>
      </node>
      <node role="2.parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="4972886494893364943">
        <property name="1.name:0" value="changeSet" />
        <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="4972886494893364945">
          <link role="2.classifier:3" targetNodeId="8813828754313712698" resolveInfo="ChangeSet" />
        </node>
      </node>
      <node role="2.parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="4972886494893364947">
        <property name="1.name:0" value="parentNodeId" />
        <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="4972886494893364948">
          <link role="2.classifier:3" targetNodeId="6.~SNodeId" resolveInfo="SNodeId" />
        </node>
      </node>
      <node role="2.parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="4972886494893364956">
        <property name="1.name:0" value="role" />
        <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="4972886494893364957" />
      </node>
    </node>
    <node role="2.method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="4972886494893364965">
      <property name="1.name:0" value="getParentNodeId" />
      <node role="2.returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="4972886494893364966">
        <link role="2.classifier:3" targetNodeId="6.~SNodeId" resolveInfo="SNodeId" />
      </node>
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="4972886494893364967" />
      <node role="2.body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="4972886494893364968">
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="4972886494893364969">
          <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="4972886494893364970">
            <link role="2.variableDeclaration:3" targetNodeId="4972886494893223503" resolveInfo="myParentNodeId" />
          </node>
        </node>
      </node>
    </node>
    <node role="2.method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="4972886494893364971">
      <property name="1.name:0" value="getRole" />
      <node role="2.returnType:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="4972886494893364972" />
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="4972886494893364973" />
      <node role="2.body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="4972886494893364974">
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="4972886494893364975">
          <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="4972886494893364976">
            <link role="2.variableDeclaration:3" targetNodeId="4972886494893223507" resolveInfo="myRole" />
          </node>
        </node>
      </node>
    </node>
    <node role="2.method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="4972886494893364978">
      <property name="2.isAbstract:3" value="true" />
      <property name="1.name:0" value="getBegin" />
      <node role="2.returnType:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="4972886494893364982" />
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="4972886494893364980" />
      <node role="2.body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="4972886494893364981" />
    </node>
    <node role="2.method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="4972886494893364983">
      <property name="2.isAbstract:3" value="true" />
      <property name="1.name:0" value="getEnd" />
      <node role="2.returnType:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="4972886494893364984" />
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="4972886494893364985" />
      <node role="2.body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="4972886494893364986" />
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="4972886494893364987">
    <property name="1.name:0" value="InsertNodeGroupChange" />
    <node role="2.field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="4972886494893365029">
      <property name="1.name:0" value="myPosition" />
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="4972886494893365030" />
      <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="4972886494893365032" />
    </node>
    <node role="2.field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="4972886494893365082">
      <property name="1.name:0" value="myResultBegin" />
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="4972886494893365083" />
      <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="4972886494893365085" />
    </node>
    <node role="2.field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="4972886494893365105">
      <property name="1.name:0" value="myResultEnd" />
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="4972886494893365106" />
      <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="4972886494893365108" />
    </node>
    <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="4972886494893364988" />
    <node role="2.superclass:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="4972886494893364993">
      <link role="2.classifier:3" targetNodeId="4972886494893223485" resolveInfo="NodeGroupChange" />
    </node>
    <node role="2.method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="4972886494893365074">
      <property name="1.name:0" value="getBegin" />
      <node role="2.returnType:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="4972886494893365075" />
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="4972886494893365076" />
      <node role="2.body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="4972886494893365077">
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="4972886494893365080">
          <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="4972886494893365081">
            <link role="2.variableDeclaration:3" targetNodeId="4972886494893365029" resolveInfo="myPosition" />
          </node>
        </node>
      </node>
    </node>
    <node role="2.method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="4972886494893365070">
      <property name="1.name:0" value="getEnd" />
      <node role="2.returnType:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="4972886494893365071" />
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="4972886494893365072" />
      <node role="2.body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="4972886494893365073">
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="4972886494893365078">
          <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="4972886494893365079">
            <link role="2.variableDeclaration:3" targetNodeId="4972886494893365029" resolveInfo="myPosition" />
          </node>
        </node>
      </node>
    </node>
    <node role="2.method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="4972886494893365113">
      <property name="1.name:0" value="toString" />
      <node role="2.returnType:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="4972886494893365114" />
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="4972886494893365115" />
      <node role="2.body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="4972886494893365116">
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="4972886494893365720">
          <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="4972886494893365721">
            <link role="2.classConcept:3" targetNodeId="8.~String" resolveInfo="String" />
            <link role="2.baseMethodDeclaration:3" targetNodeId="8.~String.format(java.lang.String,java.lang.Object...):java.lang.String" resolveInfo="format" />
            <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="4972886494893365722">
              <property name="2.value:3" value="Insert nodes #%d-%d into position #%d in role %s of node %s" />
            </node>
            <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="4972886494893365731">
              <link role="2.variableDeclaration:3" targetNodeId="4972886494893365082" resolveInfo="myResultBegin" />
            </node>
            <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.MinusExpression:3" id="4972886494893365724">
              <node role="2.rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="4972886494893365725">
                <property name="2.value:3" value="1" />
              </node>
              <node role="2.leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="4972886494893365732">
                <link role="2.variableDeclaration:3" targetNodeId="4972886494893365105" resolveInfo="myResultEnd" />
              </node>
            </node>
            <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="4972886494893365733">
              <link role="2.variableDeclaration:3" targetNodeId="4972886494893365029" resolveInfo="myPosition" />
            </node>
            <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceMethodCall:3" id="4972886494893365729">
              <link role="2.baseMethodDeclaration:3" targetNodeId="4972886494893364971" resolveInfo="getRole" />
            </node>
            <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceMethodCall:3" id="4972886494893365730">
              <link role="2.baseMethodDeclaration:3" targetNodeId="4972886494893364965" resolveInfo="getParentNodeId" />
            </node>
          </node>
        </node>
      </node>
      <node role="2.annotation:3" type="jetbrains.mps.baseLanguage.structure.AnnotationInstance:3" id="4972886494893365133">
        <link role="2.annotation:3" targetNodeId="8.~Override" />
      </node>
    </node>
    <node role="2.constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="4972886494893365177">
      <node role="2.returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="4972886494893365178" />
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="4972886494893365179" />
      <node role="2.body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="4972886494893365181">
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation:3" id="4972886494893365182">
          <link role="2.baseMethodDeclaration:3" targetNodeId="4972886494893364937" resolveInfo="NodeGroupChange" />
          <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="4972886494893365186">
            <link role="2.variableDeclaration:3" targetNodeId="4972886494893365183" resolveInfo="changeSet" />
          </node>
          <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="4972886494893365190">
            <link role="2.variableDeclaration:3" targetNodeId="4972886494893365187" resolveInfo="parentNodeId" />
          </node>
          <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="4972886494893365194">
            <link role="2.variableDeclaration:3" targetNodeId="4972886494893365191" resolveInfo="role" />
          </node>
        </node>
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="4972886494893365197">
          <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="4972886494893365199">
            <node role="2.lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="4972886494893365202">
              <link role="2.variableDeclaration:3" targetNodeId="4972886494893365029" resolveInfo="myPosition" />
            </node>
            <node role="2.rValue:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="4972886494893365203">
              <link role="2.variableDeclaration:3" targetNodeId="4972886494893365195" resolveInfo="position" />
            </node>
          </node>
        </node>
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="4972886494893365206">
          <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="4972886494893365208">
            <node role="2.lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="4972886494893365211">
              <link role="2.variableDeclaration:3" targetNodeId="4972886494893365082" resolveInfo="myResultStart" />
            </node>
            <node role="2.rValue:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="4972886494893365212">
              <link role="2.variableDeclaration:3" targetNodeId="4972886494893365204" resolveInfo="resultStart" />
            </node>
          </node>
        </node>
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="4972886494893365215">
          <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="4972886494893365217">
            <node role="2.lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="4972886494893365220">
              <link role="2.variableDeclaration:3" targetNodeId="4972886494893365105" resolveInfo="myResultEnd" />
            </node>
            <node role="2.rValue:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="4972886494893365221">
              <link role="2.variableDeclaration:3" targetNodeId="4972886494893365213" resolveInfo="resultEnd" />
            </node>
          </node>
        </node>
      </node>
      <node role="2.parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="4972886494893365183">
        <property name="1.name:0" value="changeSet" />
        <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="4972886494893365185">
          <link role="2.classifier:3" targetNodeId="8813828754313712698" resolveInfo="ChangeSet" />
        </node>
      </node>
      <node role="2.parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="4972886494893365187">
        <property name="1.name:0" value="parentNodeId" />
        <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="4972886494893365189">
          <link role="2.classifier:3" targetNodeId="6.~SNodeId" resolveInfo="SNodeId" />
        </node>
      </node>
      <node role="2.parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="4972886494893365191">
        <property name="1.name:0" value="role" />
        <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="4972886494893365193" />
      </node>
      <node role="2.parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="4972886494893365195">
        <property name="1.name:0" value="position" />
        <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="4972886494893365196" />
      </node>
      <node role="2.parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="4972886494893365204">
        <property name="1.name:0" value="resultBegin" />
        <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="4972886494893365205" />
      </node>
      <node role="2.parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="4972886494893365213">
        <property name="1.name:0" value="resultEnd" />
        <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="4972886494893365214" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="4972886494893365222">
    <property name="1.name:0" value="DeleteNodeGroupChange" />
    <node role="2.field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="4972886494893365223">
      <property name="1.name:0" value="myBegin" />
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="4972886494893365224" />
      <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="4972886494893365225" />
    </node>
    <node role="2.field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="4972886494893365302">
      <property name="1.name:0" value="myEnd" />
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="4972886494893365303" />
      <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="4972886494893365304" />
    </node>
    <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="4972886494893365232" />
    <node role="2.superclass:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="4972886494893365233">
      <link role="2.classifier:3" targetNodeId="4972886494893223485" resolveInfo="NodeGroupChange" />
    </node>
    <node role="2.method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="4972886494893365240">
      <property name="1.name:0" value="getBegin" />
      <node role="2.returnType:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="4972886494893365241" />
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="4972886494893365242" />
      <node role="2.body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="4972886494893365243">
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="4972886494893365342">
          <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="4972886494893365427">
            <link role="2.variableDeclaration:3" targetNodeId="4972886494893365223" resolveInfo="myStart" />
          </node>
        </node>
      </node>
    </node>
    <node role="2.method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="4972886494893365234">
      <property name="1.name:0" value="getEnd" />
      <node role="2.returnType:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="4972886494893365235" />
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="4972886494893365236" />
      <node role="2.body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="4972886494893365237">
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="4972886494893365238">
          <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="4972886494893365426">
            <link role="2.variableDeclaration:3" targetNodeId="4972886494893365302" resolveInfo="myEnd" />
          </node>
        </node>
      </node>
    </node>
    <node role="2.method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="4972886494893365246">
      <property name="1.name:0" value="toString" />
      <node role="2.returnType:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="4972886494893365247" />
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="4972886494893365248" />
      <node role="2.body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="4972886494893365249">
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="4972886494893365734">
          <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="4972886494893365735">
            <link role="2.classConcept:3" targetNodeId="8.~String" resolveInfo="String" />
            <link role="2.baseMethodDeclaration:3" targetNodeId="8.~String.format(java.lang.String,java.lang.Object...):java.lang.String" resolveInfo="format" />
            <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="4972886494893365736">
              <property name="2.value:3" value="Delete nodes #%d-%d in role %s of node %s" />
            </node>
            <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="4972886494893365737">
              <link role="2.variableDeclaration:3" targetNodeId="4972886494893365223" resolveInfo="myBegin" />
            </node>
            <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.MinusExpression:3" id="4972886494893365738">
              <node role="2.rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="4972886494893365739">
                <property name="2.value:3" value="1" />
              </node>
              <node role="2.leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="4972886494893365740">
                <link role="2.variableDeclaration:3" targetNodeId="4972886494893365302" resolveInfo="myEnd" />
              </node>
            </node>
            <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceMethodCall:3" id="4972886494893365743">
              <link role="2.baseMethodDeclaration:3" targetNodeId="4972886494893364971" resolveInfo="getRole" />
            </node>
            <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceMethodCall:3" id="4972886494893365744">
              <link role="2.baseMethodDeclaration:3" targetNodeId="4972886494893364965" resolveInfo="getParentNodeId" />
            </node>
          </node>
        </node>
      </node>
      <node role="2.annotation:3" type="jetbrains.mps.baseLanguage.structure.AnnotationInstance:3" id="4972886494893365269">
        <link role="2.annotation:3" targetNodeId="8.~Override" resolveInfo="Override" />
      </node>
    </node>
    <node role="2.constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="4972886494893365305">
      <node role="2.returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="4972886494893365306" />
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="4972886494893365307" />
      <node role="2.body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="4972886494893365309">
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation:3" id="4972886494893365310">
          <link role="2.baseMethodDeclaration:3" targetNodeId="4972886494893364937" resolveInfo="NodeGroupChange" />
          <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="4972886494893365314">
            <link role="2.variableDeclaration:3" targetNodeId="4972886494893365311" resolveInfo="changeSet" />
          </node>
          <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="4972886494893365318">
            <link role="2.variableDeclaration:3" targetNodeId="4972886494893365315" resolveInfo="parentNodeId" />
          </node>
          <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="4972886494893365322">
            <link role="2.variableDeclaration:3" targetNodeId="4972886494893365319" resolveInfo="role" />
          </node>
        </node>
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="4972886494893365325">
          <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="4972886494893365327">
            <node role="2.lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="4972886494893365330">
              <link role="2.variableDeclaration:3" targetNodeId="4972886494893365223" resolveInfo="myStart" />
            </node>
            <node role="2.rValue:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="4972886494893365331">
              <link role="2.variableDeclaration:3" targetNodeId="4972886494893365323" resolveInfo="start" />
            </node>
          </node>
        </node>
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="4972886494893365334">
          <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="4972886494893365336">
            <node role="2.lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="4972886494893365339">
              <link role="2.variableDeclaration:3" targetNodeId="4972886494893365302" resolveInfo="myEnd" />
            </node>
            <node role="2.rValue:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="4972886494893365340">
              <link role="2.variableDeclaration:3" targetNodeId="4972886494893365332" resolveInfo="end" />
            </node>
          </node>
        </node>
      </node>
      <node role="2.parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="4972886494893365311">
        <property name="1.name:0" value="changeSet" />
        <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="4972886494893365313">
          <link role="2.classifier:3" targetNodeId="8813828754313712698" resolveInfo="ChangeSet" />
        </node>
      </node>
      <node role="2.parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="4972886494893365315">
        <property name="1.name:0" value="parentNodeId" />
        <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="4972886494893365317">
          <link role="2.classifier:3" targetNodeId="6.~SNodeId" resolveInfo="SNodeId" />
        </node>
      </node>
      <node role="2.parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="4972886494893365319">
        <property name="1.name:0" value="role" />
        <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="4972886494893365321" />
      </node>
      <node role="2.parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="4972886494893365323">
        <property name="1.name:0" value="begin" />
        <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="4972886494893365324" />
      </node>
      <node role="2.parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="4972886494893365332">
        <property name="1.name:0" value="end" />
        <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="4972886494893365333" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="4972886494893365435">
    <property name="1.name:0" value="ReplaceNodeGroupChange" />
    <node role="2.field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="4972886494893365436">
      <property name="1.name:0" value="myBegin" />
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="4972886494893365437" />
      <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="4972886494893365438" />
    </node>
    <node role="2.field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="4972886494893365439">
      <property name="1.name:0" value="myEnd" />
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="4972886494893365440" />
      <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="4972886494893365441" />
    </node>
    <node role="2.field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="4972886494893365506">
      <property name="1.name:0" value="myResultBegin" />
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="4972886494893365507" />
      <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="4972886494893365509" />
    </node>
    <node role="2.field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="4972886494893365510">
      <property name="1.name:0" value="myResultEnd" />
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="4972886494893365511" />
      <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="4972886494893365512" />
    </node>
    <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="4972886494893365442" />
    <node role="2.superclass:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="4972886494893365443">
      <link role="2.classifier:3" targetNodeId="4972886494893223485" resolveInfo="NodeGroupChange" />
    </node>
    <node role="2.method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="4972886494893365444">
      <property name="1.name:0" value="getBegin" />
      <node role="2.returnType:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="4972886494893365445" />
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="4972886494893365446" />
      <node role="2.body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="4972886494893365447">
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="4972886494893365448">
          <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="4972886494893365449">
            <link role="2.variableDeclaration:3" targetNodeId="4972886494893365436" resolveInfo="myBegin" />
          </node>
        </node>
      </node>
    </node>
    <node role="2.method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="4972886494893365450">
      <property name="1.name:0" value="getEnd" />
      <node role="2.returnType:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="4972886494893365451" />
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="4972886494893365452" />
      <node role="2.body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="4972886494893365453">
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="4972886494893365454">
          <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="4972886494893365455">
            <link role="2.variableDeclaration:3" targetNodeId="4972886494893365439" resolveInfo="myEnd" />
          </node>
        </node>
      </node>
    </node>
    <node role="2.method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="4972886494893365456">
      <property name="1.name:0" value="toString" />
      <node role="2.returnType:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="4972886494893365457" />
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="4972886494893365458" />
      <node role="2.body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="4972886494893365459">
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="4972886494893365583">
          <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="4972886494893365585">
            <link role="2.classConcept:3" targetNodeId="8.~String" resolveInfo="String" />
            <link role="2.baseMethodDeclaration:3" targetNodeId="8.~String.format(java.lang.String,java.lang.Object...):java.lang.String" resolveInfo="format" />
            <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="4972886494893365586">
              <property name="2.value:3" value="Replace nodes #%d-%d with nodes #%d-%d in role %s of node %s" />
            </node>
            <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="4972886494893365592">
              <link role="2.variableDeclaration:3" targetNodeId="4972886494893365436" resolveInfo="myBegin" />
            </node>
            <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.MinusExpression:3" id="4972886494893365595">
              <node role="2.rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="4972886494893365598">
                <property name="2.value:3" value="1" />
              </node>
              <node role="2.leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="4972886494893365594">
                <link role="2.variableDeclaration:3" targetNodeId="4972886494893365439" resolveInfo="myEnd" />
              </node>
            </node>
            <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="4972886494893365600">
              <link role="2.variableDeclaration:3" targetNodeId="4972886494893365506" resolveInfo="myResultBegin" />
            </node>
            <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="4972886494893365602">
              <link role="2.variableDeclaration:3" targetNodeId="4972886494893365510" resolveInfo="myResultEnd" />
            </node>
            <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceMethodCall:3" id="4972886494893365604">
              <link role="2.baseMethodDeclaration:3" targetNodeId="4972886494893364971" resolveInfo="getRole" />
            </node>
            <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceMethodCall:3" id="4972886494893418258">
              <link role="2.baseMethodDeclaration:3" targetNodeId="4972886494893364965" resolveInfo="getParentNodeId" />
            </node>
          </node>
        </node>
      </node>
      <node role="2.annotation:3" type="jetbrains.mps.baseLanguage.structure.AnnotationInstance:3" id="4972886494893365479">
        <link role="2.annotation:3" targetNodeId="8.~Override" resolveInfo="Override" />
      </node>
    </node>
    <node role="2.constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="4972886494893365513">
      <node role="2.returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="4972886494893365514" />
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="4972886494893365515" />
      <node role="2.body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="4972886494893365517">
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation:3" id="4972886494893365518">
          <link role="2.baseMethodDeclaration:3" targetNodeId="4972886494893364937" resolveInfo="NodeGroupChange" />
          <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="4972886494893365522">
            <link role="2.variableDeclaration:3" targetNodeId="4972886494893365519" resolveInfo="changeSet" />
          </node>
          <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="4972886494893365526">
            <link role="2.variableDeclaration:3" targetNodeId="4972886494893365523" resolveInfo="parentNodeId" />
          </node>
          <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="4972886494893365530">
            <link role="2.variableDeclaration:3" targetNodeId="4972886494893365527" resolveInfo="role" />
          </node>
        </node>
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="4972886494893365533">
          <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="4972886494893365535">
            <node role="2.lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="4972886494893365538">
              <link role="2.variableDeclaration:3" targetNodeId="4972886494893365436" resolveInfo="myBegin" />
            </node>
            <node role="2.rValue:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="4972886494893365539">
              <link role="2.variableDeclaration:3" targetNodeId="4972886494893365531" resolveInfo="begin" />
            </node>
          </node>
        </node>
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="4972886494893365542">
          <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="4972886494893365544">
            <node role="2.lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="4972886494893365547">
              <link role="2.variableDeclaration:3" targetNodeId="4972886494893365439" resolveInfo="myEnd" />
            </node>
            <node role="2.rValue:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="4972886494893365548">
              <link role="2.variableDeclaration:3" targetNodeId="4972886494893365540" resolveInfo="end" />
            </node>
          </node>
        </node>
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="4972886494893365551">
          <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="4972886494893365553">
            <node role="2.lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="4972886494893365556">
              <link role="2.variableDeclaration:3" targetNodeId="4972886494893365506" resolveInfo="myResultBegin" />
            </node>
            <node role="2.rValue:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="4972886494893365557">
              <link role="2.variableDeclaration:3" targetNodeId="4972886494893365549" resolveInfo="resultBegin" />
            </node>
          </node>
        </node>
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="4972886494893365560">
          <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="4972886494893365562">
            <node role="2.lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="4972886494893365565">
              <link role="2.variableDeclaration:3" targetNodeId="4972886494893365510" resolveInfo="myResultEnd" />
            </node>
            <node role="2.rValue:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="4972886494893365566">
              <link role="2.variableDeclaration:3" targetNodeId="4972886494893365558" resolveInfo="resultEnd" />
            </node>
          </node>
        </node>
      </node>
      <node role="2.parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="4972886494893365519">
        <property name="1.name:0" value="changeSet" />
        <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="4972886494893365521">
          <link role="2.classifier:3" targetNodeId="8813828754313712698" resolveInfo="ChangeSet" />
        </node>
      </node>
      <node role="2.parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="4972886494893365523">
        <property name="1.name:0" value="parentNodeId" />
        <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="4972886494893365525">
          <link role="2.classifier:3" targetNodeId="6.~SNodeId" resolveInfo="SNodeId" />
        </node>
      </node>
      <node role="2.parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="4972886494893365527">
        <property name="1.name:0" value="role" />
        <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="4972886494893365529" />
      </node>
      <node role="2.parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="4972886494893365531">
        <property name="1.name:0" value="begin" />
        <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="4972886494893365532" />
      </node>
      <node role="2.parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="4972886494893365540">
        <property name="1.name:0" value="end" />
        <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="4972886494893365541" />
      </node>
      <node role="2.parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="4972886494893365549">
        <property name="1.name:0" value="resultBegin" />
        <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="4972886494893365550" />
      </node>
      <node role="2.parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="4972886494893365558">
        <property name="1.name:0" value="resultEnd" />
        <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="4972886494893365559" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="2729259761016168456">
    <property name="1.name:0" value="SetPropertyChange" />
    <node role="2.field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="2732852465125440977">
      <property name="1.name:0" value="myNodeId" />
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="2732852465125440978" />
      <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="2732852465125450320">
        <link role="2.classifier:3" targetNodeId="6.~SNodeId" resolveInfo="SNodeId" />
      </node>
    </node>
    <node role="2.field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="2732852465125548113">
      <property name="1.name:0" value="myPropertyName" />
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="2732852465125548114" />
      <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="2732852465125548116" />
    </node>
    <node role="2.field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="2732852465125672527">
      <property name="1.name:0" value="myNewValue" />
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="2732852465125672528" />
      <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="2732852465125672529" />
    </node>
    <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="2729259761016168457" />
    <node role="2.superclass:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="2729259761016168462">
      <link role="2.classifier:3" targetNodeId="8813828754313712692" resolveInfo="ModelChange" />
    </node>
    <node role="2.constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="2732852465125548120">
      <node role="2.returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="2732852465125548121" />
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="2732852465125548122" />
      <node role="2.body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="2732852465125548124">
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation:3" id="2732852465125548125">
          <link role="2.baseMethodDeclaration:3" targetNodeId="6359197607515881713" resolveInfo="ModelChange" />
          <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="2732852465125548129">
            <link role="2.variableDeclaration:3" targetNodeId="2732852465125548126" resolveInfo="changeSet" />
          </node>
        </node>
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="2732852465125548132">
          <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="2732852465125548134">
            <node role="2.lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="2732852465125548137">
              <link role="2.variableDeclaration:3" targetNodeId="2732852465125440977" resolveInfo="myNodeId" />
            </node>
            <node role="2.rValue:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="2732852465125548138">
              <link role="2.variableDeclaration:3" targetNodeId="2732852465125548130" resolveInfo="nodeId" />
            </node>
          </node>
        </node>
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="2732852465125548141">
          <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="2732852465125548143">
            <node role="2.lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="2732852465125548146">
              <link role="2.variableDeclaration:3" targetNodeId="2732852465125548113" resolveInfo="myPropertyName" />
            </node>
            <node role="2.rValue:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="2732852465125548147">
              <link role="2.variableDeclaration:3" targetNodeId="2732852465125548139" resolveInfo="propertyName" />
            </node>
          </node>
        </node>
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="2732852465125548150">
          <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="2732852465125548152">
            <node role="2.lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="2732852465125548155">
              <link role="2.variableDeclaration:3" targetNodeId="2732852465125672527" resolveInfo="myNewValue" />
            </node>
            <node role="2.rValue:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="2732852465125548156">
              <link role="2.variableDeclaration:3" targetNodeId="2732852465125548148" resolveInfo="newValue" />
            </node>
          </node>
        </node>
      </node>
      <node role="2.parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="2732852465125548126">
        <property name="1.name:0" value="changeSet" />
        <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="2732852465125548128">
          <link role="2.classifier:3" targetNodeId="8813828754313712698" resolveInfo="ChangeSet" />
        </node>
      </node>
      <node role="2.parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="2732852465125548130">
        <property name="1.name:0" value="nodeId" />
        <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="2732852465125548131">
          <link role="2.classifier:3" targetNodeId="6.~SNodeId" resolveInfo="SNodeId" />
        </node>
      </node>
      <node role="2.parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="2732852465125548139">
        <property name="1.name:0" value="propertyName" />
        <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="2732852465125548140" />
      </node>
      <node role="2.parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="2732852465125548148">
        <property name="1.name:0" value="newValue" />
        <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="2732852465125548149" />
      </node>
    </node>
    <node role="2.method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="2732852465125672497">
      <property name="1.name:0" value="getNodeId" />
      <node role="2.returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="2732852465125672498">
        <link role="2.classifier:3" targetNodeId="6.~SNodeId" resolveInfo="SNodeId" />
      </node>
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="2732852465125672499" />
      <node role="2.body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="2732852465125672500">
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="2732852465125672501">
          <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="2732852465125672502">
            <link role="2.variableDeclaration:3" targetNodeId="2732852465125440977" resolveInfo="myNodeId" />
          </node>
        </node>
      </node>
    </node>
    <node role="2.method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="2732852465125672503">
      <property name="1.name:0" value="getPropertyName" />
      <node role="2.returnType:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="2732852465125672504" />
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="2732852465125672505" />
      <node role="2.body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="2732852465125672506">
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="2732852465125672507">
          <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="2732852465125672508">
            <link role="2.variableDeclaration:3" targetNodeId="2732852465125548113" resolveInfo="myPropertyName" />
          </node>
        </node>
      </node>
    </node>
    <node role="2.method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="2732852465125672509">
      <property name="1.name:0" value="getNewValue" />
      <node role="2.returnType:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="2732852465125672510" />
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="2732852465125672511" />
      <node role="2.body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="2732852465125672512">
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="2732852465125672513">
          <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="2732852465125672514">
            <link role="2.variableDeclaration:3" targetNodeId="2732852465125672527" resolveInfo="myNewValue" />
          </node>
        </node>
      </node>
    </node>
    <node role="2.method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="5651973002132666978">
      <property name="1.name:0" value="toString" />
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="5651973002132666979" />
      <node role="2.returnType:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="5651973002132666985" />
      <node role="2.body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="5651973002132666981">
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="5651973002132666986">
          <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="5651973002132666988">
            <link role="2.classConcept:3" targetNodeId="8.~String" resolveInfo="String" />
            <link role="2.baseMethodDeclaration:3" targetNodeId="8.~String.format(java.lang.String,java.lang.Object...):java.lang.String" resolveInfo="format" />
            <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="5651973002132666989">
              <property name="2.value:3" value="Set property %s to %s in node %s" />
            </node>
            <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="5651973002132666991">
              <link role="2.variableDeclaration:3" targetNodeId="2732852465125548113" resolveInfo="myPropertyName" />
            </node>
            <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="5651973002132666993">
              <link role="2.variableDeclaration:3" targetNodeId="2732852465125672527" resolveInfo="myNewValue" />
            </node>
            <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="5651973002132666995">
              <link role="2.variableDeclaration:3" targetNodeId="2732852465125440977" resolveInfo="myNodeId" />
            </node>
          </node>
        </node>
      </node>
      <node role="2.annotation:3" type="jetbrains.mps.baseLanguage.structure.AnnotationInstance:3" id="5651973002132666982">
        <link role="2.annotation:3" targetNodeId="8.~Override" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="2732852465125672459">
    <property name="1.name:0" value="SetReferenceChange" />
    <node role="2.field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="2732852465125674132">
      <property name="1.name:0" value="mySourceNodeId" />
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="2732852465125674133" />
      <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="2732852465125674135">
        <link role="2.classifier:3" targetNodeId="6.~SNodeId" resolveInfo="SNodeId" />
      </node>
    </node>
    <node role="2.field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="2732852465125674136">
      <property name="1.name:0" value="myRole" />
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="2732852465125674137" />
      <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="2732852465125674139" />
    </node>
    <node role="2.field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="2732852465125674140">
      <property name="1.name:0" value="myTargetModelReference" />
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="2732852465125674141" />
      <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="2732852465125674143">
        <link role="2.classifier:3" targetNodeId="6.~SModelReference" resolveInfo="SModelReference" />
      </node>
    </node>
    <node role="2.field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="2732852465125674144">
      <property name="1.name:0" value="myTargetNodeId" />
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="2732852465125674145" />
      <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="2732852465125674147">
        <link role="2.classifier:3" targetNodeId="6.~SNodeId" resolveInfo="SNodeId" />
      </node>
    </node>
    <node role="2.field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="2732852465125674148">
      <property name="1.name:0" value="myResolveInfo" />
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="2732852465125674149" />
      <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="2732852465125674151" />
    </node>
    <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="2732852465125672460" />
    <node role="2.superclass:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="2732852465125674154">
      <link role="2.classifier:3" targetNodeId="8813828754313712692" resolveInfo="ModelChange" />
    </node>
    <node role="2.constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="2732852465125674155">
      <node role="2.returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="2732852465125674156" />
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="2732852465125674157" />
      <node role="2.body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="2732852465125674159">
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation:3" id="2732852465125674160">
          <link role="2.baseMethodDeclaration:3" targetNodeId="6359197607515881713" resolveInfo="ModelChange" />
          <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="2732852465125674164">
            <link role="2.variableDeclaration:3" targetNodeId="2732852465125674161" resolveInfo="changeSet" />
          </node>
        </node>
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="2732852465125674167">
          <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="2732852465125674169">
            <node role="2.lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="2732852465125674172">
              <link role="2.variableDeclaration:3" targetNodeId="2732852465125674132" resolveInfo="mySourceNodeId" />
            </node>
            <node role="2.rValue:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="2732852465125674173">
              <link role="2.variableDeclaration:3" targetNodeId="2732852465125674165" resolveInfo="sourceNodeId" />
            </node>
          </node>
        </node>
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="2732852465125674176">
          <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="2732852465125674178">
            <node role="2.lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="2732852465125674181">
              <link role="2.variableDeclaration:3" targetNodeId="2732852465125674136" resolveInfo="myRole" />
            </node>
            <node role="2.rValue:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="2732852465125674182">
              <link role="2.variableDeclaration:3" targetNodeId="2732852465125674174" resolveInfo="role" />
            </node>
          </node>
        </node>
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="2732852465125674185">
          <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="2732852465125674187">
            <node role="2.lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="2732852465125674190">
              <link role="2.variableDeclaration:3" targetNodeId="2732852465125674140" resolveInfo="myTargetModelReference" />
            </node>
            <node role="2.rValue:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="2732852465125674191">
              <link role="2.variableDeclaration:3" targetNodeId="2732852465125674183" resolveInfo="targetModelReference" />
            </node>
          </node>
        </node>
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="2732852465125674194">
          <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="2732852465125674196">
            <node role="2.lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="2732852465125674199">
              <link role="2.variableDeclaration:3" targetNodeId="2732852465125674144" resolveInfo="myTargetNodeId" />
            </node>
            <node role="2.rValue:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="2732852465125674200">
              <link role="2.variableDeclaration:3" targetNodeId="2732852465125674192" resolveInfo="targetNodeId" />
            </node>
          </node>
        </node>
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="2732852465125674203">
          <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="2732852465125674205">
            <node role="2.lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="2732852465125674208">
              <link role="2.variableDeclaration:3" targetNodeId="2732852465125674148" resolveInfo="myResolveInfo" />
            </node>
            <node role="2.rValue:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="2732852465125674209">
              <link role="2.variableDeclaration:3" targetNodeId="2732852465125674201" resolveInfo="resolveInfo" />
            </node>
          </node>
        </node>
      </node>
      <node role="2.parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="2732852465125674161">
        <property name="1.name:0" value="changeSet" />
        <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="2732852465125674163">
          <link role="2.classifier:3" targetNodeId="8813828754313712698" resolveInfo="ChangeSet" />
        </node>
      </node>
      <node role="2.parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="2732852465125674165">
        <property name="1.name:0" value="sourceNodeId" />
        <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="2732852465125674166">
          <link role="2.classifier:3" targetNodeId="6.~SNodeId" resolveInfo="SNodeId" />
        </node>
      </node>
      <node role="2.parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="2732852465125674174">
        <property name="1.name:0" value="role" />
        <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="2732852465125674175" />
      </node>
      <node role="2.parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="2732852465125674183">
        <property name="1.name:0" value="targetModelReference" />
        <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="2732852465125674184">
          <link role="2.classifier:3" targetNodeId="6.~SModelReference" resolveInfo="SModelReference" />
        </node>
      </node>
      <node role="2.parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="2732852465125674192">
        <property name="1.name:0" value="targetNodeId" />
        <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="2732852465125674193">
          <link role="2.classifier:3" targetNodeId="6.~SNodeId" resolveInfo="SNodeId" />
        </node>
      </node>
      <node role="2.parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="2732852465125674201">
        <property name="1.name:0" value="resolveInfo" />
        <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="2732852465125674202" />
      </node>
    </node>
    <node role="2.method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="5651973002132666996">
      <property name="1.name:0" value="getSourceNodeId" />
      <node role="2.returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="5651973002132666997">
        <link role="2.classifier:3" targetNodeId="6.~SNodeId" resolveInfo="SNodeId" />
      </node>
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="5651973002132666998" />
      <node role="2.body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="5651973002132666999">
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="5651973002132667000">
          <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="5651973002132667001">
            <link role="2.variableDeclaration:3" targetNodeId="2732852465125674132" resolveInfo="mySourceNodeId" />
          </node>
        </node>
      </node>
    </node>
    <node role="2.method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="5651973002132667002">
      <property name="1.name:0" value="getRole" />
      <node role="2.returnType:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="5651973002132667003" />
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="5651973002132667004" />
      <node role="2.body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="5651973002132667005">
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="5651973002132667006">
          <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="5651973002132667007">
            <link role="2.variableDeclaration:3" targetNodeId="2732852465125674136" resolveInfo="myRole" />
          </node>
        </node>
      </node>
    </node>
    <node role="2.method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="5651973002132667008">
      <property name="1.name:0" value="getTargetModelReference" />
      <node role="2.returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="5651973002132667009">
        <link role="2.classifier:3" targetNodeId="6.~SModelReference" resolveInfo="SModelReference" />
      </node>
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="5651973002132667010" />
      <node role="2.body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="5651973002132667011">
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="5651973002132667012">
          <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="5651973002132667013">
            <link role="2.variableDeclaration:3" targetNodeId="2732852465125674140" resolveInfo="myTargetModelReference" />
          </node>
        </node>
      </node>
    </node>
    <node role="2.method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="5651973002132667014">
      <property name="1.name:0" value="getTargetNodeId" />
      <node role="2.returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="5651973002132667015">
        <link role="2.classifier:3" targetNodeId="6.~SNodeId" resolveInfo="SNodeId" />
      </node>
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="5651973002132667016" />
      <node role="2.body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="5651973002132667017">
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="5651973002132667018">
          <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="5651973002132667019">
            <link role="2.variableDeclaration:3" targetNodeId="2732852465125674144" resolveInfo="myTargetNodeId" />
          </node>
        </node>
      </node>
    </node>
    <node role="2.method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="5651973002132667020">
      <property name="1.name:0" value="getResolveInfo" />
      <node role="2.returnType:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="5651973002132667021" />
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="5651973002132667022" />
      <node role="2.body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="5651973002132667023">
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="5651973002132667024">
          <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="5651973002132667025">
            <link role="2.variableDeclaration:3" targetNodeId="2732852465125674148" resolveInfo="myResolveInfo" />
          </node>
        </node>
      </node>
    </node>
    <node role="2.method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="5651973002132667026">
      <property name="1.name:0" value="toString" />
      <node role="2.visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="5651973002132667027" />
      <node role="2.returnType:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="5651973002132667033" />
      <node role="2.body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="5651973002132667029">
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="5651973002132667192">
          <node role="2.localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="5651973002132667193">
            <property name="1.name:0" value="targetString" />
            <node role="2.type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="5651973002132667205" />
            <node role="2.initializer:3" type="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression:3" id="5651973002132667194">
              <node role="2.ifFalse:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="5651973002132667195">
                <link role="2.classConcept:3" targetNodeId="8.~String" resolveInfo="String" />
                <link role="2.baseMethodDeclaration:3" targetNodeId="8.~String.format(java.lang.String,java.lang.Object...):java.lang.String" resolveInfo="format" />
                <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="5651973002132667196">
                  <property name="2.value:3" value="%s|%s" />
                </node>
                <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="5651973002132667197">
                  <link role="2.variableDeclaration:3" targetNodeId="2732852465125674140" resolveInfo="myTargetModelReference" />
                </node>
                <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="5651973002132667198">
                  <link role="2.variableDeclaration:3" targetNodeId="2732852465125674144" resolveInfo="myTargetNodeId" />
                </node>
              </node>
              <node role="2.condition:3" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="5651973002132667199">
                <node role="2.rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="5651973002132667200" />
                <node role="2.leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="5651973002132667201">
                  <link role="2.variableDeclaration:3" targetNodeId="2732852465125674140" resolveInfo="myTargetModelReference" />
                </node>
              </node>
              <node role="2.ifTrue:3" type="jetbrains.mps.baseLanguage.structure.PlusExpression:3" id="8789182291134995373">
                <node role="2.leftExpression:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="8789182291134995376">
                  <property name="2.value:3" value="" />
                </node>
                <node role="2.rightExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="5651973002132667203">
                  <link role="2.variableDeclaration:3" targetNodeId="2732852465125674144" resolveInfo="myTargetNodeId" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="2.statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="5651973002132667035">
          <node role="2.expression:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="5651973002132667037">
            <link role="2.classConcept:3" targetNodeId="8.~String" resolveInfo="String" />
            <link role="2.baseMethodDeclaration:3" targetNodeId="8.~String.format(java.lang.String,java.lang.Object...):java.lang.String" resolveInfo="format" />
            <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="5651973002132667038">
              <property name="2.value:3" value="Set reference in role %s for node %s to %s [resolveInfo=%s]" />
            </node>
            <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="5651973002132667207">
              <link role="2.variableDeclaration:3" targetNodeId="2732852465125674136" resolveInfo="myRole" />
            </node>
            <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="5651973002132667209">
              <link role="2.variableDeclaration:3" targetNodeId="2732852465125674132" resolveInfo="mySourceNodeId" />
            </node>
            <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="5651973002132667211">
              <link role="2.variableDeclaration:3" targetNodeId="5651973002132667193" resolveInfo="targetString" />
            </node>
            <node role="2.actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="5651973002132667213">
              <link role="2.variableDeclaration:3" targetNodeId="2732852465125674148" resolveInfo="myResolveInfo" />
            </node>
          </node>
        </node>
      </node>
      <node role="2.annotation:3" type="jetbrains.mps.baseLanguage.structure.AnnotationInstance:3" id="5651973002132667030">
        <link role="2.annotation:3" targetNodeId="8.~Override" />
      </node>
    </node>
  </node>
</model>


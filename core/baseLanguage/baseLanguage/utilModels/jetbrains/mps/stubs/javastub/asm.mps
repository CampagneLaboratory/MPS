<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:eafb5d8e-2952-4826-b4ad-be2b9011f598(jetbrains.mps.stubs.javastub.asm)">
  <persistence version="4" />
  <refactoringHistory />
  <language namespace="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590283(jetbrains.mps.lang.core.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902db(jetbrains.mps.baseLanguage.blTypes.constraints)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902c1(jetbrains.mps.baseLanguage.constraints)" version="83" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="3" />
  <maxImportIndex value="5" />
  <import index="1" modelUID="f:java_stub#org.objectweb.asm.tree(org.objectweb.asm.tree@java_stub)" version="-1" />
  <import index="2" modelUID="f:java_stub#java.util(java.util@java_stub)" version="-1" />
  <import index="3" modelUID="f:java_stub#jetbrains.mps.stubs.javastub.asm(jetbrains.mps.stubs.javastub.asm@java_stub)" version="-1" />
  <import index="4" modelUID="f:java_stub#org.objectweb.asm(org.objectweb.asm@java_stub)" version="-1" />
  <import index="5" modelUID="f:java_stub#org.objectweb.asm.signature(org.objectweb.asm.signature@java_stub)" version="-1" />
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="7241381882860002146">
    <property name="name:3" value="ASMArrayType" />
    <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860002147" />
    <node role="superclass:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860002148">
      <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
    </node>
    <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="7241381882860002149">
      <property name="name:3" value="myElementType" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860002150">
        <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="7241381882860002151" />
    </node>
    <node role="constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="7241381882860002152">
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="7241381882860002153">
        <property name="name:3" value="elementType" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860002154">
          <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
        </node>
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860002155">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860002156">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="7241381882860002157">
            <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860002158">
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860002159">
                <link role="fieldDeclaration:3" targetNodeId="7241381882860002149" resolveInfo="myElementType" />
              </node>
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860002160" />
            </node>
            <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7241381882860002161">
              <link role="variableDeclaration:3" targetNodeId="7241381882860002153" resolveInfo="elementType" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860002162">
      <property name="name:3" value="getElementType" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860002163" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860002164">
        <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860002165">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860002166">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860002167">
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860002168">
              <link role="fieldDeclaration:3" targetNodeId="7241381882860002149" resolveInfo="myElementType" />
            </node>
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860002169" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <visible index="2" modelUID="f:java_stub#java.lang(java.lang@java_stub)" />
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="7241381882860002170">
    <property name="name:3" value="ASMClassType" />
    <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860002171" />
    <node role="superclass:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860002172">
      <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
    </node>
    <node role="staticField:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration:3" id="7241381882860002173">
      <property name="isFinal:3" value="true" />
      <property name="name:3" value="OBJECT" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860002174">
        <link role="classifier:3" targetNodeId="7241381882860002170" resolveInfo="ASMClassType" />
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860002175" />
      <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860002176">
        <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860002177">
          <link role="baseMethodDeclaration:3" targetNodeId="7241381882860002182" resolveInfo="ASMClassType" />
          <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="7241381882860002178">
            <property name="value:3" value="java.lang.Object" />
          </node>
        </node>
      </node>
    </node>
    <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="7241381882860002179">
      <property name="name:3" value="myName" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860002180">
        <link role="classifier:3" targetNodeId="2v.~String" />
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="7241381882860002181" />
    </node>
    <node role="constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="7241381882860002182">
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860002183" />
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="7241381882860002184">
        <property name="name:3" value="name" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860002185">
          <link role="classifier:3" targetNodeId="2v.~String" />
        </node>
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860002186">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860002187">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="7241381882860002188">
            <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860002189">
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860002190">
                <link role="fieldDeclaration:3" targetNodeId="7241381882860002179" resolveInfo="myName" />
              </node>
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860002191" />
            </node>
            <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7241381882860002192">
              <link role="variableDeclaration:3" targetNodeId="7241381882860002184" resolveInfo="name" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860002193">
      <property name="name:3" value="getName" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860002194" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860002195">
        <link role="classifier:3" targetNodeId="2v.~String" />
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860002196">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860002197">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860002198">
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860002199">
              <link role="fieldDeclaration:3" targetNodeId="7241381882860002179" resolveInfo="myName" />
            </node>
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860002200" />
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860002201">
      <property name="name:3" value="toString" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860002202" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860002203">
        <link role="classifier:3" targetNodeId="2v.~String" />
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860002204">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860002205">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.PlusExpression:3" id="7241381882860002206">
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.PlusExpression:3" id="7241381882860002207">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="7241381882860002208">
                <property name="value:3" value="(" />
              </node>
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860002209">
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860002210">
                  <link role="fieldDeclaration:3" targetNodeId="7241381882860002179" resolveInfo="myName" />
                </node>
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860002211" />
              </node>
            </node>
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="7241381882860002212">
              <property name="value:3" value=")" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="7241381882860005690">
    <property name="name:3" value="ASMMethod" />
    <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860005691" />
    <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="7241381882860005696">
      <property name="name:3" value="myMethod" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860005697">
        <link role="classifier:3" targetNodeId="1.~MethodNode" />
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="7241381882860005698" />
    </node>
    <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="7241381882860005699">
      <property name="name:3" value="myReturnType" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860005700">
        <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="7241381882860005701" />
    </node>
    <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="7241381882860005702">
      <property name="name:3" value="myGenericReturnType" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860005703">
        <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="7241381882860005704" />
    </node>
    <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="7241381882860005705">
      <property name="name:3" value="myTypeVariables" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860005706">
        <link role="classifier:3" targetNodeId="2.~List" />
        <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860005707">
          <link role="classifier:3" targetNodeId="7241381882860008701" resolveInfo="ASMTypeVariable" />
        </node>
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="7241381882860005708" />
    </node>
    <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="7241381882860005709">
      <property name="name:3" value="myParameterTypes" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860005710">
        <link role="classifier:3" targetNodeId="2.~List" />
        <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860005711">
          <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
        </node>
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="7241381882860005712" />
    </node>
    <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="7241381882860005713">
      <property name="name:3" value="myGenericParameterTypes" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860005714">
        <link role="classifier:3" targetNodeId="2.~List" />
        <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860005715">
          <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
        </node>
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="7241381882860005716" />
    </node>
    <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="7241381882860005717">
      <property name="name:3" value="myParameterNames" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860005718">
        <link role="classifier:3" targetNodeId="2.~List" />
        <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860005719">
          <link role="classifier:3" targetNodeId="2v.~String" />
        </node>
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="7241381882860005720" />
    </node>
    <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="7241381882860005721">
      <property name="name:3" value="myParameterAnnotations" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860005722">
        <link role="classifier:3" targetNodeId="2.~List" />
        <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860005723">
          <link role="classifier:3" targetNodeId="2.~List" />
          <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860005724">
            <link role="classifier:3" targetNodeId="3.~ASMAnnotation" />
          </node>
        </node>
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="7241381882860005725" />
    </node>
    <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="7241381882860005726">
      <property name="name:3" value="myExceptions" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860005727">
        <link role="classifier:3" targetNodeId="2.~List" />
        <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860005728">
          <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
        </node>
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="7241381882860005729" />
    </node>
    <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="7241381882860005730">
      <property name="name:3" value="myAnnotations" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860005731">
        <link role="classifier:3" targetNodeId="2.~List" />
        <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860005732">
          <link role="classifier:3" targetNodeId="3.~ASMAnnotation" />
        </node>
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="7241381882860005733" />
    </node>
    <node role="constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="7241381882860005734">
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="7241381882860005735">
        <property name="name:3" value="method" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860005736">
          <link role="classifier:3" targetNodeId="1.~MethodNode" />
        </node>
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860005737">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860005738">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="7241381882860005739">
            <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860005740">
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860005741">
                <link role="fieldDeclaration:3" targetNodeId="7241381882860005696" resolveInfo="myMethod" />
              </node>
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860005742" />
            </node>
            <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7241381882860005743">
              <link role="variableDeclaration:3" targetNodeId="7241381882860005735" resolveInfo="method" />
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860005744">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="7241381882860005745">
            <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860005746">
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860005747">
                <link role="fieldDeclaration:3" targetNodeId="7241381882860005699" resolveInfo="myReturnType" />
              </node>
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860005748" />
            </node>
            <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="7241381882860005749">
              <link role="classConcept:3" targetNodeId="7241381882860007306" resolveInfo="TypeUtil" />
              <link role="baseMethodDeclaration:3" targetNodeId="7241381882860007384" resolveInfo="fromType" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="7241381882860005750">
                <link role="classConcept:3" targetNodeId="4.~Type" />
                <link role="baseMethodDeclaration:3" targetNodeId="4.~Type.getReturnType(java.lang.String):org.objectweb.asm.Type" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860005751">
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860005752">
                    <link role="fieldDeclaration:3" targetNodeId="1.~MethodNode.desc" />
                  </node>
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7241381882860005753">
                    <link role="variableDeclaration:3" targetNodeId="7241381882860005735" resolveInfo="method" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="7241381882860005754">
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="7241381882860005755">
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860005756">
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860005757">
                <link role="fieldDeclaration:3" targetNodeId="1.~MethodNode.signature" />
              </node>
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7241381882860005758">
                <link role="variableDeclaration:3" targetNodeId="7241381882860005735" resolveInfo="method" />
              </node>
            </node>
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="7241381882860005759" />
          </node>
          <node role="ifFalseStatement:3" type="jetbrains.mps.baseLanguage.structure.BlockStatement:3" id="7241381882860005760">
            <node role="statements:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860005761">
              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860005762">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="7241381882860005763">
                  <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860005764">
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860005765">
                      <link role="fieldDeclaration:3" targetNodeId="7241381882860005705" resolveInfo="myTypeVariables" />
                    </node>
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860005766" />
                  </node>
                  <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression:3" id="8278838086631112101">
                    <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.CastExpression:3" id="8278838086631112102">
                      <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression:3" id="8278838086631112188">
                        <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.CastExpression:3" id="8278838086631112189">
                          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="8278838086631112190">
                            <link role="classConcept:3" targetNodeId="2.~Collections" resolveInfo="Collections" />
                            <link role="baseMethodDeclaration:3" targetNodeId="2.~Collections.emptyList():java.util.List" resolveInfo="emptyList" />
                          </node>
                          <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="8278838086631112192">
                            <link role="classifier:3" targetNodeId="2.~List" resolveInfo="List" />
                          </node>
                        </node>
                      </node>
                      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="8278838086631112104">
                        <link role="classifier:3" targetNodeId="2.~List" resolveInfo="List" />
                        <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="8278838086631112105">
                          <link role="classifier:3" targetNodeId="7241381882860008701" resolveInfo="ASMTypeVariable" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860005768">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860005769">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="7241381882860005770">
                <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860005771">
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860005772">
                    <link role="fieldDeclaration:3" targetNodeId="7241381882860005705" resolveInfo="myTypeVariables" />
                  </node>
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860005773" />
                </node>
                <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression:3" id="8278838086631112391">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.CastExpression:3" id="8278838086631112392">
                    <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression:3" id="8278838086631112402">
                      <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.CastExpression:3" id="8278838086631112403">
                        <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="8278838086631112404">
                          <link role="classConcept:3" targetNodeId="2.~Collections" resolveInfo="Collections" />
                          <link role="baseMethodDeclaration:3" targetNodeId="2.~Collections.unmodifiableList(java.util.List):java.util.List" resolveInfo="unmodifiableList" />
                          <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="8278838086631112405">
                            <link role="classConcept:3" targetNodeId="7241381882860007306" resolveInfo="TypeUtil" />
                            <link role="baseMethodDeclaration:3" targetNodeId="7241381882860007581" resolveInfo="getFormalTypeParameters" />
                            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="8278838086631112406">
                              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="8278838086631112407">
                                <link role="fieldDeclaration:3" targetNodeId="1.~MethodNode.signature" resolveInfo="signature" />
                              </node>
                              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="8278838086631112408">
                                <link role="variableDeclaration:3" targetNodeId="7241381882860005735" resolveInfo="method" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="8278838086631112411">
                          <link role="classifier:3" targetNodeId="2.~List" resolveInfo="List" />
                        </node>
                      </node>
                    </node>
                    <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="8278838086631112398">
                      <link role="classifier:3" targetNodeId="2.~List" resolveInfo="List" />
                      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="8278838086631112399">
                        <link role="classifier:3" targetNodeId="7241381882860008701" resolveInfo="ASMTypeVariable" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="7241381882860005779">
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="7241381882860005780">
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860005781">
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860005782">
                <link role="fieldDeclaration:3" targetNodeId="1.~MethodNode.signature" />
              </node>
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7241381882860005783">
                <link role="variableDeclaration:3" targetNodeId="7241381882860005735" resolveInfo="method" />
              </node>
            </node>
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="7241381882860005784" />
          </node>
          <node role="ifFalseStatement:3" type="jetbrains.mps.baseLanguage.structure.BlockStatement:3" id="7241381882860005785">
            <node role="statements:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860005786">
              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860005787">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="7241381882860005788">
                  <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860005789">
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860005790">
                      <link role="fieldDeclaration:3" targetNodeId="7241381882860005702" resolveInfo="myGenericReturnType" />
                    </node>
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860005791" />
                  </node>
                  <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860005792">
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860005793">
                      <link role="fieldDeclaration:3" targetNodeId="7241381882860005699" resolveInfo="myReturnType" />
                    </node>
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860005794" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860005795">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860005796">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="7241381882860005797">
                <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860005798">
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860005799">
                    <link role="fieldDeclaration:3" targetNodeId="7241381882860005702" resolveInfo="myGenericReturnType" />
                  </node>
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860005800" />
                </node>
                <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="7241381882860005801">
                  <link role="classConcept:3" targetNodeId="7241381882860007306" resolveInfo="TypeUtil" />
                  <link role="baseMethodDeclaration:3" targetNodeId="7241381882860007484" resolveInfo="getReturnType" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860005802">
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860005803">
                      <link role="fieldDeclaration:3" targetNodeId="1.~MethodNode.signature" />
                    </node>
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7241381882860005804">
                      <link role="variableDeclaration:3" targetNodeId="7241381882860005735" resolveInfo="method" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="7241381882860005805">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="7241381882860005806">
            <property name="name:3" value="argumentTypes" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ArrayType:3" id="7241381882860005807">
              <node role="componentType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860005808">
                <link role="classifier:3" targetNodeId="4.~Type" />
              </node>
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="7241381882860005809">
              <link role="classConcept:3" targetNodeId="4.~Type" />
              <link role="baseMethodDeclaration:3" targetNodeId="4.~Type.getArgumentTypes(java.lang.String):org.objectweb.asm.Type[]" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860005810">
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860005811">
                  <link role="fieldDeclaration:3" targetNodeId="1.~MethodNode.desc" />
                </node>
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7241381882860005812">
                  <link role="variableDeclaration:3" targetNodeId="7241381882860005735" resolveInfo="method" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860005813">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="7241381882860005814">
            <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860005815">
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860005816">
                <link role="fieldDeclaration:3" targetNodeId="7241381882860005709" resolveInfo="myParameterTypes" />
              </node>
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860005817" />
            </node>
            <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression:3" id="7241381882860005818">
              <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.GreaterThanExpression:3" id="7241381882860005819">
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860005820">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860005821">
                    <link role="variableDeclaration:3" targetNodeId="7241381882860005806" resolveInfo="argumentTypes" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.ArrayLengthOperation:3" id="7241381882860005822" />
                </node>
                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="7241381882860005823">
                  <property name="value:3" value="0" />
                </node>
              </node>
              <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860005824">
                <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860005825">
                  <link role="baseMethodDeclaration:3" targetNodeId="2.~ArrayList.&lt;init&gt;(int)" />
                  <node role="typeParameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860005826">
                    <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
                  </node>
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860005827">
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860005828">
                      <link role="variableDeclaration:3" targetNodeId="7241381882860005806" resolveInfo="argumentTypes" />
                    </node>
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.ArrayLengthOperation:3" id="7241381882860005829" />
                  </node>
                </node>
              </node>
              <node role="ifFalse:3" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression:3" id="8278838086631112107">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.CastExpression:3" id="8278838086631112108">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression:3" id="8278838086631112193">
                    <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.CastExpression:3" id="8278838086631112194">
                      <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="8278838086631112195">
                        <link role="classConcept:3" targetNodeId="2.~Collections" resolveInfo="Collections" />
                        <link role="baseMethodDeclaration:3" targetNodeId="2.~Collections.emptyList():java.util.List" resolveInfo="emptyList" />
                      </node>
                      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="8278838086631112197">
                        <link role="classifier:3" targetNodeId="2.~List" resolveInfo="List" />
                      </node>
                    </node>
                  </node>
                  <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="8278838086631112111">
                    <link role="classifier:3" targetNodeId="2.~List" resolveInfo="List" />
                    <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="8278838086631112114">
                      <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ForeachStatement:3" id="7241381882860005831">
          <node role="iterable:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860005832">
            <link role="variableDeclaration:3" targetNodeId="7241381882860005806" resolveInfo="argumentTypes" />
          </node>
          <node role="variable:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="7241381882860005833">
            <property name="name:3" value="t" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860005834">
              <link role="classifier:3" targetNodeId="4.~Type" />
            </node>
          </node>
          <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860005835">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860005836">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860005837">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860005838">
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860005839">
                    <link role="fieldDeclaration:3" targetNodeId="7241381882860005709" resolveInfo="myParameterTypes" />
                  </node>
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860005840" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860005841">
                  <link role="baseMethodDeclaration:3" targetNodeId="2.~List.add(java.lang.Object):boolean" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="7241381882860005842">
                    <link role="classConcept:3" targetNodeId="7241381882860007306" resolveInfo="TypeUtil" />
                    <link role="baseMethodDeclaration:3" targetNodeId="7241381882860007384" resolveInfo="fromType" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860005843">
                      <link role="variableDeclaration:3" targetNodeId="7241381882860005833" resolveInfo="t" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="7241381882860005844">
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="7241381882860005845">
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860005846">
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860005847">
                <link role="fieldDeclaration:3" targetNodeId="1.~MethodNode.signature" />
              </node>
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7241381882860005848">
                <link role="variableDeclaration:3" targetNodeId="7241381882860005735" resolveInfo="method" />
              </node>
            </node>
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="7241381882860005849" />
          </node>
          <node role="ifFalseStatement:3" type="jetbrains.mps.baseLanguage.structure.BlockStatement:3" id="7241381882860005850">
            <node role="statements:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860005851">
              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860005852">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="7241381882860005853">
                  <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860005854">
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860005855">
                      <link role="fieldDeclaration:3" targetNodeId="7241381882860005713" resolveInfo="myGenericParameterTypes" />
                    </node>
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860005856" />
                  </node>
                  <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860005857">
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860005858">
                      <link role="fieldDeclaration:3" targetNodeId="7241381882860005709" resolveInfo="myParameterTypes" />
                    </node>
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860005859" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860005860">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860005861">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="7241381882860005862">
                <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860005863">
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860005864">
                    <link role="fieldDeclaration:3" targetNodeId="7241381882860005713" resolveInfo="myGenericParameterTypes" />
                  </node>
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860005865" />
                </node>
                <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="7241381882860005866">
                  <link role="classConcept:3" targetNodeId="7241381882860007306" resolveInfo="TypeUtil" />
                  <link role="baseMethodDeclaration:3" targetNodeId="7241381882860007521" resolveInfo="getParameterTypes" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860005867">
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860005868">
                      <link role="fieldDeclaration:3" targetNodeId="1.~MethodNode.signature" />
                    </node>
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7241381882860005869">
                      <link role="variableDeclaration:3" targetNodeId="7241381882860005735" resolveInfo="method" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="7241381882860005870">
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860005871">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860005872" />
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860005873">
              <link role="baseMethodDeclaration:3" targetNodeId="7241381882860006394" resolveInfo="isVarArg" />
            </node>
          </node>
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860005874">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="7241381882860005875">
              <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="7241381882860005876">
                <property name="name:3" value="lastIndex" />
                <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="7241381882860005877" />
                <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.MinusExpression:3" id="7241381882860005878">
                  <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860005879">
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860005880">
                      <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860005881">
                        <link role="fieldDeclaration:3" targetNodeId="7241381882860005713" resolveInfo="myGenericParameterTypes" />
                      </node>
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860005882" />
                    </node>
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860005883">
                      <link role="baseMethodDeclaration:3" targetNodeId="2.~List.size():int" />
                    </node>
                  </node>
                  <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="7241381882860005884">
                    <property name="value:3" value="1" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="7241381882860005885">
              <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="7241381882860005886">
                <property name="name:3" value="lastParamType" />
                <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860005887">
                  <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
                </node>
                <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860005888">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860005889">
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860005890">
                      <link role="fieldDeclaration:3" targetNodeId="7241381882860005713" resolveInfo="myGenericParameterTypes" />
                    </node>
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860005891" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860005892">
                    <link role="baseMethodDeclaration:3" targetNodeId="2.~List.get(int):java.lang.Object" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860005893">
                      <link role="variableDeclaration:3" targetNodeId="7241381882860005876" resolveInfo="lastIndex" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="7241381882860005894">
              <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.InstanceOfExpression:3" id="7241381882860005895">
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860005896">
                  <link role="variableDeclaration:3" targetNodeId="7241381882860005886" resolveInfo="lastParamType" />
                </node>
                <node role="classType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860005897">
                  <link role="classifier:3" targetNodeId="7241381882860002146" resolveInfo="ASMArrayType" />
                </node>
              </node>
              <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860005898">
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860005899">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860005900">
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860005901">
                      <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860005902">
                        <link role="fieldDeclaration:3" targetNodeId="7241381882860005713" resolveInfo="myGenericParameterTypes" />
                      </node>
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860005903" />
                    </node>
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860005904">
                      <link role="baseMethodDeclaration:3" targetNodeId="2.~List.set(int,java.lang.Object):java.lang.Object" />
                      <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860005905">
                        <link role="variableDeclaration:3" targetNodeId="7241381882860005876" resolveInfo="lastIndex" />
                      </node>
                      <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860005906">
                        <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860005907">
                          <link role="baseMethodDeclaration:3" targetNodeId="7241381882860007178" resolveInfo="ASMVarArgType" />
                          <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860005908">
                            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression:3" id="7241381882860005909">
                              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.CastExpression:3" id="7241381882860005910">
                                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860005911">
                                  <link role="variableDeclaration:3" targetNodeId="7241381882860005886" resolveInfo="lastParamType" />
                                </node>
                                <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860005912">
                                  <link role="classifier:3" targetNodeId="7241381882860002146" resolveInfo="ASMArrayType" />
                                </node>
                              </node>
                            </node>
                            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860005913">
                              <link role="baseMethodDeclaration:3" targetNodeId="7241381882860002162" resolveInfo="getElementType" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="7241381882860005914">
              <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="7241381882860005915">
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860005916">
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860005917">
                    <link role="fieldDeclaration:3" targetNodeId="7241381882860005713" resolveInfo="myGenericParameterTypes" />
                  </node>
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860005918" />
                </node>
                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860005919">
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860005920">
                    <link role="fieldDeclaration:3" targetNodeId="7241381882860005709" resolveInfo="myParameterTypes" />
                  </node>
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860005921" />
                </node>
              </node>
              <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860005922">
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860005923">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="7241381882860005924">
                    <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860005925">
                      <link role="variableDeclaration:3" targetNodeId="7241381882860005876" resolveInfo="lastIndex" />
                    </node>
                    <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.MinusExpression:3" id="7241381882860005926">
                      <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860005927">
                        <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860005928">
                          <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860005929">
                            <link role="fieldDeclaration:3" targetNodeId="7241381882860005709" resolveInfo="myParameterTypes" />
                          </node>
                          <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860005930" />
                        </node>
                        <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860005931">
                          <link role="baseMethodDeclaration:3" targetNodeId="2.~List.size():int" />
                        </node>
                      </node>
                      <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="7241381882860005932">
                        <property name="value:3" value="1" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860005933">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="7241381882860005934">
                    <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860005935">
                      <link role="variableDeclaration:3" targetNodeId="7241381882860005886" resolveInfo="lastParamType" />
                    </node>
                    <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860005936">
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860005937">
                        <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860005938">
                          <link role="fieldDeclaration:3" targetNodeId="7241381882860005709" resolveInfo="myParameterTypes" />
                        </node>
                        <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860005939" />
                      </node>
                      <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860005940">
                        <link role="baseMethodDeclaration:3" targetNodeId="2.~List.get(int):java.lang.Object" />
                        <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860005941">
                          <link role="variableDeclaration:3" targetNodeId="7241381882860005876" resolveInfo="lastIndex" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="7241381882860005942">
                  <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.InstanceOfExpression:3" id="7241381882860005943">
                    <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860005944">
                      <link role="variableDeclaration:3" targetNodeId="7241381882860005886" resolveInfo="lastParamType" />
                    </node>
                    <node role="classType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860005945">
                      <link role="classifier:3" targetNodeId="7241381882860002146" resolveInfo="ASMArrayType" />
                    </node>
                  </node>
                  <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860005946">
                    <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860005947">
                      <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860005948">
                        <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860005949">
                          <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860005950">
                            <link role="fieldDeclaration:3" targetNodeId="7241381882860005709" resolveInfo="myParameterTypes" />
                          </node>
                          <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860005951" />
                        </node>
                        <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860005952">
                          <link role="baseMethodDeclaration:3" targetNodeId="2.~List.set(int,java.lang.Object):java.lang.Object" />
                          <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860005953">
                            <link role="variableDeclaration:3" targetNodeId="7241381882860005876" resolveInfo="lastIndex" />
                          </node>
                          <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860005954">
                            <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860005955">
                              <link role="baseMethodDeclaration:3" targetNodeId="7241381882860007178" resolveInfo="ASMVarArgType" />
                              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860005956">
                                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression:3" id="7241381882860005957">
                                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.CastExpression:3" id="7241381882860005958">
                                    <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860005959">
                                      <link role="variableDeclaration:3" targetNodeId="7241381882860005886" resolveInfo="lastParamType" />
                                    </node>
                                    <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860005960">
                                      <link role="classifier:3" targetNodeId="7241381882860002146" resolveInfo="ASMArrayType" />
                                    </node>
                                  </node>
                                </node>
                                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860005961">
                                  <link role="baseMethodDeclaration:3" targetNodeId="7241381882860002162" resolveInfo="getElementType" />
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
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860005962">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="7241381882860005963">
            <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860005964">
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860005965">
                <link role="fieldDeclaration:3" targetNodeId="7241381882860005721" resolveInfo="myParameterAnnotations" />
              </node>
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860005966" />
            </node>
            <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860005967">
              <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860005968">
                <link role="baseMethodDeclaration:3" targetNodeId="2.~ArrayList.&lt;init&gt;(int)" />
                <node role="typeParameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860005969">
                  <link role="classifier:3" targetNodeId="2.~List" />
                  <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860005970">
                    <link role="classifier:3" targetNodeId="3.~ASMAnnotation" />
                  </node>
                </node>
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860005971">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860005972">
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860005973">
                      <link role="fieldDeclaration:3" targetNodeId="7241381882860005709" resolveInfo="myParameterTypes" />
                    </node>
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860005974" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860005975">
                    <link role="baseMethodDeclaration:3" targetNodeId="2.~List.size():int" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ForStatement:3" id="7241381882860005976">
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.LessThanExpression:3" id="7241381882860005977">
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860005978">
              <link role="variableDeclaration:3" targetNodeId="7241381882860006106" resolveInfo="i" />
            </node>
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860005979">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860005980">
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860005981">
                  <link role="fieldDeclaration:3" targetNodeId="7241381882860005709" resolveInfo="myParameterTypes" />
                </node>
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860005982" />
              </node>
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860005983">
                <link role="baseMethodDeclaration:3" targetNodeId="2.~List.size():int" />
              </node>
            </node>
          </node>
          <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860005984">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="7241381882860005985">
              <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="7241381882860005986">
                <property name="name:3" value="annotations" />
                <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860005987">
                  <link role="classifier:3" targetNodeId="2.~List" />
                  <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860005988">
                    <link role="classifier:3" targetNodeId="3.~ASMAnnotation" />
                  </node>
                </node>
                <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="7241381882860005989" />
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="7241381882860005990">
              <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.AndExpression:3" id="7241381882860005991">
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="7241381882860005992">
                  <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860005993">
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860005994">
                      <link role="fieldDeclaration:3" targetNodeId="1.~MethodNode.visibleParameterAnnotations" />
                    </node>
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860005995">
                      <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860005996">
                        <link role="fieldDeclaration:3" targetNodeId="7241381882860005696" resolveInfo="myMethod" />
                      </node>
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860005997" />
                    </node>
                  </node>
                  <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="7241381882860005998" />
                </node>
                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="7241381882860005999">
                  <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression:3" id="7241381882860006000">
                    <node role="array:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006001">
                      <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006002">
                        <link role="fieldDeclaration:3" targetNodeId="1.~MethodNode.visibleParameterAnnotations" />
                      </node>
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006003">
                        <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006004">
                          <link role="fieldDeclaration:3" targetNodeId="7241381882860005696" resolveInfo="myMethod" />
                        </node>
                        <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006005" />
                      </node>
                    </node>
                    <node role="index:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860006006">
                      <link role="variableDeclaration:3" targetNodeId="7241381882860006106" resolveInfo="i" />
                    </node>
                  </node>
                  <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="7241381882860006007" />
                </node>
              </node>
              <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860006008">
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ForeachStatement:3" id="7241381882860006009">
                  <node role="iterable:3" type="jetbrains.mps.baseLanguage.structure.CastExpression:3" id="7241381882860006010">
                    <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression:3" id="7241381882860006011">
                      <node role="array:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006012">
                        <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006013">
                          <link role="fieldDeclaration:3" targetNodeId="1.~MethodNode.visibleParameterAnnotations" />
                        </node>
                        <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006014">
                          <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006015">
                            <link role="fieldDeclaration:3" targetNodeId="7241381882860005696" resolveInfo="myMethod" />
                          </node>
                          <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006016" />
                        </node>
                      </node>
                      <node role="index:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860006017">
                        <link role="variableDeclaration:3" targetNodeId="7241381882860006106" resolveInfo="i" />
                      </node>
                    </node>
                    <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860006018">
                      <link role="classifier:3" targetNodeId="2.~List" />
                      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860006019">
                        <link role="classifier:3" targetNodeId="1.~AnnotationNode" />
                      </node>
                    </node>
                  </node>
                  <node role="variable:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="7241381882860006020">
                    <property name="name:3" value="an" />
                    <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860006021">
                      <link role="classifier:3" targetNodeId="1.~AnnotationNode" />
                    </node>
                  </node>
                  <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860006022">
                    <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="7241381882860006023">
                      <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="7241381882860006024">
                        <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860006025">
                          <link role="variableDeclaration:3" targetNodeId="7241381882860005986" resolveInfo="annotations" />
                        </node>
                        <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="7241381882860006026" />
                      </node>
                      <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860006027">
                        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860006028">
                          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="7241381882860006029">
                            <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860006030">
                              <link role="variableDeclaration:3" targetNodeId="7241381882860005986" resolveInfo="annotations" />
                            </node>
                            <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860006031">
                              <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860006032">
                                <link role="baseMethodDeclaration:3" targetNodeId="2.~ArrayList.&lt;init&gt;()" />
                                <node role="typeParameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860006033">
                                  <link role="classifier:3" targetNodeId="3.~ASMAnnotation" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860006034">
                      <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006035">
                        <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860006036">
                          <link role="variableDeclaration:3" targetNodeId="7241381882860005986" resolveInfo="annotations" />
                        </node>
                        <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860006037">
                          <link role="baseMethodDeclaration:3" targetNodeId="2.~List.add(java.lang.Object):boolean" />
                          <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860006038">
                            <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860006039">
                              <link role="baseMethodDeclaration:3" targetNodeId="3.~ASMAnnotation.&lt;init&gt;(org.objectweb.asm.tree.AnnotationNode)" />
                              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860006040">
                                <link role="variableDeclaration:3" targetNodeId="7241381882860006020" resolveInfo="an" />
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
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="7241381882860006041">
              <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.AndExpression:3" id="7241381882860006042">
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="7241381882860006043">
                  <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006044">
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006045">
                      <link role="fieldDeclaration:3" targetNodeId="1.~MethodNode.invisibleParameterAnnotations" />
                    </node>
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006046">
                      <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006047">
                        <link role="fieldDeclaration:3" targetNodeId="7241381882860005696" resolveInfo="myMethod" />
                      </node>
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006048" />
                    </node>
                  </node>
                  <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="7241381882860006049" />
                </node>
                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="7241381882860006050">
                  <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression:3" id="7241381882860006051">
                    <node role="array:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006052">
                      <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006053">
                        <link role="fieldDeclaration:3" targetNodeId="1.~MethodNode.invisibleParameterAnnotations" />
                      </node>
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006054">
                        <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006055">
                          <link role="fieldDeclaration:3" targetNodeId="7241381882860005696" resolveInfo="myMethod" />
                        </node>
                        <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006056" />
                      </node>
                    </node>
                    <node role="index:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860006057">
                      <link role="variableDeclaration:3" targetNodeId="7241381882860006106" resolveInfo="i" />
                    </node>
                  </node>
                  <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="7241381882860006058" />
                </node>
              </node>
              <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860006059">
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ForeachStatement:3" id="7241381882860006060">
                  <node role="iterable:3" type="jetbrains.mps.baseLanguage.structure.CastExpression:3" id="7241381882860006061">
                    <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression:3" id="7241381882860006062">
                      <node role="array:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006063">
                        <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006064">
                          <link role="fieldDeclaration:3" targetNodeId="1.~MethodNode.invisibleParameterAnnotations" />
                        </node>
                        <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006065">
                          <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006066">
                            <link role="fieldDeclaration:3" targetNodeId="7241381882860005696" resolveInfo="myMethod" />
                          </node>
                          <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006067" />
                        </node>
                      </node>
                      <node role="index:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860006068">
                        <link role="variableDeclaration:3" targetNodeId="7241381882860006106" resolveInfo="i" />
                      </node>
                    </node>
                    <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860006069">
                      <link role="classifier:3" targetNodeId="2.~List" />
                      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860006070">
                        <link role="classifier:3" targetNodeId="1.~AnnotationNode" />
                      </node>
                    </node>
                  </node>
                  <node role="variable:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="7241381882860006071">
                    <property name="name:3" value="an" />
                    <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860006072">
                      <link role="classifier:3" targetNodeId="1.~AnnotationNode" />
                    </node>
                  </node>
                  <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860006073">
                    <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="7241381882860006074">
                      <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="7241381882860006075">
                        <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860006076">
                          <link role="variableDeclaration:3" targetNodeId="7241381882860005986" resolveInfo="annotations" />
                        </node>
                        <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="7241381882860006077" />
                      </node>
                      <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860006078">
                        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860006079">
                          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="7241381882860006080">
                            <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860006081">
                              <link role="variableDeclaration:3" targetNodeId="7241381882860005986" resolveInfo="annotations" />
                            </node>
                            <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860006082">
                              <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860006083">
                                <link role="baseMethodDeclaration:3" targetNodeId="2.~ArrayList.&lt;init&gt;()" />
                                <node role="typeParameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860006084">
                                  <link role="classifier:3" targetNodeId="3.~ASMAnnotation" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860006085">
                      <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006086">
                        <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860006087">
                          <link role="variableDeclaration:3" targetNodeId="7241381882860005986" resolveInfo="annotations" />
                        </node>
                        <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860006088">
                          <link role="baseMethodDeclaration:3" targetNodeId="2.~List.add(java.lang.Object):boolean" />
                          <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860006089">
                            <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860006090">
                              <link role="baseMethodDeclaration:3" targetNodeId="3.~ASMAnnotation.&lt;init&gt;(org.objectweb.asm.tree.AnnotationNode)" />
                              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860006091">
                                <link role="variableDeclaration:3" targetNodeId="7241381882860006071" resolveInfo="an" />
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
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860006092">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006093">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006094">
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006095">
                    <link role="fieldDeclaration:3" targetNodeId="7241381882860005721" resolveInfo="myParameterAnnotations" />
                  </node>
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006096" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860006097">
                  <link role="baseMethodDeclaration:3" targetNodeId="2.~List.add(java.lang.Object):boolean" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression:3" id="7241381882860006098">
                    <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="7241381882860006099">
                      <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860006100">
                        <link role="variableDeclaration:3" targetNodeId="7241381882860005986" resolveInfo="annotations" />
                      </node>
                      <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="7241381882860006101" />
                    </node>
                    <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression:3" id="8278838086631112116">
                      <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.CastExpression:3" id="8278838086631112117">
                        <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression:3" id="8278838086631112198">
                          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.CastExpression:3" id="8278838086631112199">
                            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="8278838086631112200">
                              <link role="classConcept:3" targetNodeId="2.~Collections" resolveInfo="Collections" />
                              <link role="baseMethodDeclaration:3" targetNodeId="2.~Collections.emptyList():java.util.List" resolveInfo="emptyList" />
                            </node>
                            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="8278838086631112203">
                              <link role="classifier:3" targetNodeId="2.~List" resolveInfo="List" />
                            </node>
                          </node>
                        </node>
                        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="8278838086631112121">
                          <link role="classifier:3" targetNodeId="2.~List" resolveInfo="List" />
                          <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="8278838086631112131">
                            <link role="classifier:3" targetNodeId="3.~ASMAnnotation" resolveInfo="ASMAnnotation" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="ifFalse:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860006103">
                      <link role="variableDeclaration:3" targetNodeId="7241381882860005986" resolveInfo="annotations" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="iteration:3" type="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression:3" id="7241381882860006104">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860006105">
              <link role="variableDeclaration:3" targetNodeId="7241381882860006106" resolveInfo="i" />
            </node>
          </node>
          <node role="variable:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="7241381882860006106">
            <property name="name:3" value="i" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="7241381882860006107" />
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="7241381882860006108">
              <property name="value:3" value="0" />
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="7241381882860006109">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="7241381882860006110">
            <property name="name:3" value="exceptions" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860006111">
              <link role="classifier:3" targetNodeId="2.~List" />
              <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860006112">
                <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
              </node>
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860006113">
              <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860006114">
                <link role="baseMethodDeclaration:3" targetNodeId="2.~ArrayList.&lt;init&gt;(int)" />
                <node role="typeParameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860006115">
                  <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
                </node>
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="7241381882860006116">
                  <property name="value:3" value="0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="7241381882860006117">
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="7241381882860006118">
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006119">
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006120">
                <link role="fieldDeclaration:3" targetNodeId="1.~MethodNode.signature" />
              </node>
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7241381882860006121">
                <link role="variableDeclaration:3" targetNodeId="7241381882860005735" resolveInfo="method" />
              </node>
            </node>
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="7241381882860006122" />
          </node>
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860006123">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860006124">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="7241381882860006125">
                <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860006126">
                  <link role="variableDeclaration:3" targetNodeId="7241381882860006110" resolveInfo="exceptions" />
                </node>
                <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="7241381882860006127">
                  <link role="classConcept:3" targetNodeId="7241381882860007306" resolveInfo="TypeUtil" />
                  <link role="baseMethodDeclaration:3" targetNodeId="7241381882860007647" resolveInfo="getExceptionTypes" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006128">
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006129">
                      <link role="fieldDeclaration:3" targetNodeId="1.~MethodNode.signature" />
                    </node>
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7241381882860006130">
                      <link role="variableDeclaration:3" targetNodeId="7241381882860005735" resolveInfo="method" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="7241381882860006131">
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.NotExpression:3" id="7241381882860006132">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006133">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860006134">
                <link role="variableDeclaration:3" targetNodeId="7241381882860006110" resolveInfo="exceptions" />
              </node>
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860006135">
                <link role="baseMethodDeclaration:3" targetNodeId="2.~List.isEmpty():boolean" />
              </node>
            </node>
          </node>
          <node role="ifFalseStatement:3" type="jetbrains.mps.baseLanguage.structure.BlockStatement:3" id="7241381882860006136">
            <node role="statements:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860006137">
              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860006138">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="7241381882860006139">
                  <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006140">
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006141">
                      <link role="fieldDeclaration:3" targetNodeId="7241381882860005726" resolveInfo="myExceptions" />
                    </node>
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006142" />
                  </node>
                  <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860006143">
                    <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860006144">
                      <link role="baseMethodDeclaration:3" targetNodeId="2.~ArrayList.&lt;init&gt;(int)" />
                      <node role="typeParameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860006145">
                        <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
                      </node>
                      <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006146">
                        <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006147">
                          <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006148">
                            <link role="fieldDeclaration:3" targetNodeId="1.~MethodNode.exceptions" />
                          </node>
                          <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006149">
                            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006150">
                              <link role="fieldDeclaration:3" targetNodeId="7241381882860005696" resolveInfo="myMethod" />
                            </node>
                            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006151" />
                          </node>
                        </node>
                        <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860006152">
                          <link role="baseMethodDeclaration:3" targetNodeId="2.~List.size():int" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ForeachStatement:3" id="7241381882860006153">
                <node role="iterable:3" type="jetbrains.mps.baseLanguage.structure.CastExpression:3" id="7241381882860006154">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006155">
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006156">
                      <link role="fieldDeclaration:3" targetNodeId="1.~MethodNode.exceptions" />
                    </node>
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006157">
                      <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006158">
                        <link role="fieldDeclaration:3" targetNodeId="7241381882860005696" resolveInfo="myMethod" />
                      </node>
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006159" />
                    </node>
                  </node>
                  <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860006160">
                    <link role="classifier:3" targetNodeId="2.~List" />
                    <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860006161">
                      <link role="classifier:3" targetNodeId="2v.~String" />
                    </node>
                  </node>
                </node>
                <node role="variable:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="7241381882860006162">
                  <property name="name:3" value="s" />
                  <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860006163">
                    <link role="classifier:3" targetNodeId="2v.~String" />
                  </node>
                </node>
                <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860006164">
                  <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860006165">
                    <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006166">
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006167">
                        <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006168">
                          <link role="fieldDeclaration:3" targetNodeId="7241381882860005726" resolveInfo="myExceptions" />
                        </node>
                        <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006169" />
                      </node>
                      <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860006170">
                        <link role="baseMethodDeclaration:3" targetNodeId="2.~List.add(java.lang.Object):boolean" />
                        <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860006171">
                          <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860006172">
                            <link role="baseMethodDeclaration:3" targetNodeId="7241381882860002182" resolveInfo="ASMClassType" />
                            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006173">
                              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860006174">
                                <link role="variableDeclaration:3" targetNodeId="7241381882860006162" resolveInfo="s" />
                              </node>
                              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860006175">
                                <link role="baseMethodDeclaration:3" targetNodeId="2v.~String.replace(char,char):java.lang.String" />
                                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.CharConstant:3" id="7241381882860006176">
                                  <property name="charConstant:3" value="/" />
                                </node>
                                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.CharConstant:3" id="7241381882860006177">
                                  <property name="charConstant:3" value="." />
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
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860006178">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860006179">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="7241381882860006180">
                <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006181">
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006182">
                    <link role="fieldDeclaration:3" targetNodeId="7241381882860005726" resolveInfo="myExceptions" />
                  </node>
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006183" />
                </node>
                <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860006184">
                  <link role="variableDeclaration:3" targetNodeId="7241381882860006110" resolveInfo="exceptions" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="7241381882860006185">
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.OrExpression:3" id="7241381882860006186">
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="7241381882860006187">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006188">
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006189">
                  <link role="fieldDeclaration:3" targetNodeId="1.~MemberNode.visibleAnnotations" />
                </node>
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006190">
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006191">
                    <link role="fieldDeclaration:3" targetNodeId="7241381882860005696" resolveInfo="myMethod" />
                  </node>
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006192" />
                </node>
              </node>
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="7241381882860006193" />
            </node>
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="7241381882860006194">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006195">
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006196">
                  <link role="fieldDeclaration:3" targetNodeId="1.~MemberNode.invisibleAnnotations" />
                </node>
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006197">
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006198">
                    <link role="fieldDeclaration:3" targetNodeId="7241381882860005696" resolveInfo="myMethod" />
                  </node>
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006199" />
                </node>
              </node>
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="7241381882860006200" />
            </node>
          </node>
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860006201">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="7241381882860006202">
              <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="7241381882860006203">
                <property name="name:3" value="size" />
                <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="7241381882860006204" />
                <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.PlusExpression:3" id="7241381882860006205">
                  <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression:3" id="7241381882860006206">
                    <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression:3" id="7241381882860006207">
                      <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="7241381882860006208">
                        <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006209">
                          <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006210">
                            <link role="fieldDeclaration:3" targetNodeId="1.~MemberNode.visibleAnnotations" />
                          </node>
                          <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006211">
                            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006212">
                              <link role="fieldDeclaration:3" targetNodeId="7241381882860005696" resolveInfo="myMethod" />
                            </node>
                            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006213" />
                          </node>
                        </node>
                        <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="7241381882860006214" />
                      </node>
                      <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006215">
                        <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006216">
                          <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006217">
                            <link role="fieldDeclaration:3" targetNodeId="1.~MemberNode.visibleAnnotations" />
                          </node>
                          <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006218">
                            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006219">
                              <link role="fieldDeclaration:3" targetNodeId="7241381882860005696" resolveInfo="myMethod" />
                            </node>
                            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006220" />
                          </node>
                        </node>
                        <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860006221">
                          <link role="baseMethodDeclaration:3" targetNodeId="2.~List.size():int" />
                        </node>
                      </node>
                      <node role="ifFalse:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="7241381882860006222">
                        <property name="value:3" value="0" />
                      </node>
                    </node>
                  </node>
                  <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression:3" id="7241381882860006223">
                    <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression:3" id="7241381882860006224">
                      <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="7241381882860006225">
                        <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006226">
                          <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006227">
                            <link role="fieldDeclaration:3" targetNodeId="1.~MemberNode.invisibleAnnotations" />
                          </node>
                          <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006228">
                            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006229">
                              <link role="fieldDeclaration:3" targetNodeId="7241381882860005696" resolveInfo="myMethod" />
                            </node>
                            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006230" />
                          </node>
                        </node>
                        <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="7241381882860006231" />
                      </node>
                      <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006232">
                        <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006233">
                          <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006234">
                            <link role="fieldDeclaration:3" targetNodeId="1.~MemberNode.invisibleAnnotations" />
                          </node>
                          <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006235">
                            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006236">
                              <link role="fieldDeclaration:3" targetNodeId="7241381882860005696" resolveInfo="myMethod" />
                            </node>
                            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006237" />
                          </node>
                        </node>
                        <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860006238">
                          <link role="baseMethodDeclaration:3" targetNodeId="2.~List.size():int" />
                        </node>
                      </node>
                      <node role="ifFalse:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="7241381882860006239">
                        <property name="value:3" value="0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860006240">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="7241381882860006241">
                <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006242">
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006243">
                    <link role="fieldDeclaration:3" targetNodeId="7241381882860005730" resolveInfo="myAnnotations" />
                  </node>
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006244" />
                </node>
                <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860006245">
                  <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860006246">
                    <link role="baseMethodDeclaration:3" targetNodeId="2.~ArrayList.&lt;init&gt;(int)" />
                    <node role="typeParameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860006247">
                      <link role="classifier:3" targetNodeId="3.~ASMAnnotation" />
                    </node>
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860006248">
                      <link role="variableDeclaration:3" targetNodeId="7241381882860006203" resolveInfo="size" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="7241381882860006249">
              <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="7241381882860006250">
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006251">
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006252">
                    <link role="fieldDeclaration:3" targetNodeId="1.~MemberNode.visibleAnnotations" />
                  </node>
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006253">
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006254">
                      <link role="fieldDeclaration:3" targetNodeId="7241381882860005696" resolveInfo="myMethod" />
                    </node>
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006255" />
                  </node>
                </node>
                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="7241381882860006256" />
              </node>
              <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860006257">
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ForeachStatement:3" id="7241381882860006258">
                  <node role="iterable:3" type="jetbrains.mps.baseLanguage.structure.CastExpression:3" id="7241381882860006259">
                    <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006260">
                      <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006261">
                        <link role="fieldDeclaration:3" targetNodeId="1.~MemberNode.visibleAnnotations" />
                      </node>
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006262">
                        <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006263">
                          <link role="fieldDeclaration:3" targetNodeId="7241381882860005696" resolveInfo="myMethod" />
                        </node>
                        <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006264" />
                      </node>
                    </node>
                    <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860006265">
                      <link role="classifier:3" targetNodeId="2.~List" />
                      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860006266">
                        <link role="classifier:3" targetNodeId="1.~AnnotationNode" />
                      </node>
                    </node>
                  </node>
                  <node role="variable:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="7241381882860006267">
                    <property name="name:3" value="an" />
                    <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860006268">
                      <link role="classifier:3" targetNodeId="1.~AnnotationNode" />
                    </node>
                  </node>
                  <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860006269">
                    <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="7241381882860006270">
                      <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="7241381882860006271">
                        <property name="name:3" value="aa" />
                        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860006272">
                          <link role="classifier:3" targetNodeId="3.~ASMAnnotation" />
                        </node>
                        <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860006273">
                          <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860006274">
                            <link role="baseMethodDeclaration:3" targetNodeId="3.~ASMAnnotation.&lt;init&gt;(org.objectweb.asm.tree.AnnotationNode)" />
                            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860006275">
                              <link role="variableDeclaration:3" targetNodeId="7241381882860006267" resolveInfo="an" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860006276">
                      <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006277">
                        <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006278">
                          <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006279">
                            <link role="fieldDeclaration:3" targetNodeId="7241381882860005730" resolveInfo="myAnnotations" />
                          </node>
                          <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006280" />
                        </node>
                        <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860006281">
                          <link role="baseMethodDeclaration:3" targetNodeId="2.~List.add(java.lang.Object):boolean" />
                          <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860006282">
                            <link role="variableDeclaration:3" targetNodeId="7241381882860006271" resolveInfo="aa" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="7241381882860006283">
              <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="7241381882860006284">
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006285">
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006286">
                    <link role="fieldDeclaration:3" targetNodeId="1.~MemberNode.invisibleAnnotations" />
                  </node>
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006287">
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006288">
                      <link role="fieldDeclaration:3" targetNodeId="7241381882860005696" resolveInfo="myMethod" />
                    </node>
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006289" />
                  </node>
                </node>
                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="7241381882860006290" />
              </node>
              <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860006291">
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ForeachStatement:3" id="7241381882860006292">
                  <node role="iterable:3" type="jetbrains.mps.baseLanguage.structure.CastExpression:3" id="7241381882860006293">
                    <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006294">
                      <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006295">
                        <link role="fieldDeclaration:3" targetNodeId="1.~MemberNode.invisibleAnnotations" />
                      </node>
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006296">
                        <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006297">
                          <link role="fieldDeclaration:3" targetNodeId="7241381882860005696" resolveInfo="myMethod" />
                        </node>
                        <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006298" />
                      </node>
                    </node>
                    <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860006299">
                      <link role="classifier:3" targetNodeId="2.~List" />
                      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860006300">
                        <link role="classifier:3" targetNodeId="1.~AnnotationNode" />
                      </node>
                    </node>
                  </node>
                  <node role="variable:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="7241381882860006301">
                    <property name="name:3" value="an" />
                    <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860006302">
                      <link role="classifier:3" targetNodeId="1.~AnnotationNode" />
                    </node>
                  </node>
                  <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860006303">
                    <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="7241381882860006304">
                      <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="7241381882860006305">
                        <property name="name:3" value="aa" />
                        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860006306">
                          <link role="classifier:3" targetNodeId="3.~ASMAnnotation" />
                        </node>
                        <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860006307">
                          <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860006308">
                            <link role="baseMethodDeclaration:3" targetNodeId="3.~ASMAnnotation.&lt;init&gt;(org.objectweb.asm.tree.AnnotationNode)" />
                            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860006309">
                              <link role="variableDeclaration:3" targetNodeId="7241381882860006301" resolveInfo="an" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860006310">
                      <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006311">
                        <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006312">
                          <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006313">
                            <link role="fieldDeclaration:3" targetNodeId="7241381882860005730" resolveInfo="myAnnotations" />
                          </node>
                          <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006314" />
                        </node>
                        <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860006315">
                          <link role="baseMethodDeclaration:3" targetNodeId="2.~List.add(java.lang.Object):boolean" />
                          <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860006316">
                            <link role="variableDeclaration:3" targetNodeId="7241381882860006305" resolveInfo="aa" />
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
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="7241381882860006317">
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.NotExpression:3" id="7241381882860006318">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006319">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006320">
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006321">
                  <link role="fieldDeclaration:3" targetNodeId="7241381882860005709" resolveInfo="myParameterTypes" />
                </node>
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006322" />
              </node>
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860006323">
                <link role="baseMethodDeclaration:3" targetNodeId="2.~List.isEmpty():boolean" />
              </node>
            </node>
          </node>
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860006324">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860006325">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="7241381882860006326">
                <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006327">
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006328">
                    <link role="fieldDeclaration:3" targetNodeId="7241381882860005717" resolveInfo="myParameterNames" />
                  </node>
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006329" />
                </node>
                <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860006330">
                  <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860006331">
                    <link role="baseMethodDeclaration:3" targetNodeId="2.~ArrayList.&lt;init&gt;(int)" />
                    <node role="typeParameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860006332">
                      <link role="classifier:3" targetNodeId="2v.~String" />
                    </node>
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006333">
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006334">
                        <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006335">
                          <link role="fieldDeclaration:3" targetNodeId="7241381882860005709" resolveInfo="myParameterTypes" />
                        </node>
                        <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006336" />
                      </node>
                      <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860006337">
                        <link role="baseMethodDeclaration:3" targetNodeId="2.~List.size():int" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ForStatement:3" id="1157126008575868670">
              <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.LessThanExpression:3" id="1157126008575868671">
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1157126008575868672">
                  <link role="variableDeclaration:3" targetNodeId="1157126008575868690" resolveInfo="i" />
                </node>
                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1157126008575868673">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1157126008575868674">
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="1157126008575868675">
                      <link role="fieldDeclaration:3" targetNodeId="7241381882860005709" resolveInfo="myParameterTypes" />
                    </node>
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="1157126008575868676" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1157126008575868677">
                    <link role="baseMethodDeclaration:3" targetNodeId="2.~List.size():int" resolveInfo="size" />
                  </node>
                </node>
              </node>
              <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1157126008575868678">
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1157126008575868679">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1157126008575868680">
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1157126008575868681">
                      <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="1157126008575868682">
                        <link role="fieldDeclaration:3" targetNodeId="7241381882860005717" resolveInfo="myParameterNames" />
                      </node>
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="1157126008575868683" />
                    </node>
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1157126008575868684">
                      <link role="baseMethodDeclaration:3" targetNodeId="2.~List.add(java.lang.Object):boolean" resolveInfo="add" />
                      <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.PlusExpression:3" id="1157126008575868685">
                        <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="1157126008575868686">
                          <property name="value:3" value="p" />
                        </node>
                        <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1157126008575868687">
                          <link role="variableDeclaration:3" targetNodeId="1157126008575868690" resolveInfo="i" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="iteration:3" type="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression:3" id="1157126008575868688">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1157126008575868689">
                  <link role="variableDeclaration:3" targetNodeId="1157126008575868690" resolveInfo="i" />
                </node>
              </node>
              <node role="variable:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1157126008575868690">
                <property name="name:3" value="i" />
                <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="1157126008575868691" />
                <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1157126008575868692">
                  <property name="value:3" value="0" />
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="7241381882860006338">
              <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.AndExpression:3" id="7241381882860006339">
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="7241381882860006342">
                  <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006343">
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006344">
                      <link role="fieldDeclaration:3" targetNodeId="1.~MethodNode.localVariables" />
                    </node>
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7241381882860006345">
                      <link role="variableDeclaration:3" targetNodeId="7241381882860005735" resolveInfo="method" />
                    </node>
                  </node>
                  <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="7241381882860006346" />
                </node>
                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.LessThanExpression:3" id="7241381882860006347">
                  <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006348">
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006349">
                      <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006350">
                        <link role="fieldDeclaration:3" targetNodeId="7241381882860005709" resolveInfo="myParameterTypes" />
                      </node>
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006351" />
                    </node>
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860006352">
                      <link role="baseMethodDeclaration:3" targetNodeId="2.~List.size():int" />
                    </node>
                  </node>
                  <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006353">
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006354">
                      <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006355">
                        <link role="fieldDeclaration:3" targetNodeId="1.~MethodNode.localVariables" />
                      </node>
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7241381882860006356">
                        <link role="variableDeclaration:3" targetNodeId="7241381882860005735" resolveInfo="method" />
                      </node>
                    </node>
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860006357">
                      <link role="baseMethodDeclaration:3" targetNodeId="2.~List.size():int" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860006383">
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="8278838086631112232">
                  <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="8278838086631112233">
                    <property name="name:3" value="offset" />
                    <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="8278838086631112234" />
                    <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression:3" id="8278838086631112241">
                      <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="8278838086631112245">
                        <property name="value:3" value="1" />
                      </node>
                      <node role="ifFalse:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="8278838086631112246">
                        <property name="value:3" value="0" />
                      </node>
                      <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.NotExpression:3" id="8278838086631112236">
                        <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="8278838086631112238">
                          <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="8278838086631112239">
                            <link role="baseMethodDeclaration:3" targetNodeId="7241381882860006473" resolveInfo="isStatic" />
                          </node>
                          <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="8278838086631112240" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ForeachStatement:3" id="1157126008575868539">
                  <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1157126008575868540">
                    <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1157126008575868566">
                      <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1157126008575868567">
                        <property name="name:3" value="node" />
                        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1157126008575868568">
                          <link role="classifier:3" targetNodeId="1.~LocalVariableNode" resolveInfo="LocalVariableNode" />
                        </node>
                        <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression:3" id="1157126008575868569">
                          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.CastExpression:3" id="1157126008575868570">
                            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1157126008575868580">
                              <link role="variableDeclaration:3" targetNodeId="1157126008575868543" resolveInfo="lv" />
                            </node>
                            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1157126008575868577">
                              <link role="classifier:3" targetNodeId="1.~LocalVariableNode" resolveInfo="LocalVariableNode" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1157126008575868617">
                      <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1157126008575868618">
                        <property name="name:3" value="index" />
                        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="1157126008575868619" />
                        <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.MinusExpression:3" id="1157126008575868627">
                          <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1157126008575868631">
                            <link role="variableDeclaration:3" targetNodeId="8278838086631112233" resolveInfo="offset" />
                          </node>
                          <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1157126008575868622">
                            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1157126008575868621">
                              <link role="variableDeclaration:3" targetNodeId="1157126008575868567" resolveInfo="node" />
                            </node>
                            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="1157126008575868626">
                              <link role="fieldDeclaration:3" targetNodeId="1.~LocalVariableNode.index" resolveInfo="index" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1157126008575868582">
                      <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1157126008575868583">
                        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1157126008575868645">
                          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1157126008575868649">
                            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1157126008575868646">
                              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="1157126008575868647">
                                <link role="fieldDeclaration:3" targetNodeId="7241381882860005717" resolveInfo="myParameterNames" />
                              </node>
                              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="1157126008575868648" />
                            </node>
                            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1157126008575868653">
                              <link role="baseMethodDeclaration:3" targetNodeId="2.~List.set(int,java.lang.Object):java.lang.Object" resolveInfo="set" />
                              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1157126008575868655">
                                <link role="variableDeclaration:3" targetNodeId="1157126008575868618" resolveInfo="index" />
                              </node>
                              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1157126008575868661">
                                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1157126008575868659">
                                  <link role="variableDeclaration:3" targetNodeId="1157126008575868567" resolveInfo="node" />
                                </node>
                                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="1157126008575868666">
                                  <link role="fieldDeclaration:3" targetNodeId="1.~LocalVariableNode.name" resolveInfo="name" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.AndExpression:3" id="1157126008575868601">
                        <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.LessThanExpression:3" id="1157126008575868610">
                          <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1157126008575868640">
                            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1157126008575868613">
                              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="1157126008575868614">
                                <link role="fieldDeclaration:3" targetNodeId="7241381882860005709" resolveInfo="myParameterTypes" />
                              </node>
                              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="1157126008575868615" />
                            </node>
                            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1157126008575868644">
                              <link role="baseMethodDeclaration:3" targetNodeId="2.~List.size():int" resolveInfo="size" />
                            </node>
                          </node>
                          <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1157126008575868639">
                            <link role="variableDeclaration:3" targetNodeId="1157126008575868618" resolveInfo="index" />
                          </node>
                        </node>
                        <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.GreaterThanOrEqualsExpression:3" id="1157126008575868634">
                          <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1157126008575868637">
                            <property name="value:3" value="0" />
                          </node>
                          <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1157126008575868633">
                            <link role="variableDeclaration:3" targetNodeId="1157126008575868618" resolveInfo="index" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="iterable:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1157126008575868552">
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1157126008575868547">
                      <link role="variableDeclaration:3" targetNodeId="7241381882860005735" resolveInfo="method" />
                    </node>
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="1157126008575868558">
                      <link role="fieldDeclaration:3" targetNodeId="1.~MethodNode.localVariables" resolveInfo="localVariables" />
                    </node>
                  </node>
                  <node role="variable:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1157126008575868543">
                    <property name="name:3" value="lv" />
                    <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1157126008575868562">
                      <link role="classifier:3" targetNodeId="2v.~Object" resolveInfo="Object" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860006384">
      <property name="name:3" value="getName" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860006385" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860006386">
        <link role="classifier:3" targetNodeId="2v.~String" />
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860006387">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860006388">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006389">
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006390">
              <link role="fieldDeclaration:3" targetNodeId="1.~MethodNode.name" />
            </node>
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006391">
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006392">
                <link role="fieldDeclaration:3" targetNodeId="7241381882860005696" resolveInfo="myMethod" />
              </node>
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006393" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860006394">
      <property name="name:3" value="isVarArg" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860006395" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="7241381882860006396" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860006397">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860006398">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="7241381882860006399">
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression:3" id="7241381882860006400">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.BitwiseAndExpression:3" id="7241381882860006401">
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="7241381882860006402">
                  <link role="classifier:3" targetNodeId="4.~Opcodes" />
                  <link role="variableDeclaration:3" targetNodeId="4.~Opcodes.ACC_VARARGS" />
                </node>
                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006403">
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006404">
                    <link role="fieldDeclaration:3" targetNodeId="1.~MethodNode.access" />
                  </node>
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006405">
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006406">
                      <link role="fieldDeclaration:3" targetNodeId="7241381882860005696" resolveInfo="myMethod" />
                    </node>
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006407" />
                  </node>
                </node>
              </node>
            </node>
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="7241381882860006408">
              <property name="value:3" value="0" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860006409">
      <property name="name:3" value="isPrivate" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860006410" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="7241381882860006411" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860006412">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860006413">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="7241381882860006414">
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression:3" id="7241381882860006415">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.BitwiseAndExpression:3" id="7241381882860006416">
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="7241381882860006417">
                  <link role="classifier:3" targetNodeId="4.~Opcodes" />
                  <link role="variableDeclaration:3" targetNodeId="4.~Opcodes.ACC_PRIVATE" />
                </node>
                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006418">
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006419">
                    <link role="fieldDeclaration:3" targetNodeId="1.~MethodNode.access" />
                  </node>
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006420">
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006421">
                      <link role="fieldDeclaration:3" targetNodeId="7241381882860005696" resolveInfo="myMethod" />
                    </node>
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006422" />
                  </node>
                </node>
              </node>
            </node>
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="7241381882860006423">
              <property name="value:3" value="0" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860006424">
      <property name="name:3" value="isPublic" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860006425" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="7241381882860006426" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860006427">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860006428">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="7241381882860006429">
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression:3" id="7241381882860006430">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.BitwiseAndExpression:3" id="7241381882860006431">
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="7241381882860006432">
                  <link role="classifier:3" targetNodeId="4.~Opcodes" />
                  <link role="variableDeclaration:3" targetNodeId="4.~Opcodes.ACC_PUBLIC" />
                </node>
                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006433">
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006434">
                    <link role="fieldDeclaration:3" targetNodeId="1.~MethodNode.access" />
                  </node>
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006435">
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006436">
                      <link role="fieldDeclaration:3" targetNodeId="7241381882860005696" resolveInfo="myMethod" />
                    </node>
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006437" />
                  </node>
                </node>
              </node>
            </node>
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="7241381882860006438">
              <property name="value:3" value="0" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860006439">
      <property name="name:3" value="isProtected" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860006440" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="7241381882860006441" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860006442">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860006443">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="7241381882860006444">
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression:3" id="7241381882860006445">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.BitwiseAndExpression:3" id="7241381882860006446">
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="7241381882860006447">
                  <link role="classifier:3" targetNodeId="4.~Opcodes" />
                  <link role="variableDeclaration:3" targetNodeId="4.~Opcodes.ACC_PROTECTED" />
                </node>
                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006448">
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006449">
                    <link role="fieldDeclaration:3" targetNodeId="1.~MethodNode.access" />
                  </node>
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006450">
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006451">
                      <link role="fieldDeclaration:3" targetNodeId="7241381882860005696" resolveInfo="myMethod" />
                    </node>
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006452" />
                  </node>
                </node>
              </node>
            </node>
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="7241381882860006453">
              <property name="value:3" value="0" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860006454">
      <property name="name:3" value="isPackageProtected" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860006455" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="7241381882860006456" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860006457">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860006458">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AndExpression:3" id="7241381882860006459">
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.AndExpression:3" id="7241381882860006460">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.NotExpression:3" id="7241381882860006461">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006462">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006463" />
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860006464">
                    <link role="baseMethodDeclaration:3" targetNodeId="7241381882860006424" resolveInfo="isPublic" />
                  </node>
                </node>
              </node>
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NotExpression:3" id="7241381882860006465">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006466">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006467" />
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860006468">
                    <link role="baseMethodDeclaration:3" targetNodeId="7241381882860006409" resolveInfo="isPrivate" />
                  </node>
                </node>
              </node>
            </node>
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NotExpression:3" id="7241381882860006469">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006470">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006471" />
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860006472">
                  <link role="baseMethodDeclaration:3" targetNodeId="7241381882860006439" resolveInfo="isProtected" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860006473">
      <property name="name:3" value="isStatic" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860006474" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="7241381882860006475" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860006476">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860006477">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="7241381882860006478">
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression:3" id="7241381882860006479">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.BitwiseAndExpression:3" id="7241381882860006480">
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="7241381882860006481">
                  <link role="classifier:3" targetNodeId="4.~Opcodes" />
                  <link role="variableDeclaration:3" targetNodeId="4.~Opcodes.ACC_STATIC" />
                </node>
                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006482">
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006483">
                    <link role="fieldDeclaration:3" targetNodeId="1.~MethodNode.access" />
                  </node>
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006484">
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006485">
                      <link role="fieldDeclaration:3" targetNodeId="7241381882860005696" resolveInfo="myMethod" />
                    </node>
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006486" />
                  </node>
                </node>
              </node>
            </node>
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="7241381882860006487">
              <property name="value:3" value="0" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860006488">
      <property name="name:3" value="isDeprecated" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860006489" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="7241381882860006490" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860006491">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860006492">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="7241381882860006493">
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression:3" id="7241381882860006494">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.BitwiseAndExpression:3" id="7241381882860006495">
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="7241381882860006496">
                  <link role="classifier:3" targetNodeId="4.~Opcodes" />
                  <link role="variableDeclaration:3" targetNodeId="4.~Opcodes.ACC_DEPRECATED" />
                </node>
                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006497">
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006498">
                    <link role="fieldDeclaration:3" targetNodeId="1.~MethodNode.access" />
                  </node>
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006499">
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006500">
                      <link role="fieldDeclaration:3" targetNodeId="7241381882860005696" resolveInfo="myMethod" />
                    </node>
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006501" />
                  </node>
                </node>
              </node>
            </node>
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="7241381882860006502">
              <property name="value:3" value="0" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860006503">
      <property name="name:3" value="isFinal" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860006504" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="7241381882860006505" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860006506">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860006507">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="7241381882860006508">
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression:3" id="7241381882860006509">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.BitwiseAndExpression:3" id="7241381882860006510">
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="7241381882860006511">
                  <link role="classifier:3" targetNodeId="4.~Opcodes" />
                  <link role="variableDeclaration:3" targetNodeId="4.~Opcodes.ACC_FINAL" />
                </node>
                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006512">
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006513">
                    <link role="fieldDeclaration:3" targetNodeId="1.~MethodNode.access" />
                  </node>
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006514">
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006515">
                      <link role="fieldDeclaration:3" targetNodeId="7241381882860005696" resolveInfo="myMethod" />
                    </node>
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006516" />
                  </node>
                </node>
              </node>
            </node>
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="7241381882860006517">
              <property name="value:3" value="0" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860006518">
      <property name="name:3" value="isAbstract" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860006519" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="7241381882860006520" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860006521">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860006522">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="7241381882860006523">
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression:3" id="7241381882860006524">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.BitwiseAndExpression:3" id="7241381882860006525">
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="7241381882860006526">
                  <link role="classifier:3" targetNodeId="4.~Opcodes" />
                  <link role="variableDeclaration:3" targetNodeId="4.~Opcodes.ACC_ABSTRACT" />
                </node>
                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006527">
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006528">
                    <link role="fieldDeclaration:3" targetNodeId="1.~MethodNode.access" />
                  </node>
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006529">
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006530">
                      <link role="fieldDeclaration:3" targetNodeId="7241381882860005696" resolveInfo="myMethod" />
                    </node>
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006531" />
                  </node>
                </node>
              </node>
            </node>
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="7241381882860006532">
              <property name="value:3" value="0" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860006533">
      <property name="name:3" value="isBridge" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860006534" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="7241381882860006535" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860006536">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860006537">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="7241381882860006538">
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression:3" id="7241381882860006539">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.BitwiseAndExpression:3" id="7241381882860006540">
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="7241381882860006541">
                  <link role="classifier:3" targetNodeId="4.~Opcodes" />
                  <link role="variableDeclaration:3" targetNodeId="4.~Opcodes.ACC_BRIDGE" />
                </node>
                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006542">
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006543">
                    <link role="fieldDeclaration:3" targetNodeId="1.~MethodNode.access" />
                  </node>
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006544">
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006545">
                      <link role="fieldDeclaration:3" targetNodeId="7241381882860005696" resolveInfo="myMethod" />
                    </node>
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006546" />
                  </node>
                </node>
              </node>
            </node>
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="7241381882860006547">
              <property name="value:3" value="0" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860006548">
      <property name="name:3" value="isConstructor" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860006549" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="7241381882860006550" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860006551">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860006552">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006553">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006554">
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006555">
                <link role="fieldDeclaration:3" targetNodeId="1.~MethodNode.name" />
              </node>
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006556">
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006557">
                  <link role="fieldDeclaration:3" targetNodeId="7241381882860005696" resolveInfo="myMethod" />
                </node>
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006558" />
              </node>
            </node>
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860006559">
              <link role="baseMethodDeclaration:3" targetNodeId="2v.~String.equals(java.lang.Object):boolean" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="7241381882860006560">
                <property name="value:3" value="&lt;init&gt;" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860006561">
      <property name="name:3" value="isCompilerGenerated" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860006562" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="7241381882860006563" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860006564">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860006565">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.OrExpression:3" id="7241381882860006566">
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006567">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006568">
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006569">
                  <link role="fieldDeclaration:3" targetNodeId="1.~MethodNode.name" />
                </node>
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006570">
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006571">
                    <link role="fieldDeclaration:3" targetNodeId="7241381882860005696" resolveInfo="myMethod" />
                  </node>
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006572" />
                </node>
              </node>
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860006573">
                <link role="baseMethodDeclaration:3" targetNodeId="2v.~String.startsWith(java.lang.String):boolean" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="7241381882860006574">
                  <property name="value:3" value="access$" />
                </node>
              </node>
            </node>
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006575">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006576">
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006577">
                  <link role="fieldDeclaration:3" targetNodeId="1.~MethodNode.name" />
                </node>
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006578">
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006579">
                    <link role="fieldDeclaration:3" targetNodeId="7241381882860005696" resolveInfo="myMethod" />
                  </node>
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006580" />
                </node>
              </node>
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860006581">
                <link role="baseMethodDeclaration:3" targetNodeId="2v.~String.equals(java.lang.Object):boolean" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="7241381882860006582">
                  <property name="value:3" value="&lt;clinit&gt;" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860006583">
      <property name="name:3" value="getTypeParameters" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860006584" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860006585">
        <link role="classifier:3" targetNodeId="2.~List" />
        <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860006586">
          <link role="classifier:3" targetNodeId="7241381882860008701" resolveInfo="ASMTypeVariable" />
        </node>
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860006587">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860006588">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006589">
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006590">
              <link role="fieldDeclaration:3" targetNodeId="7241381882860005705" resolveInfo="myTypeVariables" />
            </node>
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006591" />
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860006592">
      <property name="name:3" value="getReturnType" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860006593" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860006594">
        <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860006595">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860006596">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006597">
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006598">
              <link role="fieldDeclaration:3" targetNodeId="7241381882860005699" resolveInfo="myReturnType" />
            </node>
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006599" />
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860006600">
      <property name="name:3" value="getGenericReturnType" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860006601" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860006602">
        <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860006603">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860006604">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006605">
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006606">
              <link role="fieldDeclaration:3" targetNodeId="7241381882860005702" resolveInfo="myGenericReturnType" />
            </node>
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006607" />
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860006608">
      <property name="name:3" value="getAnnotations" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860006609" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860006610">
        <link role="classifier:3" targetNodeId="2.~List" />
        <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860006611">
          <link role="classifier:3" targetNodeId="3.~ASMAnnotation" />
        </node>
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860006612">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860006613">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression:3" id="7241381882860006614">
            <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="7241381882860006615">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006616">
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006617">
                  <link role="fieldDeclaration:3" targetNodeId="7241381882860005730" resolveInfo="myAnnotations" />
                </node>
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006618" />
              </node>
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="7241381882860006619" />
            </node>
            <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression:3" id="8278838086631112165">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.CastExpression:3" id="8278838086631112166">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression:3" id="8278838086631112205">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.CastExpression:3" id="8278838086631112206">
                    <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="8278838086631112207">
                      <link role="classConcept:3" targetNodeId="2.~Collections" resolveInfo="Collections" />
                      <link role="baseMethodDeclaration:3" targetNodeId="2.~Collections.emptyList():java.util.List" resolveInfo="emptyList" />
                    </node>
                    <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="8278838086631112211">
                      <link role="classifier:3" targetNodeId="2.~List" resolveInfo="List" />
                    </node>
                  </node>
                </node>
                <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="8278838086631112171">
                  <link role="classifier:3" targetNodeId="2.~List" resolveInfo="List" />
                  <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="8278838086631112175">
                    <link role="classifier:3" targetNodeId="3.~ASMAnnotation" resolveInfo="ASMAnnotation" />
                  </node>
                </node>
              </node>
            </node>
            <node role="ifFalse:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="7241381882860006621">
              <link role="classConcept:3" targetNodeId="2.~Collections" />
              <link role="baseMethodDeclaration:3" targetNodeId="2.~Collections.unmodifiableList(java.util.List):java.util.List" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006622">
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006623">
                  <link role="fieldDeclaration:3" targetNodeId="7241381882860005730" resolveInfo="myAnnotations" />
                </node>
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006624" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860006625">
      <property name="name:3" value="getParameterTypes" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860006626" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860006627">
        <link role="classifier:3" targetNodeId="2.~List" />
        <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860006628">
          <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
        </node>
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860006629">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860006630">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="7241381882860006631">
            <link role="classConcept:3" targetNodeId="2.~Collections" />
            <link role="baseMethodDeclaration:3" targetNodeId="2.~Collections.unmodifiableList(java.util.List):java.util.List" />
            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006632">
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006633">
                <link role="fieldDeclaration:3" targetNodeId="7241381882860005709" resolveInfo="myParameterTypes" />
              </node>
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006634" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860006635">
      <property name="name:3" value="getGenericParameterTypes" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860006636" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860006637">
        <link role="classifier:3" targetNodeId="2.~List" />
        <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860006638">
          <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
        </node>
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860006639">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860006640">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="7241381882860006641">
            <link role="classConcept:3" targetNodeId="2.~Collections" />
            <link role="baseMethodDeclaration:3" targetNodeId="2.~Collections.unmodifiableList(java.util.List):java.util.List" />
            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006642">
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006643">
                <link role="fieldDeclaration:3" targetNodeId="7241381882860005713" resolveInfo="myGenericParameterTypes" />
              </node>
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006644" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860006645">
      <property name="name:3" value="getParameterNames" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860006646" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860006647">
        <link role="classifier:3" targetNodeId="2.~List" />
        <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860006648">
          <link role="classifier:3" targetNodeId="2v.~String" />
        </node>
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860006649">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860006650">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression:3" id="8278838086631112051">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression:3" id="8278838086631112137">
              <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="8278838086631112138">
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="8278838086631112139">
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="8278838086631112140">
                    <link role="fieldDeclaration:3" targetNodeId="7241381882860005717" resolveInfo="myParameterNames" />
                  </node>
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="8278838086631112141" />
                </node>
                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="8278838086631112142" />
              </node>
              <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression:3" id="8278838086631112151">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.CastExpression:3" id="8278838086631112152">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression:3" id="8278838086631112214">
                    <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.CastExpression:3" id="8278838086631112215">
                      <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="8278838086631112216">
                        <link role="baseMethodDeclaration:3" targetNodeId="2.~Collections.emptyList():java.util.List" resolveInfo="emptyList" />
                        <link role="classConcept:3" targetNodeId="2.~Collections" resolveInfo="Collections" />
                      </node>
                      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="8278838086631112220">
                        <link role="classifier:3" targetNodeId="2.~List" resolveInfo="List" />
                      </node>
                    </node>
                  </node>
                  <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="8278838086631112157">
                    <link role="classifier:3" targetNodeId="2.~List" resolveInfo="List" />
                    <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="8278838086631112161">
                      <link role="classifier:3" targetNodeId="2v.~String" resolveInfo="String" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="ifFalse:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="8278838086631112144">
                <link role="baseMethodDeclaration:3" targetNodeId="2.~Collections.unmodifiableList(java.util.List):java.util.List" resolveInfo="unmodifiableList" />
                <link role="classConcept:3" targetNodeId="2.~Collections" resolveInfo="Collections" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="8278838086631112145">
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="8278838086631112146">
                    <link role="fieldDeclaration:3" targetNodeId="7241381882860005717" resolveInfo="myParameterNames" />
                  </node>
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="8278838086631112147" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860006662">
      <property name="name:3" value="getParameterAnnotations" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860006663" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860006664">
        <link role="classifier:3" targetNodeId="2.~List" />
        <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860006665">
          <link role="classifier:3" targetNodeId="2.~List" />
          <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860006666">
            <link role="classifier:3" targetNodeId="3.~ASMAnnotation" />
          </node>
        </node>
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860006667">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860006668">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="7241381882860006669">
            <link role="classConcept:3" targetNodeId="2.~Collections" />
            <link role="baseMethodDeclaration:3" targetNodeId="2.~Collections.unmodifiableList(java.util.List):java.util.List" />
            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006670">
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006671">
                <link role="fieldDeclaration:3" targetNodeId="7241381882860005721" resolveInfo="myParameterAnnotations" />
              </node>
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006672" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860006673">
      <property name="name:3" value="getExceptionTypes" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860006674" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860006675">
        <link role="classifier:3" targetNodeId="2.~List" />
        <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860006676">
          <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
        </node>
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860006677">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860006678">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="7241381882860006679">
            <link role="classConcept:3" targetNodeId="2.~Collections" />
            <link role="baseMethodDeclaration:3" targetNodeId="2.~Collections.unmodifiableList(java.util.List):java.util.List" />
            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006680">
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006681">
                <link role="fieldDeclaration:3" targetNodeId="7241381882860005726" resolveInfo="myExceptions" />
              </node>
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006682" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="7241381882860006706">
    <property name="name:3" value="ASMPrimitiveType" />
    <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860006707" />
    <node role="superclass:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860006708">
      <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
    </node>
    <node role="staticField:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration:3" id="7241381882860006709">
      <property name="isFinal:3" value="true" />
      <property name="name:3" value="VOID" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860006710">
        <link role="classifier:3" targetNodeId="7241381882860006706" resolveInfo="ASMPrimitiveType" />
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860006711" />
      <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860006712">
        <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860006713">
          <link role="baseMethodDeclaration:3" targetNodeId="7241381882860006766" resolveInfo="ASMPrimitiveType" />
          <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="7241381882860006714">
            <property name="value:3" value="void" />
          </node>
        </node>
      </node>
    </node>
    <node role="staticField:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration:3" id="7241381882860006715">
      <property name="isFinal:3" value="true" />
      <property name="name:3" value="BOOLEAN" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860006716">
        <link role="classifier:3" targetNodeId="7241381882860006706" resolveInfo="ASMPrimitiveType" />
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860006717" />
      <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860006718">
        <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860006719">
          <link role="baseMethodDeclaration:3" targetNodeId="7241381882860006766" resolveInfo="ASMPrimitiveType" />
          <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="7241381882860006720">
            <property name="value:3" value="boolean" />
          </node>
        </node>
      </node>
    </node>
    <node role="staticField:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration:3" id="7241381882860006721">
      <property name="isFinal:3" value="true" />
      <property name="name:3" value="CHAR" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860006722">
        <link role="classifier:3" targetNodeId="7241381882860006706" resolveInfo="ASMPrimitiveType" />
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860006723" />
      <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860006724">
        <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860006725">
          <link role="baseMethodDeclaration:3" targetNodeId="7241381882860006766" resolveInfo="ASMPrimitiveType" />
          <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="7241381882860006726">
            <property name="value:3" value="char" />
          </node>
        </node>
      </node>
    </node>
    <node role="staticField:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration:3" id="7241381882860006727">
      <property name="isFinal:3" value="true" />
      <property name="name:3" value="BYTE" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860006728">
        <link role="classifier:3" targetNodeId="7241381882860006706" resolveInfo="ASMPrimitiveType" />
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860006729" />
      <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860006730">
        <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860006731">
          <link role="baseMethodDeclaration:3" targetNodeId="7241381882860006766" resolveInfo="ASMPrimitiveType" />
          <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="7241381882860006732">
            <property name="value:3" value="byte" />
          </node>
        </node>
      </node>
    </node>
    <node role="staticField:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration:3" id="7241381882860006733">
      <property name="isFinal:3" value="true" />
      <property name="name:3" value="SHORT" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860006734">
        <link role="classifier:3" targetNodeId="7241381882860006706" resolveInfo="ASMPrimitiveType" />
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860006735" />
      <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860006736">
        <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860006737">
          <link role="baseMethodDeclaration:3" targetNodeId="7241381882860006766" resolveInfo="ASMPrimitiveType" />
          <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="7241381882860006738">
            <property name="value:3" value="short" />
          </node>
        </node>
      </node>
    </node>
    <node role="staticField:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration:3" id="7241381882860006739">
      <property name="isFinal:3" value="true" />
      <property name="name:3" value="INT" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860006740">
        <link role="classifier:3" targetNodeId="7241381882860006706" resolveInfo="ASMPrimitiveType" />
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860006741" />
      <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860006742">
        <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860006743">
          <link role="baseMethodDeclaration:3" targetNodeId="7241381882860006766" resolveInfo="ASMPrimitiveType" />
          <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="7241381882860006744">
            <property name="value:3" value="int" />
          </node>
        </node>
      </node>
    </node>
    <node role="staticField:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration:3" id="7241381882860006745">
      <property name="isFinal:3" value="true" />
      <property name="name:3" value="FLOAT" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860006746">
        <link role="classifier:3" targetNodeId="7241381882860006706" resolveInfo="ASMPrimitiveType" />
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860006747" />
      <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860006748">
        <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860006749">
          <link role="baseMethodDeclaration:3" targetNodeId="7241381882860006766" resolveInfo="ASMPrimitiveType" />
          <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="7241381882860006750">
            <property name="value:3" value="float" />
          </node>
        </node>
      </node>
    </node>
    <node role="staticField:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration:3" id="7241381882860006751">
      <property name="isFinal:3" value="true" />
      <property name="name:3" value="LONG" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860006752">
        <link role="classifier:3" targetNodeId="7241381882860006706" resolveInfo="ASMPrimitiveType" />
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860006753" />
      <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860006754">
        <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860006755">
          <link role="baseMethodDeclaration:3" targetNodeId="7241381882860006766" resolveInfo="ASMPrimitiveType" />
          <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="7241381882860006756">
            <property name="value:3" value="long" />
          </node>
        </node>
      </node>
    </node>
    <node role="staticField:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration:3" id="7241381882860006757">
      <property name="isFinal:3" value="true" />
      <property name="name:3" value="DOUBLE" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860006758">
        <link role="classifier:3" targetNodeId="7241381882860006706" resolveInfo="ASMPrimitiveType" />
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860006759" />
      <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860006760">
        <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860006761">
          <link role="baseMethodDeclaration:3" targetNodeId="7241381882860006766" resolveInfo="ASMPrimitiveType" />
          <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="7241381882860006762">
            <property name="value:3" value="double" />
          </node>
        </node>
      </node>
    </node>
    <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="7241381882860006763">
      <property name="name:3" value="myName" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860006764">
        <link role="classifier:3" targetNodeId="2v.~String" />
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="7241381882860006765" />
    </node>
    <node role="constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="7241381882860006766">
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="7241381882860006767" />
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="7241381882860006768">
        <property name="name:3" value="name" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860006769">
          <link role="classifier:3" targetNodeId="2v.~String" />
        </node>
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860006770">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860006771">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="7241381882860006772">
            <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006773">
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006774">
                <link role="fieldDeclaration:3" targetNodeId="7241381882860006763" resolveInfo="myName" />
              </node>
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006775" />
            </node>
            <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7241381882860006776">
              <link role="variableDeclaration:3" targetNodeId="7241381882860006768" resolveInfo="name" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860006777">
      <property name="name:3" value="getName" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860006778" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860006779">
        <link role="classifier:3" targetNodeId="2v.~String" />
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860006780">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860006781">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006782">
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006783">
              <link role="fieldDeclaration:3" targetNodeId="7241381882860006763" resolveInfo="myName" />
            </node>
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006784" />
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860006785">
      <property name="name:3" value="toString" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860006786" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860006787">
        <link role="classifier:3" targetNodeId="2v.~String" />
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860006788">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860006789">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006790">
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006791">
              <link role="fieldDeclaration:3" targetNodeId="7241381882860006763" resolveInfo="myName" />
            </node>
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006792" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="7241381882860006793">
    <property name="name:3" value="ASMField" />
    <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860006794" />
    <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="7241381882860006795">
      <property name="name:3" value="myField" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860006796">
        <link role="classifier:3" targetNodeId="1.~FieldNode" />
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="7241381882860006797" />
    </node>
    <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="7241381882860006798">
      <property name="name:3" value="myAnnotations" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860006799">
        <link role="classifier:3" targetNodeId="2.~List" />
        <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860006800">
          <link role="classifier:3" targetNodeId="3.~ASMAnnotation" />
        </node>
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="7241381882860006801" />
    </node>
    <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="7241381882860006802">
      <property name="name:3" value="myType" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860006803">
        <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="7241381882860006804" />
    </node>
    <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="7241381882860006805">
      <property name="name:3" value="myGenericType" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860006806">
        <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="7241381882860006807" />
    </node>
    <node role="constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="7241381882860006808">
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="7241381882860006809">
        <property name="name:3" value="field" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860006810">
          <link role="classifier:3" targetNodeId="1.~FieldNode" />
        </node>
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860006811">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860006812">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="7241381882860006813">
            <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006814">
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006815">
                <link role="fieldDeclaration:3" targetNodeId="7241381882860006795" resolveInfo="myField" />
              </node>
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006816" />
            </node>
            <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7241381882860006817">
              <link role="variableDeclaration:3" targetNodeId="7241381882860006809" resolveInfo="field" />
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="7241381882860006818">
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="7241381882860006819">
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006820">
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006821">
                <link role="fieldDeclaration:3" targetNodeId="1.~MemberNode.visibleAnnotations" />
              </node>
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006822">
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006823">
                  <link role="fieldDeclaration:3" targetNodeId="7241381882860006795" resolveInfo="myField" />
                </node>
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006824" />
              </node>
            </node>
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="7241381882860006825" />
          </node>
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860006826">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860006827">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="7241381882860006828">
                <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006829">
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006830">
                    <link role="fieldDeclaration:3" targetNodeId="7241381882860006798" resolveInfo="myAnnotations" />
                  </node>
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006831" />
                </node>
                <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860006832">
                  <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860006833">
                    <link role="baseMethodDeclaration:3" targetNodeId="2.~ArrayList.&lt;init&gt;(int)" />
                    <node role="typeParameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860006834">
                      <link role="classifier:3" targetNodeId="3.~ASMAnnotation" />
                    </node>
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006835">
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006836">
                        <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006837">
                          <link role="fieldDeclaration:3" targetNodeId="1.~MemberNode.visibleAnnotations" />
                        </node>
                        <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006838">
                          <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006839">
                            <link role="fieldDeclaration:3" targetNodeId="7241381882860006795" resolveInfo="myField" />
                          </node>
                          <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006840" />
                        </node>
                      </node>
                      <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860006841">
                        <link role="baseMethodDeclaration:3" targetNodeId="2.~List.size():int" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ForeachStatement:3" id="7241381882860006842">
              <node role="iterable:3" type="jetbrains.mps.baseLanguage.structure.CastExpression:3" id="7241381882860006843">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006844">
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006845">
                    <link role="fieldDeclaration:3" targetNodeId="1.~MemberNode.visibleAnnotations" />
                  </node>
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006846">
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006847">
                      <link role="fieldDeclaration:3" targetNodeId="7241381882860006795" resolveInfo="myField" />
                    </node>
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006848" />
                  </node>
                </node>
                <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860006849">
                  <link role="classifier:3" targetNodeId="2.~List" />
                  <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860006850">
                    <link role="classifier:3" targetNodeId="1.~AnnotationNode" />
                  </node>
                </node>
              </node>
              <node role="variable:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="7241381882860006851">
                <property name="name:3" value="an" />
                <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860006852">
                  <link role="classifier:3" targetNodeId="1.~AnnotationNode" />
                </node>
              </node>
              <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860006853">
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="7241381882860006854">
                  <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="7241381882860006855">
                    <property name="name:3" value="aa" />
                    <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860006856">
                      <link role="classifier:3" targetNodeId="3.~ASMAnnotation" />
                    </node>
                    <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860006857">
                      <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860006858">
                        <link role="baseMethodDeclaration:3" targetNodeId="3.~ASMAnnotation.&lt;init&gt;(org.objectweb.asm.tree.AnnotationNode)" />
                        <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860006859">
                          <link role="variableDeclaration:3" targetNodeId="7241381882860006851" resolveInfo="an" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860006860">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006861">
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006862">
                      <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006863">
                        <link role="fieldDeclaration:3" targetNodeId="7241381882860006798" resolveInfo="myAnnotations" />
                      </node>
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006864" />
                    </node>
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860006865">
                      <link role="baseMethodDeclaration:3" targetNodeId="2.~List.add(java.lang.Object):boolean" />
                      <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860006866">
                        <link role="variableDeclaration:3" targetNodeId="7241381882860006855" resolveInfo="aa" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860006867">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="7241381882860006868">
            <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006869">
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006870">
                <link role="fieldDeclaration:3" targetNodeId="7241381882860006802" resolveInfo="myType" />
              </node>
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006871" />
            </node>
            <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="7241381882860006872">
              <link role="classConcept:3" targetNodeId="7241381882860007306" resolveInfo="TypeUtil" />
              <link role="baseMethodDeclaration:3" targetNodeId="7241381882860007375" resolveInfo="fromDescriptor" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006873">
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006874">
                  <link role="fieldDeclaration:3" targetNodeId="1.~FieldNode.desc" />
                </node>
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006875">
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006876">
                    <link role="fieldDeclaration:3" targetNodeId="7241381882860006795" resolveInfo="myField" />
                  </node>
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006877" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="7241381882860006878">
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="7241381882860006879">
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006880">
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006881">
                <link role="fieldDeclaration:3" targetNodeId="1.~FieldNode.signature" />
              </node>
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006882">
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006883">
                  <link role="fieldDeclaration:3" targetNodeId="7241381882860006795" resolveInfo="myField" />
                </node>
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006884" />
              </node>
            </node>
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="7241381882860006885" />
          </node>
          <node role="ifFalseStatement:3" type="jetbrains.mps.baseLanguage.structure.BlockStatement:3" id="7241381882860006886">
            <node role="statements:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860006887">
              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860006888">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="7241381882860006889">
                  <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006890">
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006891">
                      <link role="fieldDeclaration:3" targetNodeId="7241381882860006805" resolveInfo="myGenericType" />
                    </node>
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006892" />
                  </node>
                  <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006893">
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006894">
                      <link role="fieldDeclaration:3" targetNodeId="7241381882860006802" resolveInfo="myType" />
                    </node>
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006895" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860006896">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860006897">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="7241381882860006898">
                <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006899">
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006900">
                    <link role="fieldDeclaration:3" targetNodeId="7241381882860006805" resolveInfo="myGenericType" />
                  </node>
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006901" />
                </node>
                <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="7241381882860006902">
                  <link role="classConcept:3" targetNodeId="7241381882860007306" resolveInfo="TypeUtil" />
                  <link role="baseMethodDeclaration:3" targetNodeId="7241381882860007708" resolveInfo="getFieldType" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006903">
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006904">
                      <link role="fieldDeclaration:3" targetNodeId="1.~FieldNode.signature" />
                    </node>
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006905">
                      <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006906">
                        <link role="fieldDeclaration:3" targetNodeId="7241381882860006795" resolveInfo="myField" />
                      </node>
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006907" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860006908">
      <property name="name:3" value="getName" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860006909" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860006910">
        <link role="classifier:3" targetNodeId="2v.~String" />
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860006911">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860006912">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006913">
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006914">
              <link role="fieldDeclaration:3" targetNodeId="1.~FieldNode.name" />
            </node>
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006915">
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006916">
                <link role="fieldDeclaration:3" targetNodeId="7241381882860006795" resolveInfo="myField" />
              </node>
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006917" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860006918">
      <property name="name:3" value="isPrivate" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860006919" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="7241381882860006920" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860006921">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860006922">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="7241381882860006923">
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression:3" id="7241381882860006924">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.BitwiseAndExpression:3" id="7241381882860006925">
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="7241381882860006926">
                  <link role="classifier:3" targetNodeId="4.~Opcodes" />
                  <link role="variableDeclaration:3" targetNodeId="4.~Opcodes.ACC_PRIVATE" />
                </node>
                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006927">
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006928">
                    <link role="fieldDeclaration:3" targetNodeId="1.~FieldNode.access" />
                  </node>
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006929">
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006930">
                      <link role="fieldDeclaration:3" targetNodeId="7241381882860006795" resolveInfo="myField" />
                    </node>
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006931" />
                  </node>
                </node>
              </node>
            </node>
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="7241381882860006932">
              <property name="value:3" value="0" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860006933">
      <property name="name:3" value="isPublic" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860006934" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="7241381882860006935" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860006936">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860006937">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="7241381882860006938">
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression:3" id="7241381882860006939">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.BitwiseAndExpression:3" id="7241381882860006940">
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="7241381882860006941">
                  <link role="classifier:3" targetNodeId="4.~Opcodes" />
                  <link role="variableDeclaration:3" targetNodeId="4.~Opcodes.ACC_PUBLIC" />
                </node>
                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006942">
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006943">
                    <link role="fieldDeclaration:3" targetNodeId="1.~FieldNode.access" />
                  </node>
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006944">
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006945">
                      <link role="fieldDeclaration:3" targetNodeId="7241381882860006795" resolveInfo="myField" />
                    </node>
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006946" />
                  </node>
                </node>
              </node>
            </node>
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="7241381882860006947">
              <property name="value:3" value="0" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860006948">
      <property name="name:3" value="isProtected" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860006949" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="7241381882860006950" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860006951">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860006952">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="7241381882860006953">
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression:3" id="7241381882860006954">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.BitwiseAndExpression:3" id="7241381882860006955">
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="7241381882860006956">
                  <link role="classifier:3" targetNodeId="4.~Opcodes" />
                  <link role="variableDeclaration:3" targetNodeId="4.~Opcodes.ACC_PROTECTED" />
                </node>
                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006957">
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006958">
                    <link role="fieldDeclaration:3" targetNodeId="1.~FieldNode.access" />
                  </node>
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006959">
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006960">
                      <link role="fieldDeclaration:3" targetNodeId="7241381882860006795" resolveInfo="myField" />
                    </node>
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006961" />
                  </node>
                </node>
              </node>
            </node>
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="7241381882860006962">
              <property name="value:3" value="0" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860006963">
      <property name="name:3" value="isDeprecated" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860006964" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="7241381882860006965" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860006966">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860006967">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="7241381882860006968">
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression:3" id="7241381882860006969">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.BitwiseAndExpression:3" id="7241381882860006970">
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="7241381882860006971">
                  <link role="classifier:3" targetNodeId="4.~Opcodes" />
                  <link role="variableDeclaration:3" targetNodeId="4.~Opcodes.ACC_DEPRECATED" />
                </node>
                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006972">
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006973">
                    <link role="fieldDeclaration:3" targetNodeId="1.~FieldNode.access" />
                  </node>
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006974">
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860006975">
                      <link role="fieldDeclaration:3" targetNodeId="7241381882860006795" resolveInfo="myField" />
                    </node>
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006976" />
                  </node>
                </node>
              </node>
            </node>
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="7241381882860006977">
              <property name="value:3" value="0" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860006978">
      <property name="name:3" value="isPackageProtected" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860006979" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="7241381882860006980" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860006981">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860006982">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AndExpression:3" id="7241381882860006983">
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.AndExpression:3" id="7241381882860006984">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.NotExpression:3" id="7241381882860006985">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006986">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006987" />
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860006988">
                    <link role="baseMethodDeclaration:3" targetNodeId="7241381882860006933" resolveInfo="isPublic" />
                  </node>
                </node>
              </node>
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NotExpression:3" id="7241381882860006989">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006990">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006991" />
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860006992">
                    <link role="baseMethodDeclaration:3" targetNodeId="7241381882860006918" resolveInfo="isPrivate" />
                  </node>
                </node>
              </node>
            </node>
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NotExpression:3" id="7241381882860006993">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860006994">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860006995" />
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860006996">
                  <link role="baseMethodDeclaration:3" targetNodeId="7241381882860006948" resolveInfo="isProtected" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860006997">
      <property name="name:3" value="isStatic" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860006998" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="7241381882860006999" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007000">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860007001">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="7241381882860007002">
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression:3" id="7241381882860007003">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.BitwiseAndExpression:3" id="7241381882860007004">
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="7241381882860007005">
                  <link role="classifier:3" targetNodeId="4.~Opcodes" />
                  <link role="variableDeclaration:3" targetNodeId="4.~Opcodes.ACC_STATIC" />
                </node>
                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007006">
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860007007">
                    <link role="fieldDeclaration:3" targetNodeId="1.~FieldNode.access" />
                  </node>
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007008">
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860007009">
                      <link role="fieldDeclaration:3" targetNodeId="7241381882860006795" resolveInfo="myField" />
                    </node>
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860007010" />
                  </node>
                </node>
              </node>
            </node>
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="7241381882860007011">
              <property name="value:3" value="0" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860007012">
      <property name="name:3" value="isEnumConstant" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860007013" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="7241381882860007014" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007015">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860007016">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="7241381882860007017">
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression:3" id="7241381882860007018">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.BitwiseAndExpression:3" id="7241381882860007019">
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="7241381882860007020">
                  <link role="classifier:3" targetNodeId="4.~Opcodes" />
                  <link role="variableDeclaration:3" targetNodeId="4.~Opcodes.ACC_ENUM" />
                </node>
                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007021">
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860007022">
                    <link role="fieldDeclaration:3" targetNodeId="1.~FieldNode.access" />
                  </node>
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007023">
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860007024">
                      <link role="fieldDeclaration:3" targetNodeId="7241381882860006795" resolveInfo="myField" />
                    </node>
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860007025" />
                  </node>
                </node>
              </node>
            </node>
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="7241381882860007026">
              <property name="value:3" value="0" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860007027">
      <property name="name:3" value="isCompilerGenerated" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860007028" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="7241381882860007029" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007030">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860007031">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007032">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007033">
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860007034">
                <link role="fieldDeclaration:3" targetNodeId="1.~FieldNode.name" />
              </node>
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007035">
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860007036">
                  <link role="fieldDeclaration:3" targetNodeId="7241381882860006795" resolveInfo="myField" />
                </node>
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860007037" />
              </node>
            </node>
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860007038">
              <link role="baseMethodDeclaration:3" targetNodeId="2v.~String.equals(java.lang.Object):boolean" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="7241381882860007039">
                <property name="value:3" value="$assertionsDisabled" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860007040">
      <property name="name:3" value="getType" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860007041" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007042">
        <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007043">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860007044">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007045">
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860007046">
              <link role="fieldDeclaration:3" targetNodeId="7241381882860006802" resolveInfo="myType" />
            </node>
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860007047" />
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860007048">
      <property name="name:3" value="getGenericType" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860007049" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007050">
        <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007051">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860007052">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007053">
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860007054">
              <link role="fieldDeclaration:3" targetNodeId="7241381882860006805" resolveInfo="myGenericType" />
            </node>
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860007055" />
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860007056">
      <property name="name:3" value="getAnnotations" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860007057" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007058">
        <link role="classifier:3" targetNodeId="2.~List" />
        <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007059">
          <link role="classifier:3" targetNodeId="3.~ASMAnnotation" />
        </node>
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007060">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860007061">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression:3" id="8278838086631111958">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.CastExpression:3" id="8278838086631111959">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression:3" id="8278838086631111960">
                <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="8278838086631111961">
                  <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="8278838086631111962">
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="8278838086631111963">
                      <link role="fieldDeclaration:3" targetNodeId="7241381882860006798" resolveInfo="myAnnotations" />
                    </node>
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="8278838086631111964" />
                  </node>
                  <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="8278838086631111965" />
                </node>
                <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="8278838086631111966">
                  <link role="classConcept:3" targetNodeId="2.~Collections" resolveInfo="Collections" />
                  <link role="baseMethodDeclaration:3" targetNodeId="2.~Collections.emptyList():java.util.List" resolveInfo="emptyList" />
                </node>
                <node role="ifFalse:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="8278838086631111967">
                  <link role="classConcept:3" targetNodeId="2.~Collections" resolveInfo="Collections" />
                  <link role="baseMethodDeclaration:3" targetNodeId="2.~Collections.unmodifiableList(java.util.List):java.util.List" resolveInfo="unmodifiableList" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="8278838086631111968">
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="8278838086631111969">
                      <link role="fieldDeclaration:3" targetNodeId="7241381882860006798" resolveInfo="myAnnotations" />
                    </node>
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="8278838086631111970" />
                  </node>
                </node>
              </node>
              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="8278838086631111971">
                <link role="classifier:3" targetNodeId="2.~List" resolveInfo="List" />
                <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="8278838086631111972">
                  <link role="classifier:3" targetNodeId="3.~ASMAnnotation" resolveInfo="ASMAnnotation" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="7241381882860001929">
    <property name="name:3" value="SignatureVisitorAdapter" />
    <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860007073" />
    <node role="implementedInterface:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007074">
      <link role="classifier:3" targetNodeId="5.~SignatureVisitor" />
    </node>
    <node role="constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="7241381882860007075">
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860007076" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007077" />
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860007078">
      <property name="name:3" value="visitFormalTypeParameter" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860007079" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="7241381882860007080" />
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="7241381882860007081">
        <property name="name:3" value="name" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007082">
          <link role="classifier:3" targetNodeId="2v.~String" />
        </node>
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007083" />
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860007084">
      <property name="name:3" value="visitClassBound" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860007085" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007086">
        <link role="classifier:3" targetNodeId="5.~SignatureVisitor" />
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007087">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860007088">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="7241381882860007089">
            <link role="classifier:3" targetNodeId="7241381882860007196" resolveInfo="NullSignatureVisitor" />
            <link role="variableDeclaration:3" targetNodeId="7241381882860007198" resolveInfo="INSTANCE" />
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860007090">
      <property name="name:3" value="visitInterfaceBound" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860007091" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007092">
        <link role="classifier:3" targetNodeId="5.~SignatureVisitor" />
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007093">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860007094">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="7241381882860007095">
            <link role="classifier:3" targetNodeId="7241381882860007196" resolveInfo="NullSignatureVisitor" />
            <link role="variableDeclaration:3" targetNodeId="7241381882860007198" resolveInfo="INSTANCE" />
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860007096">
      <property name="name:3" value="visitSuperclass" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860007097" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007098">
        <link role="classifier:3" targetNodeId="5.~SignatureVisitor" />
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007099">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860007100">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="7241381882860007101">
            <link role="classifier:3" targetNodeId="7241381882860007196" resolveInfo="NullSignatureVisitor" />
            <link role="variableDeclaration:3" targetNodeId="7241381882860007198" resolveInfo="INSTANCE" />
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860007102">
      <property name="name:3" value="visitInterface" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860007103" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007104">
        <link role="classifier:3" targetNodeId="5.~SignatureVisitor" />
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007105">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860007106">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="7241381882860007107">
            <link role="classifier:3" targetNodeId="7241381882860007196" resolveInfo="NullSignatureVisitor" />
            <link role="variableDeclaration:3" targetNodeId="7241381882860007198" resolveInfo="INSTANCE" />
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860007108">
      <property name="name:3" value="visitParameterType" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860007109" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007110">
        <link role="classifier:3" targetNodeId="5.~SignatureVisitor" />
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007111">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860007112">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="7241381882860007113">
            <link role="classifier:3" targetNodeId="7241381882860007196" resolveInfo="NullSignatureVisitor" />
            <link role="variableDeclaration:3" targetNodeId="7241381882860007198" resolveInfo="INSTANCE" />
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860007114">
      <property name="name:3" value="visitReturnType" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860007115" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007116">
        <link role="classifier:3" targetNodeId="5.~SignatureVisitor" />
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007117">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860007118">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="7241381882860007119">
            <link role="classifier:3" targetNodeId="7241381882860007196" resolveInfo="NullSignatureVisitor" />
            <link role="variableDeclaration:3" targetNodeId="7241381882860007198" resolveInfo="INSTANCE" />
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860007120">
      <property name="name:3" value="visitExceptionType" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860007121" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007122">
        <link role="classifier:3" targetNodeId="5.~SignatureVisitor" />
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007123">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860007124">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="7241381882860007125">
            <link role="classifier:3" targetNodeId="7241381882860007196" resolveInfo="NullSignatureVisitor" />
            <link role="variableDeclaration:3" targetNodeId="7241381882860007198" resolveInfo="INSTANCE" />
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860007126">
      <property name="name:3" value="visitBaseType" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860007127" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="7241381882860007128" />
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="7241381882860007129">
        <property name="name:3" value="descriptor" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.CharType:3" id="7241381882860007130" />
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007131" />
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860007132">
      <property name="name:3" value="visitTypeVariable" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860007133" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="7241381882860007134" />
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="7241381882860007135">
        <property name="name:3" value="name" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007136">
          <link role="classifier:3" targetNodeId="2v.~String" />
        </node>
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007137" />
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860007138">
      <property name="name:3" value="visitArrayType" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860007139" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007140">
        <link role="classifier:3" targetNodeId="5.~SignatureVisitor" />
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007141">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860007142">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="7241381882860007143">
            <link role="classifier:3" targetNodeId="7241381882860007196" resolveInfo="NullSignatureVisitor" />
            <link role="variableDeclaration:3" targetNodeId="7241381882860007198" resolveInfo="INSTANCE" />
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860007144">
      <property name="name:3" value="visitClassType" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860007145" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="7241381882860007146" />
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="7241381882860007147">
        <property name="name:3" value="name" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007148">
          <link role="classifier:3" targetNodeId="2v.~String" />
        </node>
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007149" />
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860007150">
      <property name="name:3" value="visitInnerClassType" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860007151" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="7241381882860007152" />
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="7241381882860007153">
        <property name="name:3" value="name" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007154">
          <link role="classifier:3" targetNodeId="2v.~String" />
        </node>
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007155" />
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860007156">
      <property name="name:3" value="visitTypeArgument" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860007157" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="7241381882860007158" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007159" />
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860007160">
      <property name="name:3" value="visitTypeArgument" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860007161" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007162">
        <link role="classifier:3" targetNodeId="5.~SignatureVisitor" />
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="7241381882860007163">
        <property name="name:3" value="wildcard" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.CharType:3" id="7241381882860007164" />
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007165">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860007166">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="7241381882860007167">
            <link role="classifier:3" targetNodeId="7241381882860007196" resolveInfo="NullSignatureVisitor" />
            <link role="variableDeclaration:3" targetNodeId="7241381882860007198" resolveInfo="INSTANCE" />
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860007168">
      <property name="name:3" value="visitEnd" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860007169" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="7241381882860007170" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007171" />
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="7241381882860007172">
    <property name="name:3" value="ASMVarArgType" />
    <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860007173" />
    <node role="superclass:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007174">
      <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
    </node>
    <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="7241381882860007175">
      <property name="name:3" value="myElementType" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007176">
        <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="7241381882860007177" />
    </node>
    <node role="constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="7241381882860007178">
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="7241381882860007179">
        <property name="name:3" value="elementType" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007180">
          <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
        </node>
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007181">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860007182">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="7241381882860007183">
            <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007184">
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860007185">
                <link role="fieldDeclaration:3" targetNodeId="7241381882860007175" resolveInfo="myElementType" />
              </node>
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860007186" />
            </node>
            <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7241381882860007187">
              <link role="variableDeclaration:3" targetNodeId="7241381882860007179" resolveInfo="elementType" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860007188">
      <property name="name:3" value="getElementType" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860007189" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007190">
        <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007191">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860007192">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007193">
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860007194">
              <link role="fieldDeclaration:3" targetNodeId="7241381882860007175" resolveInfo="myElementType" />
            </node>
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860007195" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="7241381882860007196">
    <property name="name:3" value="NullSignatureVisitor" />
    <node role="implementedInterface:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007197">
      <link role="classifier:3" targetNodeId="5.~SignatureVisitor" />
    </node>
    <node role="staticField:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration:3" id="7241381882860007198">
      <property name="isFinal:3" value="true" />
      <property name="name:3" value="INSTANCE" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007199">
        <link role="classifier:3" targetNodeId="5.~SignatureVisitor" />
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860007200" />
      <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860007201">
        <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860007202">
          <link role="baseMethodDeclaration:3" targetNodeId="7241381882860007203" resolveInfo="NullSignatureVisitor" />
        </node>
      </node>
    </node>
    <node role="constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="7241381882860007203">
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="7241381882860007204" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007205" />
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860007206">
      <property name="name:3" value="visitFormalTypeParameter" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860007207" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="7241381882860007208" />
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="7241381882860007209">
        <property name="name:3" value="name" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007210">
          <link role="classifier:3" targetNodeId="2v.~String" />
        </node>
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007211" />
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860007212">
      <property name="name:3" value="visitClassBound" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860007213" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007214">
        <link role="classifier:3" targetNodeId="5.~SignatureVisitor" />
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007215">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860007216">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860007217" />
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860007218">
      <property name="name:3" value="visitInterfaceBound" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860007219" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007220">
        <link role="classifier:3" targetNodeId="5.~SignatureVisitor" />
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007221">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860007222">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860007223" />
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860007224">
      <property name="name:3" value="visitSuperclass" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860007225" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007226">
        <link role="classifier:3" targetNodeId="5.~SignatureVisitor" />
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007227">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860007228">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860007229" />
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860007230">
      <property name="name:3" value="visitInterface" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860007231" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007232">
        <link role="classifier:3" targetNodeId="5.~SignatureVisitor" />
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007233">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860007234">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860007235" />
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860007236">
      <property name="name:3" value="visitParameterType" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860007237" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007238">
        <link role="classifier:3" targetNodeId="5.~SignatureVisitor" />
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007239">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860007240">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860007241" />
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860007242">
      <property name="name:3" value="visitReturnType" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860007243" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007244">
        <link role="classifier:3" targetNodeId="5.~SignatureVisitor" />
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007245">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860007246">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860007247" />
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860007248">
      <property name="name:3" value="visitExceptionType" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860007249" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007250">
        <link role="classifier:3" targetNodeId="5.~SignatureVisitor" />
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007251">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860007252">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860007253" />
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860007254">
      <property name="name:3" value="visitBaseType" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860007255" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="7241381882860007256" />
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="7241381882860007257">
        <property name="name:3" value="descriptor" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.CharType:3" id="7241381882860007258" />
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007259" />
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860007260">
      <property name="name:3" value="visitTypeVariable" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860007261" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="7241381882860007262" />
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="7241381882860007263">
        <property name="name:3" value="name" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007264">
          <link role="classifier:3" targetNodeId="2v.~String" />
        </node>
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007265" />
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860007266">
      <property name="name:3" value="visitArrayType" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860007267" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007268">
        <link role="classifier:3" targetNodeId="5.~SignatureVisitor" />
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007269">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860007270">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860007271" />
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860007272">
      <property name="name:3" value="visitClassType" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860007273" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="7241381882860007274" />
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="7241381882860007275">
        <property name="name:3" value="name" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007276">
          <link role="classifier:3" targetNodeId="2v.~String" />
        </node>
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007277" />
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860007278">
      <property name="name:3" value="visitInnerClassType" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860007279" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="7241381882860007280" />
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="7241381882860007281">
        <property name="name:3" value="name" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007282">
          <link role="classifier:3" targetNodeId="2v.~String" />
        </node>
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007283" />
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860007284">
      <property name="name:3" value="visitTypeArgument" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860007285" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="7241381882860007286" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007287" />
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860007288">
      <property name="name:3" value="visitTypeArgument" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860007289" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007290">
        <link role="classifier:3" targetNodeId="5.~SignatureVisitor" />
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="7241381882860007291">
        <property name="name:3" value="wildcard" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.CharType:3" id="7241381882860007292" />
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007293">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860007294">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860007295" />
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860007296">
      <property name="name:3" value="visitEnd" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860007297" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="7241381882860007298" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007299" />
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="7241381882860007300">
    <property name="name:3" value="ASMUnboundedType" />
    <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860007301" />
    <node role="superclass:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007302">
      <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
    </node>
    <node role="constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="7241381882860007303">
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860007304" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007305" />
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="7241381882860007306">
    <property name="name:3" value="TypeUtil" />
    <node role="staticInnerClassifiers:3" type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="7241381882860007307">
      <property name="name:3" value="TypeBuilderVisitor" />
      <node role="superclass:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007308">
        <link role="classifier:3" targetNodeId="7241381882860001929" resolveInfo="SignatureVisitorAdapter" />
      </node>
      <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="7241381882860007309">
        <property name="name:3" value="myResult" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007310">
          <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
        </node>
        <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="7241381882860007311" />
      </node>
      <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="7241381882860007312">
        <property name="name:3" value="myTypes" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007313">
          <link role="classifier:3" targetNodeId="2.~Stack" />
          <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007314">
            <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
          </node>
        </node>
        <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="7241381882860007315" />
        <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860007741">
          <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860007742">
            <link role="baseMethodDeclaration:3" targetNodeId="2.~Stack.&lt;init&gt;()" />
            <node role="typeParameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007743">
              <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
            </node>
          </node>
        </node>
      </node>
      <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="7241381882860007316">
        <property name="name:3" value="myWildcard" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.CharType:3" id="7241381882860007317" />
        <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="7241381882860007318" />
      </node>
      <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="7241381882860007319">
        <property name="name:3" value="myArrayVisitor" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007320">
          <link role="classifier:3" targetNodeId="7241381882860007307" resolveInfo="TypeUtil.TypeBuilderVisitor" />
        </node>
        <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="7241381882860007321" />
        <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="7241381882860007744" />
      </node>
      <node role="constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="7241381882860007322">
        <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860007323" />
        <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007745" />
      </node>
      <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860007324">
        <property name="name:3" value="setResult" />
        <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.ProtectedVisibility:3" id="7241381882860007325" />
        <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="7241381882860007326" />
        <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="7241381882860007327">
          <property name="name:3" value="type" />
          <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007328">
            <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
          </node>
        </node>
        <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007746">
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860007747">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="7241381882860007748">
              <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007749">
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860007750">
                  <link role="fieldDeclaration:3" targetNodeId="7241381882860007309" resolveInfo="myResult" />
                </node>
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860007751" />
              </node>
              <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7241381882860007752">
                <link role="variableDeclaration:3" targetNodeId="7241381882860007327" resolveInfo="type" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860007329">
        <property name="name:3" value="addPart" />
        <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.ProtectedVisibility:3" id="7241381882860007330" />
        <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="7241381882860007331" />
        <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="7241381882860007332">
          <property name="name:3" value="type" />
          <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007333">
            <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
          </node>
        </node>
        <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007753">
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="7241381882860007754">
            <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007755">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007756">
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860007757">
                  <link role="fieldDeclaration:3" targetNodeId="7241381882860007312" resolveInfo="myTypes" />
                </node>
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860007758" />
              </node>
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860007759">
                <link role="baseMethodDeclaration:3" targetNodeId="2.~Vector.isEmpty():boolean" />
              </node>
            </node>
            <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007760">
              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860007761">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007762">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007763">
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860007764">
                      <link role="fieldDeclaration:3" targetNodeId="7241381882860007312" resolveInfo="myTypes" />
                    </node>
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860007765" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860007766">
                    <link role="baseMethodDeclaration:3" targetNodeId="2.~Vector.add(java.lang.Object):boolean" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7241381882860007767">
                      <link role="variableDeclaration:3" targetNodeId="7241381882860007332" resolveInfo="type" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860007768" />
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="7241381882860007769">
            <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.InstanceOfExpression:3" id="7241381882860007770">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007771">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007772">
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860007773">
                    <link role="fieldDeclaration:3" targetNodeId="7241381882860007312" resolveInfo="myTypes" />
                  </node>
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860007774" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860007775">
                  <link role="baseMethodDeclaration:3" targetNodeId="2.~Stack.peek():java.lang.Object" />
                </node>
              </node>
              <node role="classType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007776">
                <link role="classifier:3" targetNodeId="7241381882860002170" resolveInfo="ASMClassType" />
              </node>
            </node>
            <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007777">
              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="7241381882860007778">
                <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="7241381882860007779">
                  <property name="name:3" value="ct" />
                  <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007780">
                    <link role="classifier:3" targetNodeId="7241381882860002170" resolveInfo="ASMClassType" />
                  </node>
                  <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.CastExpression:3" id="7241381882860007781">
                    <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007782">
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007783">
                        <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860007784">
                          <link role="fieldDeclaration:3" targetNodeId="7241381882860007312" resolveInfo="myTypes" />
                        </node>
                        <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860007785" />
                      </node>
                      <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860007786">
                        <link role="baseMethodDeclaration:3" targetNodeId="2.~Stack.pop():java.lang.Object" />
                      </node>
                    </node>
                    <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007787">
                      <link role="classifier:3" targetNodeId="7241381882860002170" resolveInfo="ASMClassType" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="7241381882860007788">
                <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="7241381882860007789">
                  <property name="name:3" value="replacement" />
                  <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007790">
                    <link role="classifier:3" targetNodeId="7241381882860009267" resolveInfo="ASMParameterizedType" />
                  </node>
                  <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860007791">
                    <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860007792">
                      <link role="baseMethodDeclaration:3" targetNodeId="7241381882860009277" resolveInfo="ASMParameterizedType" />
                      <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860007793">
                        <link role="variableDeclaration:3" targetNodeId="7241381882860007779" resolveInfo="ct" />
                      </node>
                      <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860007794">
                        <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860007795">
                          <link role="baseMethodDeclaration:3" targetNodeId="2.~ArrayList.&lt;init&gt;()" />
                          <node role="typeParameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007796">
                            <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="7241381882860007797">
                <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.NotExpression:3" id="7241381882860007798">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007799">
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007800">
                      <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860007801">
                        <link role="fieldDeclaration:3" targetNodeId="7241381882860007312" resolveInfo="myTypes" />
                      </node>
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860007802" />
                    </node>
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860007803">
                      <link role="baseMethodDeclaration:3" targetNodeId="2.~Vector.isEmpty():boolean" />
                    </node>
                  </node>
                </node>
                <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007804">
                  <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="7241381882860007805">
                    <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="7241381882860007806">
                      <property name="name:3" value="parent" />
                      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007807">
                        <link role="classifier:3" targetNodeId="7241381882860009267" resolveInfo="ASMParameterizedType" />
                      </node>
                      <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.CastExpression:3" id="7241381882860007808">
                        <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007809">
                          <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007810">
                            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860007811">
                              <link role="fieldDeclaration:3" targetNodeId="7241381882860007312" resolveInfo="myTypes" />
                            </node>
                            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860007812" />
                          </node>
                          <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860007813">
                            <link role="baseMethodDeclaration:3" targetNodeId="2.~Stack.peek():java.lang.Object" />
                          </node>
                        </node>
                        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007814">
                          <link role="classifier:3" targetNodeId="7241381882860009267" resolveInfo="ASMParameterizedType" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860007815">
                    <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007816">
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860007817">
                        <link role="variableDeclaration:3" targetNodeId="7241381882860007806" resolveInfo="parent" />
                      </node>
                      <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860007818">
                        <link role="baseMethodDeclaration:3" targetNodeId="7241381882860009326" resolveInfo="removeArgument" />
                        <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860007819">
                          <link role="variableDeclaration:3" targetNodeId="7241381882860007779" resolveInfo="ct" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860007820">
                    <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007821">
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860007822">
                        <link role="variableDeclaration:3" targetNodeId="7241381882860007806" resolveInfo="parent" />
                      </node>
                      <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860007823">
                        <link role="baseMethodDeclaration:3" targetNodeId="7241381882860009314" resolveInfo="addArgument" />
                        <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860007824">
                          <link role="variableDeclaration:3" targetNodeId="7241381882860007789" resolveInfo="replacement" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860007825">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007826">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007827">
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860007828">
                      <link role="fieldDeclaration:3" targetNodeId="7241381882860007312" resolveInfo="myTypes" />
                    </node>
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860007829" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860007830">
                    <link role="baseMethodDeclaration:3" targetNodeId="2.~Stack.push(java.lang.Object):java.lang.Object" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860007831">
                      <link role="variableDeclaration:3" targetNodeId="7241381882860007789" resolveInfo="replacement" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="7241381882860007832">
            <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.InstanceOfExpression:3" id="7241381882860007833">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007834">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007835">
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860007836">
                    <link role="fieldDeclaration:3" targetNodeId="7241381882860007312" resolveInfo="myTypes" />
                  </node>
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860007837" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860007838">
                  <link role="baseMethodDeclaration:3" targetNodeId="2.~Stack.peek():java.lang.Object" />
                </node>
              </node>
              <node role="classType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007839">
                <link role="classifier:3" targetNodeId="7241381882860009267" resolveInfo="ASMParameterizedType" />
              </node>
            </node>
            <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007840">
              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860007841">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007842">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression:3" id="7241381882860007843">
                    <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.CastExpression:3" id="7241381882860007844">
                      <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007845">
                        <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007846">
                          <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860007847">
                            <link role="fieldDeclaration:3" targetNodeId="7241381882860007312" resolveInfo="myTypes" />
                          </node>
                          <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860007848" />
                        </node>
                        <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860007849">
                          <link role="baseMethodDeclaration:3" targetNodeId="2.~Stack.peek():java.lang.Object" />
                        </node>
                      </node>
                      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007850">
                        <link role="classifier:3" targetNodeId="7241381882860009267" resolveInfo="ASMParameterizedType" />
                      </node>
                    </node>
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860007851">
                    <link role="baseMethodDeclaration:3" targetNodeId="7241381882860009314" resolveInfo="addArgument" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007852">
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860007853" />
                      <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860007854">
                        <link role="baseMethodDeclaration:3" targetNodeId="7241381882860007337" resolveInfo="wrap" />
                        <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7241381882860007855">
                          <link role="variableDeclaration:3" targetNodeId="7241381882860007332" resolveInfo="type" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="7241381882860007856">
            <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.InstanceOfExpression:3" id="7241381882860007857">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7241381882860007858">
                <link role="variableDeclaration:3" targetNodeId="7241381882860007332" resolveInfo="type" />
              </node>
              <node role="classType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007859">
                <link role="classifier:3" targetNodeId="7241381882860002170" resolveInfo="ASMClassType" />
              </node>
            </node>
            <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007860">
              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860007861">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007862">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007863">
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860007864">
                      <link role="fieldDeclaration:3" targetNodeId="7241381882860007312" resolveInfo="myTypes" />
                    </node>
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860007865" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860007866">
                    <link role="baseMethodDeclaration:3" targetNodeId="2.~Stack.push(java.lang.Object):java.lang.Object" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7241381882860007867">
                      <link role="variableDeclaration:3" targetNodeId="7241381882860007332" resolveInfo="type" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860007334">
        <property name="name:3" value="finish" />
        <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="7241381882860007335" />
        <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="7241381882860007336" />
        <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007868">
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="7241381882860007869">
            <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="7241381882860007870">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007871">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007872">
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860007873">
                    <link role="fieldDeclaration:3" targetNodeId="7241381882860007312" resolveInfo="myTypes" />
                  </node>
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860007874" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860007875">
                  <link role="baseMethodDeclaration:3" targetNodeId="2.~Vector.size():int" />
                </node>
              </node>
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="7241381882860007876">
                <property name="value:3" value="1" />
              </node>
            </node>
            <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007877">
              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860007878">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007879">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860007880" />
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860007881">
                    <link role="baseMethodDeclaration:3" targetNodeId="7241381882860007324" resolveInfo="setResult" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007882">
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007883">
                        <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860007884">
                          <link role="fieldDeclaration:3" targetNodeId="7241381882860007312" resolveInfo="myTypes" />
                        </node>
                        <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860007885" />
                      </node>
                      <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860007886">
                        <link role="baseMethodDeclaration:3" targetNodeId="2.~Stack.peek():java.lang.Object" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="7241381882860007887">
            <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.NotExpression:3" id="7241381882860007888">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007889">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007890">
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860007891">
                    <link role="fieldDeclaration:3" targetNodeId="7241381882860007312" resolveInfo="myTypes" />
                  </node>
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860007892" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860007893">
                  <link role="baseMethodDeclaration:3" targetNodeId="2.~Vector.isEmpty():boolean" />
                </node>
              </node>
            </node>
            <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007894">
              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860007895">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007896">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007897">
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860007898">
                      <link role="fieldDeclaration:3" targetNodeId="7241381882860007312" resolveInfo="myTypes" />
                    </node>
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860007899" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860007900">
                    <link role="baseMethodDeclaration:3" targetNodeId="2.~Stack.pop():java.lang.Object" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860007337">
        <property name="name:3" value="wrap" />
        <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="7241381882860007338" />
        <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007339">
          <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
        </node>
        <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="7241381882860007340">
          <property name="name:3" value="type" />
          <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007341">
            <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
          </node>
        </node>
        <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007901">
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="7241381882860007902">
            <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="7241381882860007903">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007904">
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860007905">
                  <link role="fieldDeclaration:3" targetNodeId="7241381882860007316" resolveInfo="myWildcard" />
                </node>
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860007906" />
              </node>
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.CharConstant:3" id="7241381882860007907">
                <property name="charConstant:3" value="+" />
              </node>
            </node>
            <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007908">
              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860007909">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="7241381882860007910">
                  <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007911">
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860007912">
                      <link role="fieldDeclaration:3" targetNodeId="7241381882860007316" resolveInfo="myWildcard" />
                    </node>
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860007913" />
                  </node>
                  <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.CharConstant:3" id="7241381882860007914">
                    <property name="charConstant:3" value="=" />
                  </node>
                </node>
              </node>
              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860007915">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860007916">
                  <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860007917">
                    <link role="baseMethodDeclaration:3" targetNodeId="7241381882860008825" resolveInfo="ASMExtendsType" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7241381882860007918">
                      <link role="variableDeclaration:3" targetNodeId="7241381882860007340" resolveInfo="type" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="7241381882860007919">
            <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="7241381882860007920">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007921">
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860007922">
                  <link role="fieldDeclaration:3" targetNodeId="7241381882860007316" resolveInfo="myWildcard" />
                </node>
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860007923" />
              </node>
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.CharConstant:3" id="7241381882860007924">
                <property name="charConstant:3" value="-" />
              </node>
            </node>
            <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007925">
              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860007926">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="7241381882860007927">
                  <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007928">
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860007929">
                      <link role="fieldDeclaration:3" targetNodeId="7241381882860007316" resolveInfo="myWildcard" />
                    </node>
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860007930" />
                  </node>
                  <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.CharConstant:3" id="7241381882860007931">
                    <property name="charConstant:3" value="=" />
                  </node>
                </node>
              </node>
              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860007932">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860007933">
                  <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860007934">
                    <link role="baseMethodDeclaration:3" targetNodeId="7241381882860008740" resolveInfo="ASMSuperType" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7241381882860007935">
                      <link role="variableDeclaration:3" targetNodeId="7241381882860007340" resolveInfo="type" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860007936">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7241381882860007937">
              <link role="variableDeclaration:3" targetNodeId="7241381882860007340" resolveInfo="type" />
            </node>
          </node>
        </node>
      </node>
      <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860007342">
        <property name="name:3" value="visitTypeArgument" />
        <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860007343" />
        <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="7241381882860007344" />
        <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007938">
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860007939">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007940">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860007941" />
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860007942">
                <link role="baseMethodDeclaration:3" targetNodeId="7241381882860007329" resolveInfo="addPart" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860007943">
                  <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860007944">
                    <link role="baseMethodDeclaration:3" targetNodeId="7241381882860007303" resolveInfo="ASMUnboundedType" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860007345">
        <property name="name:3" value="visitTypeArgument" />
        <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860007346" />
        <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007347">
          <link role="classifier:3" targetNodeId="5.~SignatureVisitor" />
        </node>
        <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="7241381882860007348">
          <property name="name:3" value="wildcard" />
          <node role="type:3" type="jetbrains.mps.baseLanguage.structure.CharType:3" id="7241381882860007349" />
        </node>
        <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007945">
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860007946">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="7241381882860007947">
              <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007948">
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860007949">
                  <link role="fieldDeclaration:3" targetNodeId="7241381882860007316" resolveInfo="myWildcard" />
                </node>
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860007950" />
              </node>
              <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7241381882860007951">
                <link role="variableDeclaration:3" targetNodeId="7241381882860007348" resolveInfo="wildcard" />
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860007952">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860007953" />
          </node>
        </node>
      </node>
      <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860007350">
        <property name="name:3" value="visitBaseType" />
        <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860007351" />
        <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="7241381882860007352" />
        <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="7241381882860007353">
          <property name="name:3" value="descriptor" />
          <node role="type:3" type="jetbrains.mps.baseLanguage.structure.CharType:3" id="7241381882860007354" />
        </node>
        <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007954">
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860007955">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007956">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860007957" />
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860007958">
                <link role="baseMethodDeclaration:3" targetNodeId="7241381882860007329" resolveInfo="addPart" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="7241381882860007959">
                  <link role="classConcept:3" targetNodeId="7241381882860007306" resolveInfo="TypeUtil" />
                  <link role="baseMethodDeclaration:3" targetNodeId="7241381882860007384" resolveInfo="fromType" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="7241381882860007960">
                    <link role="classConcept:3" targetNodeId="4.~Type" />
                    <link role="baseMethodDeclaration:3" targetNodeId="4.~Type.getType(java.lang.String):org.objectweb.asm.Type" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.PlusExpression:3" id="7241381882860007961">
                      <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="7241381882860007962">
                        <property name="value:3" value="" />
                      </node>
                      <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7241381882860007963">
                        <link role="variableDeclaration:3" targetNodeId="7241381882860007353" resolveInfo="descriptor" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860007355">
        <property name="name:3" value="visitTypeVariable" />
        <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860007356" />
        <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="7241381882860007357" />
        <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="7241381882860007358">
          <property name="name:3" value="name" />
          <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007359">
            <link role="classifier:3" targetNodeId="2v.~String" />
          </node>
        </node>
        <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007964">
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860007965">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007966">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860007967" />
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860007968">
                <link role="baseMethodDeclaration:3" targetNodeId="7241381882860007329" resolveInfo="addPart" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860007969">
                  <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860007970">
                    <link role="baseMethodDeclaration:3" targetNodeId="7241381882860008707" resolveInfo="ASMTypeVariable" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7241381882860007971">
                      <link role="variableDeclaration:3" targetNodeId="7241381882860007358" resolveInfo="name" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860007360">
        <property name="name:3" value="visitArrayType" />
        <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860007361" />
        <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007362">
          <link role="classifier:3" targetNodeId="5.~SignatureVisitor" />
        </node>
        <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007972">
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860007973">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="7241381882860007974">
              <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007975">
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860007976">
                  <link role="fieldDeclaration:3" targetNodeId="7241381882860007319" resolveInfo="myArrayVisitor" />
                </node>
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860007977" />
              </node>
              <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860007978">
                <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860007979">
                  <link role="baseMethodDeclaration:3" targetNodeId="7241381882860007322" resolveInfo="TypeUtil.TypeBuilderVisitor" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860007363">
        <property name="name:3" value="visitClassType" />
        <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860007364" />
        <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="7241381882860007365" />
        <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="7241381882860007366">
          <property name="name:3" value="name" />
          <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007367">
            <link role="classifier:3" targetNodeId="2v.~String" />
          </node>
        </node>
        <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007980">
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860007981">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007982">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860007983" />
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860007984">
                <link role="baseMethodDeclaration:3" targetNodeId="7241381882860007329" resolveInfo="addPart" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860007985">
                  <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860007986">
                    <link role="baseMethodDeclaration:3" targetNodeId="7241381882860002182" resolveInfo="ASMClassType" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007987">
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7241381882860007988">
                        <link role="variableDeclaration:3" targetNodeId="7241381882860007366" resolveInfo="name" />
                      </node>
                      <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860007989">
                        <link role="baseMethodDeclaration:3" targetNodeId="2v.~String.replace(char,char):java.lang.String" />
                        <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.CharConstant:3" id="7241381882860007990">
                          <property name="charConstant:3" value="/" />
                        </node>
                        <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.CharConstant:3" id="7241381882860007991">
                          <property name="charConstant:3" value="." />
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
      <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860007368">
        <property name="name:3" value="visitEnd" />
        <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860007369" />
        <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="7241381882860007370" />
        <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007992">
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="7241381882860007993">
            <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="7241381882860007994">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007995">
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860007996">
                  <link role="fieldDeclaration:3" targetNodeId="7241381882860007319" resolveInfo="myArrayVisitor" />
                </node>
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860007997" />
              </node>
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="7241381882860007998" />
            </node>
            <node role="ifFalseStatement:3" type="jetbrains.mps.baseLanguage.structure.BlockStatement:3" id="7241381882860007999">
              <node role="statements:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860008000">
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860008001">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860008002">
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860008003" />
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860008004">
                      <link role="baseMethodDeclaration:3" targetNodeId="7241381882860007334" resolveInfo="finish" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860008005">
              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860008006">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860008007">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860008008" />
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860008009">
                    <link role="baseMethodDeclaration:3" targetNodeId="7241381882860007329" resolveInfo="addPart" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860008010">
                      <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860008011">
                        <link role="baseMethodDeclaration:3" targetNodeId="7241381882860002152" resolveInfo="ASMArrayType" />
                        <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860008012">
                          <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860008013">
                            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860008014">
                              <link role="fieldDeclaration:3" targetNodeId="7241381882860007319" resolveInfo="myArrayVisitor" />
                            </node>
                            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860008015" />
                          </node>
                          <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860008016">
                            <link role="baseMethodDeclaration:3" targetNodeId="7241381882860007371" resolveInfo="getResult" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860008017">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="7241381882860008018">
                  <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860008019">
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860008020">
                      <link role="fieldDeclaration:3" targetNodeId="7241381882860007319" resolveInfo="myArrayVisitor" />
                    </node>
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860008021" />
                  </node>
                  <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="7241381882860008022" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860007371">
        <property name="name:3" value="getResult" />
        <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007372">
          <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
        </node>
        <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860008023">
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="7241381882860008024">
            <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="7241381882860008025">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860008026">
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860008027">
                  <link role="fieldDeclaration:3" targetNodeId="7241381882860007319" resolveInfo="myArrayVisitor" />
                </node>
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860008028" />
              </node>
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="7241381882860008029" />
            </node>
            <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860008030">
              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860008031">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860008032">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860008033" />
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860008034">
                    <link role="baseMethodDeclaration:3" targetNodeId="7241381882860007329" resolveInfo="addPart" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860008035">
                      <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860008036">
                        <link role="baseMethodDeclaration:3" targetNodeId="7241381882860002152" resolveInfo="ASMArrayType" />
                        <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860008037">
                          <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860008038">
                            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860008039">
                              <link role="fieldDeclaration:3" targetNodeId="7241381882860007319" resolveInfo="myArrayVisitor" />
                            </node>
                            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860008040" />
                          </node>
                          <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860008041">
                            <link role="baseMethodDeclaration:3" targetNodeId="7241381882860007371" resolveInfo="getResult" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860008042">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="7241381882860008043">
                  <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860008044">
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860008045">
                      <link role="fieldDeclaration:3" targetNodeId="7241381882860007319" resolveInfo="myArrayVisitor" />
                    </node>
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860008046" />
                  </node>
                  <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="7241381882860008047" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="7241381882860008048">
            <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="7241381882860008049">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860008050">
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860008051">
                  <link role="fieldDeclaration:3" targetNodeId="7241381882860007309" resolveInfo="myResult" />
                </node>
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860008052" />
              </node>
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="7241381882860008053" />
            </node>
            <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860008054">
              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860008055">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860008056">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860008057" />
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860008058">
                    <link role="baseMethodDeclaration:3" targetNodeId="7241381882860007334" resolveInfo="finish" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860008059">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860008060">
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860008061">
                <link role="fieldDeclaration:3" targetNodeId="7241381882860007309" resolveInfo="myResult" />
              </node>
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860008062" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="7241381882860007373">
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007374" />
    </node>
    <node role="staticMethod:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration:3" id="7241381882860007375">
      <property name="name:3" value="fromDescriptor" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007376">
        <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="7241381882860007377">
        <property name="name:3" value="desc" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007378">
          <link role="classifier:3" targetNodeId="2v.~String" />
        </node>
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007379">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860007380">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="7241381882860007381">
            <link role="classConcept:3" targetNodeId="7241381882860007306" resolveInfo="TypeUtil" />
            <link role="baseMethodDeclaration:3" targetNodeId="7241381882860007384" resolveInfo="fromType" />
            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="7241381882860007382">
              <link role="classConcept:3" targetNodeId="4.~Type" />
              <link role="baseMethodDeclaration:3" targetNodeId="4.~Type.getType(java.lang.String):org.objectweb.asm.Type" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7241381882860007383">
                <link role="variableDeclaration:3" targetNodeId="7241381882860007377" resolveInfo="desc" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="staticMethod:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration:3" id="7241381882860007384">
      <property name="name:3" value="fromType" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007385">
        <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="7241381882860007386">
        <property name="name:3" value="type" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007387">
          <link role="classifier:3" targetNodeId="4.~Type" />
        </node>
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007388">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.SwitchStatement:3" id="7241381882860007389">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007390">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7241381882860007391">
              <link role="variableDeclaration:3" targetNodeId="7241381882860007386" resolveInfo="type" />
            </node>
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860007392">
              <link role="baseMethodDeclaration:3" targetNodeId="4.~Type.getSort():int" />
            </node>
          </node>
          <node role="defaultBlock:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007393" />
          <node role="case:3" type="jetbrains.mps.baseLanguage.structure.SwitchCase:3" id="7241381882860007394">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="7241381882860007395">
              <link role="classifier:3" targetNodeId="4.~Type" />
              <link role="variableDeclaration:3" targetNodeId="4.~Type.VOID" />
            </node>
            <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007396">
              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860007397">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="7241381882860007398">
                  <link role="classifier:3" targetNodeId="7241381882860006706" resolveInfo="ASMPrimitiveType" />
                  <link role="variableDeclaration:3" targetNodeId="7241381882860006709" resolveInfo="VOID" />
                </node>
              </node>
            </node>
          </node>
          <node role="case:3" type="jetbrains.mps.baseLanguage.structure.SwitchCase:3" id="7241381882860007399">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="7241381882860007400">
              <link role="classifier:3" targetNodeId="4.~Type" />
              <link role="variableDeclaration:3" targetNodeId="4.~Type.BOOLEAN" />
            </node>
            <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007401">
              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860007402">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="7241381882860007403">
                  <link role="classifier:3" targetNodeId="7241381882860006706" resolveInfo="ASMPrimitiveType" />
                  <link role="variableDeclaration:3" targetNodeId="7241381882860006715" resolveInfo="BOOLEAN" />
                </node>
              </node>
            </node>
          </node>
          <node role="case:3" type="jetbrains.mps.baseLanguage.structure.SwitchCase:3" id="7241381882860007404">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="7241381882860007405">
              <link role="classifier:3" targetNodeId="4.~Type" />
              <link role="variableDeclaration:3" targetNodeId="4.~Type.CHAR" />
            </node>
            <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007406">
              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860007407">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="7241381882860007408">
                  <link role="classifier:3" targetNodeId="7241381882860006706" resolveInfo="ASMPrimitiveType" />
                  <link role="variableDeclaration:3" targetNodeId="7241381882860006721" resolveInfo="CHAR" />
                </node>
              </node>
            </node>
          </node>
          <node role="case:3" type="jetbrains.mps.baseLanguage.structure.SwitchCase:3" id="7241381882860007409">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="7241381882860007410">
              <link role="classifier:3" targetNodeId="4.~Type" />
              <link role="variableDeclaration:3" targetNodeId="4.~Type.BYTE" />
            </node>
            <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007411">
              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860007412">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="7241381882860007413">
                  <link role="classifier:3" targetNodeId="7241381882860006706" resolveInfo="ASMPrimitiveType" />
                  <link role="variableDeclaration:3" targetNodeId="7241381882860006727" resolveInfo="BYTE" />
                </node>
              </node>
            </node>
          </node>
          <node role="case:3" type="jetbrains.mps.baseLanguage.structure.SwitchCase:3" id="7241381882860007414">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="7241381882860007415">
              <link role="classifier:3" targetNodeId="4.~Type" />
              <link role="variableDeclaration:3" targetNodeId="4.~Type.SHORT" />
            </node>
            <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007416">
              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860007417">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="7241381882860007418">
                  <link role="classifier:3" targetNodeId="7241381882860006706" resolveInfo="ASMPrimitiveType" />
                  <link role="variableDeclaration:3" targetNodeId="7241381882860006733" resolveInfo="SHORT" />
                </node>
              </node>
            </node>
          </node>
          <node role="case:3" type="jetbrains.mps.baseLanguage.structure.SwitchCase:3" id="7241381882860007419">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="7241381882860007420">
              <link role="classifier:3" targetNodeId="4.~Type" />
              <link role="variableDeclaration:3" targetNodeId="4.~Type.INT" />
            </node>
            <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007421">
              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860007422">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="7241381882860007423">
                  <link role="classifier:3" targetNodeId="7241381882860006706" resolveInfo="ASMPrimitiveType" />
                  <link role="variableDeclaration:3" targetNodeId="7241381882860006739" resolveInfo="INT" />
                </node>
              </node>
            </node>
          </node>
          <node role="case:3" type="jetbrains.mps.baseLanguage.structure.SwitchCase:3" id="7241381882860007424">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="7241381882860007425">
              <link role="classifier:3" targetNodeId="4.~Type" />
              <link role="variableDeclaration:3" targetNodeId="4.~Type.FLOAT" />
            </node>
            <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007426">
              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860007427">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="7241381882860007428">
                  <link role="classifier:3" targetNodeId="7241381882860006706" resolveInfo="ASMPrimitiveType" />
                  <link role="variableDeclaration:3" targetNodeId="7241381882860006745" resolveInfo="FLOAT" />
                </node>
              </node>
            </node>
          </node>
          <node role="case:3" type="jetbrains.mps.baseLanguage.structure.SwitchCase:3" id="7241381882860007429">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="7241381882860007430">
              <link role="classifier:3" targetNodeId="4.~Type" />
              <link role="variableDeclaration:3" targetNodeId="4.~Type.LONG" />
            </node>
            <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007431">
              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860007432">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="7241381882860007433">
                  <link role="classifier:3" targetNodeId="7241381882860006706" resolveInfo="ASMPrimitiveType" />
                  <link role="variableDeclaration:3" targetNodeId="7241381882860006751" resolveInfo="LONG" />
                </node>
              </node>
            </node>
          </node>
          <node role="case:3" type="jetbrains.mps.baseLanguage.structure.SwitchCase:3" id="7241381882860007434">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="7241381882860007435">
              <link role="classifier:3" targetNodeId="4.~Type" />
              <link role="variableDeclaration:3" targetNodeId="4.~Type.DOUBLE" />
            </node>
            <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007436">
              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860007437">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="7241381882860007438">
                  <link role="classifier:3" targetNodeId="7241381882860006706" resolveInfo="ASMPrimitiveType" />
                  <link role="variableDeclaration:3" targetNodeId="7241381882860006757" resolveInfo="DOUBLE" />
                </node>
              </node>
            </node>
          </node>
          <node role="case:3" type="jetbrains.mps.baseLanguage.structure.SwitchCase:3" id="7241381882860007439">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="7241381882860007440">
              <link role="classifier:3" targetNodeId="4.~Type" />
              <link role="variableDeclaration:3" targetNodeId="4.~Type.OBJECT" />
            </node>
            <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007441">
              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860007442">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860007443">
                  <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860007444">
                    <link role="baseMethodDeclaration:3" targetNodeId="7241381882860002182" resolveInfo="ASMClassType" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007445">
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7241381882860007446">
                        <link role="variableDeclaration:3" targetNodeId="7241381882860007386" resolveInfo="type" />
                      </node>
                      <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860007447">
                        <link role="baseMethodDeclaration:3" targetNodeId="4.~Type.getClassName():java.lang.String" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="case:3" type="jetbrains.mps.baseLanguage.structure.SwitchCase:3" id="7241381882860007448">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="7241381882860007449">
              <link role="classifier:3" targetNodeId="4.~Type" />
              <link role="variableDeclaration:3" targetNodeId="4.~Type.ARRAY" />
            </node>
            <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007450">
              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.BlockStatement:3" id="7241381882860007451">
                <node role="statements:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007452">
                  <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="7241381882860007453">
                    <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="7241381882860007454">
                      <property name="name:3" value="result" />
                      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007455">
                        <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
                      </node>
                      <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860007456">
                        <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860007457">
                          <link role="baseMethodDeclaration:3" targetNodeId="7241381882860002152" resolveInfo="ASMArrayType" />
                          <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="7241381882860007458">
                            <link role="classConcept:3" targetNodeId="7241381882860007306" resolveInfo="TypeUtil" />
                            <link role="baseMethodDeclaration:3" targetNodeId="7241381882860007384" resolveInfo="fromType" />
                            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007459">
                              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7241381882860007460">
                                <link role="variableDeclaration:3" targetNodeId="7241381882860007386" resolveInfo="type" />
                              </node>
                              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860007461">
                                <link role="baseMethodDeclaration:3" targetNodeId="4.~Type.getElementType():org.objectweb.asm.Type" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ForStatement:3" id="7241381882860007462">
                    <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.LessThanExpression:3" id="7241381882860007463">
                      <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860007464">
                        <link role="variableDeclaration:3" targetNodeId="7241381882860007477" resolveInfo="i" />
                      </node>
                      <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007465">
                        <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7241381882860007466">
                          <link role="variableDeclaration:3" targetNodeId="7241381882860007386" resolveInfo="type" />
                        </node>
                        <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860007467">
                          <link role="baseMethodDeclaration:3" targetNodeId="4.~Type.getDimensions():int" />
                        </node>
                      </node>
                    </node>
                    <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007468">
                      <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860007469">
                        <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="7241381882860007470">
                          <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860007471">
                            <link role="variableDeclaration:3" targetNodeId="7241381882860007454" resolveInfo="result" />
                          </node>
                          <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860007472">
                            <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860007473">
                              <link role="baseMethodDeclaration:3" targetNodeId="7241381882860002152" resolveInfo="ASMArrayType" />
                              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860007474">
                                <link role="variableDeclaration:3" targetNodeId="7241381882860007454" resolveInfo="result" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="iteration:3" type="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression:3" id="7241381882860007475">
                      <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860007476">
                        <link role="variableDeclaration:3" targetNodeId="7241381882860007477" resolveInfo="i" />
                      </node>
                    </node>
                    <node role="variable:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="7241381882860007477">
                      <property name="name:3" value="i" />
                      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="7241381882860007478" />
                      <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="7241381882860007479">
                        <property name="value:3" value="1" />
                      </node>
                    </node>
                  </node>
                  <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860007480">
                    <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860007481">
                      <link role="variableDeclaration:3" targetNodeId="7241381882860007454" resolveInfo="result" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860007482">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="7241381882860007483" />
        </node>
      </node>
    </node>
    <node role="staticMethod:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration:3" id="7241381882860007484">
      <property name="name:3" value="getReturnType" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007485">
        <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="7241381882860007486">
        <property name="name:3" value="signature" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007487">
          <link role="classifier:3" targetNodeId="2v.~String" />
        </node>
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007488">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="7241381882860007489">
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="7241381882860007490">
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7241381882860007491">
              <link role="variableDeclaration:3" targetNodeId="7241381882860007486" resolveInfo="signature" />
            </node>
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="7241381882860007492" />
          </node>
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007493">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860007494">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="7241381882860007495" />
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="7241381882860007496">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="7241381882860007497">
            <property name="name:3" value="reader" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007498">
              <link role="classifier:3" targetNodeId="5.~SignatureReader" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860007499">
              <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860007500">
                <link role="baseMethodDeclaration:3" targetNodeId="5.~SignatureReader.&lt;init&gt;(java.lang.String)" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7241381882860007501">
                  <link role="variableDeclaration:3" targetNodeId="7241381882860007486" resolveInfo="signature" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="7241381882860007502">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="7241381882860007503">
            <property name="name:3" value="builder" />
            <property name="isFinal:3" value="true" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007504">
              <link role="classifier:3" targetNodeId="7241381882860007307" resolveInfo="TypeUtil.TypeBuilderVisitor" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860007505">
              <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860007506">
                <link role="baseMethodDeclaration:3" targetNodeId="7241381882860007322" resolveInfo="TypeUtil.TypeBuilderVisitor" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860007507">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007508">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860007509">
              <link role="variableDeclaration:3" targetNodeId="7241381882860007497" resolveInfo="reader" />
            </node>
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860007510">
              <link role="baseMethodDeclaration:3" targetNodeId="5.~SignatureReader.accept(org.objectweb.asm.signature.SignatureVisitor):void" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860007511">
                <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator:3" id="7241381882860007512">
                  <node role="cls:3" type="jetbrains.mps.baseLanguage.structure.AnonymousClass:3" id="7241381882860007513">
                    <property name="name:3" value="" />
                    <link role="classifier:3" targetNodeId="7241381882860001929" resolveInfo="SignatureVisitorAdapter" />
                    <link role="baseMethodDeclaration:3" targetNodeId="7241381882860007075" resolveInfo="SignatureVisitorAdapter" />
                    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860007514">
                      <property name="name:3" value="visitReturnType" />
                      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860007515" />
                      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007516">
                        <link role="classifier:3" targetNodeId="5.~SignatureVisitor" />
                      </node>
                      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860008063">
                        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860008064">
                          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860008065">
                            <link role="variableDeclaration:3" targetNodeId="7241381882860007503" resolveInfo="builder" />
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
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860007517">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007518">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860007519">
              <link role="variableDeclaration:3" targetNodeId="7241381882860007503" resolveInfo="builder" />
            </node>
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860007520">
              <link role="baseMethodDeclaration:3" targetNodeId="7241381882860007371" resolveInfo="getResult" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="staticMethod:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration:3" id="7241381882860007521">
      <property name="name:3" value="getParameterTypes" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007522">
        <link role="classifier:3" targetNodeId="2.~List" />
        <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007523">
          <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="7241381882860007524">
        <property name="name:3" value="signature" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007525">
          <link role="classifier:3" targetNodeId="2v.~String" />
        </node>
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007526">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="7241381882860007527">
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="7241381882860007528">
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7241381882860007529">
              <link role="variableDeclaration:3" targetNodeId="7241381882860007524" resolveInfo="signature" />
            </node>
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="7241381882860007530" />
          </node>
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007531">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860007532">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="7241381882860007533">
                <link role="classConcept:3" targetNodeId="2.~Collections" />
                <link role="baseMethodDeclaration:3" targetNodeId="2.~Collections.emptyList():java.util.List" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="7241381882860007534">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="7241381882860007535">
            <property name="name:3" value="reader" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007536">
              <link role="classifier:3" targetNodeId="5.~SignatureReader" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860007537">
              <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860007538">
                <link role="baseMethodDeclaration:3" targetNodeId="5.~SignatureReader.&lt;init&gt;(java.lang.String)" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7241381882860007539">
                  <link role="variableDeclaration:3" targetNodeId="7241381882860007524" resolveInfo="signature" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="7241381882860007540">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="7241381882860007541">
            <property name="name:3" value="visitors" />
            <property name="isFinal:3" value="true" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007542">
              <link role="classifier:3" targetNodeId="2.~List" />
              <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007543">
                <link role="classifier:3" targetNodeId="7241381882860007307" resolveInfo="TypeUtil.TypeBuilderVisitor" />
              </node>
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860007544">
              <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860007545">
                <link role="baseMethodDeclaration:3" targetNodeId="2.~ArrayList.&lt;init&gt;()" />
                <node role="typeParameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007546">
                  <link role="classifier:3" targetNodeId="7241381882860007307" resolveInfo="TypeUtil.TypeBuilderVisitor" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860007547">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007548">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860007549">
              <link role="variableDeclaration:3" targetNodeId="7241381882860007535" resolveInfo="reader" />
            </node>
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860007550">
              <link role="baseMethodDeclaration:3" targetNodeId="5.~SignatureReader.accept(org.objectweb.asm.signature.SignatureVisitor):void" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860007551">
                <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator:3" id="7241381882860007552">
                  <node role="cls:3" type="jetbrains.mps.baseLanguage.structure.AnonymousClass:3" id="7241381882860007553">
                    <property name="name:3" value="" />
                    <link role="classifier:3" targetNodeId="7241381882860001929" resolveInfo="SignatureVisitorAdapter" />
                    <link role="baseMethodDeclaration:3" targetNodeId="7241381882860007075" resolveInfo="SignatureVisitorAdapter" />
                    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860007554">
                      <property name="name:3" value="visitParameterType" />
                      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860007555" />
                      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007556">
                        <link role="classifier:3" targetNodeId="5.~SignatureVisitor" />
                      </node>
                      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860008066">
                        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="7241381882860008067">
                          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="7241381882860008068">
                            <property name="name:3" value="v" />
                            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860008069">
                              <link role="classifier:3" targetNodeId="7241381882860007307" resolveInfo="TypeUtil.TypeBuilderVisitor" />
                            </node>
                            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860008070">
                              <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860008071">
                                <link role="baseMethodDeclaration:3" targetNodeId="7241381882860007322" resolveInfo="TypeUtil.TypeBuilderVisitor" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860008072">
                          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860008073">
                            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860008074">
                              <link role="variableDeclaration:3" targetNodeId="7241381882860007541" resolveInfo="visitors" />
                            </node>
                            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860008075">
                              <link role="baseMethodDeclaration:3" targetNodeId="2.~List.add(java.lang.Object):boolean" />
                              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860008076">
                                <link role="variableDeclaration:3" targetNodeId="7241381882860008068" resolveInfo="v" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860008077">
                          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860008078">
                            <link role="variableDeclaration:3" targetNodeId="7241381882860008068" resolveInfo="v" />
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
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="7241381882860007557">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="7241381882860007558">
            <property name="name:3" value="types" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007559">
              <link role="classifier:3" targetNodeId="2.~List" />
              <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007560">
                <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
              </node>
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860007561">
              <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860007562">
                <link role="baseMethodDeclaration:3" targetNodeId="2.~ArrayList.&lt;init&gt;(int)" />
                <node role="typeParameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007563">
                  <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
                </node>
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007564">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860007565">
                    <link role="variableDeclaration:3" targetNodeId="7241381882860007541" resolveInfo="visitors" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860007566">
                    <link role="baseMethodDeclaration:3" targetNodeId="2.~List.size():int" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ForeachStatement:3" id="7241381882860007567">
          <node role="iterable:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860007568">
            <link role="variableDeclaration:3" targetNodeId="7241381882860007541" resolveInfo="visitors" />
          </node>
          <node role="variable:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="7241381882860007569">
            <property name="name:3" value="v" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007570">
              <link role="classifier:3" targetNodeId="7241381882860007307" resolveInfo="TypeUtil.TypeBuilderVisitor" />
            </node>
          </node>
          <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007571">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860007572">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007573">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860007574">
                  <link role="variableDeclaration:3" targetNodeId="7241381882860007558" resolveInfo="types" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860007575">
                  <link role="baseMethodDeclaration:3" targetNodeId="2.~List.add(java.lang.Object):boolean" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007576">
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860007577">
                      <link role="variableDeclaration:3" targetNodeId="7241381882860007569" resolveInfo="v" />
                    </node>
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860007578">
                      <link role="baseMethodDeclaration:3" targetNodeId="7241381882860007371" resolveInfo="getResult" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860007579">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860007580">
            <link role="variableDeclaration:3" targetNodeId="7241381882860007558" resolveInfo="types" />
          </node>
        </node>
      </node>
    </node>
    <node role="staticMethod:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration:3" id="7241381882860007581">
      <property name="name:3" value="getFormalTypeParameters" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860007582" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007583">
        <link role="classifier:3" targetNodeId="2.~List" />
        <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007584">
          <link role="classifier:3" targetNodeId="7241381882860008759" resolveInfo="ASMFormalTypeParameter" />
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="7241381882860007585">
        <property name="name:3" value="signature" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007586">
          <link role="classifier:3" targetNodeId="2v.~String" />
        </node>
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007587">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="7241381882860007588">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="7241381882860007589">
            <property name="name:3" value="result" />
            <property name="isFinal:3" value="true" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007590">
              <link role="classifier:3" targetNodeId="2.~List" />
              <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007591">
                <link role="classifier:3" targetNodeId="7241381882860008759" resolveInfo="ASMFormalTypeParameter" />
              </node>
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860007592">
              <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860007593">
                <link role="baseMethodDeclaration:3" targetNodeId="2.~ArrayList.&lt;init&gt;()" />
                <node role="typeParameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007594">
                  <link role="classifier:3" targetNodeId="7241381882860008759" resolveInfo="ASMFormalTypeParameter" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="7241381882860007595">
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="7241381882860007596">
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7241381882860007597">
              <link role="variableDeclaration:3" targetNodeId="7241381882860007585" resolveInfo="signature" />
            </node>
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="7241381882860007598" />
          </node>
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007599">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860007600">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860007601">
                <link role="variableDeclaration:3" targetNodeId="7241381882860007589" resolveInfo="result" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="7241381882860007602">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="7241381882860007603">
            <property name="name:3" value="reader" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007604">
              <link role="classifier:3" targetNodeId="5.~SignatureReader" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860007605">
              <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860007606">
                <link role="baseMethodDeclaration:3" targetNodeId="5.~SignatureReader.&lt;init&gt;(java.lang.String)" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7241381882860007607">
                  <link role="variableDeclaration:3" targetNodeId="7241381882860007585" resolveInfo="signature" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860007608">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007609">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860007610">
              <link role="variableDeclaration:3" targetNodeId="7241381882860007603" resolveInfo="reader" />
            </node>
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860007611">
              <link role="baseMethodDeclaration:3" targetNodeId="5.~SignatureReader.accept(org.objectweb.asm.signature.SignatureVisitor):void" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860007612">
                <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator:3" id="7241381882860007613">
                  <node role="cls:3" type="jetbrains.mps.baseLanguage.structure.AnonymousClass:3" id="7241381882860007614">
                    <property name="name:3" value="" />
                    <link role="classifier:3" targetNodeId="7241381882860001929" resolveInfo="SignatureVisitorAdapter" />
                    <link role="baseMethodDeclaration:3" targetNodeId="7241381882860007075" resolveInfo="SignatureVisitorAdapter" />
                    <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="7241381882860007615">
                      <property name="name:3" value="name" />
                      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007616">
                        <link role="classifier:3" targetNodeId="2v.~String" />
                      </node>
                      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="7241381882860007617" />
                      <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="7241381882860008079" />
                    </node>
                    <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="7241381882860007618">
                      <property name="name:3" value="classBoundVisitor" />
                      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007619">
                        <link role="classifier:3" targetNodeId="7241381882860007307" resolveInfo="TypeUtil.TypeBuilderVisitor" />
                      </node>
                      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="7241381882860007620" />
                      <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860008080">
                        <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860008081">
                          <link role="baseMethodDeclaration:3" targetNodeId="7241381882860007322" resolveInfo="TypeUtil.TypeBuilderVisitor" />
                        </node>
                      </node>
                    </node>
                    <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="7241381882860007621">
                      <property name="name:3" value="interfaceBoundVisitors" />
                      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007622">
                        <link role="classifier:3" targetNodeId="2.~List" />
                        <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007623">
                          <link role="classifier:3" targetNodeId="7241381882860007307" resolveInfo="TypeUtil.TypeBuilderVisitor" />
                        </node>
                      </node>
                      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="7241381882860007624" />
                      <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860008082">
                        <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860008083">
                          <link role="baseMethodDeclaration:3" targetNodeId="2.~ArrayList.&lt;init&gt;()" />
                          <node role="typeParameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860008084">
                            <link role="classifier:3" targetNodeId="7241381882860007307" resolveInfo="TypeUtil.TypeBuilderVisitor" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860007625">
                      <property name="name:3" value="visitFormalTypeParameter" />
                      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860007626" />
                      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="7241381882860007627" />
                      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="7241381882860007628">
                        <property name="name:3" value="name" />
                        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007629">
                          <link role="classifier:3" targetNodeId="2v.~String" />
                        </node>
                      </node>
                      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860008085">
                        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="7241381882860008086">
                          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="7241381882860008087">
                            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860008088">
                              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860008089">
                                <link role="fieldDeclaration:3" targetNodeId="7241381882860007615" resolveInfo="name" />
                              </node>
                              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860008090" />
                            </node>
                            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="7241381882860008091" />
                          </node>
                          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860008092">
                            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860008093">
                              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860008094">
                                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860008095" />
                                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860008096">
                                  <link role="baseMethodDeclaration:3" targetNodeId="7241381882860007642" resolveInfo="flush" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860008097">
                          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="7241381882860008098">
                            <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860008099">
                              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860008100">
                                <link role="fieldDeclaration:3" targetNodeId="7241381882860007615" resolveInfo="name" />
                              </node>
                              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860008101" />
                            </node>
                            <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7241381882860008102">
                              <link role="variableDeclaration:3" targetNodeId="7241381882860007628" resolveInfo="name" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860007630">
                      <property name="name:3" value="visitClassBound" />
                      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860007631" />
                      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007632">
                        <link role="classifier:3" targetNodeId="5.~SignatureVisitor" />
                      </node>
                      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860008103">
                        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860008104">
                          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="7241381882860008105">
                            <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860008106">
                              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860008107">
                                <link role="fieldDeclaration:3" targetNodeId="7241381882860007618" resolveInfo="classBoundVisitor" />
                              </node>
                              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860008108" />
                            </node>
                            <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860008109">
                              <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860008110">
                                <link role="baseMethodDeclaration:3" targetNodeId="7241381882860007322" resolveInfo="TypeUtil.TypeBuilderVisitor" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860008111">
                          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860008112">
                            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860008113">
                              <link role="fieldDeclaration:3" targetNodeId="7241381882860007618" resolveInfo="classBoundVisitor" />
                            </node>
                            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860008114" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860007633">
                      <property name="name:3" value="visitInterfaceBound" />
                      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860007634" />
                      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007635">
                        <link role="classifier:3" targetNodeId="5.~SignatureVisitor" />
                      </node>
                      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860008115">
                        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="7241381882860008116">
                          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="7241381882860008117">
                            <property name="name:3" value="visitor" />
                            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860008118">
                              <link role="classifier:3" targetNodeId="7241381882860007307" resolveInfo="TypeUtil.TypeBuilderVisitor" />
                            </node>
                            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860008119">
                              <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860008120">
                                <link role="baseMethodDeclaration:3" targetNodeId="7241381882860007322" resolveInfo="TypeUtil.TypeBuilderVisitor" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860008121">
                          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860008122">
                            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860008123">
                              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860008124">
                                <link role="fieldDeclaration:3" targetNodeId="7241381882860007621" resolveInfo="interfaceBoundVisitors" />
                              </node>
                              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860008125" />
                            </node>
                            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860008126">
                              <link role="baseMethodDeclaration:3" targetNodeId="2.~List.add(java.lang.Object):boolean" />
                              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860008127">
                                <link role="variableDeclaration:3" targetNodeId="7241381882860008117" resolveInfo="visitor" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860008128">
                          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860008129">
                            <link role="variableDeclaration:3" targetNodeId="7241381882860008117" resolveInfo="visitor" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860007636">
                      <property name="name:3" value="visitReturnType" />
                      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860007637" />
                      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007638">
                        <link role="classifier:3" targetNodeId="5.~SignatureVisitor" />
                      </node>
                      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860008130">
                        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="7241381882860008131">
                          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="7241381882860008132">
                            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860008133">
                              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860008134">
                                <link role="fieldDeclaration:3" targetNodeId="7241381882860007615" resolveInfo="name" />
                              </node>
                              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860008135" />
                            </node>
                            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="7241381882860008136" />
                          </node>
                          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860008137">
                            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860008138">
                              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860008139">
                                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860008140" />
                                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860008141">
                                  <link role="baseMethodDeclaration:3" targetNodeId="7241381882860007642" resolveInfo="flush" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860008142">
                          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.SuperMethodCall:3" id="7241381882860008143">
                            <link role="baseMethodDeclaration:3" targetNodeId="7241381882860007114" resolveInfo="visitReturnType" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860007639">
                      <property name="name:3" value="visitSuperclass" />
                      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860007640" />
                      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007641">
                        <link role="classifier:3" targetNodeId="5.~SignatureVisitor" />
                      </node>
                      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860008144">
                        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="7241381882860008145">
                          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="7241381882860008146">
                            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860008147">
                              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860008148">
                                <link role="fieldDeclaration:3" targetNodeId="7241381882860007615" resolveInfo="name" />
                              </node>
                              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860008149" />
                            </node>
                            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="7241381882860008150" />
                          </node>
                          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860008151">
                            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860008152">
                              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860008153">
                                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860008154" />
                                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860008155">
                                  <link role="baseMethodDeclaration:3" targetNodeId="7241381882860007642" resolveInfo="flush" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860008156">
                          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.SuperMethodCall:3" id="7241381882860008157">
                            <link role="baseMethodDeclaration:3" targetNodeId="7241381882860007096" resolveInfo="visitSuperclass" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860007642">
                      <property name="name:3" value="flush" />
                      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="7241381882860007643" />
                      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="7241381882860007644" />
                      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860008158">
                        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="7241381882860008159">
                          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="7241381882860008160">
                            <property name="name:3" value="interfaceBounds" />
                            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860008161">
                              <link role="classifier:3" targetNodeId="2.~List" />
                              <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860008162">
                                <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
                              </node>
                            </node>
                            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860008163">
                              <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860008164">
                                <link role="baseMethodDeclaration:3" targetNodeId="2.~ArrayList.&lt;init&gt;(int)" />
                                <node role="typeParameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860008165">
                                  <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
                                </node>
                                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860008166">
                                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860008167">
                                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860008168">
                                      <link role="fieldDeclaration:3" targetNodeId="7241381882860007621" resolveInfo="interfaceBoundVisitors" />
                                    </node>
                                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860008169" />
                                  </node>
                                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860008170">
                                    <link role="baseMethodDeclaration:3" targetNodeId="2.~List.size():int" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ForeachStatement:3" id="7241381882860008171">
                          <node role="iterable:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860008172">
                            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860008173">
                              <link role="fieldDeclaration:3" targetNodeId="7241381882860007621" resolveInfo="interfaceBoundVisitors" />
                            </node>
                            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860008174" />
                          </node>
                          <node role="variable:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="7241381882860008175">
                            <property name="name:3" value="v" />
                            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860008176">
                              <link role="classifier:3" targetNodeId="7241381882860007307" resolveInfo="TypeUtil.TypeBuilderVisitor" />
                            </node>
                          </node>
                          <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860008177">
                            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860008178">
                              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860008179">
                                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860008180">
                                  <link role="variableDeclaration:3" targetNodeId="7241381882860008160" resolveInfo="interfaceBounds" />
                                </node>
                                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860008181">
                                  <link role="baseMethodDeclaration:3" targetNodeId="2.~List.add(java.lang.Object):boolean" />
                                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860008182">
                                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860008183">
                                      <link role="variableDeclaration:3" targetNodeId="7241381882860008175" resolveInfo="v" />
                                    </node>
                                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860008184">
                                      <link role="baseMethodDeclaration:3" targetNodeId="7241381882860007371" resolveInfo="getResult" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860008185">
                          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860008186">
                            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860008187">
                              <link role="variableDeclaration:3" targetNodeId="7241381882860007589" resolveInfo="result" />
                            </node>
                            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860008188">
                              <link role="baseMethodDeclaration:3" targetNodeId="2.~List.add(java.lang.Object):boolean" />
                              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860008189">
                                <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860008190">
                                  <link role="baseMethodDeclaration:3" targetNodeId="7241381882860008769" resolveInfo="ASMFormalTypeParameter" />
                                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860008191">
                                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860008192">
                                      <link role="fieldDeclaration:3" targetNodeId="7241381882860007615" resolveInfo="name" />
                                    </node>
                                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860008193" />
                                  </node>
                                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression:3" id="7241381882860008194">
                                    <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="7241381882860008195">
                                      <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860008196">
                                        <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860008197">
                                          <link role="fieldDeclaration:3" targetNodeId="7241381882860007618" resolveInfo="classBoundVisitor" />
                                        </node>
                                        <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860008198" />
                                      </node>
                                      <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="7241381882860008199" />
                                    </node>
                                    <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860008200">
                                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860008201">
                                        <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860008202">
                                          <link role="fieldDeclaration:3" targetNodeId="7241381882860007618" resolveInfo="classBoundVisitor" />
                                        </node>
                                        <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860008203" />
                                      </node>
                                      <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860008204">
                                        <link role="baseMethodDeclaration:3" targetNodeId="7241381882860007371" resolveInfo="getResult" />
                                      </node>
                                    </node>
                                    <node role="ifFalse:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="7241381882860008205" />
                                  </node>
                                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860008206">
                                    <link role="variableDeclaration:3" targetNodeId="7241381882860008160" resolveInfo="interfaceBounds" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860008207">
                          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="7241381882860008208">
                            <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860008209">
                              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860008210">
                                <link role="fieldDeclaration:3" targetNodeId="7241381882860007615" resolveInfo="name" />
                              </node>
                              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860008211" />
                            </node>
                            <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="7241381882860008212" />
                          </node>
                        </node>
                        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860008213">
                          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="7241381882860008214">
                            <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860008215">
                              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860008216">
                                <link role="fieldDeclaration:3" targetNodeId="7241381882860007618" resolveInfo="classBoundVisitor" />
                              </node>
                              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860008217" />
                            </node>
                            <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="7241381882860008218" />
                          </node>
                        </node>
                        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860008219">
                          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860008220">
                            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860008221">
                              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860008222">
                                <link role="fieldDeclaration:3" targetNodeId="7241381882860007621" resolveInfo="interfaceBoundVisitors" />
                              </node>
                              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860008223" />
                            </node>
                            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860008224">
                              <link role="baseMethodDeclaration:3" targetNodeId="2.~List.clear():void" />
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
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860007645">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860007646">
            <link role="variableDeclaration:3" targetNodeId="7241381882860007589" resolveInfo="result" />
          </node>
        </node>
      </node>
    </node>
    <node role="staticMethod:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration:3" id="7241381882860007647">
      <property name="name:3" value="getExceptionTypes" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860007648" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007649">
        <link role="classifier:3" targetNodeId="2.~List" />
        <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007650">
          <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="7241381882860007651">
        <property name="name:3" value="signature" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007652">
          <link role="classifier:3" targetNodeId="2v.~String" />
        </node>
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007653">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="7241381882860007654">
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="7241381882860007655">
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7241381882860007656">
              <link role="variableDeclaration:3" targetNodeId="7241381882860007651" resolveInfo="signature" />
            </node>
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="7241381882860007657" />
          </node>
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007658">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860007659">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="7241381882860007660">
                <link role="classConcept:3" targetNodeId="2.~Collections" />
                <link role="baseMethodDeclaration:3" targetNodeId="2.~Collections.emptyList():java.util.List" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="7241381882860007661">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="7241381882860007662">
            <property name="name:3" value="reader" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007663">
              <link role="classifier:3" targetNodeId="5.~SignatureReader" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860007664">
              <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860007665">
                <link role="baseMethodDeclaration:3" targetNodeId="5.~SignatureReader.&lt;init&gt;(java.lang.String)" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7241381882860007666">
                  <link role="variableDeclaration:3" targetNodeId="7241381882860007651" resolveInfo="signature" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="7241381882860007667">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="7241381882860007668">
            <property name="name:3" value="visitors" />
            <property name="isFinal:3" value="true" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007669">
              <link role="classifier:3" targetNodeId="2.~List" />
              <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007670">
                <link role="classifier:3" targetNodeId="7241381882860007307" resolveInfo="TypeUtil.TypeBuilderVisitor" />
              </node>
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860007671">
              <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860007672">
                <link role="baseMethodDeclaration:3" targetNodeId="2.~ArrayList.&lt;init&gt;()" />
                <node role="typeParameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007673">
                  <link role="classifier:3" targetNodeId="7241381882860007307" resolveInfo="TypeUtil.TypeBuilderVisitor" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860007674">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007675">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860007676">
              <link role="variableDeclaration:3" targetNodeId="7241381882860007662" resolveInfo="reader" />
            </node>
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860007677">
              <link role="baseMethodDeclaration:3" targetNodeId="5.~SignatureReader.accept(org.objectweb.asm.signature.SignatureVisitor):void" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860007678">
                <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator:3" id="7241381882860007679">
                  <node role="cls:3" type="jetbrains.mps.baseLanguage.structure.AnonymousClass:3" id="7241381882860007680">
                    <property name="name:3" value="" />
                    <link role="classifier:3" targetNodeId="7241381882860001929" resolveInfo="SignatureVisitorAdapter" />
                    <link role="baseMethodDeclaration:3" targetNodeId="7241381882860007075" resolveInfo="SignatureVisitorAdapter" />
                    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860007681">
                      <property name="name:3" value="visitExceptionType" />
                      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860007682" />
                      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007683">
                        <link role="classifier:3" targetNodeId="5.~SignatureVisitor" />
                      </node>
                      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860008225">
                        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="7241381882860008226">
                          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="7241381882860008227">
                            <property name="name:3" value="v" />
                            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860008228">
                              <link role="classifier:3" targetNodeId="7241381882860007307" resolveInfo="TypeUtil.TypeBuilderVisitor" />
                            </node>
                            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860008229">
                              <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860008230">
                                <link role="baseMethodDeclaration:3" targetNodeId="7241381882860007322" resolveInfo="TypeUtil.TypeBuilderVisitor" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860008231">
                          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860008232">
                            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860008233">
                              <link role="variableDeclaration:3" targetNodeId="7241381882860007668" resolveInfo="visitors" />
                            </node>
                            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860008234">
                              <link role="baseMethodDeclaration:3" targetNodeId="2.~List.add(java.lang.Object):boolean" />
                              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860008235">
                                <link role="variableDeclaration:3" targetNodeId="7241381882860008227" resolveInfo="v" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860008236">
                          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860008237">
                            <link role="variableDeclaration:3" targetNodeId="7241381882860008227" resolveInfo="v" />
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
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="7241381882860007684">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="7241381882860007685">
            <property name="name:3" value="types" />
            <property name="isFinal:3" value="true" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007686">
              <link role="classifier:3" targetNodeId="2.~List" />
              <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007687">
                <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
              </node>
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860007688">
              <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860007689">
                <link role="baseMethodDeclaration:3" targetNodeId="2.~ArrayList.&lt;init&gt;(int)" />
                <node role="typeParameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007690">
                  <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
                </node>
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007691">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860007692">
                    <link role="variableDeclaration:3" targetNodeId="7241381882860007668" resolveInfo="visitors" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860007693">
                    <link role="baseMethodDeclaration:3" targetNodeId="2.~List.size():int" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ForeachStatement:3" id="7241381882860007694">
          <node role="iterable:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860007695">
            <link role="variableDeclaration:3" targetNodeId="7241381882860007668" resolveInfo="visitors" />
          </node>
          <node role="variable:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="7241381882860007696">
            <property name="name:3" value="v" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007697">
              <link role="classifier:3" targetNodeId="7241381882860007307" resolveInfo="TypeUtil.TypeBuilderVisitor" />
            </node>
          </node>
          <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007698">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860007699">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007700">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860007701">
                  <link role="variableDeclaration:3" targetNodeId="7241381882860007685" resolveInfo="types" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860007702">
                  <link role="baseMethodDeclaration:3" targetNodeId="2.~List.add(java.lang.Object):boolean" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007703">
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860007704">
                      <link role="variableDeclaration:3" targetNodeId="7241381882860007696" resolveInfo="v" />
                    </node>
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860007705">
                      <link role="baseMethodDeclaration:3" targetNodeId="7241381882860007371" resolveInfo="getResult" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860007706">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860007707">
            <link role="variableDeclaration:3" targetNodeId="7241381882860007685" resolveInfo="types" />
          </node>
        </node>
      </node>
    </node>
    <node role="staticMethod:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration:3" id="7241381882860007708">
      <property name="name:3" value="getFieldType" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860007709" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007710">
        <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="7241381882860007711">
        <property name="name:3" value="signature" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007712">
          <link role="classifier:3" targetNodeId="2v.~String" />
        </node>
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007713">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="7241381882860007714">
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="7241381882860007715">
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7241381882860007716">
              <link role="variableDeclaration:3" targetNodeId="7241381882860007711" resolveInfo="signature" />
            </node>
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="7241381882860007717" />
          </node>
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860007718">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860007719">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="7241381882860007720" />
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="7241381882860007721">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="7241381882860007722">
            <property name="name:3" value="builder" />
            <property name="isFinal:3" value="true" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007723">
              <link role="classifier:3" targetNodeId="7241381882860007307" resolveInfo="TypeUtil.TypeBuilderVisitor" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860007724">
              <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860007725">
                <link role="baseMethodDeclaration:3" targetNodeId="7241381882860007322" resolveInfo="TypeUtil.TypeBuilderVisitor" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="7241381882860007726">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="7241381882860007727">
            <property name="name:3" value="reader" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860007728">
              <link role="classifier:3" targetNodeId="5.~SignatureReader" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860007729">
              <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860007730">
                <link role="baseMethodDeclaration:3" targetNodeId="5.~SignatureReader.&lt;init&gt;(java.lang.String)" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7241381882860007731">
                  <link role="variableDeclaration:3" targetNodeId="7241381882860007711" resolveInfo="signature" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860007732">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007733">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860007734">
              <link role="variableDeclaration:3" targetNodeId="7241381882860007727" resolveInfo="reader" />
            </node>
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860007735">
              <link role="baseMethodDeclaration:3" targetNodeId="5.~SignatureReader.acceptType(org.objectweb.asm.signature.SignatureVisitor):void" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860007736">
                <link role="variableDeclaration:3" targetNodeId="7241381882860007722" resolveInfo="builder" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860007737">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860007738">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860007739">
              <link role="variableDeclaration:3" targetNodeId="7241381882860007722" resolveInfo="builder" />
            </node>
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860007740">
              <link role="baseMethodDeclaration:3" targetNodeId="7241381882860007371" resolveInfo="getResult" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="7241381882860008653">
    <property name="name:3" value="ASMType" />
    <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860008654" />
    <node role="constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="7241381882860008655">
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860008656" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860008657" />
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="7241381882860008658">
    <property name="name:3" value="ASMEnumValue" />
    <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860008659" />
    <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="7241381882860008660">
      <property name="name:3" value="myType" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860008661">
        <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="7241381882860008662" />
    </node>
    <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="7241381882860008663">
      <property name="name:3" value="myConstant" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860008664">
        <link role="classifier:3" targetNodeId="2v.~String" />
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="7241381882860008665" />
    </node>
    <node role="constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="7241381882860008666">
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="7241381882860008667">
        <property name="name:3" value="type" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860008668">
          <link role="classifier:3" targetNodeId="2v.~String" />
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="7241381882860008669">
        <property name="name:3" value="name" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860008670">
          <link role="classifier:3" targetNodeId="2v.~String" />
        </node>
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860008671">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860008672">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="7241381882860008673">
            <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860008674">
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860008675">
                <link role="fieldDeclaration:3" targetNodeId="7241381882860008660" resolveInfo="myType" />
              </node>
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860008676" />
            </node>
            <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="7241381882860008677">
              <link role="classConcept:3" targetNodeId="7241381882860007306" resolveInfo="TypeUtil" />
              <link role="baseMethodDeclaration:3" targetNodeId="7241381882860007375" resolveInfo="fromDescriptor" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7241381882860008678">
                <link role="variableDeclaration:3" targetNodeId="7241381882860008667" resolveInfo="type" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860008679">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="7241381882860008680">
            <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860008681">
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860008682">
                <link role="fieldDeclaration:3" targetNodeId="7241381882860008663" resolveInfo="myConstant" />
              </node>
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860008683" />
            </node>
            <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7241381882860008684">
              <link role="variableDeclaration:3" targetNodeId="7241381882860008669" resolveInfo="name" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860008685">
      <property name="name:3" value="getType" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860008686" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860008687">
        <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860008688">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860008689">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860008690">
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860008691">
              <link role="fieldDeclaration:3" targetNodeId="7241381882860008660" resolveInfo="myType" />
            </node>
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860008692" />
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860008693">
      <property name="name:3" value="getConstant" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860008694" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860008695">
        <link role="classifier:3" targetNodeId="2v.~String" />
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860008696">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860008697">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860008698">
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860008699">
              <link role="fieldDeclaration:3" targetNodeId="7241381882860008663" resolveInfo="myConstant" />
            </node>
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860008700" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="7241381882860008701">
    <property name="name:3" value="ASMTypeVariable" />
    <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860008702" />
    <node role="superclass:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860008703">
      <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
    </node>
    <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="7241381882860008704">
      <property name="name:3" value="myName" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860008705">
        <link role="classifier:3" targetNodeId="2v.~String" />
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="7241381882860008706" />
    </node>
    <node role="constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="7241381882860008707">
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860008708" />
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="7241381882860008709">
        <property name="name:3" value="name" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860008710">
          <link role="classifier:3" targetNodeId="2v.~String" />
        </node>
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860008711">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860008712">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="7241381882860008713">
            <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860008714">
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860008715">
                <link role="fieldDeclaration:3" targetNodeId="7241381882860008704" resolveInfo="myName" />
              </node>
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860008716" />
            </node>
            <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7241381882860008717">
              <link role="variableDeclaration:3" targetNodeId="7241381882860008709" resolveInfo="name" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860008718">
      <property name="name:3" value="getName" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860008719" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860008720">
        <link role="classifier:3" targetNodeId="2v.~String" />
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860008721">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860008722">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860008723">
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860008724">
              <link role="fieldDeclaration:3" targetNodeId="7241381882860008704" resolveInfo="myName" />
            </node>
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860008725" />
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860008726">
      <property name="name:3" value="toString" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860008727" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860008728">
        <link role="classifier:3" targetNodeId="2v.~String" />
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860008729">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860008730">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860008731">
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860008732">
              <link role="fieldDeclaration:3" targetNodeId="7241381882860008704" resolveInfo="myName" />
            </node>
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860008733" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="7241381882860008734">
    <property name="name:3" value="ASMSuperType" />
    <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860008735" />
    <node role="superclass:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860008736">
      <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
    </node>
    <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="7241381882860008737">
      <property name="name:3" value="myBase" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860008738">
        <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="7241381882860008739" />
    </node>
    <node role="constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="7241381882860008740">
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860008741" />
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="7241381882860008742">
        <property name="name:3" value="base" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860008743">
          <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
        </node>
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860008744">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860008745">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="7241381882860008746">
            <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860008747">
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860008748">
                <link role="fieldDeclaration:3" targetNodeId="7241381882860008737" resolveInfo="myBase" />
              </node>
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860008749" />
            </node>
            <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7241381882860008750">
              <link role="variableDeclaration:3" targetNodeId="7241381882860008742" resolveInfo="base" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860008751">
      <property name="name:3" value="getBase" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860008752" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860008753">
        <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860008754">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860008755">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860008756">
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860008757">
              <link role="fieldDeclaration:3" targetNodeId="7241381882860008737" resolveInfo="myBase" />
            </node>
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860008758" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="7241381882860008759">
    <property name="name:3" value="ASMFormalTypeParameter" />
    <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860008760" />
    <node role="superclass:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860008761">
      <link role="classifier:3" targetNodeId="7241381882860008701" resolveInfo="ASMTypeVariable" />
    </node>
    <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="7241381882860008762">
      <property name="name:3" value="myClassBound" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860008763">
        <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="7241381882860008764" />
    </node>
    <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="7241381882860008765">
      <property name="name:3" value="myInterfaceBounds" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860008766">
        <link role="classifier:3" targetNodeId="2.~List" />
        <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860008767">
          <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
        </node>
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="7241381882860008768" />
    </node>
    <node role="constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="7241381882860008769">
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860008770" />
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="7241381882860008771">
        <property name="name:3" value="name" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860008772">
          <link role="classifier:3" targetNodeId="2v.~String" />
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="7241381882860008773">
        <property name="name:3" value="classBound" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860008774">
          <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="7241381882860008775">
        <property name="name:3" value="interfaceBounds" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860008776">
          <link role="classifier:3" targetNodeId="2.~List" />
          <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860008777">
            <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
          </node>
        </node>
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860008778">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation:3" id="7241381882860008779">
          <link role="baseMethodDeclaration:3" targetNodeId="7241381882860008707" resolveInfo="ASMTypeVariable" />
          <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7241381882860008780">
            <link role="variableDeclaration:3" targetNodeId="7241381882860008771" resolveInfo="name" />
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860008781">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="7241381882860008782">
            <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860008783">
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860008784">
                <link role="fieldDeclaration:3" targetNodeId="7241381882860008762" resolveInfo="myClassBound" />
              </node>
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860008785" />
            </node>
            <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7241381882860008786">
              <link role="variableDeclaration:3" targetNodeId="7241381882860008773" resolveInfo="classBound" />
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860008787">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="7241381882860008788">
            <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860008789">
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860008790">
                <link role="fieldDeclaration:3" targetNodeId="7241381882860008765" resolveInfo="myInterfaceBounds" />
              </node>
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860008791" />
            </node>
            <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression:3" id="8278838086631111981">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.CastExpression:3" id="8278838086631111982">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression:3" id="8278838086631111983">
                  <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="8278838086631111984">
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="8278838086631111985">
                      <link role="variableDeclaration:3" targetNodeId="7241381882860008775" resolveInfo="interfaceBounds" />
                    </node>
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="8278838086631111986">
                      <link role="baseMethodDeclaration:3" targetNodeId="2.~List.isEmpty():boolean" resolveInfo="isEmpty" />
                    </node>
                  </node>
                  <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="8278838086631111987">
                    <link role="classConcept:3" targetNodeId="2.~Collections" resolveInfo="Collections" />
                    <link role="baseMethodDeclaration:3" targetNodeId="2.~Collections.emptyList():java.util.List" resolveInfo="emptyList" />
                  </node>
                  <node role="ifFalse:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="8278838086631111988">
                    <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="8278838086631111989">
                      <link role="baseMethodDeclaration:3" targetNodeId="2.~ArrayList.&lt;init&gt;(java.util.Collection)" resolveInfo="ArrayList" />
                      <node role="typeParameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="8278838086631111990">
                        <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
                      </node>
                      <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="8278838086631111991">
                        <link role="variableDeclaration:3" targetNodeId="7241381882860008775" resolveInfo="interfaceBounds" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="8278838086631111992">
                  <link role="classifier:3" targetNodeId="2.~List" resolveInfo="List" />
                  <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="8278838086631111993">
                    <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860008801">
      <property name="name:3" value="getClassBound" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860008802" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860008803">
        <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860008804">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860008805">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860008806">
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860008807">
              <link role="fieldDeclaration:3" targetNodeId="7241381882860008762" resolveInfo="myClassBound" />
            </node>
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860008808" />
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860008809">
      <property name="name:3" value="getInterfaceBounds" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860008810" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860008811">
        <link role="classifier:3" targetNodeId="2.~List" />
        <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860008812">
          <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
        </node>
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860008813">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860008814">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="7241381882860008815">
            <link role="classConcept:3" targetNodeId="2.~Collections" />
            <link role="baseMethodDeclaration:3" targetNodeId="2.~Collections.unmodifiableList(java.util.List):java.util.List" />
            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860008816">
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860008817">
                <link role="fieldDeclaration:3" targetNodeId="7241381882860008765" resolveInfo="myInterfaceBounds" />
              </node>
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860008818" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="7241381882860008819">
    <property name="name:3" value="ASMExtendsType" />
    <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860008820" />
    <node role="superclass:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860008821">
      <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
    </node>
    <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="7241381882860008822">
      <property name="name:3" value="myBase" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860008823">
        <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="7241381882860008824" />
    </node>
    <node role="constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="7241381882860008825">
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860008826" />
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="7241381882860008827">
        <property name="name:3" value="base" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860008828">
          <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
        </node>
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860008829">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860008830">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="7241381882860008831">
            <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860008832">
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860008833">
                <link role="fieldDeclaration:3" targetNodeId="7241381882860008822" resolveInfo="myBase" />
              </node>
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860008834" />
            </node>
            <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7241381882860008835">
              <link role="variableDeclaration:3" targetNodeId="7241381882860008827" resolveInfo="base" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860008836">
      <property name="name:3" value="getBase" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860008837" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860008838">
        <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860008839">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860008840">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860008841">
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860008842">
              <link role="fieldDeclaration:3" targetNodeId="7241381882860008822" resolveInfo="myBase" />
            </node>
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860008843" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="7241381882860009267">
    <property name="name:3" value="ASMParameterizedType" />
    <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860009268" />
    <node role="superclass:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009269">
      <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
    </node>
    <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="7241381882860009270">
      <property name="name:3" value="myRawType" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009271">
        <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="7241381882860009272" />
    </node>
    <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="7241381882860009273">
      <property name="name:3" value="myTypeArguments" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009274">
        <link role="classifier:3" targetNodeId="2.~List" />
        <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009275">
          <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
        </node>
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="7241381882860009276" />
    </node>
    <node role="constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="7241381882860009277">
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860009278" />
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="7241381882860009279">
        <property name="name:3" value="rawType" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009280">
          <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="7241381882860009281">
        <property name="name:3" value="typeArguments" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009282">
          <link role="classifier:3" targetNodeId="2.~List" />
          <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.UpperBoundType:3" id="7241381882860009283">
            <node role="bound:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009284">
              <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
            </node>
          </node>
        </node>
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860009285">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860009286">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="7241381882860009287">
            <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009288">
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009289">
                <link role="fieldDeclaration:3" targetNodeId="7241381882860009270" resolveInfo="myRawType" />
              </node>
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860009290" />
            </node>
            <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7241381882860009291">
              <link role="variableDeclaration:3" targetNodeId="7241381882860009279" resolveInfo="rawType" />
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860009292">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="7241381882860009293">
            <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009294">
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009295">
                <link role="fieldDeclaration:3" targetNodeId="7241381882860009273" resolveInfo="myTypeArguments" />
              </node>
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860009296" />
            </node>
            <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860009297">
              <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860009298">
                <link role="baseMethodDeclaration:3" targetNodeId="2.~ArrayList.&lt;init&gt;(java.util.Collection)" />
                <node role="typeParameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009299">
                  <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
                </node>
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression:3" id="8278838086631112076">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.CastExpression:3" id="8278838086631112077">
                    <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression:3" id="8278838086631112078">
                      <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="8278838086631112079">
                        <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="8278838086631112080">
                          <link role="variableDeclaration:3" targetNodeId="7241381882860009281" resolveInfo="typeArguments" />
                        </node>
                        <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="8278838086631112081" />
                      </node>
                      <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="8278838086631112082">
                        <link role="classConcept:3" targetNodeId="2.~Collections" resolveInfo="Collections" />
                        <link role="baseMethodDeclaration:3" targetNodeId="2.~Collections.emptyList():java.util.List" resolveInfo="emptyList" />
                      </node>
                      <node role="ifFalse:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="8278838086631112083">
                        <link role="variableDeclaration:3" targetNodeId="7241381882860009281" resolveInfo="typeArguments" />
                      </node>
                    </node>
                    <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="8278838086631112084">
                      <link role="classifier:3" targetNodeId="2.~Collection" resolveInfo="Collection" />
                      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.UpperBoundType:3" id="8278838086631112085">
                        <node role="bound:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="8278838086631112086">
                          <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
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
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860009306">
      <property name="name:3" value="getRawType" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860009307" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009308">
        <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860009309">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860009310">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009311">
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009312">
              <link role="fieldDeclaration:3" targetNodeId="7241381882860009270" resolveInfo="myRawType" />
            </node>
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860009313" />
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860009314">
      <property name="name:3" value="addArgument" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="7241381882860009315" />
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="7241381882860009316">
        <property name="name:3" value="t" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009317">
          <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
        </node>
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860009318">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860009319">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009320">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009321">
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009322">
                <link role="fieldDeclaration:3" targetNodeId="7241381882860009273" resolveInfo="myTypeArguments" />
              </node>
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860009323" />
            </node>
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860009324">
              <link role="baseMethodDeclaration:3" targetNodeId="2.~List.add(java.lang.Object):boolean" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7241381882860009325">
                <link role="variableDeclaration:3" targetNodeId="7241381882860009316" resolveInfo="t" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860009326">
      <property name="name:3" value="removeArgument" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="7241381882860009327" />
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="7241381882860009328">
        <property name="name:3" value="t" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009329">
          <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
        </node>
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860009330">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860009331">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009332">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009333">
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009334">
                <link role="fieldDeclaration:3" targetNodeId="7241381882860009273" resolveInfo="myTypeArguments" />
              </node>
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860009335" />
            </node>
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860009336">
              <link role="baseMethodDeclaration:3" targetNodeId="2.~List.remove(java.lang.Object):boolean" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7241381882860009337">
                <link role="variableDeclaration:3" targetNodeId="7241381882860009328" resolveInfo="t" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860009338">
      <property name="name:3" value="getActualTypeArguments" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860009339" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009340">
        <link role="classifier:3" targetNodeId="2.~List" />
        <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009341">
          <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
        </node>
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860009342">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860009343">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="7241381882860009344">
            <link role="classConcept:3" targetNodeId="2.~Collections" />
            <link role="baseMethodDeclaration:3" targetNodeId="2.~Collections.unmodifiableList(java.util.List):java.util.List" />
            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009345">
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009346">
                <link role="fieldDeclaration:3" targetNodeId="7241381882860009273" resolveInfo="myTypeArguments" />
              </node>
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860009347" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860009348">
      <property name="name:3" value="toString" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860009349" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009350">
        <link role="classifier:3" targetNodeId="2v.~String" />
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860009351">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860009352">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.PlusExpression:3" id="7241381882860009353">
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.PlusExpression:3" id="7241381882860009354">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="7241381882860009355">
                <property name="value:3" value="" />
              </node>
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009356">
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009357">
                  <link role="fieldDeclaration:3" targetNodeId="7241381882860009270" resolveInfo="myRawType" />
                </node>
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860009358" />
              </node>
            </node>
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009359">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860009360" />
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860009361">
                <link role="baseMethodDeclaration:3" targetNodeId="7241381882860009338" resolveInfo="getActualTypeArguments" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="7241381882860009362">
    <property name="name:3" value="ASMClass" />
    <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860009363" />
    <node role="staticInnerClassifiers:3" type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="7241381882860009364">
      <property name="name:3" value="ClassifierSignatureVisitor_old" />
      <property name="nonStatic:3" value="true" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="7241381882860009365" />
      <node role="superclass:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009366">
        <link role="classifier:3" targetNodeId="7241381882860001929" resolveInfo="SignatureVisitorAdapter" />
      </node>
      <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="7241381882860009367">
        <property name="name:3" value="myName" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009368">
          <link role="classifier:3" targetNodeId="2v.~String" />
        </node>
      </node>
      <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="7241381882860009369">
        <property name="name:3" value="myParameters" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009370">
          <link role="classifier:3" targetNodeId="2.~List" />
          <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009371">
            <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
          </node>
        </node>
        <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860009932">
          <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860009933">
            <link role="baseMethodDeclaration:3" targetNodeId="2.~ArrayList.&lt;init&gt;()" />
            <node role="typeParameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009934">
              <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
            </node>
          </node>
        </node>
      </node>
      <node role="constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="7241381882860009372">
        <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="7241381882860009373" />
        <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860009935" />
      </node>
      <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860009374">
        <property name="name:3" value="visitTypeArgument" />
        <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860009375" />
        <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009376">
          <link role="classifier:3" targetNodeId="5.~SignatureVisitor" />
        </node>
        <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="7241381882860009377">
          <property name="name:3" value="wildcard" />
          <node role="type:3" type="jetbrains.mps.baseLanguage.structure.CharType:3" id="7241381882860009378" />
        </node>
        <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860009936">
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860009937">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860009938">
              <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator:3" id="7241381882860009939">
                <node role="cls:3" type="jetbrains.mps.baseLanguage.structure.AnonymousClass:3" id="7241381882860009940">
                  <property name="name:3" value="" />
                  <link role="classifier:3" targetNodeId="7241381882860001929" resolveInfo="SignatureVisitorAdapter" />
                  <link role="baseMethodDeclaration:3" targetNodeId="7241381882860007075" resolveInfo="SignatureVisitorAdapter" />
                  <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860009941">
                    <property name="name:3" value="visitClassType" />
                    <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860009942" />
                    <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="7241381882860009943" />
                    <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="7241381882860009944">
                      <property name="name:3" value="name" />
                      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009945">
                        <link role="classifier:3" targetNodeId="2v.~String" />
                      </node>
                    </node>
                    <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860009962">
                      <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860009963">
                        <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009964">
                          <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009965">
                            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009966">
                              <link role="fieldDeclaration:3" targetNodeId="7241381882860009369" resolveInfo="myParameters" />
                            </node>
                            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860009967">
                              <link role="classConcept:3" targetNodeId="7241381882860009364" resolveInfo="ASMClass.ClassifierSignatureVisitor_old" />
                            </node>
                          </node>
                          <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860009968">
                            <link role="baseMethodDeclaration:3" targetNodeId="2.~List.add(java.lang.Object):boolean" />
                            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860009969">
                              <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860009970">
                                <link role="baseMethodDeclaration:3" targetNodeId="7241381882860002182" resolveInfo="ASMClassType" />
                                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009971">
                                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7241381882860009972">
                                    <link role="variableDeclaration:3" targetNodeId="7241381882860009944" resolveInfo="name" />
                                  </node>
                                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860009973">
                                    <link role="baseMethodDeclaration:3" targetNodeId="2v.~String.replace(char,char):java.lang.String" />
                                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.CharConstant:3" id="7241381882860009974">
                                      <property name="charConstant:3" value="/" />
                                    </node>
                                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.CharConstant:3" id="7241381882860009975">
                                      <property name="charConstant:3" value="." />
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
                  <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860009946">
                    <property name="name:3" value="visitTypeVariable" />
                    <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860009947" />
                    <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="7241381882860009948" />
                    <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="7241381882860009949">
                      <property name="name:3" value="name" />
                      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009950">
                        <link role="classifier:3" targetNodeId="2v.~String" />
                      </node>
                    </node>
                    <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860009976">
                      <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860009977">
                        <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009978">
                          <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009979">
                            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009980">
                              <link role="fieldDeclaration:3" targetNodeId="7241381882860009369" resolveInfo="myParameters" />
                            </node>
                            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860009981">
                              <link role="classConcept:3" targetNodeId="7241381882860009364" resolveInfo="ASMClass.ClassifierSignatureVisitor_old" />
                            </node>
                          </node>
                          <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860009982">
                            <link role="baseMethodDeclaration:3" targetNodeId="2.~List.add(java.lang.Object):boolean" />
                            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860009983">
                              <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860009984">
                                <link role="baseMethodDeclaration:3" targetNodeId="7241381882860008707" resolveInfo="ASMTypeVariable" />
                                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7241381882860009985">
                                  <link role="variableDeclaration:3" targetNodeId="7241381882860009949" resolveInfo="name" />
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
      </node>
      <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860009379">
        <property name="name:3" value="visitClassType" />
        <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860009380" />
        <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="7241381882860009381" />
        <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="7241381882860009382">
          <property name="name:3" value="name" />
          <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009383">
            <link role="classifier:3" targetNodeId="2v.~String" />
          </node>
        </node>
        <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860009951">
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860009952">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="7241381882860009953">
              <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009954">
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009955">
                  <link role="fieldDeclaration:3" targetNodeId="7241381882860009367" resolveInfo="myName" />
                </node>
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860009956" />
              </node>
              <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009957">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7241381882860009958">
                  <link role="variableDeclaration:3" targetNodeId="7241381882860009382" resolveInfo="name" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860009959">
                  <link role="baseMethodDeclaration:3" targetNodeId="2v.~String.replace(char,char):java.lang.String" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.CharConstant:3" id="7241381882860009960">
                    <property name="charConstant:3" value="/" />
                  </node>
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.CharConstant:3" id="7241381882860009961">
                    <property name="charConstant:3" value="." />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="staticInnerClassifiers:3" type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="7241381882860002145">
      <property name="name:3" value="ClassifierSignatureVisitor" />
      <property name="nonStatic:3" value="true" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="7241381882860009384" />
      <node role="superclass:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009385">
        <link role="classifier:3" targetNodeId="7241381882860001929" resolveInfo="SignatureVisitorAdapter" />
      </node>
      <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="7241381882860009386">
        <property name="name:3" value="myName" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009387">
          <link role="classifier:3" targetNodeId="2v.~String" />
        </node>
      </node>
      <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="7241381882860009388">
        <property name="name:3" value="myParameters" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009389">
          <link role="classifier:3" targetNodeId="2.~List" />
          <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009390">
            <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
          </node>
        </node>
      </node>
      <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="7241381882860009391">
        <property name="name:3" value="myParentVisitor" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009392">
          <link role="classifier:3" targetNodeId="7241381882860002145" resolveInfo="ASMClass.ClassifierSignatureVisitor" />
        </node>
        <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="7241381882860009986" />
      </node>
      <node role="constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="7241381882860009393">
        <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860009394" />
        <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860009987" />
      </node>
      <node role="constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="7241381882860009395">
        <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860009396" />
        <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="7241381882860009397">
          <property name="name:3" value="parentVisitor" />
          <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009398">
            <link role="classifier:3" targetNodeId="7241381882860002145" resolveInfo="ASMClass.ClassifierSignatureVisitor" />
          </node>
        </node>
        <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860009988">
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860009989">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="7241381882860009990">
              <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009991">
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009992">
                  <link role="fieldDeclaration:3" targetNodeId="7241381882860009391" resolveInfo="myParentVisitor" />
                </node>
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860009993" />
              </node>
              <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7241381882860009994">
                <link role="variableDeclaration:3" targetNodeId="7241381882860009397" resolveInfo="parentVisitor" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860009399">
        <property name="name:3" value="visitTypeArgument" />
        <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860009400" />
        <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009401">
          <link role="classifier:3" targetNodeId="5.~SignatureVisitor" />
        </node>
        <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="7241381882860009402">
          <property name="name:3" value="wildcard" />
          <node role="type:3" type="jetbrains.mps.baseLanguage.structure.CharType:3" id="7241381882860009403" />
        </node>
        <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860009995">
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860009996">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860009997">
              <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator:3" id="7241381882860009998">
                <node role="cls:3" type="jetbrains.mps.baseLanguage.structure.AnonymousClass:3" id="7241381882860009999">
                  <property name="name:3" value="" />
                  <link role="classifier:3" targetNodeId="7241381882860002145" resolveInfo="ASMClass.ClassifierSignatureVisitor" />
                  <link role="baseMethodDeclaration:3" targetNodeId="7241381882860009395" resolveInfo="ASMClass.ClassifierSignatureVisitor" />
                  <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860010000">
                    <property name="name:3" value="visitTypeVariable" />
                    <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860010001" />
                    <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="7241381882860010002" />
                    <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="7241381882860010003">
                      <property name="name:3" value="name" />
                      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860010004">
                        <link role="classifier:3" targetNodeId="2v.~String" />
                      </node>
                    </node>
                    <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860010020">
                      <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="7241381882860010021">
                        <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="7241381882860010022">
                          <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860010023">
                            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860010024">
                              <link role="fieldDeclaration:3" targetNodeId="7241381882860009391" resolveInfo="myParentVisitor" />
                            </node>
                            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860010025" />
                          </node>
                          <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="7241381882860010026" />
                        </node>
                        <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860010027">
                          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="7241381882860010028">
                            <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="7241381882860010029">
                              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860010030">
                                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860010031">
                                  <link role="fieldDeclaration:3" targetNodeId="7241381882860009388" resolveInfo="myParameters" />
                                </node>
                                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860010032">
                                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860010033">
                                    <link role="fieldDeclaration:3" targetNodeId="7241381882860009391" resolveInfo="myParentVisitor" />
                                  </node>
                                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860010034" />
                                </node>
                              </node>
                              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="7241381882860010035" />
                            </node>
                            <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860010036">
                              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860010037">
                                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="7241381882860010038">
                                  <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860010039">
                                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860010040">
                                      <link role="fieldDeclaration:3" targetNodeId="7241381882860009388" resolveInfo="myParameters" />
                                    </node>
                                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860010041">
                                      <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860010042">
                                        <link role="fieldDeclaration:3" targetNodeId="7241381882860009391" resolveInfo="myParentVisitor" />
                                      </node>
                                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860010043" />
                                    </node>
                                  </node>
                                  <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860010044">
                                    <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860010045">
                                      <link role="baseMethodDeclaration:3" targetNodeId="2.~ArrayList.&lt;init&gt;()" />
                                      <node role="typeParameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860010046">
                                        <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860010047">
                            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860010048">
                              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860010049">
                                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860010050">
                                  <link role="fieldDeclaration:3" targetNodeId="7241381882860009388" resolveInfo="myParameters" />
                                </node>
                                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860010051">
                                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860010052">
                                    <link role="fieldDeclaration:3" targetNodeId="7241381882860009391" resolveInfo="myParentVisitor" />
                                  </node>
                                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860010053" />
                                </node>
                              </node>
                              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860010054">
                                <link role="baseMethodDeclaration:3" targetNodeId="2.~List.add(java.lang.Object):boolean" />
                                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860010055">
                                  <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860010056">
                                    <link role="baseMethodDeclaration:3" targetNodeId="7241381882860008707" resolveInfo="ASMTypeVariable" />
                                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7241381882860010057">
                                      <link role="variableDeclaration:3" targetNodeId="7241381882860010003" resolveInfo="name" />
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
                  <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860010005">
                    <property name="name:3" value="visitEnd" />
                    <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860010006" />
                    <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="7241381882860010007" />
                    <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860010058">
                      <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="7241381882860010059">
                        <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="7241381882860010060">
                          <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860010061">
                            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860010062">
                              <link role="fieldDeclaration:3" targetNodeId="7241381882860009391" resolveInfo="myParentVisitor" />
                            </node>
                            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860010063" />
                          </node>
                          <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="7241381882860010064" />
                        </node>
                        <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860010065">
                          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="7241381882860010066">
                            <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="7241381882860010067">
                              <property name="name:3" value="cls" />
                              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860010068">
                                <link role="classifier:3" targetNodeId="7241381882860002170" resolveInfo="ASMClassType" />
                              </node>
                              <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860010069">
                                <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860010070">
                                  <link role="baseMethodDeclaration:3" targetNodeId="7241381882860002182" resolveInfo="ASMClassType" />
                                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860010071">
                                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860010072">
                                      <link role="fieldDeclaration:3" targetNodeId="7241381882860009386" resolveInfo="myName" />
                                    </node>
                                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860010073" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="7241381882860010074">
                            <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="7241381882860010075">
                              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860010076">
                                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860010077">
                                  <link role="fieldDeclaration:3" targetNodeId="7241381882860009388" resolveInfo="myParameters" />
                                </node>
                                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860010078">
                                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860010079">
                                    <link role="fieldDeclaration:3" targetNodeId="7241381882860009391" resolveInfo="myParentVisitor" />
                                  </node>
                                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860010080" />
                                </node>
                              </node>
                              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="7241381882860010081" />
                            </node>
                            <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860010082">
                              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860010083">
                                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="7241381882860010084">
                                  <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860010085">
                                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860010086">
                                      <link role="fieldDeclaration:3" targetNodeId="7241381882860009388" resolveInfo="myParameters" />
                                    </node>
                                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860010087">
                                      <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860010088">
                                        <link role="fieldDeclaration:3" targetNodeId="7241381882860009391" resolveInfo="myParentVisitor" />
                                      </node>
                                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860010089" />
                                    </node>
                                  </node>
                                  <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860010090">
                                    <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860010091">
                                      <link role="baseMethodDeclaration:3" targetNodeId="2.~ArrayList.&lt;init&gt;()" />
                                      <node role="typeParameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860010092">
                                        <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860010093">
                            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860010094">
                              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860010095">
                                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860010096">
                                  <link role="fieldDeclaration:3" targetNodeId="7241381882860009388" resolveInfo="myParameters" />
                                </node>
                                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860010097">
                                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860010098">
                                    <link role="fieldDeclaration:3" targetNodeId="7241381882860009391" resolveInfo="myParentVisitor" />
                                  </node>
                                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860010099" />
                                </node>
                              </node>
                              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860010100">
                                <link role="baseMethodDeclaration:3" targetNodeId="2.~List.add(java.lang.Object):boolean" />
                                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860010101">
                                  <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860010102">
                                    <link role="baseMethodDeclaration:3" targetNodeId="7241381882860009277" resolveInfo="ASMParameterizedType" />
                                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860010103">
                                      <link role="variableDeclaration:3" targetNodeId="7241381882860010067" resolveInfo="cls" />
                                    </node>
                                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860010104">
                                      <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860010105">
                                        <link role="fieldDeclaration:3" targetNodeId="7241381882860009388" resolveInfo="myParameters" />
                                      </node>
                                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860010106" />
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
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860010008" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860009404">
        <property name="name:3" value="visitClassType" />
        <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860009405" />
        <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="7241381882860009406" />
        <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="7241381882860009407">
          <property name="name:3" value="name" />
          <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009408">
            <link role="classifier:3" targetNodeId="2v.~String" />
          </node>
        </node>
        <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860010009">
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860010010">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="7241381882860010011">
              <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860010012">
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860010013">
                  <link role="fieldDeclaration:3" targetNodeId="7241381882860009386" resolveInfo="myName" />
                </node>
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860010014" />
              </node>
              <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860010015">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7241381882860010016">
                  <link role="variableDeclaration:3" targetNodeId="7241381882860009407" resolveInfo="name" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860010017">
                  <link role="baseMethodDeclaration:3" targetNodeId="2v.~String.replace(char,char):java.lang.String" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.CharConstant:3" id="7241381882860010018">
                    <property name="charConstant:3" value="/" />
                  </node>
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.CharConstant:3" id="7241381882860010019">
                    <property name="charConstant:3" value="." />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="7241381882860009409">
      <property name="name:3" value="myNode" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009410">
        <link role="classifier:3" targetNodeId="1.~ClassNode" />
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="7241381882860009411" />
    </node>
    <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="7241381882860009412">
      <property name="name:3" value="myTypeVariables" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009413">
        <link role="classifier:3" targetNodeId="2.~List" />
        <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009414">
          <link role="classifier:3" targetNodeId="7241381882860008701" resolveInfo="ASMTypeVariable" />
        </node>
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="7241381882860009415" />
      <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860009416">
        <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860009417">
          <link role="baseMethodDeclaration:3" targetNodeId="2.~ArrayList.&lt;init&gt;()" />
          <node role="typeParameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009418">
            <link role="classifier:3" targetNodeId="7241381882860008701" resolveInfo="ASMTypeVariable" />
          </node>
        </node>
      </node>
    </node>
    <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="7241381882860009419">
      <property name="name:3" value="myGenericInterfaces" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009420">
        <link role="classifier:3" targetNodeId="2.~List" />
        <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009421">
          <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
        </node>
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="7241381882860009422" />
      <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860009423">
        <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860009424">
          <link role="baseMethodDeclaration:3" targetNodeId="2.~ArrayList.&lt;init&gt;()" />
          <node role="typeParameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009425">
            <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
          </node>
        </node>
      </node>
    </node>
    <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="7241381882860009426">
      <property name="name:3" value="myFields" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009427">
        <link role="classifier:3" targetNodeId="2.~List" />
        <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009428">
          <link role="classifier:3" targetNodeId="7241381882860006793" resolveInfo="ASMField" />
        </node>
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="7241381882860009429" />
      <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860009430">
        <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860009431">
          <link role="baseMethodDeclaration:3" targetNodeId="2.~ArrayList.&lt;init&gt;()" />
          <node role="typeParameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009432">
            <link role="classifier:3" targetNodeId="7241381882860006793" resolveInfo="ASMField" />
          </node>
        </node>
      </node>
    </node>
    <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="7241381882860009433">
      <property name="name:3" value="myMethods" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009434">
        <link role="classifier:3" targetNodeId="2.~List" />
        <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009435">
          <link role="classifier:3" targetNodeId="7241381882860005690" resolveInfo="ASMMethod" />
        </node>
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="7241381882860009436" />
      <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860009437">
        <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860009438">
          <link role="baseMethodDeclaration:3" targetNodeId="2.~ArrayList.&lt;init&gt;()" />
          <node role="typeParameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009439">
            <link role="classifier:3" targetNodeId="7241381882860005690" resolveInfo="ASMMethod" />
          </node>
        </node>
      </node>
    </node>
    <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="7241381882860009440">
      <property name="name:3" value="myConstructors" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009441">
        <link role="classifier:3" targetNodeId="2.~List" />
        <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009442">
          <link role="classifier:3" targetNodeId="7241381882860005690" resolveInfo="ASMMethod" />
        </node>
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="7241381882860009443" />
      <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860009444">
        <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860009445">
          <link role="baseMethodDeclaration:3" targetNodeId="2.~ArrayList.&lt;init&gt;()" />
          <node role="typeParameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009446">
            <link role="classifier:3" targetNodeId="7241381882860005690" resolveInfo="ASMMethod" />
          </node>
        </node>
      </node>
    </node>
    <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="7241381882860009447">
      <property name="name:3" value="myAnnotations" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009448">
        <link role="classifier:3" targetNodeId="2.~List" />
        <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009449">
          <link role="classifier:3" targetNodeId="3.~ASMAnnotation" />
        </node>
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="7241381882860009450" />
    </node>
    <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="7241381882860009451">
      <property name="name:3" value="myGenericSuperclass" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009452">
        <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="7241381882860009453" />
    </node>
    <node role="constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="7241381882860009454">
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860009455" />
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="7241381882860009456">
        <property name="name:3" value="reader" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009457">
          <link role="classifier:3" targetNodeId="4.~ClassReader" />
        </node>
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860009458">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860009459">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="7241381882860009460">
            <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009461">
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009462">
                <link role="fieldDeclaration:3" targetNodeId="7241381882860009409" resolveInfo="myNode" />
              </node>
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860009463" />
            </node>
            <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860009464">
              <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860009465">
                <link role="baseMethodDeclaration:3" targetNodeId="1.~ClassNode.&lt;init&gt;()" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860009466">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009467">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7241381882860009468">
              <link role="variableDeclaration:3" targetNodeId="7241381882860009456" resolveInfo="reader" />
            </node>
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860009469">
              <link role="baseMethodDeclaration:3" targetNodeId="4.~ClassReader.accept(org.objectweb.asm.ClassVisitor,int):void" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009470">
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009471">
                  <link role="fieldDeclaration:3" targetNodeId="7241381882860009409" resolveInfo="myNode" />
                </node>
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860009472" />
              </node>
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.BitwiseAndExpression:3" id="7241381882860009473">
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="7241381882860009474">
                  <link role="classifier:3" targetNodeId="4.~ClassReader" />
                  <link role="variableDeclaration:3" targetNodeId="4.~ClassReader.SKIP_CODE" />
                </node>
                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="7241381882860009475">
                  <link role="classifier:3" targetNodeId="4.~ClassReader" />
                  <link role="variableDeclaration:3" targetNodeId="4.~ClassReader.SKIP_DEBUG" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="7241381882860009476">
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="7241381882860009477">
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009478">
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009479">
                <link role="fieldDeclaration:3" targetNodeId="1.~ClassNode.signature" />
              </node>
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009480">
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009481">
                  <link role="fieldDeclaration:3" targetNodeId="7241381882860009409" resolveInfo="myNode" />
                </node>
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860009482" />
              </node>
            </node>
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="7241381882860009483" />
          </node>
          <node role="ifFalseStatement:3" type="jetbrains.mps.baseLanguage.structure.BlockStatement:3" id="7241381882860009484">
            <node role="statements:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860009485">
              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="7241381882860009486">
                <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="7241381882860009487">
                  <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009488">
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009489">
                      <link role="fieldDeclaration:3" targetNodeId="1.~ClassNode.superName" />
                    </node>
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009490">
                      <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009491">
                        <link role="fieldDeclaration:3" targetNodeId="7241381882860009409" resolveInfo="myNode" />
                      </node>
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860009492" />
                    </node>
                  </node>
                  <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="7241381882860009493" />
                </node>
                <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860009494">
                  <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860009495">
                    <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="7241381882860009496">
                      <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009497">
                        <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009498">
                          <link role="fieldDeclaration:3" targetNodeId="7241381882860009451" resolveInfo="myGenericSuperclass" />
                        </node>
                        <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860009499" />
                      </node>
                      <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860009500">
                        <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860009501">
                          <link role="baseMethodDeclaration:3" targetNodeId="7241381882860002182" resolveInfo="ASMClassType" />
                          <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009502">
                            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009503">
                              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009504">
                                <link role="fieldDeclaration:3" targetNodeId="1.~ClassNode.superName" />
                              </node>
                              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009505">
                                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009506">
                                  <link role="fieldDeclaration:3" targetNodeId="7241381882860009409" resolveInfo="myNode" />
                                </node>
                                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860009507" />
                              </node>
                            </node>
                            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860009508">
                              <link role="baseMethodDeclaration:3" targetNodeId="2v.~String.replace(char,char):java.lang.String" />
                              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.CharConstant:3" id="7241381882860009509">
                                <property name="charConstant:3" value="/" />
                              </node>
                              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.CharConstant:3" id="7241381882860009510">
                                <property name="charConstant:3" value="." />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ForeachStatement:3" id="7241381882860009511">
                <node role="iterable:3" type="jetbrains.mps.baseLanguage.structure.CastExpression:3" id="7241381882860009512">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009513">
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009514">
                      <link role="fieldDeclaration:3" targetNodeId="1.~ClassNode.interfaces" />
                    </node>
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009515">
                      <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009516">
                        <link role="fieldDeclaration:3" targetNodeId="7241381882860009409" resolveInfo="myNode" />
                      </node>
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860009517" />
                    </node>
                  </node>
                  <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009518">
                    <link role="classifier:3" targetNodeId="2.~List" />
                    <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009519">
                      <link role="classifier:3" targetNodeId="2v.~String" />
                    </node>
                  </node>
                </node>
                <node role="variable:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="7241381882860009520">
                  <property name="name:3" value="intfc" />
                  <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009521">
                    <link role="classifier:3" targetNodeId="2v.~String" />
                  </node>
                </node>
                <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860009522">
                  <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860009523">
                    <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009524">
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009525">
                        <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009526">
                          <link role="fieldDeclaration:3" targetNodeId="7241381882860009419" resolveInfo="myGenericInterfaces" />
                        </node>
                        <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860009527" />
                      </node>
                      <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860009528">
                        <link role="baseMethodDeclaration:3" targetNodeId="2.~List.add(java.lang.Object):boolean" />
                        <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860009529">
                          <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860009530">
                            <link role="baseMethodDeclaration:3" targetNodeId="7241381882860002182" resolveInfo="ASMClassType" />
                            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009531">
                              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860009532">
                                <link role="variableDeclaration:3" targetNodeId="7241381882860009520" resolveInfo="intfc" />
                              </node>
                              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860009533">
                                <link role="baseMethodDeclaration:3" targetNodeId="2v.~String.replace(char,char):java.lang.String" />
                                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.CharConstant:3" id="7241381882860009534">
                                  <property name="charConstant:3" value="/" />
                                </node>
                                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.CharConstant:3" id="7241381882860009535">
                                  <property name="charConstant:3" value="." />
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
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860009536">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="7241381882860009537">
              <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="7241381882860009538">
                <property name="name:3" value="signReader" />
                <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009539">
                  <link role="classifier:3" targetNodeId="5.~SignatureReader" />
                </node>
                <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860009540">
                  <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860009541">
                    <link role="baseMethodDeclaration:3" targetNodeId="5.~SignatureReader.&lt;init&gt;(java.lang.String)" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009542">
                      <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009543">
                        <link role="fieldDeclaration:3" targetNodeId="1.~ClassNode.signature" />
                      </node>
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009544">
                        <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009545">
                          <link role="fieldDeclaration:3" targetNodeId="7241381882860009409" resolveInfo="myNode" />
                        </node>
                        <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860009546" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860009547">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009548">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860009549">
                  <link role="variableDeclaration:3" targetNodeId="7241381882860009538" resolveInfo="signReader" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860009550">
                  <link role="baseMethodDeclaration:3" targetNodeId="5.~SignatureReader.accept(org.objectweb.asm.signature.SignatureVisitor):void" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860009551">
                    <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator:3" id="7241381882860009552">
                      <node role="cls:3" type="jetbrains.mps.baseLanguage.structure.AnonymousClass:3" id="7241381882860009553">
                        <property name="name:3" value="" />
                        <link role="classifier:3" targetNodeId="7241381882860001929" resolveInfo="SignatureVisitorAdapter" />
                        <link role="baseMethodDeclaration:3" targetNodeId="7241381882860007075" resolveInfo="SignatureVisitorAdapter" />
                        <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860009554">
                          <property name="name:3" value="visitSuperclass" />
                          <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860009555" />
                          <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009556">
                            <link role="classifier:3" targetNodeId="5.~SignatureVisitor" />
                          </node>
                          <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860010107">
                            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860010108">
                              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860010109">
                                <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator:3" id="7241381882860010110">
                                  <node role="cls:3" type="jetbrains.mps.baseLanguage.structure.AnonymousClass:3" id="7241381882860010111">
                                    <property name="name:3" value="" />
                                    <link role="classifier:3" targetNodeId="7241381882860002145" resolveInfo="ASMClass.ClassifierSignatureVisitor" />
                                    <link role="baseMethodDeclaration:3" targetNodeId="7241381882860009393" resolveInfo="ASMClass.ClassifierSignatureVisitor" />
                                    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860010112">
                                      <property name="name:3" value="visitEnd" />
                                      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860010113" />
                                      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="7241381882860010114" />
                                      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860010123">
                                        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="7241381882860010124">
                                          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="7241381882860010125">
                                            <property name="name:3" value="cls" />
                                            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860010126">
                                              <link role="classifier:3" targetNodeId="7241381882860002170" resolveInfo="ASMClassType" />
                                            </node>
                                            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860010127">
                                              <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860010128">
                                                <link role="baseMethodDeclaration:3" targetNodeId="7241381882860002182" resolveInfo="ASMClassType" />
                                                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860010129">
                                                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860010130">
                                                    <link role="fieldDeclaration:3" targetNodeId="7241381882860009386" resolveInfo="myName" />
                                                  </node>
                                                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860010131" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860010132">
                                          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="7241381882860010133">
                                            <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860010134">
                                              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860010135">
                                                <link role="fieldDeclaration:3" targetNodeId="7241381882860009451" resolveInfo="myGenericSuperclass" />
                                              </node>
                                              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860010136">
                                                <link role="classConcept:3" targetNodeId="7241381882860009362" resolveInfo="ASMClass" />
                                              </node>
                                            </node>
                                            <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860010137">
                                              <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860010138">
                                                <link role="baseMethodDeclaration:3" targetNodeId="7241381882860009277" resolveInfo="ASMParameterizedType" />
                                                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860010139">
                                                  <link role="variableDeclaration:3" targetNodeId="7241381882860010125" resolveInfo="cls" />
                                                </node>
                                                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860010140">
                                                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860010141">
                                                    <link role="fieldDeclaration:3" targetNodeId="7241381882860009388" resolveInfo="myParameters" />
                                                  </node>
                                                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860010142" />
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
                        <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860009557">
                          <property name="name:3" value="visitInterface" />
                          <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860009558" />
                          <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009559">
                            <link role="classifier:3" targetNodeId="5.~SignatureVisitor" />
                          </node>
                          <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860010115">
                            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860010116">
                              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860010117">
                                <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator:3" id="7241381882860010118">
                                  <node role="cls:3" type="jetbrains.mps.baseLanguage.structure.AnonymousClass:3" id="7241381882860010119">
                                    <property name="name:3" value="" />
                                    <link role="classifier:3" targetNodeId="7241381882860002145" resolveInfo="ASMClass.ClassifierSignatureVisitor" />
                                    <link role="baseMethodDeclaration:3" targetNodeId="7241381882860009393" resolveInfo="ASMClass.ClassifierSignatureVisitor" />
                                    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860010120">
                                      <property name="name:3" value="visitEnd" />
                                      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860010121" />
                                      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="7241381882860010122" />
                                      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860010143">
                                        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="7241381882860010144">
                                          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="7241381882860010145">
                                            <property name="name:3" value="cls" />
                                            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860010146">
                                              <link role="classifier:3" targetNodeId="7241381882860002170" resolveInfo="ASMClassType" />
                                            </node>
                                            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860010147">
                                              <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860010148">
                                                <link role="baseMethodDeclaration:3" targetNodeId="7241381882860002182" resolveInfo="ASMClassType" />
                                                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860010149">
                                                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860010150">
                                                    <link role="fieldDeclaration:3" targetNodeId="7241381882860009386" resolveInfo="myName" />
                                                  </node>
                                                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860010151" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860010152">
                                          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860010153">
                                            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860010154">
                                              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860010155">
                                                <link role="fieldDeclaration:3" targetNodeId="7241381882860009419" resolveInfo="myGenericInterfaces" />
                                              </node>
                                              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860010156">
                                                <link role="classConcept:3" targetNodeId="7241381882860009362" resolveInfo="ASMClass" />
                                              </node>
                                            </node>
                                            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860010157">
                                              <link role="baseMethodDeclaration:3" targetNodeId="2.~List.add(java.lang.Object):boolean" />
                                              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860010158">
                                                <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860010159">
                                                  <link role="baseMethodDeclaration:3" targetNodeId="7241381882860009277" resolveInfo="ASMParameterizedType" />
                                                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860010160">
                                                    <link role="variableDeclaration:3" targetNodeId="7241381882860010145" resolveInfo="cls" />
                                                  </node>
                                                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860010161">
                                                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860010162">
                                                      <link role="fieldDeclaration:3" targetNodeId="7241381882860009388" resolveInfo="myParameters" />
                                                    </node>
                                                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860010163" />
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
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="7241381882860009560">
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="7241381882860009561">
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009562">
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009563">
                <link role="fieldDeclaration:3" targetNodeId="1.~ClassNode.signature" />
              </node>
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009564">
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009565">
                  <link role="fieldDeclaration:3" targetNodeId="7241381882860009409" resolveInfo="myNode" />
                </node>
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860009566" />
              </node>
            </node>
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="7241381882860009567" />
          </node>
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860009568">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860009569">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009570">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009571">
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009572">
                    <link role="fieldDeclaration:3" targetNodeId="7241381882860009412" resolveInfo="myTypeVariables" />
                  </node>
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860009573" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860009574">
                  <link role="baseMethodDeclaration:3" targetNodeId="2.~List.addAll(java.util.Collection):boolean" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="7241381882860009575">
                    <link role="classConcept:3" targetNodeId="7241381882860007306" resolveInfo="TypeUtil" />
                    <link role="baseMethodDeclaration:3" targetNodeId="7241381882860007581" resolveInfo="getFormalTypeParameters" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009576">
                      <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009577">
                        <link role="fieldDeclaration:3" targetNodeId="1.~ClassNode.signature" />
                      </node>
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009578">
                        <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009579">
                          <link role="fieldDeclaration:3" targetNodeId="7241381882860009409" resolveInfo="myNode" />
                        </node>
                        <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860009580" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ForeachStatement:3" id="7241381882860009581">
          <node role="iterable:3" type="jetbrains.mps.baseLanguage.structure.CastExpression:3" id="7241381882860009582">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009583">
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009584">
                <link role="fieldDeclaration:3" targetNodeId="1.~ClassNode.fields" />
              </node>
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009585">
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009586">
                  <link role="fieldDeclaration:3" targetNodeId="7241381882860009409" resolveInfo="myNode" />
                </node>
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860009587" />
              </node>
            </node>
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009588">
              <link role="classifier:3" targetNodeId="2.~List" />
              <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009589">
                <link role="classifier:3" targetNodeId="1.~FieldNode" />
              </node>
            </node>
          </node>
          <node role="variable:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="7241381882860009590">
            <property name="name:3" value="fn" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009591">
              <link role="classifier:3" targetNodeId="1.~FieldNode" />
            </node>
          </node>
          <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860009592">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860009593">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009594">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009595">
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009596">
                    <link role="fieldDeclaration:3" targetNodeId="7241381882860009426" resolveInfo="myFields" />
                  </node>
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860009597" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860009598">
                  <link role="baseMethodDeclaration:3" targetNodeId="2.~List.add(java.lang.Object):boolean" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860009599">
                    <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860009600">
                      <link role="baseMethodDeclaration:3" targetNodeId="7241381882860006808" resolveInfo="ASMField" />
                      <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860009601">
                        <link role="variableDeclaration:3" targetNodeId="7241381882860009590" resolveInfo="fn" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ForeachStatement:3" id="7241381882860009602">
          <node role="iterable:3" type="jetbrains.mps.baseLanguage.structure.CastExpression:3" id="7241381882860009603">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009604">
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009605">
                <link role="fieldDeclaration:3" targetNodeId="1.~ClassNode.methods" />
              </node>
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009606">
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009607">
                  <link role="fieldDeclaration:3" targetNodeId="7241381882860009409" resolveInfo="myNode" />
                </node>
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860009608" />
              </node>
            </node>
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009609">
              <link role="classifier:3" targetNodeId="2.~List" />
              <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009610">
                <link role="classifier:3" targetNodeId="1.~MethodNode" />
              </node>
            </node>
          </node>
          <node role="variable:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="7241381882860009611">
            <property name="name:3" value="mn" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009612">
              <link role="classifier:3" targetNodeId="1.~MethodNode" />
            </node>
          </node>
          <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860009613">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="7241381882860009614">
              <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="7241381882860009615">
                <property name="name:3" value="am" />
                <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009616">
                  <link role="classifier:3" targetNodeId="7241381882860005690" resolveInfo="ASMMethod" />
                </node>
                <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860009617">
                  <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860009618">
                    <link role="baseMethodDeclaration:3" targetNodeId="7241381882860005734" resolveInfo="ASMMethod" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860009619">
                      <link role="variableDeclaration:3" targetNodeId="7241381882860009611" resolveInfo="mn" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="7241381882860009620">
              <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009621">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860009622">
                  <link role="variableDeclaration:3" targetNodeId="7241381882860009615" resolveInfo="am" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860009623">
                  <link role="baseMethodDeclaration:3" targetNodeId="7241381882860006548" resolveInfo="isConstructor" />
                </node>
              </node>
              <node role="ifFalseStatement:3" type="jetbrains.mps.baseLanguage.structure.BlockStatement:3" id="7241381882860009624">
                <node role="statements:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860009625">
                  <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860009626">
                    <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009627">
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009628">
                        <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009629">
                          <link role="fieldDeclaration:3" targetNodeId="7241381882860009433" resolveInfo="myMethods" />
                        </node>
                        <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860009630" />
                      </node>
                      <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860009631">
                        <link role="baseMethodDeclaration:3" targetNodeId="2.~List.add(java.lang.Object):boolean" />
                        <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860009632">
                          <link role="variableDeclaration:3" targetNodeId="7241381882860009615" resolveInfo="am" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860009633">
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860009634">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009635">
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009636">
                      <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009637">
                        <link role="fieldDeclaration:3" targetNodeId="7241381882860009440" resolveInfo="myConstructors" />
                      </node>
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860009638" />
                    </node>
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860009639">
                      <link role="baseMethodDeclaration:3" targetNodeId="2.~List.add(java.lang.Object):boolean" />
                      <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860009640">
                        <link role="variableDeclaration:3" targetNodeId="7241381882860009615" resolveInfo="am" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="7241381882860009641">
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.OrExpression:3" id="7241381882860009642">
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="7241381882860009643">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009644">
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009645">
                  <link role="fieldDeclaration:3" targetNodeId="1.~MemberNode.visibleAnnotations" />
                </node>
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009646">
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009647">
                    <link role="fieldDeclaration:3" targetNodeId="7241381882860009409" resolveInfo="myNode" />
                  </node>
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860009648" />
                </node>
              </node>
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="7241381882860009649" />
            </node>
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="7241381882860009650">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009651">
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009652">
                  <link role="fieldDeclaration:3" targetNodeId="1.~MemberNode.invisibleAnnotations" />
                </node>
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009653">
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009654">
                    <link role="fieldDeclaration:3" targetNodeId="7241381882860009409" resolveInfo="myNode" />
                  </node>
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860009655" />
                </node>
              </node>
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="7241381882860009656" />
            </node>
          </node>
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860009657">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="7241381882860009658">
              <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="7241381882860009659">
                <property name="name:3" value="size" />
                <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="7241381882860009660" />
                <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.PlusExpression:3" id="7241381882860009661">
                  <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression:3" id="7241381882860009662">
                    <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression:3" id="7241381882860009663">
                      <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="7241381882860009664">
                        <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009665">
                          <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009666">
                            <link role="fieldDeclaration:3" targetNodeId="1.~MemberNode.visibleAnnotations" />
                          </node>
                          <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009667">
                            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009668">
                              <link role="fieldDeclaration:3" targetNodeId="7241381882860009409" resolveInfo="myNode" />
                            </node>
                            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860009669" />
                          </node>
                        </node>
                        <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="7241381882860009670" />
                      </node>
                      <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009671">
                        <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009672">
                          <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009673">
                            <link role="fieldDeclaration:3" targetNodeId="1.~MemberNode.visibleAnnotations" />
                          </node>
                          <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009674">
                            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009675">
                              <link role="fieldDeclaration:3" targetNodeId="7241381882860009409" resolveInfo="myNode" />
                            </node>
                            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860009676" />
                          </node>
                        </node>
                        <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860009677">
                          <link role="baseMethodDeclaration:3" targetNodeId="2.~List.size():int" />
                        </node>
                      </node>
                      <node role="ifFalse:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="7241381882860009678">
                        <property name="value:3" value="0" />
                      </node>
                    </node>
                  </node>
                  <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression:3" id="7241381882860009679">
                    <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression:3" id="7241381882860009680">
                      <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="7241381882860009681">
                        <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009682">
                          <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009683">
                            <link role="fieldDeclaration:3" targetNodeId="1.~MemberNode.invisibleAnnotations" />
                          </node>
                          <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009684">
                            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009685">
                              <link role="fieldDeclaration:3" targetNodeId="7241381882860009409" resolveInfo="myNode" />
                            </node>
                            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860009686" />
                          </node>
                        </node>
                        <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="7241381882860009687" />
                      </node>
                      <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009688">
                        <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009689">
                          <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009690">
                            <link role="fieldDeclaration:3" targetNodeId="1.~MemberNode.invisibleAnnotations" />
                          </node>
                          <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009691">
                            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009692">
                              <link role="fieldDeclaration:3" targetNodeId="7241381882860009409" resolveInfo="myNode" />
                            </node>
                            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860009693" />
                          </node>
                        </node>
                        <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860009694">
                          <link role="baseMethodDeclaration:3" targetNodeId="2.~List.size():int" />
                        </node>
                      </node>
                      <node role="ifFalse:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="7241381882860009695">
                        <property name="value:3" value="0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860009696">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="7241381882860009697">
                <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009698">
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009699">
                    <link role="fieldDeclaration:3" targetNodeId="7241381882860009447" resolveInfo="myAnnotations" />
                  </node>
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860009700" />
                </node>
                <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860009701">
                  <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860009702">
                    <link role="baseMethodDeclaration:3" targetNodeId="2.~ArrayList.&lt;init&gt;(int)" />
                    <node role="typeParameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009703">
                      <link role="classifier:3" targetNodeId="3.~ASMAnnotation" />
                    </node>
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860009704">
                      <link role="variableDeclaration:3" targetNodeId="7241381882860009659" resolveInfo="size" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="7241381882860009705">
              <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="7241381882860009706">
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009707">
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009708">
                    <link role="fieldDeclaration:3" targetNodeId="1.~MemberNode.visibleAnnotations" />
                  </node>
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009709">
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009710">
                      <link role="fieldDeclaration:3" targetNodeId="7241381882860009409" resolveInfo="myNode" />
                    </node>
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860009711" />
                  </node>
                </node>
                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="7241381882860009712" />
              </node>
              <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860009713">
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ForeachStatement:3" id="7241381882860009714">
                  <node role="iterable:3" type="jetbrains.mps.baseLanguage.structure.CastExpression:3" id="7241381882860009715">
                    <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009716">
                      <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009717">
                        <link role="fieldDeclaration:3" targetNodeId="1.~MemberNode.visibleAnnotations" />
                      </node>
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009718">
                        <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009719">
                          <link role="fieldDeclaration:3" targetNodeId="7241381882860009409" resolveInfo="myNode" />
                        </node>
                        <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860009720" />
                      </node>
                    </node>
                    <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009721">
                      <link role="classifier:3" targetNodeId="2.~List" />
                      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009722">
                        <link role="classifier:3" targetNodeId="1.~AnnotationNode" />
                      </node>
                    </node>
                  </node>
                  <node role="variable:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="7241381882860009723">
                    <property name="name:3" value="an" />
                    <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009724">
                      <link role="classifier:3" targetNodeId="1.~AnnotationNode" />
                    </node>
                  </node>
                  <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860009725">
                    <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="7241381882860009726">
                      <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="7241381882860009727">
                        <property name="name:3" value="aa" />
                        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009728">
                          <link role="classifier:3" targetNodeId="3.~ASMAnnotation" />
                        </node>
                        <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860009729">
                          <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860009730">
                            <link role="baseMethodDeclaration:3" targetNodeId="3.~ASMAnnotation.&lt;init&gt;(org.objectweb.asm.tree.AnnotationNode)" />
                            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860009731">
                              <link role="variableDeclaration:3" targetNodeId="7241381882860009723" resolveInfo="an" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860009732">
                      <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009733">
                        <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009734">
                          <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009735">
                            <link role="fieldDeclaration:3" targetNodeId="7241381882860009447" resolveInfo="myAnnotations" />
                          </node>
                          <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860009736" />
                        </node>
                        <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860009737">
                          <link role="baseMethodDeclaration:3" targetNodeId="2.~List.add(java.lang.Object):boolean" />
                          <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860009738">
                            <link role="variableDeclaration:3" targetNodeId="7241381882860009727" resolveInfo="aa" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="7241381882860009739">
              <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="7241381882860009740">
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009741">
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009742">
                    <link role="fieldDeclaration:3" targetNodeId="1.~MemberNode.invisibleAnnotations" />
                  </node>
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009743">
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009744">
                      <link role="fieldDeclaration:3" targetNodeId="7241381882860009409" resolveInfo="myNode" />
                    </node>
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860009745" />
                  </node>
                </node>
                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="7241381882860009746" />
              </node>
              <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860009747">
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ForeachStatement:3" id="7241381882860009748">
                  <node role="iterable:3" type="jetbrains.mps.baseLanguage.structure.CastExpression:3" id="7241381882860009749">
                    <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009750">
                      <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009751">
                        <link role="fieldDeclaration:3" targetNodeId="1.~MemberNode.invisibleAnnotations" />
                      </node>
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009752">
                        <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009753">
                          <link role="fieldDeclaration:3" targetNodeId="7241381882860009409" resolveInfo="myNode" />
                        </node>
                        <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860009754" />
                      </node>
                    </node>
                    <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009755">
                      <link role="classifier:3" targetNodeId="2.~List" />
                      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009756">
                        <link role="classifier:3" targetNodeId="1.~AnnotationNode" />
                      </node>
                    </node>
                  </node>
                  <node role="variable:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="7241381882860009757">
                    <property name="name:3" value="an" />
                    <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009758">
                      <link role="classifier:3" targetNodeId="1.~AnnotationNode" />
                    </node>
                  </node>
                  <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860009759">
                    <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="7241381882860009760">
                      <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="7241381882860009761">
                        <property name="name:3" value="aa" />
                        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009762">
                          <link role="classifier:3" targetNodeId="3.~ASMAnnotation" />
                        </node>
                        <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7241381882860009763">
                          <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7241381882860009764">
                            <link role="baseMethodDeclaration:3" targetNodeId="3.~ASMAnnotation.&lt;init&gt;(org.objectweb.asm.tree.AnnotationNode)" />
                            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860009765">
                              <link role="variableDeclaration:3" targetNodeId="7241381882860009757" resolveInfo="an" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7241381882860009766">
                      <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009767">
                        <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009768">
                          <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009769">
                            <link role="fieldDeclaration:3" targetNodeId="7241381882860009447" resolveInfo="myAnnotations" />
                          </node>
                          <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860009770" />
                        </node>
                        <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860009771">
                          <link role="baseMethodDeclaration:3" targetNodeId="2.~List.add(java.lang.Object):boolean" />
                          <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7241381882860009772">
                            <link role="variableDeclaration:3" targetNodeId="7241381882860009761" resolveInfo="aa" />
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
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860009773">
      <property name="name:3" value="isAbstract" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860009774" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="7241381882860009775" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860009776">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860009777">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="7241381882860009778">
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression:3" id="7241381882860009779">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.BitwiseAndExpression:3" id="7241381882860009780">
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009781">
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009782">
                    <link role="fieldDeclaration:3" targetNodeId="1.~ClassNode.access" />
                  </node>
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009783">
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009784">
                      <link role="fieldDeclaration:3" targetNodeId="7241381882860009409" resolveInfo="myNode" />
                    </node>
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860009785" />
                  </node>
                </node>
                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="7241381882860009786">
                  <link role="classifier:3" targetNodeId="4.~Opcodes" />
                  <link role="variableDeclaration:3" targetNodeId="4.~Opcodes.ACC_ABSTRACT" />
                </node>
              </node>
            </node>
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="7241381882860009787">
              <property name="value:3" value="0" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860009788">
      <property name="name:3" value="isPublic" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860009789" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="7241381882860009790" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860009791">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860009792">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="7241381882860009793">
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression:3" id="7241381882860009794">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.BitwiseAndExpression:3" id="7241381882860009795">
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009796">
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009797">
                    <link role="fieldDeclaration:3" targetNodeId="1.~ClassNode.access" />
                  </node>
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009798">
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009799">
                      <link role="fieldDeclaration:3" targetNodeId="7241381882860009409" resolveInfo="myNode" />
                    </node>
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860009800" />
                  </node>
                </node>
                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="7241381882860009801">
                  <link role="classifier:3" targetNodeId="4.~Opcodes" />
                  <link role="variableDeclaration:3" targetNodeId="4.~Opcodes.ACC_PUBLIC" />
                </node>
              </node>
            </node>
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="7241381882860009802">
              <property name="value:3" value="0" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860009803">
      <property name="name:3" value="isFinal" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860009804" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="7241381882860009805" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860009806">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860009807">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="7241381882860009808">
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression:3" id="7241381882860009809">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.BitwiseAndExpression:3" id="7241381882860009810">
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009811">
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009812">
                    <link role="fieldDeclaration:3" targetNodeId="1.~ClassNode.access" />
                  </node>
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009813">
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009814">
                      <link role="fieldDeclaration:3" targetNodeId="7241381882860009409" resolveInfo="myNode" />
                    </node>
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860009815" />
                  </node>
                </node>
                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="7241381882860009816">
                  <link role="classifier:3" targetNodeId="4.~Opcodes" />
                  <link role="variableDeclaration:3" targetNodeId="4.~Opcodes.ACC_FINAL" />
                </node>
              </node>
            </node>
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="7241381882860009817">
              <property name="value:3" value="0" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860009818">
      <property name="name:3" value="isDeprecated" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860009819" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="7241381882860009820" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860009821">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860009822">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="7241381882860009823">
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression:3" id="7241381882860009824">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.BitwiseAndExpression:3" id="7241381882860009825">
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="7241381882860009826">
                  <link role="classifier:3" targetNodeId="4.~Opcodes" />
                  <link role="variableDeclaration:3" targetNodeId="4.~Opcodes.ACC_DEPRECATED" />
                </node>
                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009827">
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009828">
                    <link role="fieldDeclaration:3" targetNodeId="1.~ClassNode.access" />
                  </node>
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009829">
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009830">
                      <link role="fieldDeclaration:3" targetNodeId="7241381882860009409" resolveInfo="myNode" />
                    </node>
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860009831" />
                  </node>
                </node>
              </node>
            </node>
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="7241381882860009832">
              <property name="value:3" value="0" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860009833">
      <property name="name:3" value="getName" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860009834" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009835">
        <link role="classifier:3" targetNodeId="2v.~String" />
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860009836">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860009837">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009838">
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009839">
              <link role="fieldDeclaration:3" targetNodeId="1.~ClassNode.name" />
            </node>
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009840">
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009841">
                <link role="fieldDeclaration:3" targetNodeId="7241381882860009409" resolveInfo="myNode" />
              </node>
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860009842" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860009843">
      <property name="name:3" value="getFqName" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860009844" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009845">
        <link role="classifier:3" targetNodeId="2v.~String" />
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860009846">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860009847">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009848">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009849">
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009850">
                <link role="fieldDeclaration:3" targetNodeId="1.~ClassNode.name" />
              </node>
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009851">
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009852">
                  <link role="fieldDeclaration:3" targetNodeId="7241381882860009409" resolveInfo="myNode" />
                </node>
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860009853" />
              </node>
            </node>
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7241381882860009854">
              <link role="baseMethodDeclaration:3" targetNodeId="2v.~String.replace(java.lang.CharSequence,java.lang.CharSequence):java.lang.String" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="7241381882860009855">
                <property name="value:3" value="/" />
              </node>
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="7241381882860009856">
                <property name="value:3" value="." />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860009857">
      <property name="name:3" value="getTypeParameters" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860009858" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009859">
        <link role="classifier:3" targetNodeId="2.~List" />
        <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009860">
          <link role="classifier:3" targetNodeId="7241381882860008701" resolveInfo="ASMTypeVariable" />
        </node>
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860009861">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860009862">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="7241381882860009863">
            <link role="classConcept:3" targetNodeId="2.~Collections" />
            <link role="baseMethodDeclaration:3" targetNodeId="2.~Collections.unmodifiableList(java.util.List):java.util.List" />
            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009864">
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009865">
                <link role="fieldDeclaration:3" targetNodeId="7241381882860009412" resolveInfo="myTypeVariables" />
              </node>
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860009866" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860009867">
      <property name="name:3" value="getGenericInterfaces" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860009868" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009869">
        <link role="classifier:3" targetNodeId="2.~List" />
        <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009870">
          <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
        </node>
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860009871">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860009872">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="7241381882860009873">
            <link role="classConcept:3" targetNodeId="2.~Collections" />
            <link role="baseMethodDeclaration:3" targetNodeId="2.~Collections.unmodifiableList(java.util.List):java.util.List" />
            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009874">
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009875">
                <link role="fieldDeclaration:3" targetNodeId="7241381882860009419" resolveInfo="myGenericInterfaces" />
              </node>
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860009876" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860009877">
      <property name="name:3" value="getAnnotations" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860009878" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009879">
        <link role="classifier:3" targetNodeId="2.~List" />
        <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009880">
          <link role="classifier:3" targetNodeId="3.~ASMAnnotation" />
        </node>
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860009881">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860009882">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression:3" id="8278838086631111933">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.CastExpression:3" id="8278838086631111934">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression:3" id="8278838086631111935">
                <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="8278838086631111936">
                  <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="8278838086631111937">
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="8278838086631111938">
                      <link role="fieldDeclaration:3" targetNodeId="7241381882860009447" resolveInfo="myAnnotations" />
                    </node>
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="8278838086631111939" />
                  </node>
                  <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="8278838086631111940" />
                </node>
                <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="8278838086631111941">
                  <link role="classConcept:3" targetNodeId="2.~Collections" resolveInfo="Collections" />
                  <link role="baseMethodDeclaration:3" targetNodeId="2.~Collections.emptyList():java.util.List" resolveInfo="emptyList" />
                </node>
                <node role="ifFalse:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="8278838086631111942">
                  <link role="classConcept:3" targetNodeId="2.~Collections" resolveInfo="Collections" />
                  <link role="baseMethodDeclaration:3" targetNodeId="2.~Collections.unmodifiableList(java.util.List):java.util.List" resolveInfo="unmodifiableList" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="8278838086631111943">
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="8278838086631111944">
                      <link role="fieldDeclaration:3" targetNodeId="7241381882860009447" resolveInfo="myAnnotations" />
                    </node>
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="8278838086631111945" />
                  </node>
                </node>
              </node>
              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="8278838086631111946">
                <link role="classifier:3" targetNodeId="2.~List" resolveInfo="List" />
                <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="8278838086631111947">
                  <link role="classifier:3" targetNodeId="3.~ASMAnnotation" resolveInfo="ASMAnnotation" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860009894">
      <property name="name:3" value="getGenericSuperclass" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860009895" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009896">
        <link role="classifier:3" targetNodeId="7241381882860008653" resolveInfo="ASMType" />
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860009897">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860009898">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009899">
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009900">
              <link role="fieldDeclaration:3" targetNodeId="7241381882860009451" resolveInfo="myGenericSuperclass" />
            </node>
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860009901" />
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860009902">
      <property name="name:3" value="getDeclaredFields" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860009903" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009904">
        <link role="classifier:3" targetNodeId="2.~List" />
        <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009905">
          <link role="classifier:3" targetNodeId="7241381882860006793" resolveInfo="ASMField" />
        </node>
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860009906">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860009907">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="7241381882860009908">
            <link role="classConcept:3" targetNodeId="2.~Collections" />
            <link role="baseMethodDeclaration:3" targetNodeId="2.~Collections.unmodifiableList(java.util.List):java.util.List" />
            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009909">
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009910">
                <link role="fieldDeclaration:3" targetNodeId="7241381882860009426" resolveInfo="myFields" />
              </node>
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860009911" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860009912">
      <property name="name:3" value="getDeclaredMethods" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860009913" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009914">
        <link role="classifier:3" targetNodeId="2.~List" />
        <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009915">
          <link role="classifier:3" targetNodeId="7241381882860005690" resolveInfo="ASMMethod" />
        </node>
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860009916">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860009917">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="7241381882860009918">
            <link role="classConcept:3" targetNodeId="2.~Collections" />
            <link role="baseMethodDeclaration:3" targetNodeId="2.~Collections.unmodifiableList(java.util.List):java.util.List" />
            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009919">
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009920">
                <link role="fieldDeclaration:3" targetNodeId="7241381882860009433" resolveInfo="myMethods" />
              </node>
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860009921" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7241381882860009922">
      <property name="name:3" value="getDeclaredConstructors" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7241381882860009923" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009924">
        <link role="classifier:3" targetNodeId="2.~List" />
        <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7241381882860009925">
          <link role="classifier:3" targetNodeId="7241381882860005690" resolveInfo="ASMMethod" />
        </node>
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7241381882860009926">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7241381882860009927">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="7241381882860009928">
            <link role="classConcept:3" targetNodeId="2.~Collections" />
            <link role="baseMethodDeclaration:3" targetNodeId="2.~Collections.unmodifiableList(java.util.List):java.util.List" />
            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7241381882860009929">
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7241381882860009930">
                <link role="fieldDeclaration:3" targetNodeId="7241381882860009440" resolveInfo="myConstructors" />
              </node>
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7241381882860009931" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>


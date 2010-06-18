<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:e4338979-215b-4b9c-a1e7-b887743c18eb(layeredLayoutTest)">
  <persistence version="4" />
  <refactoringHistory />
  <language namespace="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" />
  <language namespace="83888646-71ce-4f1c-9c53-c54016f6ad4f(jetbrains.mps.baseLanguage.collections)" />
  <language namespace="f61473f9-130f-42f6-b98d-6c438812c2f6(jetbrains.mps.baseLanguage.unitTest)" />
  <language namespace="fd392034-7849-419d-9071-12563d152375(jetbrains.mps.baseLanguage.closures)" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902c1(jetbrains.mps.baseLanguage.constraints)" version="83" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="3" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902db(jetbrains.mps.baseLanguage.blTypes.constraints)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590283(jetbrains.mps.lang.core.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590328(jetbrains.mps.baseLanguage.collections.constraints)" version="6" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959032e(jetbrains.mps.baseLanguage.collections.structure)" version="7" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590334(jetbrains.mps.baseLanguage.closures.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590338(jetbrains.mps.baseLanguage.closures.structure)" version="3" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902d5(jetbrains.mps.baseLanguage.unitTest.plugin)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902d2(jetbrains.mps.baseLanguage.unitTest.constraints)" version="1" />
  <maxImportIndex value="7" />
  <import index="1" modelUID="r:d228b8c9-d2b1-4686-9904-e3c49a346bc6(jetbrains.mps.graphLayout.graph)" version="-1" />
  <import index="2" modelUID="r:56e7ed05-c300-4310-9801-1a49a3ba1a5a(jetbrains.mps.graphLayout.layeredLayout)" version="-1" />
  <import index="3" modelUID="r:5aba4e89-d910-492c-9b56-c5e3fe8c0f28(jetbrains.mps.graphLayout.algorithms)" version="-1" />
  <import index="4" modelUID="r:1674ee60-7c44-4176-8f8c-2c87c767d971(sampleGraphs)" version="-1" />
  <import index="5" modelUID="r:964bbf7c-f239-4721-836a-ba42f2f69703(visualization)" version="-1" />
  <import index="6" modelUID="f:java_stub#java.util(java.util@java_stub)" version="-1" />
  <import index="7" modelUID="f:java_stub#java.io(java.io@java_stub)" version="-1" />
  <node type="jetbrains.mps.baseLanguage.unitTest.structure.BTestCase" id="1567683135099906065">
    <property name="testCaseName" value="DFSEdgeReverter" />
    <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1567683135099906066" />
    <node role="constructor" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="1567683135099906067">
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1567683135099906068" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1567683135099906069" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1567683135099906070" />
    </node>
    <node role="testMethodList" type="jetbrains.mps.baseLanguage.unitTest.structure.TestMethodList" id="1567683135099906071">
      <node role="testMethod" type="jetbrains.mps.baseLanguage.unitTest.structure.TestMethod" id="1567683135099906072">
        <property name="methodName" value="cycle" />
        <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1567683135099906073" />
        <node role="returnType" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1567683135099906074" />
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1567683135099906075">
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1567683135099906076">
            <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1567683135099906077">
              <property name="name:3" value="cycle" />
              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1567683135099906078">
                <link role="classifier:3" targetNodeId="1.8567569493821103298" resolveInfo="Graph" />
              </node>
              <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="1567683135099906079">
                <link role="classConcept:3" targetNodeId="4.3437556975695847443" resolveInfo="SimpleDirectedGraphs" />
                <link role="baseMethodDeclaration:3" targetNodeId="4.3437556975695847539" resolveInfo="cycle" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906080">
                  <property name="value:3" value="10" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="4519409331094619719">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4519409331094619726">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="4519409331094619720">
                <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="4519409331094619722">
                  <link role="baseMethodDeclaration:3" targetNodeId="4519409331094619349" resolveInfo="EdgeReverterProxy" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="4519409331094619723">
                    <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="4519409331094619725">
                      <link role="baseMethodDeclaration:3" targetNodeId="2.4660430665333276850" resolveInfo="DFSEdgeReverter" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="4519409331094619730">
                <link role="baseMethodDeclaration:3" targetNodeId="4519409331094619366" resolveInfo="revertEdges" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="4519409331094619731">
                  <link role="variableDeclaration:3" targetNodeId="1567683135099906077" resolveInfo="cycle" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <visible index="2" modelUID="f:java_stub#java.lang(java.lang@java_stub)" />
  <node type="jetbrains.mps.baseLanguage.unitTest.structure.BTestCase" id="1567683135099906087">
    <property name="testCaseName" value="BFSLayerer" />
    <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1567683135099906088" />
    <node role="constructor" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="1567683135099906089">
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1567683135099906090" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1567683135099906091" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1567683135099906092" />
    </node>
    <node role="testMethodList" type="jetbrains.mps.baseLanguage.unitTest.structure.TestMethodList" id="1567683135099906093">
      <node role="testMethod" type="jetbrains.mps.baseLanguage.unitTest.structure.TestMethod" id="1567683135099906094">
        <property name="methodName" value="chain1" />
        <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1567683135099906095" />
        <node role="returnType" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1567683135099906096" />
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1567683135099906097">
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1567683135099906098">
            <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1567683135099906099">
              <property name="name:3" value="chain" />
              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1567683135099906100">
                <link role="classifier:3" targetNodeId="1.8567569493821103298" resolveInfo="Graph" />
              </node>
              <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="1567683135099912675">
                <link role="baseMethodDeclaration:3" targetNodeId="4.3437556975695847473" resolveInfo="chain" />
                <link role="classConcept:3" targetNodeId="4.3437556975695847443" resolveInfo="SimpleDirectedGraphs" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099912676">
                  <property name="value:3" value="1" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1567683135099906103">
            <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1567683135099906104">
              <property name="name:3" value="nodeLayers" />
              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1567683135099906105">
                <link role="classifier:3" targetNodeId="2.4666079041336409356" resolveInfo="NodeLayers" />
              </node>
              <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906106">
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906109">
                  <link role="baseMethodDeclaration:3" targetNodeId="4519409331094620062" resolveInfo="computeLayers" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906110">
                    <link role="variableDeclaration:3" targetNodeId="1567683135099906099" resolveInfo="chain" />
                  </node>
                </node>
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="4519409331094620105">
                  <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="4519409331094620107">
                    <link role="baseMethodDeclaration:3" targetNodeId="4519409331094620045" resolveInfo="LayererProxy" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="4519409331094620108">
                      <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="4519409331094620109">
                        <link role="baseMethodDeclaration:3" targetNodeId="2.8567569493821114468" resolveInfo="BFSLayerer" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1567683135099906111">
            <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1567683135099906112">
              <property name="name:3" value="layers" />
              <node role="type:3" type="jetbrains.mps.baseLanguage.collections.structure.MapType:7" id="1567683135099906113">
                <node role="keyType:7" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1567683135099906114">
                  <link role="classifier:3" targetNodeId="1.4671312709908983848" resolveInfo="Node" />
                </node>
                <node role="valueType:7" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1567683135099906115">
                  <link role="classifier:3" targetNodeId="2v.~Integer" resolveInfo="Integer" />
                </node>
              </node>
              <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906116">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906117">
                  <link role="variableDeclaration:3" targetNodeId="1567683135099906104" resolveInfo="nodeLayers" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906118">
                  <link role="baseMethodDeclaration:3" targetNodeId="2.4666079041336409669" resolveInfo="getNodeLayers" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" id="1567683135099906119">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="1567683135099906120">
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906121">
                <property name="value:3" value="0" />
              </node>
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.collections.structure.MapElement:7" id="1567683135099906122">
                <node role="key:7" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906123">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906124">
                    <link role="variableDeclaration:3" targetNodeId="1567683135099906099" resolveInfo="chain" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906125">
                    <link role="baseMethodDeclaration:3" targetNodeId="1.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906126">
                      <property name="value:3" value="0" />
                    </node>
                  </node>
                </node>
                <node role="map:7" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906127">
                  <link role="variableDeclaration:3" targetNodeId="1567683135099906112" resolveInfo="layers" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="testMethod" type="jetbrains.mps.baseLanguage.unitTest.structure.TestMethod" id="1567683135099906128">
        <property name="methodName" value="chain2" />
        <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1567683135099906129" />
        <node role="returnType" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1567683135099906130" />
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1567683135099906131">
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1567683135099906132">
            <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1567683135099906133">
              <property name="name:3" value="chain" />
              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1567683135099906134">
                <link role="classifier:3" targetNodeId="1.8567569493821103298" resolveInfo="Graph" />
              </node>
              <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="1567683135099912677">
                <link role="baseMethodDeclaration:3" targetNodeId="4.3437556975695847473" resolveInfo="chain" />
                <link role="classConcept:3" targetNodeId="4.3437556975695847443" resolveInfo="SimpleDirectedGraphs" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099912678">
                  <property name="value:3" value="2" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1567683135099906137">
            <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1567683135099906138">
              <property name="name:3" value="nodeLayers" />
              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1567683135099906139">
                <link role="classifier:3" targetNodeId="2.4666079041336409356" resolveInfo="NodeLayers" />
              </node>
              <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4519409331094620110">
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="4519409331094620111">
                  <link role="baseMethodDeclaration:3" targetNodeId="4519409331094620062" resolveInfo="computeLayers" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="4519409331094620112">
                    <link role="variableDeclaration:3" targetNodeId="1567683135099906133" resolveInfo="chain" />
                  </node>
                </node>
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="4519409331094620113">
                  <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="4519409331094620114">
                    <link role="baseMethodDeclaration:3" targetNodeId="4519409331094620045" resolveInfo="LayererProxy" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="4519409331094620115">
                      <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="4519409331094620116">
                        <link role="baseMethodDeclaration:3" targetNodeId="2.8567569493821114468" resolveInfo="BFSLayerer" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1567683135099906145">
            <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1567683135099906146">
              <property name="name:3" value="layers" />
              <node role="type:3" type="jetbrains.mps.baseLanguage.collections.structure.MapType:7" id="1567683135099906147">
                <node role="keyType:7" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1567683135099906148">
                  <link role="classifier:3" targetNodeId="1.4671312709908983848" resolveInfo="Node" />
                </node>
                <node role="valueType:7" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1567683135099906149">
                  <link role="classifier:3" targetNodeId="2v.~Integer" resolveInfo="Integer" />
                </node>
              </node>
              <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906150">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906151">
                  <link role="variableDeclaration:3" targetNodeId="1567683135099906138" resolveInfo="nodeLayers" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906152">
                  <link role="baseMethodDeclaration:3" targetNodeId="2.4666079041336409669" resolveInfo="getNodeLayers" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" id="1567683135099906153">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="1567683135099906154">
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906155">
                <property name="value:3" value="0" />
              </node>
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.collections.structure.MapElement:7" id="1567683135099906156">
                <node role="key:7" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906157">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906158">
                    <link role="variableDeclaration:3" targetNodeId="1567683135099906133" resolveInfo="chain" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906159">
                    <link role="baseMethodDeclaration:3" targetNodeId="1.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906160">
                      <property name="value:3" value="0" />
                    </node>
                  </node>
                </node>
                <node role="map:7" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906161">
                  <link role="variableDeclaration:3" targetNodeId="1567683135099906146" resolveInfo="layers" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" id="1567683135099906162">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="1567683135099906163">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.collections.structure.MapElement:7" id="1567683135099906164">
                <node role="key:7" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906165">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906166">
                    <link role="variableDeclaration:3" targetNodeId="1567683135099906133" resolveInfo="chain" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906167">
                    <link role="baseMethodDeclaration:3" targetNodeId="1.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906168">
                      <property name="value:3" value="1" />
                    </node>
                  </node>
                </node>
                <node role="map:7" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906169">
                  <link role="variableDeclaration:3" targetNodeId="1567683135099906146" resolveInfo="layers" />
                </node>
              </node>
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906170">
                <property name="value:3" value="1" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="testMethod" type="jetbrains.mps.baseLanguage.unitTest.structure.TestMethod" id="1567683135099906171">
        <property name="methodName" value="chain3" />
        <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1567683135099906172" />
        <node role="returnType" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1567683135099906173" />
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1567683135099906174">
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1567683135099906175">
            <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1567683135099906176">
              <property name="name:3" value="chain" />
              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1567683135099906177">
                <link role="classifier:3" targetNodeId="1.8567569493821103298" resolveInfo="Graph" />
              </node>
              <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="1567683135099912679">
                <link role="baseMethodDeclaration:3" targetNodeId="4.3437556975695847473" resolveInfo="chain" />
                <link role="classConcept:3" targetNodeId="4.3437556975695847443" resolveInfo="SimpleDirectedGraphs" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099912680">
                  <property name="value:3" value="3" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1567683135099906180">
            <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1567683135099906181">
              <property name="name:3" value="nodeLayers" />
              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1567683135099906182">
                <link role="classifier:3" targetNodeId="2.4666079041336409356" resolveInfo="NodeLayers" />
              </node>
              <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4519409331094620117">
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="4519409331094620118">
                  <link role="baseMethodDeclaration:3" targetNodeId="4519409331094620062" resolveInfo="computeLayers" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="4519409331094620119">
                    <link role="variableDeclaration:3" targetNodeId="1567683135099906176" resolveInfo="chain" />
                  </node>
                </node>
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="4519409331094620120">
                  <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="4519409331094620121">
                    <link role="baseMethodDeclaration:3" targetNodeId="4519409331094620045" resolveInfo="LayererProxy" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="4519409331094620122">
                      <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="4519409331094620123">
                        <link role="baseMethodDeclaration:3" targetNodeId="2.8567569493821114468" resolveInfo="BFSLayerer" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1567683135099906188">
            <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1567683135099906189">
              <property name="name:3" value="layers" />
              <node role="type:3" type="jetbrains.mps.baseLanguage.collections.structure.MapType:7" id="1567683135099906190">
                <node role="keyType:7" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1567683135099906191">
                  <link role="classifier:3" targetNodeId="1.4671312709908983848" resolveInfo="Node" />
                </node>
                <node role="valueType:7" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1567683135099906192">
                  <link role="classifier:3" targetNodeId="2v.~Integer" resolveInfo="Integer" />
                </node>
              </node>
              <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906193">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906194">
                  <link role="variableDeclaration:3" targetNodeId="1567683135099906181" resolveInfo="nodeLayers" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906195">
                  <link role="baseMethodDeclaration:3" targetNodeId="2.4666079041336409669" resolveInfo="getNodeLayers" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" id="1567683135099906196">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="1567683135099906197">
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906198">
                <property name="value:3" value="0" />
              </node>
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.collections.structure.MapElement:7" id="1567683135099906199">
                <node role="key:7" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906200">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906201">
                    <link role="variableDeclaration:3" targetNodeId="1567683135099906176" resolveInfo="chain" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906202">
                    <link role="baseMethodDeclaration:3" targetNodeId="1.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906203">
                      <property name="value:3" value="0" />
                    </node>
                  </node>
                </node>
                <node role="map:7" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906204">
                  <link role="variableDeclaration:3" targetNodeId="1567683135099906189" resolveInfo="layers" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" id="1567683135099906205">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="1567683135099906206">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.collections.structure.MapElement:7" id="1567683135099906207">
                <node role="key:7" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906208">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906209">
                    <link role="variableDeclaration:3" targetNodeId="1567683135099906176" resolveInfo="chain" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906210">
                    <link role="baseMethodDeclaration:3" targetNodeId="1.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906211">
                      <property name="value:3" value="1" />
                    </node>
                  </node>
                </node>
                <node role="map:7" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906212">
                  <link role="variableDeclaration:3" targetNodeId="1567683135099906189" resolveInfo="layers" />
                </node>
              </node>
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906213">
                <property name="value:3" value="1" />
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" id="1567683135099906214">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="1567683135099906215">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.collections.structure.MapElement:7" id="1567683135099906216">
                <node role="key:7" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906217">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906218">
                    <link role="variableDeclaration:3" targetNodeId="1567683135099906176" resolveInfo="chain" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906219">
                    <link role="baseMethodDeclaration:3" targetNodeId="1.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906220">
                      <property name="value:3" value="2" />
                    </node>
                  </node>
                </node>
                <node role="map:7" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906221">
                  <link role="variableDeclaration:3" targetNodeId="1567683135099906189" resolveInfo="layers" />
                </node>
              </node>
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906222">
                <property name="value:3" value="2" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="testMethod" type="jetbrains.mps.baseLanguage.unitTest.structure.TestMethod" id="1567683135099906223">
        <property name="methodName" value="triangle" />
        <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1567683135099906224" />
        <node role="returnType" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1567683135099906225" />
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1567683135099906226">
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1567683135099906227">
            <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1567683135099906228">
              <property name="name:3" value="triangle" />
              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1567683135099906229">
                <link role="classifier:3" targetNodeId="1.8567569493821103298" resolveInfo="Graph" />
              </node>
              <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="1567683135099912681">
                <link role="baseMethodDeclaration:3" targetNodeId="4.3437556975695847517" resolveInfo="triangle" />
                <link role="classConcept:3" targetNodeId="4.3437556975695847443" resolveInfo="SimpleDirectedGraphs" />
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1567683135099906231">
            <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1567683135099906232">
              <property name="name:3" value="nodeLayers" />
              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1567683135099906233">
                <link role="classifier:3" targetNodeId="2.4666079041336409356" resolveInfo="NodeLayers" />
              </node>
              <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4519409331094620124">
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="4519409331094620125">
                  <link role="baseMethodDeclaration:3" targetNodeId="4519409331094620062" resolveInfo="computeLayers" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="4519409331094620147">
                    <link role="variableDeclaration:3" targetNodeId="1567683135099906228" resolveInfo="triangle" />
                  </node>
                </node>
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="4519409331094620127">
                  <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="4519409331094620128">
                    <link role="baseMethodDeclaration:3" targetNodeId="4519409331094620045" resolveInfo="LayererProxy" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="4519409331094620129">
                      <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="4519409331094620130">
                        <link role="baseMethodDeclaration:3" targetNodeId="2.8567569493821114468" resolveInfo="BFSLayerer" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1567683135099906239">
            <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1567683135099906240">
              <property name="name:3" value="layers" />
              <node role="type:3" type="jetbrains.mps.baseLanguage.collections.structure.MapType:7" id="1567683135099906241">
                <node role="keyType:7" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1567683135099906242">
                  <link role="classifier:3" targetNodeId="1.4671312709908983848" resolveInfo="Node" />
                </node>
                <node role="valueType:7" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1567683135099906243">
                  <link role="classifier:3" targetNodeId="2v.~Integer" resolveInfo="Integer" />
                </node>
              </node>
              <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906244">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906245">
                  <link role="variableDeclaration:3" targetNodeId="1567683135099906232" resolveInfo="nodeLayers" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906246">
                  <link role="baseMethodDeclaration:3" targetNodeId="2.4666079041336409669" resolveInfo="getNodeLayers" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" id="1567683135099906247">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="1567683135099906248">
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906249">
                <property name="value:3" value="0" />
              </node>
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.collections.structure.MapElement:7" id="1567683135099906250">
                <node role="key:7" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906251">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906252">
                    <link role="variableDeclaration:3" targetNodeId="1567683135099906228" resolveInfo="triangle" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906253">
                    <link role="baseMethodDeclaration:3" targetNodeId="1.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906254">
                      <property name="value:3" value="0" />
                    </node>
                  </node>
                </node>
                <node role="map:7" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906255">
                  <link role="variableDeclaration:3" targetNodeId="1567683135099906240" resolveInfo="layers" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" id="1567683135099906256">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="1567683135099906257">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.collections.structure.MapElement:7" id="1567683135099906258">
                <node role="key:7" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906259">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906260">
                    <link role="variableDeclaration:3" targetNodeId="1567683135099906228" resolveInfo="triangle" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906261">
                    <link role="baseMethodDeclaration:3" targetNodeId="1.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906262">
                      <property name="value:3" value="1" />
                    </node>
                  </node>
                </node>
                <node role="map:7" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906263">
                  <link role="variableDeclaration:3" targetNodeId="1567683135099906240" resolveInfo="layers" />
                </node>
              </node>
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906264">
                <property name="value:3" value="1" />
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" id="1567683135099906265">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="1567683135099906266">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.collections.structure.MapElement:7" id="1567683135099906267">
                <node role="key:7" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906268">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906269">
                    <link role="variableDeclaration:3" targetNodeId="1567683135099906228" resolveInfo="triangle" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906270">
                    <link role="baseMethodDeclaration:3" targetNodeId="1.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906271">
                      <property name="value:3" value="2" />
                    </node>
                  </node>
                </node>
                <node role="map:7" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906272">
                  <link role="variableDeclaration:3" targetNodeId="1567683135099906240" resolveInfo="layers" />
                </node>
              </node>
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906273">
                <property name="value:3" value="2" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="testMethod" type="jetbrains.mps.baseLanguage.unitTest.structure.TestMethod" id="1567683135099906274">
        <property name="methodName" value="cycle" />
        <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1567683135099906275" />
        <node role="returnType" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1567683135099906276" />
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1567683135099906277">
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1567683135099906278">
            <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1567683135099906279">
              <property name="name:3" value="cycle" />
              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1567683135099906280">
                <link role="classifier:3" targetNodeId="1.8567569493821103298" resolveInfo="Graph" />
              </node>
              <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="1567683135099912682">
                <link role="baseMethodDeclaration:3" targetNodeId="4.3437556975695847539" resolveInfo="cycle" />
                <link role="classConcept:3" targetNodeId="4.3437556975695847443" resolveInfo="SimpleDirectedGraphs" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099912683">
                  <property name="value:3" value="5" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.unitTest.structure.AssertThrows" id="1567683135099906283">
            <node role="exceptionType" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1567683135099906284">
              <link role="classifier:3" targetNodeId="2v.~IllegalArgumentException" resolveInfo="IllegalArgumentException" />
            </node>
            <node role="message" type="jetbrains.mps.baseLanguage.unitTest.structure.Message" id="1567683135099906285">
              <node role="message" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="1567683135099906286">
                <property name="value:3" value="input graph must be acyclic" />
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1567683135099906287">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4519409331094620131">
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="4519409331094620132">
                  <link role="baseMethodDeclaration:3" targetNodeId="4519409331094620062" resolveInfo="computeLayers" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="4519409331094620146">
                    <link role="variableDeclaration:3" targetNodeId="1567683135099906279" resolveInfo="cycle" />
                  </node>
                </node>
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="4519409331094620134">
                  <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="4519409331094620135">
                    <link role="baseMethodDeclaration:3" targetNodeId="4519409331094620045" resolveInfo="LayererProxy" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="4519409331094620136">
                      <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="4519409331094620137">
                        <link role="baseMethodDeclaration:3" targetNodeId="2.8567569493821114468" resolveInfo="BFSLayerer" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="testMethod" type="jetbrains.mps.baseLanguage.unitTest.structure.TestMethod" id="1567683135099906293">
        <property name="methodName" value="sandwatches" />
        <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1567683135099906294" />
        <node role="returnType" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1567683135099906295" />
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1567683135099906296">
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1567683135099906297">
            <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1567683135099906298">
              <property name="name:3" value="sandwatches" />
              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1567683135099906299">
                <link role="classifier:3" targetNodeId="1.8567569493821103298" resolveInfo="Graph" />
              </node>
              <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="1567683135099912684">
                <link role="baseMethodDeclaration:3" targetNodeId="4.3437556975695847565" resolveInfo="sandwatches" />
                <link role="classConcept:3" targetNodeId="4.3437556975695847443" resolveInfo="SimpleDirectedGraphs" />
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1567683135099906301">
            <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1567683135099906302">
              <property name="name:3" value="nodeLayers" />
              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1567683135099906303">
                <link role="classifier:3" targetNodeId="2.4666079041336409356" resolveInfo="NodeLayers" />
              </node>
              <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4519409331094620138">
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="4519409331094620139">
                  <link role="baseMethodDeclaration:3" targetNodeId="4519409331094620062" resolveInfo="computeLayers" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="4519409331094620145">
                    <link role="variableDeclaration:3" targetNodeId="1567683135099906298" resolveInfo="sandwatches" />
                  </node>
                </node>
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="4519409331094620141">
                  <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="4519409331094620142">
                    <link role="baseMethodDeclaration:3" targetNodeId="4519409331094620045" resolveInfo="LayererProxy" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="4519409331094620143">
                      <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="4519409331094620144">
                        <link role="baseMethodDeclaration:3" targetNodeId="2.8567569493821114468" resolveInfo="BFSLayerer" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1567683135099906309">
            <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1567683135099906310">
              <property name="name:3" value="layers" />
              <node role="type:3" type="jetbrains.mps.baseLanguage.collections.structure.MapType:7" id="1567683135099906311">
                <node role="keyType:7" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1567683135099906312">
                  <link role="classifier:3" targetNodeId="1.4671312709908983848" resolveInfo="Node" />
                </node>
                <node role="valueType:7" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1567683135099906313">
                  <link role="classifier:3" targetNodeId="2v.~Integer" resolveInfo="Integer" />
                </node>
              </node>
              <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906314">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906315">
                  <link role="variableDeclaration:3" targetNodeId="1567683135099906302" resolveInfo="nodeLayers" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906316">
                  <link role="baseMethodDeclaration:3" targetNodeId="2.4666079041336409669" resolveInfo="getNodeLayers" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" id="1567683135099906317">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="1567683135099906318">
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906319">
                <property name="value:3" value="0" />
              </node>
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.collections.structure.MapElement:7" id="1567683135099906320">
                <node role="key:7" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906321">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906322">
                    <link role="variableDeclaration:3" targetNodeId="1567683135099906298" resolveInfo="sandwatches" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906323">
                    <link role="baseMethodDeclaration:3" targetNodeId="1.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906324">
                      <property name="value:3" value="0" />
                    </node>
                  </node>
                </node>
                <node role="map:7" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906325">
                  <link role="variableDeclaration:3" targetNodeId="1567683135099906310" resolveInfo="layers" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" id="1567683135099906326">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="1567683135099906327">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.collections.structure.MapElement:7" id="1567683135099906328">
                <node role="key:7" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906329">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906330">
                    <link role="variableDeclaration:3" targetNodeId="1567683135099906298" resolveInfo="sandwatches" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906331">
                    <link role="baseMethodDeclaration:3" targetNodeId="1.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906332">
                      <property name="value:3" value="1" />
                    </node>
                  </node>
                </node>
                <node role="map:7" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906333">
                  <link role="variableDeclaration:3" targetNodeId="1567683135099906310" resolveInfo="layers" />
                </node>
              </node>
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906334">
                <property name="value:3" value="0" />
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" id="1567683135099906335">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="1567683135099906336">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.collections.structure.MapElement:7" id="1567683135099906337">
                <node role="key:7" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906338">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906339">
                    <link role="variableDeclaration:3" targetNodeId="1567683135099906298" resolveInfo="sandwatches" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906340">
                    <link role="baseMethodDeclaration:3" targetNodeId="1.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906341">
                      <property name="value:3" value="2" />
                    </node>
                  </node>
                </node>
                <node role="map:7" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906342">
                  <link role="variableDeclaration:3" targetNodeId="1567683135099906310" resolveInfo="layers" />
                </node>
              </node>
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906343">
                <property name="value:3" value="1" />
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" id="1567683135099906344">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="1567683135099906345">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.collections.structure.MapElement:7" id="1567683135099906346">
                <node role="key:7" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906347">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906348">
                    <link role="variableDeclaration:3" targetNodeId="1567683135099906298" resolveInfo="sandwatches" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906349">
                    <link role="baseMethodDeclaration:3" targetNodeId="1.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906350">
                      <property name="value:3" value="3" />
                    </node>
                  </node>
                </node>
                <node role="map:7" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906351">
                  <link role="variableDeclaration:3" targetNodeId="1567683135099906310" resolveInfo="layers" />
                </node>
              </node>
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906352">
                <property name="value:3" value="2" />
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" id="1567683135099906353">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="1567683135099906354">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.collections.structure.MapElement:7" id="1567683135099906355">
                <node role="key:7" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906356">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906357">
                    <link role="variableDeclaration:3" targetNodeId="1567683135099906298" resolveInfo="sandwatches" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906358">
                    <link role="baseMethodDeclaration:3" targetNodeId="1.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906359">
                      <property name="value:3" value="4" />
                    </node>
                  </node>
                </node>
                <node role="map:7" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906360">
                  <link role="variableDeclaration:3" targetNodeId="1567683135099906310" resolveInfo="layers" />
                </node>
              </node>
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906361">
                <property name="value:3" value="3" />
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" id="1567683135099906362">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="1567683135099906363">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.collections.structure.MapElement:7" id="1567683135099906364">
                <node role="key:7" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906365">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906366">
                    <link role="variableDeclaration:3" targetNodeId="1567683135099906298" resolveInfo="sandwatches" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906367">
                    <link role="baseMethodDeclaration:3" targetNodeId="1.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906368">
                      <property name="value:3" value="5" />
                    </node>
                  </node>
                </node>
                <node role="map:7" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906369">
                  <link role="variableDeclaration:3" targetNodeId="1567683135099906310" resolveInfo="layers" />
                </node>
              </node>
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906370">
                <property name="value:3" value="3" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="testMethod" type="jetbrains.mps.baseLanguage.unitTest.structure.TestMethod" id="1567683135099906371">
        <property name="methodName" value="simpleFourLayers" />
        <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1567683135099906372" />
        <node role="returnType" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1567683135099906373" />
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1567683135099906374">
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1567683135099906375">
            <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1567683135099906376">
              <property name="name:3" value="simpleGraph" />
              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1567683135099906377">
                <link role="classifier:3" targetNodeId="1.8567569493821103298" resolveInfo="Graph" />
              </node>
              <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="1567683135099912920">
                <link role="baseMethodDeclaration:3" targetNodeId="4.3437556975695846541" resolveInfo="simpleFourLayersGraph" />
                <link role="classConcept:3" targetNodeId="4.3437556975695846540" resolveInfo="GraphsForLayers" />
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1567683135099906379">
            <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1567683135099906380">
              <property name="name:3" value="nodeLayers" />
              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1567683135099906381">
                <link role="classifier:3" targetNodeId="2.4666079041336409356" resolveInfo="NodeLayers" />
              </node>
              <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906382">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1567683135099906383">
                  <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="1567683135099906384">
                    <link role="baseMethodDeclaration:3" targetNodeId="2.8567569493821114468" resolveInfo="BFSLayerer" />
                  </node>
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906385">
                  <link role="baseMethodDeclaration:3" targetNodeId="2.8567569493821107886" resolveInfo="computeLayers" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906386">
                    <link role="variableDeclaration:3" targetNodeId="1567683135099906376" resolveInfo="simpleGraph" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1567683135099906387">
            <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1567683135099906388">
              <property name="name:3" value="layers" />
              <node role="type:3" type="jetbrains.mps.baseLanguage.collections.structure.MapType:7" id="1567683135099906389">
                <node role="keyType:7" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1567683135099906390">
                  <link role="classifier:3" targetNodeId="1.4671312709908983848" resolveInfo="Node" />
                </node>
                <node role="valueType:7" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1567683135099906391">
                  <link role="classifier:3" targetNodeId="2v.~Integer" resolveInfo="Integer" />
                </node>
              </node>
              <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906392">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906393">
                  <link role="variableDeclaration:3" targetNodeId="1567683135099906380" resolveInfo="nodeLayers" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906394">
                  <link role="baseMethodDeclaration:3" targetNodeId="2.4666079041336409669" resolveInfo="getNodeLayers" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" id="1567683135099906395">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="1567683135099906396">
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906397">
                <property name="value:3" value="0" />
              </node>
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.collections.structure.MapElement:7" id="1567683135099906398">
                <node role="key:7" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906399">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906400">
                    <link role="variableDeclaration:3" targetNodeId="1567683135099906376" resolveInfo="simpleGraph" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906401">
                    <link role="baseMethodDeclaration:3" targetNodeId="1.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906402">
                      <property name="value:3" value="0" />
                    </node>
                  </node>
                </node>
                <node role="map:7" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906403">
                  <link role="variableDeclaration:3" targetNodeId="1567683135099906388" resolveInfo="layers" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" id="1567683135099906404">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="1567683135099906405">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.collections.structure.MapElement:7" id="1567683135099906406">
                <node role="key:7" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906407">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906408">
                    <link role="variableDeclaration:3" targetNodeId="1567683135099906376" resolveInfo="simpleGraph" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906409">
                    <link role="baseMethodDeclaration:3" targetNodeId="1.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906410">
                      <property name="value:3" value="1" />
                    </node>
                  </node>
                </node>
                <node role="map:7" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906411">
                  <link role="variableDeclaration:3" targetNodeId="1567683135099906388" resolveInfo="layers" />
                </node>
              </node>
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906412">
                <property name="value:3" value="1" />
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" id="1567683135099906413">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="1567683135099906414">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.collections.structure.MapElement:7" id="1567683135099906415">
                <node role="key:7" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906416">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906417">
                    <link role="variableDeclaration:3" targetNodeId="1567683135099906376" resolveInfo="simpleGraph" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906418">
                    <link role="baseMethodDeclaration:3" targetNodeId="1.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906419">
                      <property name="value:3" value="2" />
                    </node>
                  </node>
                </node>
                <node role="map:7" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906420">
                  <link role="variableDeclaration:3" targetNodeId="1567683135099906388" resolveInfo="layers" />
                </node>
              </node>
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906421">
                <property name="value:3" value="2" />
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" id="1567683135099906422">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="1567683135099906423">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.collections.structure.MapElement:7" id="1567683135099906424">
                <node role="key:7" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906425">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906426">
                    <link role="variableDeclaration:3" targetNodeId="1567683135099906376" resolveInfo="simpleGraph" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906427">
                    <link role="baseMethodDeclaration:3" targetNodeId="1.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906428">
                      <property name="value:3" value="3" />
                    </node>
                  </node>
                </node>
                <node role="map:7" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906429">
                  <link role="variableDeclaration:3" targetNodeId="1567683135099906388" resolveInfo="layers" />
                </node>
              </node>
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906430">
                <property name="value:3" value="3" />
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" id="1567683135099906431">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="1567683135099906432">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.collections.structure.MapElement:7" id="1567683135099906433">
                <node role="key:7" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906434">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906435">
                    <link role="variableDeclaration:3" targetNodeId="1567683135099906376" resolveInfo="simpleGraph" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906436">
                    <link role="baseMethodDeclaration:3" targetNodeId="1.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906437">
                      <property name="value:3" value="4" />
                    </node>
                  </node>
                </node>
                <node role="map:7" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906438">
                  <link role="variableDeclaration:3" targetNodeId="1567683135099906388" resolveInfo="layers" />
                </node>
              </node>
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906439">
                <property name="value:3" value="1" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.unitTest.structure.BTestCase" id="1567683135099906440">
    <property name="testCaseName" value="DFSNodeSorter" />
    <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1567683135099906441" />
    <node role="constructor" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="1567683135099906442">
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1567683135099906443" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1567683135099906444" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1567683135099906445" />
    </node>
    <node role="testMethodList" type="jetbrains.mps.baseLanguage.unitTest.structure.TestMethodList" id="1567683135099906446">
      <node role="testMethod" type="jetbrains.mps.baseLanguage.unitTest.structure.TestMethod" id="1567683135099906447">
        <property name="methodName" value="Chain" />
        <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1567683135099906448" />
        <node role="returnType" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1567683135099906449" />
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1567683135099906450">
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1567683135099906451">
            <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1567683135099906452">
              <property name="name:3" value="chain" />
              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1567683135099906453">
                <link role="classifier:3" targetNodeId="1.8567569493821103298" resolveInfo="Graph" />
              </node>
              <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="1567683135099906454">
                <link role="classConcept:3" targetNodeId="4.3437556975695847443" resolveInfo="SimpleDirectedGraphs" />
                <link role="baseMethodDeclaration:3" targetNodeId="4.3437556975695847473" resolveInfo="chain" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906455">
                  <property name="value:3" value="3" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1567683135099906456">
            <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1567683135099906457">
              <property name="name:3" value="layers" />
              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1567683135099906458">
                <link role="classifier:3" targetNodeId="2.4666079041336409356" resolveInfo="NodeLayers" />
              </node>
              <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1567683135099906459">
                <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="1567683135099906460">
                  <link role="baseMethodDeclaration:3" targetNodeId="2.4666079041336409358" resolveInfo="NodeLayers" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906461">
                    <link role="variableDeclaration:3" targetNodeId="1567683135099906452" resolveInfo="chain" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1567683135099906462">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906463">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906464">
                <link role="variableDeclaration:3" targetNodeId="1567683135099906457" resolveInfo="layers" />
              </node>
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906465">
                <link role="baseMethodDeclaration:3" targetNodeId="2.4666079041336409405" resolveInfo="set" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906466">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906467">
                    <link role="variableDeclaration:3" targetNodeId="1567683135099906452" resolveInfo="chain" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906468">
                    <link role="baseMethodDeclaration:3" targetNodeId="1.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906469">
                      <property name="value:3" value="0" />
                    </node>
                  </node>
                </node>
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906470">
                  <property name="value:3" value="0" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1567683135099906471">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906472">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906473">
                <link role="variableDeclaration:3" targetNodeId="1567683135099906457" resolveInfo="layers" />
              </node>
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906474">
                <link role="baseMethodDeclaration:3" targetNodeId="2.4666079041336409405" resolveInfo="set" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906475">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906476">
                    <link role="variableDeclaration:3" targetNodeId="1567683135099906452" resolveInfo="chain" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906477">
                    <link role="baseMethodDeclaration:3" targetNodeId="1.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906478">
                      <property name="value:3" value="1" />
                    </node>
                  </node>
                </node>
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906479">
                  <property name="value:3" value="1" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1567683135099906480">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906481">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906482">
                <link role="variableDeclaration:3" targetNodeId="1567683135099906457" resolveInfo="layers" />
              </node>
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906483">
                <link role="baseMethodDeclaration:3" targetNodeId="2.4666079041336409405" resolveInfo="set" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906484">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906485">
                    <link role="variableDeclaration:3" targetNodeId="1567683135099906452" resolveInfo="chain" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906486">
                    <link role="baseMethodDeclaration:3" targetNodeId="1.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906487">
                      <property name="value:3" value="2" />
                    </node>
                  </node>
                </node>
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906488">
                  <property name="value:3" value="2" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1567683135099906489">
            <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1567683135099906490">
              <property name="name:3" value="order" />
              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1567683135099906491">
                <link role="classifier:3" targetNodeId="2.2350882467504388199" resolveInfo="NodeLayeredOrder" />
              </node>
              <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906492">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1567683135099906493">
                  <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="1567683135099906494">
                    <link role="baseMethodDeclaration:3" targetNodeId="2.4666079041336346282" resolveInfo="DFSNodeSorter" />
                  </node>
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906495">
                  <link role="baseMethodDeclaration:3" targetNodeId="2.4666079041336409323" resolveInfo="sortNodes" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906496">
                    <link role="variableDeclaration:3" targetNodeId="1567683135099906452" resolveInfo="chain" />
                  </node>
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906497">
                    <link role="variableDeclaration:3" targetNodeId="1567683135099906457" resolveInfo="layers" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" id="1567683135099906498">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="1567683135099906499">
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906500">
                <property name="value:3" value="1" />
              </node>
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906501">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906502">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906503">
                    <link role="variableDeclaration:3" targetNodeId="1567683135099906490" resolveInfo="order" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906504">
                    <link role="baseMethodDeclaration:3" targetNodeId="2.3256072703923739006" resolveInfo="getOrder" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906505">
                      <property name="value:3" value="0" />
                    </node>
                  </node>
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation:7" id="1567683135099906506" />
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" id="1567683135099906507">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="1567683135099906508">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906509">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906510">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906511">
                    <link role="variableDeclaration:3" targetNodeId="1567683135099906490" resolveInfo="order" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906512">
                    <link role="baseMethodDeclaration:3" targetNodeId="2.3256072703923739006" resolveInfo="getOrder" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906513">
                      <property name="value:3" value="1" />
                    </node>
                  </node>
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation:7" id="1567683135099906514" />
              </node>
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906515">
                <property name="value:3" value="1" />
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" id="1567683135099906516">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="1567683135099906517">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906518">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906519">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906520">
                    <link role="variableDeclaration:3" targetNodeId="1567683135099906490" resolveInfo="order" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906521">
                    <link role="baseMethodDeclaration:3" targetNodeId="2.3256072703923739006" resolveInfo="getOrder" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906522">
                      <property name="value:3" value="2" />
                    </node>
                  </node>
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation:7" id="1567683135099906523" />
              </node>
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906524">
                <property name="value:3" value="1" />
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" id="1567683135099906525">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="1567683135099906526">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906527">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906528">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906529">
                    <link role="variableDeclaration:3" targetNodeId="1567683135099906490" resolveInfo="order" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906530">
                    <link role="baseMethodDeclaration:3" targetNodeId="2.3256072703923739006" resolveInfo="getOrder" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906531">
                      <property name="value:3" value="0" />
                    </node>
                  </node>
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.collections.structure.GetElementOperation:7" id="1567683135099906532">
                  <node role="argument:7" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906533">
                    <property name="value:3" value="0" />
                  </node>
                </node>
              </node>
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906534">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906535">
                  <link role="variableDeclaration:3" targetNodeId="1567683135099906452" resolveInfo="chain" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906536">
                  <link role="baseMethodDeclaration:3" targetNodeId="1.8567569493821112501" resolveInfo="getNode" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906537">
                    <property name="value:3" value="0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" id="1567683135099906538">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="1567683135099906539">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906540">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906541">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906542">
                    <link role="variableDeclaration:3" targetNodeId="1567683135099906490" resolveInfo="order" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906543">
                    <link role="baseMethodDeclaration:3" targetNodeId="2.3256072703923739006" resolveInfo="getOrder" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906544">
                      <property name="value:3" value="1" />
                    </node>
                  </node>
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.collections.structure.GetElementOperation:7" id="1567683135099906545">
                  <node role="argument:7" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906546">
                    <property name="value:3" value="0" />
                  </node>
                </node>
              </node>
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906547">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906548">
                  <link role="variableDeclaration:3" targetNodeId="1567683135099906452" resolveInfo="chain" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906549">
                  <link role="baseMethodDeclaration:3" targetNodeId="1.8567569493821112501" resolveInfo="getNode" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906550">
                    <property name="value:3" value="1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" id="1567683135099906551">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="1567683135099906552">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906553">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906554">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906555">
                    <link role="variableDeclaration:3" targetNodeId="1567683135099906490" resolveInfo="order" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906556">
                    <link role="baseMethodDeclaration:3" targetNodeId="2.3256072703923739006" resolveInfo="getOrder" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906557">
                      <property name="value:3" value="2" />
                    </node>
                  </node>
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.collections.structure.GetElementOperation:7" id="1567683135099906558">
                  <node role="argument:7" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906559">
                    <property name="value:3" value="0" />
                  </node>
                </node>
              </node>
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906560">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906561">
                  <link role="variableDeclaration:3" targetNodeId="1567683135099906452" resolveInfo="chain" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906562">
                  <link role="baseMethodDeclaration:3" targetNodeId="1.8567569493821112501" resolveInfo="getNode" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906563">
                    <property name="value:3" value="2" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="testMethod" type="jetbrains.mps.baseLanguage.unitTest.structure.TestMethod" id="1567683135099906564">
        <property name="methodName" value="simpleFourLeyers" />
        <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1567683135099906565" />
        <node role="returnType" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1567683135099906566" />
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1567683135099906567">
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1567683135099906568">
            <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1567683135099906569">
              <property name="name:3" value="simpleGraph" />
              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1567683135099906570">
                <link role="classifier:3" targetNodeId="1.8567569493821103298" resolveInfo="Graph" />
              </node>
              <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="1567683135099906571">
                <link role="classConcept:3" targetNodeId="4.3437556975695846540" resolveInfo="GraphsForLayers" />
                <link role="baseMethodDeclaration:3" targetNodeId="4.3437556975695846541" resolveInfo="simpleFourLayersGraph" />
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1567683135099906572">
            <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1567683135099906573">
              <property name="name:3" value="layers" />
              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1567683135099906574">
                <link role="classifier:3" targetNodeId="2.4666079041336409356" resolveInfo="NodeLayers" />
              </node>
              <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1567683135099906575">
                <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="1567683135099906576">
                  <link role="baseMethodDeclaration:3" targetNodeId="2.4666079041336409358" resolveInfo="NodeLayers" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906577">
                    <link role="variableDeclaration:3" targetNodeId="1567683135099906569" resolveInfo="simpleGraph" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1567683135099906578">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906579">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906580">
                <link role="variableDeclaration:3" targetNodeId="1567683135099906573" resolveInfo="layers" />
              </node>
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906581">
                <link role="baseMethodDeclaration:3" targetNodeId="2.4666079041336409405" resolveInfo="set" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906582">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906583">
                    <link role="variableDeclaration:3" targetNodeId="1567683135099906569" resolveInfo="simpleGraph" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906584">
                    <link role="baseMethodDeclaration:3" targetNodeId="1.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906585">
                      <property name="value:3" value="0" />
                    </node>
                  </node>
                </node>
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906586">
                  <property name="value:3" value="0" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1567683135099906587">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906588">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906589">
                <link role="variableDeclaration:3" targetNodeId="1567683135099906573" resolveInfo="layers" />
              </node>
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906590">
                <link role="baseMethodDeclaration:3" targetNodeId="2.4666079041336409405" resolveInfo="set" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906591">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906592">
                    <link role="variableDeclaration:3" targetNodeId="1567683135099906569" resolveInfo="simpleGraph" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906593">
                    <link role="baseMethodDeclaration:3" targetNodeId="1.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906594">
                      <property name="value:3" value="1" />
                    </node>
                  </node>
                </node>
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906595">
                  <property name="value:3" value="1" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1567683135099906596">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906597">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906598">
                <link role="variableDeclaration:3" targetNodeId="1567683135099906573" resolveInfo="layers" />
              </node>
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906599">
                <link role="baseMethodDeclaration:3" targetNodeId="2.4666079041336409405" resolveInfo="set" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906600">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906601">
                    <link role="variableDeclaration:3" targetNodeId="1567683135099906569" resolveInfo="simpleGraph" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906602">
                    <link role="baseMethodDeclaration:3" targetNodeId="1.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906603">
                      <property name="value:3" value="2" />
                    </node>
                  </node>
                </node>
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906604">
                  <property name="value:3" value="2" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1567683135099906605">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906606">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906607">
                <link role="variableDeclaration:3" targetNodeId="1567683135099906573" resolveInfo="layers" />
              </node>
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906608">
                <link role="baseMethodDeclaration:3" targetNodeId="2.4666079041336409405" resolveInfo="set" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906609">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906610">
                    <link role="variableDeclaration:3" targetNodeId="1567683135099906569" resolveInfo="simpleGraph" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906611">
                    <link role="baseMethodDeclaration:3" targetNodeId="1.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906612">
                      <property name="value:3" value="3" />
                    </node>
                  </node>
                </node>
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906613">
                  <property name="value:3" value="3" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1567683135099906614">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906615">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906616">
                <link role="variableDeclaration:3" targetNodeId="1567683135099906573" resolveInfo="layers" />
              </node>
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906617">
                <link role="baseMethodDeclaration:3" targetNodeId="2.4666079041336409405" resolveInfo="set" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906618">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906619">
                    <link role="variableDeclaration:3" targetNodeId="1567683135099906569" resolveInfo="simpleGraph" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906620">
                    <link role="baseMethodDeclaration:3" targetNodeId="1.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906621">
                      <property name="value:3" value="4" />
                    </node>
                  </node>
                </node>
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906622">
                  <property name="value:3" value="1" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1567683135099906623">
            <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1567683135099906624">
              <property name="name:3" value="order" />
              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1567683135099906625">
                <link role="classifier:3" targetNodeId="2.2350882467504388199" resolveInfo="NodeLayeredOrder" />
              </node>
              <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906626">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1567683135099906627">
                  <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="1567683135099906628">
                    <link role="baseMethodDeclaration:3" targetNodeId="2.4666079041336346282" resolveInfo="DFSNodeSorter" />
                  </node>
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906629">
                  <link role="baseMethodDeclaration:3" targetNodeId="2.4666079041336409323" resolveInfo="sortNodes" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906630">
                    <link role="variableDeclaration:3" targetNodeId="1567683135099906569" resolveInfo="simpleGraph" />
                  </node>
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906631">
                    <link role="variableDeclaration:3" targetNodeId="1567683135099906573" resolveInfo="layers" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" id="1567683135099906632">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="1567683135099906633">
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906634">
                <property name="value:3" value="1" />
              </node>
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906635">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906636">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906637">
                    <link role="variableDeclaration:3" targetNodeId="1567683135099906624" resolveInfo="order" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906638">
                    <link role="baseMethodDeclaration:3" targetNodeId="2.3256072703923739006" resolveInfo="getOrder" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906639">
                      <property name="value:3" value="0" />
                    </node>
                  </node>
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation:7" id="1567683135099906640" />
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" id="1567683135099906641">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="1567683135099906642">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906643">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906644">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906645">
                    <link role="variableDeclaration:3" targetNodeId="1567683135099906624" resolveInfo="order" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906646">
                    <link role="baseMethodDeclaration:3" targetNodeId="2.3256072703923739006" resolveInfo="getOrder" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906647">
                      <property name="value:3" value="1" />
                    </node>
                  </node>
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation:7" id="1567683135099906648" />
              </node>
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906649">
                <property name="value:3" value="2" />
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" id="1567683135099906650">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="1567683135099906651">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906652">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906653">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906654">
                    <link role="variableDeclaration:3" targetNodeId="1567683135099906624" resolveInfo="order" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906655">
                    <link role="baseMethodDeclaration:3" targetNodeId="2.3256072703923739006" resolveInfo="getOrder" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906656">
                      <property name="value:3" value="2" />
                    </node>
                  </node>
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation:7" id="1567683135099906657" />
              </node>
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906658">
                <property name="value:3" value="1" />
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" id="1567683135099906659">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="1567683135099906660">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906661">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906662">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906663">
                    <link role="variableDeclaration:3" targetNodeId="1567683135099906624" resolveInfo="order" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906664">
                    <link role="baseMethodDeclaration:3" targetNodeId="2.3256072703923739006" resolveInfo="getOrder" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906665">
                      <property name="value:3" value="3" />
                    </node>
                  </node>
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation:7" id="1567683135099906666" />
              </node>
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906667">
                <property name="value:3" value="1" />
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" id="1567683135099906668">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="1567683135099906669">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906670">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906671">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906672">
                    <link role="variableDeclaration:3" targetNodeId="1567683135099906624" resolveInfo="order" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906673">
                    <link role="baseMethodDeclaration:3" targetNodeId="2.3256072703923739006" resolveInfo="getOrder" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906674">
                      <property name="value:3" value="0" />
                    </node>
                  </node>
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.collections.structure.GetElementOperation:7" id="1567683135099906675">
                  <node role="argument:7" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906676">
                    <property name="value:3" value="0" />
                  </node>
                </node>
              </node>
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906677">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906678">
                  <link role="variableDeclaration:3" targetNodeId="1567683135099906569" resolveInfo="simpleGraph" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906679">
                  <link role="baseMethodDeclaration:3" targetNodeId="1.8567569493821112501" resolveInfo="getNode" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906680">
                    <property name="value:3" value="0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" id="1567683135099906681">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="1567683135099906682">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906683">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906684">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906685">
                    <link role="variableDeclaration:3" targetNodeId="1567683135099906624" resolveInfo="order" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906686">
                    <link role="baseMethodDeclaration:3" targetNodeId="2.3256072703923739006" resolveInfo="getOrder" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906687">
                      <property name="value:3" value="1" />
                    </node>
                  </node>
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.collections.structure.GetElementOperation:7" id="1567683135099906688">
                  <node role="argument:7" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906689">
                    <property name="value:3" value="0" />
                  </node>
                </node>
              </node>
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906690">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906691">
                  <link role="variableDeclaration:3" targetNodeId="1567683135099906569" resolveInfo="simpleGraph" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906692">
                  <link role="baseMethodDeclaration:3" targetNodeId="1.8567569493821112501" resolveInfo="getNode" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906693">
                    <property name="value:3" value="1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" id="1567683135099906694">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="1567683135099906695">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906696">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906697">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906698">
                    <link role="variableDeclaration:3" targetNodeId="1567683135099906624" resolveInfo="order" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906699">
                    <link role="baseMethodDeclaration:3" targetNodeId="2.3256072703923739006" resolveInfo="getOrder" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906700">
                      <property name="value:3" value="1" />
                    </node>
                  </node>
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.collections.structure.GetElementOperation:7" id="1567683135099906701">
                  <node role="argument:7" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906702">
                    <property name="value:3" value="1" />
                  </node>
                </node>
              </node>
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906703">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906704">
                  <link role="variableDeclaration:3" targetNodeId="1567683135099906569" resolveInfo="simpleGraph" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906705">
                  <link role="baseMethodDeclaration:3" targetNodeId="1.8567569493821112501" resolveInfo="getNode" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906706">
                    <property name="value:3" value="4" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" id="1567683135099906707">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="1567683135099906708">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906709">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906710">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906711">
                    <link role="variableDeclaration:3" targetNodeId="1567683135099906624" resolveInfo="order" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906712">
                    <link role="baseMethodDeclaration:3" targetNodeId="2.3256072703923739006" resolveInfo="getOrder" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906713">
                      <property name="value:3" value="2" />
                    </node>
                  </node>
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.collections.structure.GetElementOperation:7" id="1567683135099906714">
                  <node role="argument:7" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906715">
                    <property name="value:3" value="0" />
                  </node>
                </node>
              </node>
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906716">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906717">
                  <link role="variableDeclaration:3" targetNodeId="1567683135099906569" resolveInfo="simpleGraph" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906718">
                  <link role="baseMethodDeclaration:3" targetNodeId="1.8567569493821112501" resolveInfo="getNode" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906719">
                    <property name="value:3" value="2" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" id="1567683135099906720">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="1567683135099906721">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906722">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906723">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906724">
                    <link role="variableDeclaration:3" targetNodeId="1567683135099906624" resolveInfo="order" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906725">
                    <link role="baseMethodDeclaration:3" targetNodeId="2.3256072703923739006" resolveInfo="getOrder" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906726">
                      <property name="value:3" value="3" />
                    </node>
                  </node>
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.collections.structure.GetElementOperation:7" id="1567683135099906727">
                  <node role="argument:7" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906728">
                    <property name="value:3" value="0" />
                  </node>
                </node>
              </node>
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906729">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1567683135099906730">
                  <link role="variableDeclaration:3" targetNodeId="1567683135099906569" resolveInfo="simpleGraph" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906731">
                  <link role="baseMethodDeclaration:3" targetNodeId="1.8567569493821112501" resolveInfo="getNode" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906732">
                    <property name="value:3" value="3" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="1567683135099906733">
    <property name="name:3" value="CheckCycles" />
    <property name="package:3" value="utils" />
    <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="1567683135099906734">
      <property name="name:3" value="hasCycles" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="1567683135099906735" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="1567683135099906736" />
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1567683135099906737">
      <property name="name:3" value="hasCycle" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="1567683135099906738" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1567683135099906739" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1567683135099906740">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1567683135099906741">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="1567683135099906742">
            <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.BooleanConstant:3" id="1567683135099906743">
              <property name="value:3" value="false" />
            </node>
            <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="1567683135099906744">
              <link role="variableDeclaration:3" targetNodeId="1567683135099906734" resolveInfo="hasCycles" />
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1567683135099906745">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceMethodCall:3" id="1567683135099906746">
            <link role="baseMethodDeclaration:3" targetNodeId="3.4660430665333277333" resolveInfo="doDfs" />
            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1567683135099906747">
              <link role="variableDeclaration:3" targetNodeId="1567683135099906750" resolveInfo="graph" />
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1567683135099906748">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="1567683135099906749">
            <link role="variableDeclaration:3" targetNodeId="1567683135099906734" resolveInfo="hasCycles" />
          </node>
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1567683135099906750">
        <property name="name:3" value="graph" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1567683135099906751">
          <link role="classifier:3" targetNodeId="1.8567569493821103298" resolveInfo="Graph" />
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1567683135099906752">
      <property name="name:3" value="processEdge" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1567683135099906753" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.ProtectedVisibility:3" id="1567683135099906754" />
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1567683135099906755">
        <property name="name:3" value="edge" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1567683135099906756">
          <link role="classifier:3" targetNodeId="1.8567569493821103292" resolveInfo="Edge" />
        </node>
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1567683135099906757">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1567683135099906758">
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1567683135099906759">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1567683135099906760">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="1567683135099906761">
                <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.BooleanConstant:3" id="1567683135099906762">
                  <property name="value:3" value="false" />
                </node>
                <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="1567683135099906763">
                  <link role="variableDeclaration:3" targetNodeId="1567683135099906734" resolveInfo="hasCycles" />
                </node>
              </node>
            </node>
          </node>
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="1567683135099906764">
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1567683135099906765">
              <property name="value:3" value="0" />
            </node>
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.collections.structure.MapElement:7" id="1567683135099906766">
              <node role="key:7" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906767">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1567683135099906768">
                  <link role="variableDeclaration:3" targetNodeId="1567683135099906755" resolveInfo="edge" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906769">
                  <link role="baseMethodDeclaration:3" targetNodeId="1.8567569493821111989" resolveInfo="getTarget" />
                </node>
              </node>
              <node role="map:7" type="jetbrains.mps.baseLanguage.structure.LocalInstanceMethodCall:3" id="1567683135099906770">
                <link role="baseMethodDeclaration:3" targetNodeId="3.4660430665333277452" resolveInfo="getDfsState" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="annotation:3" type="jetbrains.mps.baseLanguage.structure.AnnotationInstance:3" id="1567683135099906771">
        <link role="annotation:3" targetNodeId="2v.~Override" resolveInfo="Override" />
      </node>
    </node>
    <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1567683135099906772" />
    <node role="constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="1567683135099906773">
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1567683135099906774" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1567683135099906775" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1567683135099906776" />
    </node>
    <node role="superclass:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1567683135099906777">
      <link role="classifier:3" targetNodeId="3.4660430665333277271" resolveInfo="Dfs" />
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="1567683135099906778">
    <property name="name:3" value="CheckLayers" />
    <property name="package:3" value="utils" />
    <node role="staticMethod:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration:3" id="1567683135099906779">
      <property name="name:3" value="hasBadEdges" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="1567683135099906780" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1567683135099906781" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1567683135099906782">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement:7" id="1567683135099906783">
          <node role="variable:7" type="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable:7" id="1567683135099906784">
            <property name="name:7" value="node" />
          </node>
          <node role="inputSequence:7" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906785">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1567683135099906786">
              <link role="variableDeclaration:3" targetNodeId="1567683135099906841" resolveInfo="graph" />
            </node>
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906787">
              <link role="baseMethodDeclaration:3" targetNodeId="1.8567569493821107956" resolveInfo="getNodes" />
            </node>
          </node>
          <node role="body:7" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1567683135099906788">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement:7" id="1567683135099906789">
              <node role="variable:7" type="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable:7" id="1567683135099906790">
                <property name="name:7" value="edge" />
              </node>
              <node role="inputSequence:7" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906791">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference:7" id="1567683135099906792">
                  <link role="variable:7" targetNodeId="1567683135099906784" resolveInfo="node" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906793">
                  <link role="baseMethodDeclaration:3" targetNodeId="1.8567569493821110932" resolveInfo="getOutEdges" />
                </node>
              </node>
              <node role="body:7" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1567683135099906794">
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1567683135099906795">
                  <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.GreaterThanExpression:3" id="4519409331094621132">
                    <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4519409331094621135">
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="4519409331094621136">
                        <link role="variableDeclaration:3" targetNodeId="1567683135099906843" resolveInfo="layers" />
                      </node>
                      <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="4519409331094621137">
                        <link role="baseMethodDeclaration:3" targetNodeId="2.4666079041336409382" resolveInfo="get" />
                        <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4519409331094621138">
                          <node role="operand:3" type="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference:7" id="4519409331094621139">
                            <link role="variable:7" targetNodeId="1567683135099906790" resolveInfo="edge" />
                          </node>
                          <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="4519409331094621140">
                            <link role="baseMethodDeclaration:3" targetNodeId="1.8567569493821111981" resolveInfo="getSource" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4519409331094621141">
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="4519409331094621142">
                        <link role="variableDeclaration:3" targetNodeId="1567683135099906843" resolveInfo="layers" />
                      </node>
                      <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="4519409331094621143">
                        <link role="baseMethodDeclaration:3" targetNodeId="2.4666079041336409382" resolveInfo="get" />
                        <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4519409331094621144">
                          <node role="operand:3" type="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference:7" id="4519409331094621145">
                            <link role="variable:7" targetNodeId="1567683135099906790" resolveInfo="edge" />
                          </node>
                          <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="4519409331094621146">
                            <link role="baseMethodDeclaration:3" targetNodeId="1.8567569493821111989" resolveInfo="getTarget" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1567683135099906811">
                    <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1567683135099906812">
                      <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.BooleanConstant:3" id="1567683135099906813">
                        <property name="value:3" value="true" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement:7" id="1567683135099906814">
              <node role="variable:7" type="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable:7" id="1567683135099906815">
                <property name="name:7" value="edge" />
              </node>
              <node role="inputSequence:7" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1567683135099906816">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference:7" id="1567683135099906817">
                  <link role="variable:7" targetNodeId="1567683135099906784" resolveInfo="node" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1567683135099906818">
                  <link role="baseMethodDeclaration:3" targetNodeId="1.190081711777510135" resolveInfo="getInEdges" />
                </node>
              </node>
              <node role="body:7" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1567683135099906819">
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1567683135099906820">
                  <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.GreaterThanExpression:3" id="4519409331094621147">
                    <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4519409331094621150">
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="4519409331094621151">
                        <link role="variableDeclaration:3" targetNodeId="1567683135099906843" resolveInfo="layers" />
                      </node>
                      <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="4519409331094621152">
                        <link role="baseMethodDeclaration:3" targetNodeId="2.4666079041336409382" resolveInfo="get" />
                        <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4519409331094621153">
                          <node role="operand:3" type="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference:7" id="4519409331094621154">
                            <link role="variable:7" targetNodeId="1567683135099906815" resolveInfo="edge" />
                          </node>
                          <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="4519409331094621155">
                            <link role="baseMethodDeclaration:3" targetNodeId="1.8567569493821111981" resolveInfo="getSource" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4519409331094621156">
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="4519409331094621157">
                        <link role="variableDeclaration:3" targetNodeId="1567683135099906843" resolveInfo="layers" />
                      </node>
                      <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="4519409331094621158">
                        <link role="baseMethodDeclaration:3" targetNodeId="2.4666079041336409382" resolveInfo="get" />
                        <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4519409331094621159">
                          <node role="operand:3" type="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference:7" id="4519409331094621160">
                            <link role="variable:7" targetNodeId="1567683135099906815" resolveInfo="edge" />
                          </node>
                          <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="4519409331094621161">
                            <link role="baseMethodDeclaration:3" targetNodeId="1.8567569493821111989" resolveInfo="getTarget" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1567683135099906836">
                    <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1567683135099906837">
                      <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.BooleanConstant:3" id="1567683135099906838">
                        <property name="value:3" value="true" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1567683135099906839">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.BooleanConstant:3" id="1567683135099906840" />
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1567683135099906841">
        <property name="name:3" value="graph" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1567683135099906842">
          <link role="classifier:3" targetNodeId="1.8567569493821103298" resolveInfo="Graph" />
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1567683135099906843">
        <property name="name:3" value="layers" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1567683135099906844">
          <link role="classifier:3" targetNodeId="2.4666079041336409356" resolveInfo="NodeLayers" />
        </node>
      </node>
    </node>
    <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1567683135099906845" />
  </node>
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="6088058844796081230">
    <property name="package:3" value="utils" />
    <property name="name:3" value="CheckDummyEdgesCrossing" />
    <node role="staticMethod:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration:3" id="7033456583153162448">
      <property name="name:3" value="hasCrosses" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="7033456583153162586" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7033456583153162450" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7033456583153162451">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ForStatement:3" id="7033456583153162475">
          <node role="variable:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="7033456583153162476">
            <property name="name:3" value="layer" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="7033456583153162477" />
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="7033456583153162478">
              <property name="value:3" value="0" />
            </node>
          </node>
          <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7033456583153162479">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="7033456583153162480">
              <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="7033456583153162481">
                <property name="name:3" value="dummyNodes" />
                <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4519409331094661747">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7033456583153162484">
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4519409331094688043">
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="4519409331094688042">
                        <link role="variableDeclaration:3" targetNodeId="7033456583153162458" resolveInfo="order" />
                      </node>
                      <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="4519409331094688047">
                        <link role="baseMethodDeclaration:3" targetNodeId="2.3256072703923739006" resolveInfo="getOrder" />
                        <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="4519409331094688048">
                          <link role="variableDeclaration:3" targetNodeId="7033456583153162476" resolveInfo="layer" />
                        </node>
                      </node>
                    </node>
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.collections.structure.WhereOperation:7" id="7033456583153162488">
                      <node role="closure:7" type="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral:3" id="7033456583153162489">
                        <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7033456583153162490">
                          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7033456583153162491">
                            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7033456583153162492">
                              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7033456583153162493">
                                <link role="variableDeclaration:3" targetNodeId="7033456583153162495" resolveInfo="it" />
                              </node>
                              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7033456583153162494">
                                <link role="baseMethodDeclaration:3" targetNodeId="1.6088058844796081325" resolveInfo="isDummy" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="parameter:3" type="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration:7" id="7033456583153162495">
                          <property name="name:7" value="it" />
                          <node role="type:7" type="jetbrains.mps.baseLanguage.structure.WildCardType:3" id="7033456583153162496" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.collections.structure.ToListOperation:7" id="4519409331094661751" />
                </node>
                <node role="type:3" type="jetbrains.mps.baseLanguage.collections.structure.ListType:7" id="4519409331094661743">
                  <node role="elementType:7" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="4519409331094661745">
                    <link role="classifier:3" targetNodeId="1.4671312709908983848" resolveInfo="Node" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ForStatement:3" id="7033456583153162497">
              <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7033456583153162498">
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ForStatement:3" id="7033456583153162499">
                  <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7033456583153162500">
                    <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="7033456583153162501">
                      <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="7033456583153162502">
                        <property name="name:3" value="firstTarget" />
                        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7033456583153162503">
                          <link role="classifier:3" targetNodeId="1.4671312709908983848" resolveInfo="Node" />
                        </node>
                        <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7033456583153162504">
                          <node role="operand:3" type="jetbrains.mps.baseLanguage.collections.structure.ListElementAccessExpression:7" id="7033456583153162505">
                            <node role="index:7" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="7033456583153162506">
                              <property name="value:3" value="0" />
                            </node>
                            <node role="list:7" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7033456583153162507">
                              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4519409331094661739">
                                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="4519409331094661738">
                                  <link role="variableDeclaration:3" targetNodeId="7033456583153162481" resolveInfo="dummyNodes" />
                                </node>
                                <node role="operation:3" type="jetbrains.mps.baseLanguage.collections.structure.GetElementOperation:7" id="4519409331094661752">
                                  <node role="argument:7" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="4519409331094661754">
                                    <link role="variableDeclaration:3" targetNodeId="7033456583153162561" resolveInfo="first" />
                                  </node>
                                </node>
                              </node>
                              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7033456583153162512">
                                <link role="baseMethodDeclaration:3" targetNodeId="1.8567569493821110932" resolveInfo="getOutEdges" />
                              </node>
                            </node>
                          </node>
                          <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7033456583153162513">
                            <link role="baseMethodDeclaration:3" targetNodeId="1.8567569493821111989" resolveInfo="getTarget" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="7033456583153162514">
                      <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="7033456583153162515">
                        <property name="name:3" value="secondTarget" />
                        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7033456583153162516">
                          <link role="classifier:3" targetNodeId="1.4671312709908983848" resolveInfo="Node" />
                        </node>
                        <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7033456583153162517">
                          <node role="operand:3" type="jetbrains.mps.baseLanguage.collections.structure.ListElementAccessExpression:7" id="7033456583153162518">
                            <node role="index:7" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="7033456583153162519">
                              <property name="value:3" value="0" />
                            </node>
                            <node role="list:7" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7033456583153162520">
                              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4519409331094661755">
                                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="4519409331094661756">
                                  <link role="variableDeclaration:3" targetNodeId="7033456583153162481" resolveInfo="dummyNodes" />
                                </node>
                                <node role="operation:3" type="jetbrains.mps.baseLanguage.collections.structure.GetElementOperation:7" id="4519409331094661757">
                                  <node role="argument:7" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="4519409331094661759">
                                    <link role="variableDeclaration:3" targetNodeId="7033456583153162549" resolveInfo="second" />
                                  </node>
                                </node>
                              </node>
                              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7033456583153162525">
                                <link role="baseMethodDeclaration:3" targetNodeId="1.8567569493821110932" resolveInfo="getOutEdges" />
                              </node>
                            </node>
                          </node>
                          <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7033456583153162526">
                            <link role="baseMethodDeclaration:3" targetNodeId="1.8567569493821111989" resolveInfo="getTarget" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="4519409331094687696">
                      <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.AndExpression:3" id="4519409331094687705">
                        <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4519409331094687713">
                          <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="4519409331094687712">
                            <link role="variableDeclaration:3" targetNodeId="7033456583153162515" resolveInfo="secondTarget" />
                          </node>
                          <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="4519409331094687717">
                            <link role="baseMethodDeclaration:3" targetNodeId="1.6088058844796081325" resolveInfo="isDummy" />
                          </node>
                        </node>
                        <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4519409331094687700">
                          <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="4519409331094687699">
                            <link role="variableDeclaration:3" targetNodeId="7033456583153162502" resolveInfo="firstTarget" />
                          </node>
                          <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="4519409331094687704">
                            <link role="baseMethodDeclaration:3" targetNodeId="1.6088058844796081325" resolveInfo="isDummy" />
                          </node>
                        </node>
                      </node>
                      <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="4519409331094687698">
                        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="7033456583153162527">
                          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="7033456583153162528">
                            <property name="name:3" value="nextLayerOrder" />
                            <node role="type:3" type="jetbrains.mps.baseLanguage.collections.structure.ListType:7" id="7033456583153162529">
                              <node role="elementType:7" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7033456583153162530">
                                <link role="classifier:3" targetNodeId="1.4671312709908983848" resolveInfo="Node" />
                              </node>
                            </node>
                            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7033456583153162531">
                              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7033456583153162532">
                                <link role="variableDeclaration:3" targetNodeId="7033456583153162458" resolveInfo="order" />
                              </node>
                              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7033456583153162533">
                                <link role="baseMethodDeclaration:3" targetNodeId="2.3256072703923739006" resolveInfo="getOrder" />
                                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.PlusExpression:3" id="7033456583153162534">
                                  <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="7033456583153162535">
                                    <property name="value:3" value="1" />
                                  </node>
                                  <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7033456583153162536">
                                    <link role="variableDeclaration:3" targetNodeId="7033456583153162476" resolveInfo="layer" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="7033456583153162537">
                          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7033456583153162538">
                            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7033456583153162583">
                              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.BooleanConstant:3" id="7033456583153162585">
                                <property name="value:3" value="true" />
                              </node>
                            </node>
                          </node>
                          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.GreaterThanExpression:3" id="7033456583153162540">
                            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7033456583153162541">
                              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7033456583153162542">
                                <link role="variableDeclaration:3" targetNodeId="7033456583153162528" resolveInfo="nextLayerOrder" />
                              </node>
                              <node role="operation:3" type="jetbrains.mps.baseLanguage.collections.structure.GetIndexOfOperation:7" id="7033456583153162543">
                                <node role="argument:7" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7033456583153162544">
                                  <link role="variableDeclaration:3" targetNodeId="7033456583153162502" resolveInfo="firstTarget" />
                                </node>
                              </node>
                            </node>
                            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7033456583153162545">
                              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7033456583153162546">
                                <link role="variableDeclaration:3" targetNodeId="7033456583153162528" resolveInfo="nextLayerOrder" />
                              </node>
                              <node role="operation:3" type="jetbrains.mps.baseLanguage.collections.structure.GetIndexOfOperation:7" id="7033456583153162547">
                                <node role="argument:7" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7033456583153162548">
                                  <link role="variableDeclaration:3" targetNodeId="7033456583153162515" resolveInfo="secondTarget" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="variable:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="7033456583153162549">
                    <property name="name:3" value="second" />
                    <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="7033456583153162550" />
                    <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.PlusExpression:3" id="7033456583153162551">
                      <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="7033456583153162552">
                        <property name="value:3" value="1" />
                      </node>
                      <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7033456583153162553">
                        <link role="variableDeclaration:3" targetNodeId="7033456583153162561" resolveInfo="first" />
                      </node>
                    </node>
                  </node>
                  <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.LessThanExpression:3" id="7033456583153162554">
                    <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7033456583153162555">
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7033456583153162556">
                        <link role="variableDeclaration:3" targetNodeId="7033456583153162481" resolveInfo="dummyNodes" />
                      </node>
                      <node role="operation:3" type="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation:7" id="7033456583153162557" />
                    </node>
                    <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7033456583153162558">
                      <link role="variableDeclaration:3" targetNodeId="7033456583153162549" resolveInfo="second" />
                    </node>
                  </node>
                  <node role="iteration:3" type="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression:3" id="7033456583153162559">
                    <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7033456583153162560">
                      <link role="variableDeclaration:3" targetNodeId="7033456583153162549" resolveInfo="second" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="variable:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="7033456583153162561">
                <property name="name:3" value="first" />
                <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="7033456583153162562" />
                <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="7033456583153162563">
                  <property name="value:3" value="0" />
                </node>
              </node>
              <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.LessThanExpression:3" id="7033456583153162564">
                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7033456583153162565">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7033456583153162566">
                    <link role="variableDeclaration:3" targetNodeId="7033456583153162481" resolveInfo="dummyNodes" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation:7" id="7033456583153162567" />
                </node>
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7033456583153162568">
                  <link role="variableDeclaration:3" targetNodeId="7033456583153162561" resolveInfo="first" />
                </node>
              </node>
              <node role="iteration:3" type="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression:3" id="7033456583153162569">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7033456583153162570">
                  <link role="variableDeclaration:3" targetNodeId="7033456583153162561" resolveInfo="first" />
                </node>
              </node>
            </node>
          </node>
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.LessThanExpression:3" id="7033456583153162571">
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7033456583153162572">
              <link role="variableDeclaration:3" targetNodeId="7033456583153162476" resolveInfo="layer" />
            </node>
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.MinusExpression:3" id="7033456583153167818">
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="7033456583153167821">
                <property name="value:3" value="1" />
              </node>
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7033456583153162574">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7033456583153162575">
                  <link role="variableDeclaration:3" targetNodeId="7033456583153162458" resolveInfo="order" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7033456583153162576">
                  <link role="baseMethodDeclaration:3" targetNodeId="2.4660430665333276421" resolveInfo="getMaxLayer" />
                </node>
              </node>
            </node>
          </node>
          <node role="iteration:3" type="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression:3" id="7033456583153162578">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7033456583153162579">
              <link role="variableDeclaration:3" targetNodeId="7033456583153162476" resolveInfo="layer" />
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="7033456583153162588">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.BooleanConstant:3" id="7033456583153162590">
            <property name="value:3" value="false" />
          </node>
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="7033456583153162458">
        <property name="name:3" value="order" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7033456583153162459">
          <link role="classifier:3" targetNodeId="2.2350882467504388199" resolveInfo="NodeLayeredOrder" />
        </node>
      </node>
    </node>
    <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="6088058844796081231" />
  </node>
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="4519409331094619347">
    <property name="name:3" value="EdgeReverterProxy" />
    <property name="package:3" value="proxy" />
    <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="4519409331094619356">
      <property name="name:3" value="myReverter" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="4519409331094619357" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="4519409331094619359">
        <link role="classifier:3" targetNodeId="2.4660430665333276854" resolveInfo="IEdgeReverter" />
      </node>
    </node>
    <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="4519409331094619348" />
    <node role="constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="4519409331094619349">
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="4519409331094619350" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="4519409331094619351" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="4519409331094619352">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="4519409331094619360">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="4519409331094619362">
            <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="4519409331094619365">
              <link role="variableDeclaration:3" targetNodeId="4519409331094619354" resolveInfo="reverter" />
            </node>
            <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="4519409331094619361">
              <link role="variableDeclaration:3" targetNodeId="4519409331094619356" resolveInfo="myReverter" />
            </node>
          </node>
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="4519409331094619354">
        <property name="name:3" value="reverter" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="4519409331094619355">
          <link role="classifier:3" targetNodeId="2.4660430665333276854" resolveInfo="IEdgeReverter" />
        </node>
      </node>
    </node>
    <node role="implementedInterface:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="4519409331094619353">
      <link role="classifier:3" targetNodeId="2.4660430665333276854" resolveInfo="IEdgeReverter" />
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="4519409331094619366">
      <property name="name:3" value="revertEdges" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.collections.structure.SetType:7" id="4519409331094619367">
        <node role="elementType:7" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="4519409331094619368">
          <link role="classifier:3" targetNodeId="1.8567569493821103292" resolveInfo="Edge" />
        </node>
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="4519409331094619369" />
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="4519409331094619370">
        <property name="name:3" value="g" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="4519409331094619371">
          <link role="classifier:3" targetNodeId="1.8567569493821103298" resolveInfo="Graph" />
        </node>
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="4519409331094619372">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="4519409331094619373">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="4519409331094619374">
            <property name="name:3" value="reverted" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.collections.structure.SetType:7" id="4519409331094619375">
              <node role="elementType:7" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="4519409331094619377">
                <link role="classifier:3" targetNodeId="1.8567569493821103292" resolveInfo="Edge" />
              </node>
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4519409331094619380">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="4519409331094619379">
                <link role="variableDeclaration:3" targetNodeId="4519409331094619356" resolveInfo="myReverter" />
              </node>
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="4519409331094619384">
                <link role="baseMethodDeclaration:3" targetNodeId="2.4660430665333276856" resolveInfo="revertEdges" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="4519409331094619385">
                  <link role="variableDeclaration:3" targetNodeId="4519409331094619370" resolveInfo="g" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.unitTest.structure.AssertFalse" id="4519409331094619392">
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4519409331094619397">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="4519409331094619394">
              <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="4519409331094619396">
                <link role="baseMethodDeclaration:3" targetNodeId="1567683135099906773" resolveInfo="CheckCycles" />
              </node>
            </node>
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="4519409331094619401">
              <link role="baseMethodDeclaration:3" targetNodeId="1567683135099906737" resolveInfo="hasCycle" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="4519409331094619402">
                <link role="variableDeclaration:3" targetNodeId="4519409331094619370" resolveInfo="g" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="4519409331094619387">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="4519409331094619389">
            <link role="variableDeclaration:3" targetNodeId="4519409331094619374" resolveInfo="reverted" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="4519409331094620043">
    <property name="package:3" value="proxy" />
    <property name="name:3" value="LayererProxy" />
    <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="4519409331094620050">
      <property name="name:3" value="myLayerer" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="4519409331094620051" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="4519409331094620053">
        <link role="classifier:3" targetNodeId="2.8567569493821107820" resolveInfo="ILayerer" />
      </node>
    </node>
    <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="4519409331094620044" />
    <node role="constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="4519409331094620045">
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="4519409331094620046" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="4519409331094620047" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="4519409331094620048">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="4519409331094620056">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="4519409331094620058">
            <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="4519409331094620061">
              <link role="variableDeclaration:3" targetNodeId="4519409331094620054" resolveInfo="layerer" />
            </node>
            <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="4519409331094620057">
              <link role="variableDeclaration:3" targetNodeId="4519409331094620050" resolveInfo="myLayerer" />
            </node>
          </node>
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="4519409331094620054">
        <property name="name:3" value="layerer" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="4519409331094620055">
          <link role="classifier:3" targetNodeId="2.8567569493821107820" resolveInfo="ILayerer" />
        </node>
      </node>
    </node>
    <node role="implementedInterface:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="4519409331094620049">
      <link role="classifier:3" targetNodeId="2.8567569493821107820" resolveInfo="ILayerer" />
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="4519409331094620062">
      <property name="name:3" value="computeLayers" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="4519409331094620063">
        <link role="classifier:3" targetNodeId="2.4666079041336409356" resolveInfo="NodeLayers" />
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="4519409331094620064" />
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="4519409331094620065">
        <property name="name:3" value="graph" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="4519409331094620066">
          <link role="classifier:3" targetNodeId="1.8567569493821103298" resolveInfo="Graph" />
        </node>
      </node>
      <node role="throwsItem:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="4519409331094620067">
        <link role="classifier:3" targetNodeId="2v.~IllegalArgumentException" resolveInfo="IllegalArgumentException" />
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="4519409331094620068">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="4519409331094620073">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="4519409331094620074">
            <property name="name:3" value="layers" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="4519409331094620075">
              <link role="classifier:3" targetNodeId="2.4666079041336409356" resolveInfo="NodeLayers" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4519409331094620078">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="4519409331094620077">
                <link role="variableDeclaration:3" targetNodeId="4519409331094620050" resolveInfo="myLayerer" />
              </node>
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="4519409331094620082">
                <link role="baseMethodDeclaration:3" targetNodeId="2.8567569493821107822" resolveInfo="computeLayers" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="4519409331094620083">
                  <link role="variableDeclaration:3" targetNodeId="4519409331094620065" resolveInfo="graph" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.unitTest.structure.AssertFalse" id="4519409331094620099">
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="4519409331094620101">
            <link role="classConcept:3" targetNodeId="1567683135099906778" resolveInfo="CheckLayers" />
            <link role="baseMethodDeclaration:3" targetNodeId="1567683135099906779" resolveInfo="hasBadEdges" />
            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="4519409331094620104">
              <link role="variableDeclaration:3" targetNodeId="4519409331094620065" resolveInfo="graph" />
            </node>
            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="4519409331094620102">
              <link role="variableDeclaration:3" targetNodeId="4519409331094620074" resolveInfo="layers" />
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="4519409331094620085">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="4519409331094620087">
            <link role="variableDeclaration:3" targetNodeId="4519409331094620074" resolveInfo="layers" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="4519409331094621475">
    <property name="package:3" value="proxy" />
    <property name="name:3" value="MedianLayerByLayerSorterProxy" />
    <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="4519409331094621482">
      <property name="name:3" value="mySorter" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="4519409331094621483" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="4519409331094621486">
        <link role="classifier:3" targetNodeId="2.190081711777509436" resolveInfo="LayerByLayerNodeSorter" />
      </node>
    </node>
    <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="4519409331094621476" />
    <node role="constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="4519409331094621477">
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="4519409331094621478" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="4519409331094621479" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="4519409331094621480">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="4519409331094621487">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="4519409331094621489">
            <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="4519409331094621488">
              <link role="variableDeclaration:3" targetNodeId="4519409331094621482" resolveInfo="mySorter" />
            </node>
            <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="4519409331094621492">
              <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="4519409331094621494">
                <link role="baseMethodDeclaration:3" targetNodeId="2.190081711777509438" resolveInfo="LayerByLayerNodeSorter" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="4519409331094621495">
                  <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="4519409331094621497">
                    <link role="baseMethodDeclaration:3" targetNodeId="2.190081711777509917" resolveInfo="MedianLayerSorter" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="implementedInterface:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="4519409331094621481">
      <link role="classifier:3" targetNodeId="2.4666079041336343296" resolveInfo="INodeSorter" />
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="4519409331094621498">
      <property name="name:3" value="sortNodes" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="4519409331094621499" />
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="4519409331094621500">
        <property name="name:3" value="graph" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="4519409331094621501">
          <link role="classifier:3" targetNodeId="1.8567569493821103298" resolveInfo="Graph" />
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="4519409331094621502">
        <property name="name:3" value="layers" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="4519409331094621503">
          <link role="classifier:3" targetNodeId="2.4666079041336409356" resolveInfo="NodeLayers" />
        </node>
      </node>
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="4519409331094621504">
        <link role="classifier:3" targetNodeId="2.2350882467504388199" resolveInfo="NodeLayeredOrder" />
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="4519409331094621505">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="4519409331094621511">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="4519409331094621512">
            <property name="name:3" value="order" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="4519409331094621513">
              <link role="classifier:3" targetNodeId="2.2350882467504388199" resolveInfo="NodeLayeredOrder" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4519409331094621516">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="4519409331094621515">
                <link role="variableDeclaration:3" targetNodeId="4519409331094621482" resolveInfo="mySorter" />
              </node>
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="4519409331094621520">
                <link role="baseMethodDeclaration:3" targetNodeId="2.190081711777509447" resolveInfo="sortNodes" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="4519409331094621521">
                  <link role="variableDeclaration:3" targetNodeId="4519409331094621500" resolveInfo="graph" />
                </node>
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="4519409331094621523">
                  <link role="variableDeclaration:3" targetNodeId="4519409331094621502" resolveInfo="layers" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.unitTest.structure.AssertFalse" id="4519409331094621529">
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="4519409331094621532">
            <link role="baseMethodDeclaration:3" targetNodeId="7033456583153162448" resolveInfo="hasCrosses" />
            <link role="classConcept:3" targetNodeId="6088058844796081230" resolveInfo="CheckDummyEdgesCrossing" />
            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="4519409331094621533">
              <link role="variableDeclaration:3" targetNodeId="4519409331094621512" resolveInfo="order" />
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="4519409331094621525">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="4519409331094621527">
            <link role="variableDeclaration:3" targetNodeId="4519409331094621512" resolveInfo="order" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.unitTest.structure.BTestCase" id="4519409331094801569">
    <property name="testCaseName" value="BlockGraphProcessor" />
    <node role="method" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="5180427534211902517">
      <property name="name:3" value="test" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="5180427534211902518" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="5180427534211902519" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="5180427534211902520">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="5180427534211902524">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="5180427534211902525">
            <property name="name:3" value="blockGraph" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="5180427534211902526">
              <link role="classifier:3" targetNodeId="1.8567569493821103298" resolveInfo="Graph" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="5180427534211902527">
              <link role="classConcept:3" targetNodeId="5.1567683135099906914" resolveInfo="GraphIO" />
              <link role="baseMethodDeclaration:3" targetNodeId="5.1567683135099906915" resolveInfo="scanGraph" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="5180427534211902528">
                <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="5180427534211902529">
                  <link role="baseMethodDeclaration:3" targetNodeId="6.~Scanner.&lt;init&gt;(java.lang.String)" resolveInfo="Scanner" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="5180427534211902538">
                    <link role="variableDeclaration:3" targetNodeId="5180427534211902521" resolveInfo="graphString" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="5180427534211903959">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="5180427534211903960">
            <property name="name:3" value="layers" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="5180427534211903961">
              <link role="classifier:3" targetNodeId="2.4666079041336409356" resolveInfo="NodeLayers" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="5180427534211903963">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="5180427534211903964">
                <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="5180427534211903965">
                  <link role="baseMethodDeclaration:3" targetNodeId="2.4519409331094794630" resolveInfo="BlockGraphProcessor" />
                </node>
              </node>
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="5180427534211903966">
                <link role="baseMethodDeclaration:3" targetNodeId="2.4519409331094794634" resolveInfo="process" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="5180427534211903967">
                  <link role="variableDeclaration:3" targetNodeId="5180427534211902525" resolveInfo="blockGraph" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement:7" id="5180427534211903969">
          <node role="variable:7" type="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable:7" id="5180427534211903970">
            <property name="name:7" value="node" />
          </node>
          <node role="inputSequence:7" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="5180427534211903974">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="5180427534211903973">
              <link role="variableDeclaration:3" targetNodeId="5180427534211902525" resolveInfo="blockGraph" />
            </node>
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="5180427534211903978">
              <link role="baseMethodDeclaration:3" targetNodeId="1.8567569493821107956" resolveInfo="getNodes" />
            </node>
          </node>
          <node role="body:7" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="5180427534211903972">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="5180427534211903979">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="5180427534211903981">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="5180427534211903980">
                  <link role="classifier:3" targetNodeId="2v.~System" resolveInfo="System" />
                  <link role="variableDeclaration:3" targetNodeId="2v.~System.out" resolveInfo="out" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="5180427534211903985">
                  <link role="baseMethodDeclaration:3" targetNodeId="7.~PrintStream.println(java.lang.String):void" resolveInfo="println" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.PlusExpression:3" id="5180427534211904004">
                    <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.PlusExpression:3" id="5180427534211904000">
                      <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.PlusExpression:3" id="5180427534211903987">
                        <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="5180427534211903986">
                          <property name="value:3" value="node " />
                        </node>
                        <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="5180427534211903995">
                          <node role="operand:3" type="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference:7" id="5180427534211903994">
                            <link role="variable:7" targetNodeId="5180427534211903970" resolveInfo="node" />
                          </node>
                          <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="5180427534211903999">
                            <link role="baseMethodDeclaration:3" targetNodeId="1.4660430665333281569" resolveInfo="getIndex" />
                          </node>
                        </node>
                      </node>
                      <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="5180427534211904003">
                        <property name="value:3" value=": " />
                      </node>
                    </node>
                    <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="5180427534211904008">
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="5180427534211904007">
                        <link role="variableDeclaration:3" targetNodeId="5180427534211903960" resolveInfo="layers" />
                      </node>
                      <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="5180427534211904012">
                        <link role="baseMethodDeclaration:3" targetNodeId="2.4666079041336409382" resolveInfo="get" />
                        <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference:7" id="5180427534211904013">
                          <link role="variable:7" targetNodeId="5180427534211903970" resolveInfo="node" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="5180427534211904355">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="5180427534211904357">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="5180427534211904356">
              <link role="classifier:3" targetNodeId="2v.~System" resolveInfo="System" />
              <link role="variableDeclaration:3" targetNodeId="2v.~System.out" resolveInfo="out" />
            </node>
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="5180427534211904361">
              <link role="baseMethodDeclaration:3" targetNodeId="7.~PrintStream.println(java.lang.String):void" resolveInfo="println" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="5180427534211904362">
                <property name="value:3" value="----" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="5180427534211902521">
        <property name="name:3" value="graphString" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="5180427534211902522" />
      </node>
    </node>
    <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="4519409331094801570" />
    <node role="constructor" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="4519409331094801571">
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="4519409331094801572" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="4519409331094801573" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="4519409331094801574" />
    </node>
    <node role="testMethodList" type="jetbrains.mps.baseLanguage.unitTest.structure.TestMethodList" id="4519409331094801575">
      <node role="testMethod" type="jetbrains.mps.baseLanguage.unitTest.structure.TestMethod" id="4519409331094801576">
        <property name="methodName" value="test1" />
        <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="4519409331094801577" />
        <node role="returnType" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="4519409331094801578" />
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="4519409331094801579">
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="4519409331094801580">
            <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="4519409331094801581">
              <property name="name:3" value="graphString" />
              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="4519409331094801582" />
              <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="4519409331094801584">
                <property name="value:3" value="5 4  0 1  1 2  3 2  3 4" />
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="5180427534211902540">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceMethodCall:3" id="5180427534211902541">
              <link role="baseMethodDeclaration:3" targetNodeId="5180427534211902517" resolveInfo="test" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="5180427534211902542">
                <link role="variableDeclaration:3" targetNodeId="4519409331094801581" resolveInfo="graphString" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="testMethod" type="jetbrains.mps.baseLanguage.unitTest.structure.TestMethod" id="5180427534211902494">
        <property name="methodName" value="test2" />
        <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="5180427534211902495" />
        <node role="returnType" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="5180427534211902496" />
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="5180427534211902497">
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="5180427534211902500">
            <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="5180427534211902501">
              <property name="name:3" value="graphString" />
              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="5180427534211902502" />
              <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="5180427534211902503">
                <property name="value:3" value="7 8 0 1  0 2  1 2  2 3  4 2  4 5   5 6  6 3" />
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="5180427534211902544">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceMethodCall:3" id="5180427534211902545">
              <link role="baseMethodDeclaration:3" targetNodeId="5180427534211902517" resolveInfo="test" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="5180427534211902546">
                <link role="variableDeclaration:3" targetNodeId="5180427534211902501" resolveInfo="graphString" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="testMethod" type="jetbrains.mps.baseLanguage.unitTest.structure.TestMethod" id="5180427534211903487">
        <property name="methodName" value="test3" />
        <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="5180427534211903488" />
        <node role="returnType" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="5180427534211903489" />
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="5180427534211903490">
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="5180427534211903503">
            <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="5180427534211903504">
              <property name="name:3" value="graphString" />
              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="5180427534211903505" />
              <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="5180427534211903506">
                <property name="value:3" value="8 10 0 1  0 2  1 2  2 3  4 2  4 5   5 6  6 3 6 7  7 3" />
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="5180427534211903507">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceMethodCall:3" id="5180427534211903508">
              <link role="baseMethodDeclaration:3" targetNodeId="5180427534211902517" resolveInfo="test" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="5180427534211903509">
                <link role="variableDeclaration:3" targetNodeId="5180427534211903504" resolveInfo="graphString" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.unitTest.structure.BTestCase" id="5180427534212023078">
    <property name="testCaseName" value="BFSNewLayerer" />
    <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="5180427534212023079" />
    <node role="constructor" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="5180427534212023080">
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="5180427534212023081" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="5180427534212023082" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="5180427534212023083" />
    </node>
    <node role="testMethodList" type="jetbrains.mps.baseLanguage.unitTest.structure.TestMethodList" id="5180427534212023084">
      <node role="testMethod" type="jetbrains.mps.baseLanguage.unitTest.structure.TestMethod" id="5180427534212023085">
        <property name="methodName" value="chain1" />
        <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="5180427534212023086" />
        <node role="returnType" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="5180427534212023087" />
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="5180427534212023088">
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="5180427534212023089">
            <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="5180427534212023090">
              <property name="name:3" value="chain" />
              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="5180427534212023091">
                <link role="classifier:3" targetNodeId="1.8567569493821103298" resolveInfo="Graph" />
              </node>
              <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="5180427534212023092">
                <link role="classConcept:3" targetNodeId="4.3437556975695847443" resolveInfo="SimpleDirectedGraphs" />
                <link role="baseMethodDeclaration:3" targetNodeId="4.3437556975695847473" resolveInfo="chain" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="5180427534212023093">
                  <property name="value:3" value="1" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="5180427534212023094">
            <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="5180427534212023095">
              <property name="name:3" value="nodeLayers" />
              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="5180427534212023096">
                <link role="classifier:3" targetNodeId="2.4666079041336409356" resolveInfo="NodeLayers" />
              </node>
              <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="5180427534212023097">
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="5180427534212023098">
                  <link role="baseMethodDeclaration:3" targetNodeId="4519409331094620062" resolveInfo="computeLayers" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="5180427534212023099">
                    <link role="variableDeclaration:3" targetNodeId="5180427534212023090" resolveInfo="chain" />
                  </node>
                </node>
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="5180427534212023100">
                  <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="5180427534212023101">
                    <link role="baseMethodDeclaration:3" targetNodeId="4519409331094620045" resolveInfo="LayererProxy" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="5180427534212023102">
                      <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="5180427534212023103">
                        <link role="baseMethodDeclaration:3" targetNodeId="2.5180427534212021893" resolveInfo="BFSNewLayerer" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="5180427534212023104">
            <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="5180427534212023105">
              <property name="name:3" value="layers" />
              <node role="type:3" type="jetbrains.mps.baseLanguage.collections.structure.MapType:7" id="5180427534212023106">
                <node role="keyType:7" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="5180427534212023107">
                  <link role="classifier:3" targetNodeId="1.4671312709908983848" resolveInfo="Node" />
                </node>
                <node role="valueType:7" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="5180427534212023108">
                  <link role="classifier:3" targetNodeId="2v.~Integer" resolveInfo="Integer" />
                </node>
              </node>
              <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="5180427534212023109">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="5180427534212023110">
                  <link role="variableDeclaration:3" targetNodeId="5180427534212023095" resolveInfo="nodeLayers" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="5180427534212023111">
                  <link role="baseMethodDeclaration:3" targetNodeId="2.4666079041336409669" resolveInfo="getNodeLayers" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" id="5180427534212023112">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="5180427534212023113">
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="5180427534212023114">
                <property name="value:3" value="0" />
              </node>
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.collections.structure.MapElement:7" id="5180427534212023115">
                <node role="key:7" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="5180427534212023116">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="5180427534212023117">
                    <link role="variableDeclaration:3" targetNodeId="5180427534212023090" resolveInfo="chain" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="5180427534212023118">
                    <link role="baseMethodDeclaration:3" targetNodeId="1.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="5180427534212023119">
                      <property name="value:3" value="0" />
                    </node>
                  </node>
                </node>
                <node role="map:7" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="5180427534212023120">
                  <link role="variableDeclaration:3" targetNodeId="5180427534212023105" resolveInfo="layers" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="testMethod" type="jetbrains.mps.baseLanguage.unitTest.structure.TestMethod" id="5180427534212023121">
        <property name="methodName" value="chain2" />
        <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="5180427534212023122" />
        <node role="returnType" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="5180427534212023123" />
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="5180427534212023124">
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="5180427534212023125">
            <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="5180427534212023126">
              <property name="name:3" value="chain" />
              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="5180427534212023127">
                <link role="classifier:3" targetNodeId="1.8567569493821103298" resolveInfo="Graph" />
              </node>
              <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="5180427534212023128">
                <link role="baseMethodDeclaration:3" targetNodeId="4.3437556975695847473" resolveInfo="chain" />
                <link role="classConcept:3" targetNodeId="4.3437556975695847443" resolveInfo="SimpleDirectedGraphs" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="5180427534212023129">
                  <property name="value:3" value="2" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="5180427534212023130">
            <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="5180427534212023131">
              <property name="name:3" value="nodeLayers" />
              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="5180427534212023132">
                <link role="classifier:3" targetNodeId="2.4666079041336409356" resolveInfo="NodeLayers" />
              </node>
              <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="5180427534212023133">
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="5180427534212023134">
                  <link role="baseMethodDeclaration:3" targetNodeId="4519409331094620062" resolveInfo="computeLayers" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="5180427534212023135">
                    <link role="variableDeclaration:3" targetNodeId="5180427534212023126" resolveInfo="chain" />
                  </node>
                </node>
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="5180427534212023136">
                  <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="5180427534212023137">
                    <link role="baseMethodDeclaration:3" targetNodeId="4519409331094620045" resolveInfo="LayererProxy" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="5180427534212023138">
                      <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="5180427534212023139">
                        <link role="baseMethodDeclaration:3" targetNodeId="2.5180427534212021893" resolveInfo="BFSNewLayerer" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="5180427534212023140">
            <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="5180427534212023141">
              <property name="name:3" value="layers" />
              <node role="type:3" type="jetbrains.mps.baseLanguage.collections.structure.MapType:7" id="5180427534212023142">
                <node role="keyType:7" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="5180427534212023143">
                  <link role="classifier:3" targetNodeId="1.4671312709908983848" resolveInfo="Node" />
                </node>
                <node role="valueType:7" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="5180427534212023144">
                  <link role="classifier:3" targetNodeId="2v.~Integer" resolveInfo="Integer" />
                </node>
              </node>
              <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="5180427534212023145">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="5180427534212023146">
                  <link role="variableDeclaration:3" targetNodeId="5180427534212023131" resolveInfo="nodeLayers" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="5180427534212023147">
                  <link role="baseMethodDeclaration:3" targetNodeId="2.4666079041336409669" resolveInfo="getNodeLayers" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" id="5180427534212023148">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="5180427534212023149">
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="5180427534212023150">
                <property name="value:3" value="0" />
              </node>
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.collections.structure.MapElement:7" id="5180427534212023151">
                <node role="key:7" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="5180427534212023152">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="5180427534212023153">
                    <link role="variableDeclaration:3" targetNodeId="5180427534212023126" resolveInfo="chain" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="5180427534212023154">
                    <link role="baseMethodDeclaration:3" targetNodeId="1.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="5180427534212023155">
                      <property name="value:3" value="0" />
                    </node>
                  </node>
                </node>
                <node role="map:7" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="5180427534212023156">
                  <link role="variableDeclaration:3" targetNodeId="5180427534212023141" resolveInfo="layers" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" id="5180427534212023157">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="5180427534212023158">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.collections.structure.MapElement:7" id="5180427534212023159">
                <node role="key:7" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="5180427534212023160">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="5180427534212023161">
                    <link role="variableDeclaration:3" targetNodeId="5180427534212023126" resolveInfo="chain" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="5180427534212023162">
                    <link role="baseMethodDeclaration:3" targetNodeId="1.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="5180427534212023163">
                      <property name="value:3" value="1" />
                    </node>
                  </node>
                </node>
                <node role="map:7" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="5180427534212023164">
                  <link role="variableDeclaration:3" targetNodeId="5180427534212023141" resolveInfo="layers" />
                </node>
              </node>
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="5180427534212023165">
                <property name="value:3" value="1" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="testMethod" type="jetbrains.mps.baseLanguage.unitTest.structure.TestMethod" id="5180427534212023166">
        <property name="methodName" value="chain3" />
        <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="5180427534212023167" />
        <node role="returnType" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="5180427534212023168" />
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="5180427534212023169">
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="5180427534212023170">
            <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="5180427534212023171">
              <property name="name:3" value="chain" />
              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="5180427534212023172">
                <link role="classifier:3" targetNodeId="1.8567569493821103298" resolveInfo="Graph" />
              </node>
              <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="5180427534212023173">
                <link role="classConcept:3" targetNodeId="4.3437556975695847443" resolveInfo="SimpleDirectedGraphs" />
                <link role="baseMethodDeclaration:3" targetNodeId="4.3437556975695847473" resolveInfo="chain" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="5180427534212023174">
                  <property name="value:3" value="3" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="5180427534212023175">
            <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="5180427534212023176">
              <property name="name:3" value="nodeLayers" />
              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="5180427534212023177">
                <link role="classifier:3" targetNodeId="2.4666079041336409356" resolveInfo="NodeLayers" />
              </node>
              <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="5180427534212023178">
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="5180427534212023179">
                  <link role="baseMethodDeclaration:3" targetNodeId="4519409331094620062" resolveInfo="computeLayers" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="5180427534212023180">
                    <link role="variableDeclaration:3" targetNodeId="5180427534212023171" resolveInfo="chain" />
                  </node>
                </node>
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="5180427534212023181">
                  <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="5180427534212023182">
                    <link role="baseMethodDeclaration:3" targetNodeId="4519409331094620045" resolveInfo="LayererProxy" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="5180427534212023183">
                      <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="5180427534212023184">
                        <link role="baseMethodDeclaration:3" targetNodeId="2.5180427534212021893" resolveInfo="BFSNewLayerer" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="5180427534212023185">
            <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="5180427534212023186">
              <property name="name:3" value="layers" />
              <node role="type:3" type="jetbrains.mps.baseLanguage.collections.structure.MapType:7" id="5180427534212023187">
                <node role="keyType:7" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="5180427534212023188">
                  <link role="classifier:3" targetNodeId="1.4671312709908983848" resolveInfo="Node" />
                </node>
                <node role="valueType:7" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="5180427534212023189">
                  <link role="classifier:3" targetNodeId="2v.~Integer" resolveInfo="Integer" />
                </node>
              </node>
              <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="5180427534212023190">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="5180427534212023191">
                  <link role="variableDeclaration:3" targetNodeId="5180427534212023176" resolveInfo="nodeLayers" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="5180427534212023192">
                  <link role="baseMethodDeclaration:3" targetNodeId="2.4666079041336409669" resolveInfo="getNodeLayers" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" id="5180427534212023193">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="5180427534212023194">
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="5180427534212023195">
                <property name="value:3" value="0" />
              </node>
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.collections.structure.MapElement:7" id="5180427534212023196">
                <node role="key:7" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="5180427534212023197">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="5180427534212023198">
                    <link role="variableDeclaration:3" targetNodeId="5180427534212023171" resolveInfo="chain" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="5180427534212023199">
                    <link role="baseMethodDeclaration:3" targetNodeId="1.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="5180427534212023200">
                      <property name="value:3" value="0" />
                    </node>
                  </node>
                </node>
                <node role="map:7" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="5180427534212023201">
                  <link role="variableDeclaration:3" targetNodeId="5180427534212023186" resolveInfo="layers" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" id="5180427534212023202">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="5180427534212023203">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.collections.structure.MapElement:7" id="5180427534212023204">
                <node role="key:7" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="5180427534212023205">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="5180427534212023206">
                    <link role="variableDeclaration:3" targetNodeId="5180427534212023171" resolveInfo="chain" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="5180427534212023207">
                    <link role="baseMethodDeclaration:3" targetNodeId="1.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="5180427534212023208">
                      <property name="value:3" value="1" />
                    </node>
                  </node>
                </node>
                <node role="map:7" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="5180427534212023209">
                  <link role="variableDeclaration:3" targetNodeId="5180427534212023186" resolveInfo="layers" />
                </node>
              </node>
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="5180427534212023210">
                <property name="value:3" value="1" />
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" id="5180427534212023211">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="5180427534212023212">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.collections.structure.MapElement:7" id="5180427534212023213">
                <node role="key:7" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="5180427534212023214">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="5180427534212023215">
                    <link role="variableDeclaration:3" targetNodeId="5180427534212023171" resolveInfo="chain" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="5180427534212023216">
                    <link role="baseMethodDeclaration:3" targetNodeId="1.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="5180427534212023217">
                      <property name="value:3" value="2" />
                    </node>
                  </node>
                </node>
                <node role="map:7" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="5180427534212023218">
                  <link role="variableDeclaration:3" targetNodeId="5180427534212023186" resolveInfo="layers" />
                </node>
              </node>
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="5180427534212023219">
                <property name="value:3" value="2" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="testMethod" type="jetbrains.mps.baseLanguage.unitTest.structure.TestMethod" id="5180427534212023220">
        <property name="methodName" value="triangle" />
        <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="5180427534212023221" />
        <node role="returnType" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="5180427534212023222" />
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="5180427534212023223">
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="5180427534212023224">
            <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="5180427534212023225">
              <property name="name:3" value="triangle" />
              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="5180427534212023226">
                <link role="classifier:3" targetNodeId="1.8567569493821103298" resolveInfo="Graph" />
              </node>
              <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="5180427534212023227">
                <link role="baseMethodDeclaration:3" targetNodeId="4.3437556975695847517" resolveInfo="triangle" />
                <link role="classConcept:3" targetNodeId="4.3437556975695847443" resolveInfo="SimpleDirectedGraphs" />
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="5180427534212023228">
            <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="5180427534212023229">
              <property name="name:3" value="nodeLayers" />
              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="5180427534212023230">
                <link role="classifier:3" targetNodeId="2.4666079041336409356" resolveInfo="NodeLayers" />
              </node>
              <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="5180427534212023231">
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="5180427534212023232">
                  <link role="baseMethodDeclaration:3" targetNodeId="4519409331094620062" resolveInfo="computeLayers" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="5180427534212023233">
                    <link role="variableDeclaration:3" targetNodeId="5180427534212023225" resolveInfo="triangle" />
                  </node>
                </node>
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="5180427534212023234">
                  <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="5180427534212023235">
                    <link role="baseMethodDeclaration:3" targetNodeId="4519409331094620045" resolveInfo="LayererProxy" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="5180427534212023236">
                      <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="5180427534212023237">
                        <link role="baseMethodDeclaration:3" targetNodeId="2.5180427534212021893" resolveInfo="BFSNewLayerer" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="5180427534212023238">
            <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="5180427534212023239">
              <property name="name:3" value="layers" />
              <node role="type:3" type="jetbrains.mps.baseLanguage.collections.structure.MapType:7" id="5180427534212023240">
                <node role="keyType:7" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="5180427534212023241">
                  <link role="classifier:3" targetNodeId="1.4671312709908983848" resolveInfo="Node" />
                </node>
                <node role="valueType:7" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="5180427534212023242">
                  <link role="classifier:3" targetNodeId="2v.~Integer" resolveInfo="Integer" />
                </node>
              </node>
              <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="5180427534212023243">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="5180427534212023244">
                  <link role="variableDeclaration:3" targetNodeId="5180427534212023229" resolveInfo="nodeLayers" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="5180427534212023245">
                  <link role="baseMethodDeclaration:3" targetNodeId="2.4666079041336409669" resolveInfo="getNodeLayers" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" id="5180427534212023246">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="5180427534212023247">
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="5180427534212023248">
                <property name="value:3" value="0" />
              </node>
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.collections.structure.MapElement:7" id="5180427534212023249">
                <node role="key:7" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="5180427534212023250">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="5180427534212023251">
                    <link role="variableDeclaration:3" targetNodeId="5180427534212023225" resolveInfo="triangle" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="5180427534212023252">
                    <link role="baseMethodDeclaration:3" targetNodeId="1.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="5180427534212023253">
                      <property name="value:3" value="0" />
                    </node>
                  </node>
                </node>
                <node role="map:7" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="5180427534212023254">
                  <link role="variableDeclaration:3" targetNodeId="5180427534212023239" resolveInfo="layers" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" id="5180427534212023255">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="5180427534212023256">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.collections.structure.MapElement:7" id="5180427534212023257">
                <node role="key:7" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="5180427534212023258">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="5180427534212023259">
                    <link role="variableDeclaration:3" targetNodeId="5180427534212023225" resolveInfo="triangle" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="5180427534212023260">
                    <link role="baseMethodDeclaration:3" targetNodeId="1.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="5180427534212023261">
                      <property name="value:3" value="1" />
                    </node>
                  </node>
                </node>
                <node role="map:7" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="5180427534212023262">
                  <link role="variableDeclaration:3" targetNodeId="5180427534212023239" resolveInfo="layers" />
                </node>
              </node>
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="5180427534212023263">
                <property name="value:3" value="1" />
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" id="5180427534212023264">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="5180427534212023265">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.collections.structure.MapElement:7" id="5180427534212023266">
                <node role="key:7" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="5180427534212023267">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="5180427534212023268">
                    <link role="variableDeclaration:3" targetNodeId="5180427534212023225" resolveInfo="triangle" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="5180427534212023269">
                    <link role="baseMethodDeclaration:3" targetNodeId="1.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="5180427534212023270">
                      <property name="value:3" value="2" />
                    </node>
                  </node>
                </node>
                <node role="map:7" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="5180427534212023271">
                  <link role="variableDeclaration:3" targetNodeId="5180427534212023239" resolveInfo="layers" />
                </node>
              </node>
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="5180427534212023272">
                <property name="value:3" value="2" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="testMethod" type="jetbrains.mps.baseLanguage.unitTest.structure.TestMethod" id="5180427534212023273">
        <property name="methodName" value="cycle" />
        <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="5180427534212023274" />
        <node role="returnType" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="5180427534212023275" />
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="5180427534212023276">
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="5180427534212023277">
            <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="5180427534212023278">
              <property name="name:3" value="cycle" />
              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="5180427534212023279">
                <link role="classifier:3" targetNodeId="1.8567569493821103298" resolveInfo="Graph" />
              </node>
              <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="5180427534212023280">
                <link role="classConcept:3" targetNodeId="4.3437556975695847443" resolveInfo="SimpleDirectedGraphs" />
                <link role="baseMethodDeclaration:3" targetNodeId="4.3437556975695847539" resolveInfo="cycle" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="5180427534212023281">
                  <property name="value:3" value="5" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.unitTest.structure.AssertThrows" id="5180427534212023282">
            <node role="exceptionType" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="5180427534212023283">
              <link role="classifier:3" targetNodeId="2v.~IllegalArgumentException" resolveInfo="IllegalArgumentException" />
            </node>
            <node role="message" type="jetbrains.mps.baseLanguage.unitTest.structure.Message" id="5180427534212023284">
              <node role="message" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="5180427534212023285">
                <property name="value:3" value="input graph must be acyclic" />
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="5180427534212023286">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="5180427534212023287">
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="5180427534212023288">
                  <link role="baseMethodDeclaration:3" targetNodeId="4519409331094620062" resolveInfo="computeLayers" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="5180427534212023289">
                    <link role="variableDeclaration:3" targetNodeId="5180427534212023278" resolveInfo="cycle" />
                  </node>
                </node>
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="5180427534212023290">
                  <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="5180427534212023291">
                    <link role="baseMethodDeclaration:3" targetNodeId="4519409331094620045" resolveInfo="LayererProxy" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="5180427534212023292">
                      <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="5180427534212023293">
                        <link role="baseMethodDeclaration:3" targetNodeId="2.5180427534212021893" resolveInfo="BFSNewLayerer" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="testMethod" type="jetbrains.mps.baseLanguage.unitTest.structure.TestMethod" id="5180427534212023294">
        <property name="methodName" value="sandwatches" />
        <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="5180427534212023295" />
        <node role="returnType" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="5180427534212023296" />
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="5180427534212023297">
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="5180427534212023298">
            <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="5180427534212023299">
              <property name="name:3" value="sandwatches" />
              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="5180427534212023300">
                <link role="classifier:3" targetNodeId="1.8567569493821103298" resolveInfo="Graph" />
              </node>
              <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="5180427534212023301">
                <link role="baseMethodDeclaration:3" targetNodeId="4.3437556975695847565" resolveInfo="sandwatches" />
                <link role="classConcept:3" targetNodeId="4.3437556975695847443" resolveInfo="SimpleDirectedGraphs" />
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="5180427534212023302">
            <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="5180427534212023303">
              <property name="name:3" value="nodeLayers" />
              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="5180427534212023304">
                <link role="classifier:3" targetNodeId="2.4666079041336409356" resolveInfo="NodeLayers" />
              </node>
              <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="5180427534212023305">
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="5180427534212023306">
                  <link role="baseMethodDeclaration:3" targetNodeId="4519409331094620062" resolveInfo="computeLayers" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="5180427534212023307">
                    <link role="variableDeclaration:3" targetNodeId="5180427534212023299" resolveInfo="sandwatches" />
                  </node>
                </node>
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="5180427534212023308">
                  <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="5180427534212023309">
                    <link role="baseMethodDeclaration:3" targetNodeId="4519409331094620045" resolveInfo="LayererProxy" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="5180427534212023310">
                      <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="5180427534212023311">
                        <link role="baseMethodDeclaration:3" targetNodeId="2.5180427534212021893" resolveInfo="BFSNewLayerer" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="5180427534212023312">
            <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="5180427534212023313">
              <property name="name:3" value="layers" />
              <node role="type:3" type="jetbrains.mps.baseLanguage.collections.structure.MapType:7" id="5180427534212023314">
                <node role="keyType:7" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="5180427534212023315">
                  <link role="classifier:3" targetNodeId="1.4671312709908983848" resolveInfo="Node" />
                </node>
                <node role="valueType:7" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="5180427534212023316">
                  <link role="classifier:3" targetNodeId="2v.~Integer" resolveInfo="Integer" />
                </node>
              </node>
              <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="5180427534212023317">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="5180427534212023318">
                  <link role="variableDeclaration:3" targetNodeId="5180427534212023303" resolveInfo="nodeLayers" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="5180427534212023319">
                  <link role="baseMethodDeclaration:3" targetNodeId="2.4666079041336409669" resolveInfo="getNodeLayers" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" id="5180427534212023320">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="5180427534212023321">
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="5180427534212023322">
                <property name="value:3" value="0" />
              </node>
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.collections.structure.MapElement:7" id="5180427534212023323">
                <node role="key:7" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="5180427534212023324">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="5180427534212023325">
                    <link role="variableDeclaration:3" targetNodeId="5180427534212023299" resolveInfo="sandwatches" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="5180427534212023326">
                    <link role="baseMethodDeclaration:3" targetNodeId="1.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="5180427534212023327">
                      <property name="value:3" value="0" />
                    </node>
                  </node>
                </node>
                <node role="map:7" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="5180427534212023328">
                  <link role="variableDeclaration:3" targetNodeId="5180427534212023313" resolveInfo="layers" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" id="5180427534212023329">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="5180427534212023330">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.collections.structure.MapElement:7" id="5180427534212023331">
                <node role="key:7" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="5180427534212023332">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="5180427534212023333">
                    <link role="variableDeclaration:3" targetNodeId="5180427534212023299" resolveInfo="sandwatches" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="5180427534212023334">
                    <link role="baseMethodDeclaration:3" targetNodeId="1.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="5180427534212023335">
                      <property name="value:3" value="1" />
                    </node>
                  </node>
                </node>
                <node role="map:7" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="5180427534212023336">
                  <link role="variableDeclaration:3" targetNodeId="5180427534212023313" resolveInfo="layers" />
                </node>
              </node>
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="5180427534212023337">
                <property name="value:3" value="0" />
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" id="5180427534212023338">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="5180427534212023339">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.collections.structure.MapElement:7" id="5180427534212023340">
                <node role="key:7" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="5180427534212023341">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="5180427534212023342">
                    <link role="variableDeclaration:3" targetNodeId="5180427534212023299" resolveInfo="sandwatches" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="5180427534212023343">
                    <link role="baseMethodDeclaration:3" targetNodeId="1.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="5180427534212023344">
                      <property name="value:3" value="2" />
                    </node>
                  </node>
                </node>
                <node role="map:7" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="5180427534212023345">
                  <link role="variableDeclaration:3" targetNodeId="5180427534212023313" resolveInfo="layers" />
                </node>
              </node>
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="5180427534212023346">
                <property name="value:3" value="1" />
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" id="5180427534212023347">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="5180427534212023348">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.collections.structure.MapElement:7" id="5180427534212023349">
                <node role="key:7" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="5180427534212023350">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="5180427534212023351">
                    <link role="variableDeclaration:3" targetNodeId="5180427534212023299" resolveInfo="sandwatches" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="5180427534212023352">
                    <link role="baseMethodDeclaration:3" targetNodeId="1.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="5180427534212023353">
                      <property name="value:3" value="3" />
                    </node>
                  </node>
                </node>
                <node role="map:7" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="5180427534212023354">
                  <link role="variableDeclaration:3" targetNodeId="5180427534212023313" resolveInfo="layers" />
                </node>
              </node>
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="5180427534212023355">
                <property name="value:3" value="2" />
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" id="5180427534212023356">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="5180427534212023357">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.collections.structure.MapElement:7" id="5180427534212023358">
                <node role="key:7" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="5180427534212023359">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="5180427534212023360">
                    <link role="variableDeclaration:3" targetNodeId="5180427534212023299" resolveInfo="sandwatches" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="5180427534212023361">
                    <link role="baseMethodDeclaration:3" targetNodeId="1.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="5180427534212023362">
                      <property name="value:3" value="4" />
                    </node>
                  </node>
                </node>
                <node role="map:7" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="5180427534212023363">
                  <link role="variableDeclaration:3" targetNodeId="5180427534212023313" resolveInfo="layers" />
                </node>
              </node>
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="5180427534212023364">
                <property name="value:3" value="3" />
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" id="5180427534212023365">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="5180427534212023366">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.collections.structure.MapElement:7" id="5180427534212023367">
                <node role="key:7" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="5180427534212023368">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="5180427534212023369">
                    <link role="variableDeclaration:3" targetNodeId="5180427534212023299" resolveInfo="sandwatches" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="5180427534212023370">
                    <link role="baseMethodDeclaration:3" targetNodeId="1.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="5180427534212023371">
                      <property name="value:3" value="5" />
                    </node>
                  </node>
                </node>
                <node role="map:7" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="5180427534212023372">
                  <link role="variableDeclaration:3" targetNodeId="5180427534212023313" resolveInfo="layers" />
                </node>
              </node>
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="5180427534212023373">
                <property name="value:3" value="3" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="testMethod" type="jetbrains.mps.baseLanguage.unitTest.structure.TestMethod" id="5180427534212023374">
        <property name="methodName" value="simpleFourLayers" />
        <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="5180427534212023375" />
        <node role="returnType" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="5180427534212023376" />
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="5180427534212023377">
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="5180427534212023378">
            <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="5180427534212023379">
              <property name="name:3" value="simpleGraph" />
              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="5180427534212023380">
                <link role="classifier:3" targetNodeId="1.8567569493821103298" resolveInfo="Graph" />
              </node>
              <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="5180427534212023381">
                <link role="baseMethodDeclaration:3" targetNodeId="4.3437556975695846541" resolveInfo="simpleFourLayersGraph" />
                <link role="classConcept:3" targetNodeId="4.3437556975695846540" resolveInfo="GraphsForLayers" />
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="5180427534212023382">
            <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="5180427534212023383">
              <property name="name:3" value="nodeLayers" />
              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="5180427534212023384">
                <link role="classifier:3" targetNodeId="2.4666079041336409356" resolveInfo="NodeLayers" />
              </node>
              <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="5180427534212023385">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="5180427534212023386">
                  <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="5180427534212023387">
                    <link role="baseMethodDeclaration:3" targetNodeId="2.5180427534212021893" resolveInfo="BFSNewLayerer" />
                  </node>
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="5180427534212023388">
                  <link role="baseMethodDeclaration:3" targetNodeId="2.5180427534212021899" resolveInfo="computeLayers" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="5180427534212023389">
                    <link role="variableDeclaration:3" targetNodeId="5180427534212023379" resolveInfo="simpleGraph" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="5180427534212023390">
            <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="5180427534212023391">
              <property name="name:3" value="layers" />
              <node role="type:3" type="jetbrains.mps.baseLanguage.collections.structure.MapType:7" id="5180427534212023392">
                <node role="keyType:7" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="5180427534212023393">
                  <link role="classifier:3" targetNodeId="1.4671312709908983848" resolveInfo="Node" />
                </node>
                <node role="valueType:7" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="5180427534212023394">
                  <link role="classifier:3" targetNodeId="2v.~Integer" resolveInfo="Integer" />
                </node>
              </node>
              <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="5180427534212023395">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="5180427534212023396">
                  <link role="variableDeclaration:3" targetNodeId="5180427534212023383" resolveInfo="nodeLayers" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="5180427534212023397">
                  <link role="baseMethodDeclaration:3" targetNodeId="2.4666079041336409669" resolveInfo="getNodeLayers" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" id="5180427534212023398">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="5180427534212023399">
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="5180427534212023400">
                <property name="value:3" value="0" />
              </node>
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.collections.structure.MapElement:7" id="5180427534212023401">
                <node role="key:7" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="5180427534212023402">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="5180427534212023403">
                    <link role="variableDeclaration:3" targetNodeId="5180427534212023379" resolveInfo="simpleGraph" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="5180427534212023404">
                    <link role="baseMethodDeclaration:3" targetNodeId="1.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="5180427534212023405">
                      <property name="value:3" value="0" />
                    </node>
                  </node>
                </node>
                <node role="map:7" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="5180427534212023406">
                  <link role="variableDeclaration:3" targetNodeId="5180427534212023391" resolveInfo="layers" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" id="5180427534212023407">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="5180427534212023408">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.collections.structure.MapElement:7" id="5180427534212023409">
                <node role="key:7" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="5180427534212023410">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="5180427534212023411">
                    <link role="variableDeclaration:3" targetNodeId="5180427534212023379" resolveInfo="simpleGraph" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="5180427534212023412">
                    <link role="baseMethodDeclaration:3" targetNodeId="1.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="5180427534212023413">
                      <property name="value:3" value="1" />
                    </node>
                  </node>
                </node>
                <node role="map:7" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="5180427534212023414">
                  <link role="variableDeclaration:3" targetNodeId="5180427534212023391" resolveInfo="layers" />
                </node>
              </node>
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="5180427534212023415">
                <property name="value:3" value="1" />
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" id="5180427534212023416">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="5180427534212023417">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.collections.structure.MapElement:7" id="5180427534212023418">
                <node role="key:7" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="5180427534212023419">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="5180427534212023420">
                    <link role="variableDeclaration:3" targetNodeId="5180427534212023379" resolveInfo="simpleGraph" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="5180427534212023421">
                    <link role="baseMethodDeclaration:3" targetNodeId="1.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="5180427534212023422">
                      <property name="value:3" value="2" />
                    </node>
                  </node>
                </node>
                <node role="map:7" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="5180427534212023423">
                  <link role="variableDeclaration:3" targetNodeId="5180427534212023391" resolveInfo="layers" />
                </node>
              </node>
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="5180427534212023424">
                <property name="value:3" value="2" />
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" id="5180427534212023425">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="5180427534212023426">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.collections.structure.MapElement:7" id="5180427534212023427">
                <node role="key:7" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="5180427534212023428">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="5180427534212023429">
                    <link role="variableDeclaration:3" targetNodeId="5180427534212023379" resolveInfo="simpleGraph" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="5180427534212023430">
                    <link role="baseMethodDeclaration:3" targetNodeId="1.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="5180427534212023431">
                      <property name="value:3" value="3" />
                    </node>
                  </node>
                </node>
                <node role="map:7" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="5180427534212023432">
                  <link role="variableDeclaration:3" targetNodeId="5180427534212023391" resolveInfo="layers" />
                </node>
              </node>
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="5180427534212023433">
                <property name="value:3" value="3" />
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" id="5180427534212023434">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="5180427534212023435">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.collections.structure.MapElement:7" id="5180427534212023436">
                <node role="key:7" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="5180427534212023437">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="5180427534212023438">
                    <link role="variableDeclaration:3" targetNodeId="5180427534212023379" resolveInfo="simpleGraph" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="5180427534212023439">
                    <link role="baseMethodDeclaration:3" targetNodeId="1.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="5180427534212023440">
                      <property name="value:3" value="4" />
                    </node>
                  </node>
                </node>
                <node role="map:7" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="5180427534212023441">
                  <link role="variableDeclaration:3" targetNodeId="5180427534212023391" resolveInfo="layers" />
                </node>
              </node>
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="5180427534212023442">
                <property name="value:3" value="1" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>


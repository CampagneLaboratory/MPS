<?xml version="1.0" encoding="UTF-8"?>
<model name="smodelLanguage.samples">
  <language namespace="jetbrains.mps.bootstrap.smodelLanguage" />
  <language namespace="jetbrains.mps.baseLanguage" />
  <language namespace="jetbrains.mps.baseLanguage.ext.collections.lang" />
  <maxImportIndex value="15" />
  <import index="1" modelUID="jetbrains.mps.baseLanguage.structure" />
  <import index="3" modelUID="java.lang@java_stub" />
  <import index="4" modelUID="jetbrains.mps.smodel@java_stub" />
  <import index="5" modelUID="java.util@java_stub" />
  <import index="6" modelUID="jetbrains.mps.core.structure" />
  <import index="9" modelUID="jetbrains.mps.bootstrap.structureLanguage.structure" />
  <import index="11" modelUID="jetbrains.mps.bootstrap.editorLanguage.structure" />
  <import index="12" modelUID="jetbrains.mps.bootstrap.smodelLanguage@java_stub" />
  <import index="13" modelUID="jetbrains.mps.baseLanguage.structure@java_stub" />
  <node type="jetbrains.mps.baseLanguage.ClassConcept" id="1145576838780">
    <property name="name" value="SemanticDowncast" />
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1145576838781">
      <property name="name" value="invoke_getID_method_1" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.VoidType" id="1145576838782" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1145576838783">
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1145576838787">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1145576838788">
            <property name="name" value="id_verbose" />
            <node role="type" type="jetbrains.mps.baseLanguage.ClassifierType" id="1145576838789">
              <link role="classifier" extResolveInfo="3.[Classifier]String" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.InstanceMethodCall" id="1145576838790">
              <link role="baseMethodDeclaration" extResolveInfo="4.method ([Classifier]SNode).([InstanceMethodDeclaration]getId() : (jetbrains.mps.baseLanguage.types.classifier/jetbrains.mps.baseLanguage.types.classifier [String]))" />
              <node role="instance" type="jetbrains.mps.baseLanguage.ParenthesizedExpression" id="1145576838791">
                <node role="expression" type="jetbrains.mps.baseLanguage.CastExpression" id="1145576838792">
                  <node role="type" type="jetbrains.mps.baseLanguage.ClassifierType" id="1145576838793">
                    <link role="classifier" extResolveInfo="4.[Classifier]SNode" />
                  </node>
                  <node role="expression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1145583444941">
                    <link role="variableDeclaration" targetNodeId="1145583429470" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1145576838795">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1145576838796">
            <property name="name" value="id_briefly" />
            <node role="type" type="jetbrains.mps.baseLanguage.ClassifierType" id="1145576838797">
              <link role="classifier" extResolveInfo="3.[Classifier]String" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.InstanceMethodCall" id="1145576838798">
              <link role="baseMethodDeclaration" extResolveInfo="4.method ([Classifier]SNode).([InstanceMethodDeclaration]getId() : (jetbrains.mps.baseLanguage.types.classifier/jetbrains.mps.baseLanguage.types.classifier [String]))" />
              <node role="instance" type="jetbrains.mps.bootstrap.smodelLanguage.SemanticDowncastExpression" id="1145576838799">
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1145583449364">
                  <link role="variableDeclaration" targetNodeId="1145583429470" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1145583429470">
        <property name="name" value="ifStatement" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1145583429471">
          <link role="concept" targetNodeId="1.1068580123159" />
        </node>
      </node>
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1145576838801">
      <property name="name" value="invoke_getID_method_2" />
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1145583462061">
        <property name="name" value="ifStatement" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1145583462062">
          <link role="concept" targetNodeId="1.1068580123159" />
        </node>
      </node>
      <node role="returnType" type="jetbrains.mps.baseLanguage.VoidType" id="1145576838802" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1145576838803">
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1145576838807">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1145576838808">
            <property name="name" value="id_verbose" />
            <node role="type" type="jetbrains.mps.baseLanguage.ClassifierType" id="1145576838809">
              <link role="classifier" extResolveInfo="3.[Classifier]String" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.InstanceMethodCall" id="1145576838810">
              <link role="baseMethodDeclaration" extResolveInfo="4.method ([Classifier]SNode).([InstanceMethodDeclaration]getId() : (jetbrains.mps.baseLanguage.types.classifier/jetbrains.mps.baseLanguage.types.classifier [String]))" />
              <node role="instance" type="jetbrains.mps.baseLanguage.ParenthesizedExpression" id="1145576838811">
                <node role="expression" type="jetbrains.mps.baseLanguage.CastExpression" id="1145576838812">
                  <node role="type" type="jetbrains.mps.baseLanguage.ClassifierType" id="1145576838813">
                    <link role="classifier" extResolveInfo="4.[Classifier]SNode" />
                  </node>
                  <node role="expression" type="jetbrains.mps.baseLanguage.ParenthesizedExpression" id="1145576838814">
                    <node role="expression" type="jetbrains.mps.baseLanguage.CastExpression" id="1145576838815">
                      <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1145576838816" />
                      <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1145576838817">
                        <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1145583467141">
                          <link role="variableDeclaration" targetNodeId="1145583462061" />
                        </node>
                        <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SLinkAccess" id="1145576838819">
                          <link role="link" targetNodeId="1.1068580123160" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1145576838820">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1145576838821">
            <property name="name" value="id_briefly" />
            <node role="type" type="jetbrains.mps.baseLanguage.ClassifierType" id="1145576838822">
              <link role="classifier" extResolveInfo="3.[Classifier]String" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.InstanceMethodCall" id="1145576838823">
              <link role="baseMethodDeclaration" extResolveInfo="4.method ([Classifier]SNode).([InstanceMethodDeclaration]getId() : (jetbrains.mps.baseLanguage.types.classifier/jetbrains.mps.baseLanguage.types.classifier [String]))" />
              <node role="instance" type="jetbrains.mps.bootstrap.smodelLanguage.SemanticDowncastExpression" id="1145576838824">
                <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SemanticDowncastExpression" id="1145576838825">
                  <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1145576838826">
                    <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1145583471845">
                      <link role="variableDeclaration" targetNodeId="1145583462061" />
                    </node>
                    <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SLinkAccess" id="1145576838828">
                      <link role="link" targetNodeId="1.1068580123160" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1171482174425">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1171482174426">
            <property name="name" value="id_better" />
            <node role="type" type="jetbrains.mps.baseLanguage.ClassifierType" id="1171482174427">
              <link role="classifier" extResolveInfo="3.[Classifier]String" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.InstanceMethodCall" id="1171483372477">
              <link role="baseMethodDeclaration" extResolveInfo="4.method ([Classifier]SNode).([InstanceMethodDeclaration]getId() : (jetbrains.mps.baseLanguage.types.classifier/jetbrains.mps.baseLanguage.types.classifier [String]))" />
              <node role="instance" type="jetbrains.mps.bootstrap.smodelLanguage.SemanticDowncastExpression" id="1171482194717">
                <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1171482184837">
                  <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SLinkAccessAsNode" id="1171482189497">
                    <link role="link" targetNodeId="1.1068580123160" />
                  </node>
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1171482183398">
                    <link role="variableDeclaration" targetNodeId="1145583462061" resolveInfo="ifStatement" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1145576838829">
      <property name="name" value="countChildren" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.VoidType" id="1145576838830" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1145576838831">
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1145576838835">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1145576838836">
            <property name="name" value="count_verbose_not_efficient" />
            <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1145576838837" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.InstanceMethodCall" id="1145576838838">
              <link role="baseMethodDeclaration" extResolveInfo="5.method ([Classifier]List).([InstanceMethodDeclaration]size() : (jetbrains.mps.baseLanguage.types.int/jetbrains.mps.baseLanguage.types.int))" />
              <node role="instance" type="jetbrains.mps.baseLanguage.ParenthesizedExpression" id="1145576838839">
                <node role="expression" type="jetbrains.mps.baseLanguage.CastExpression" id="1145576838840">
                  <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeListType" id="1145576838841" />
                  <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1145576838842">
                    <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1145583512426">
                      <link role="variableDeclaration" targetNodeId="1145583482393" />
                    </node>
                    <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SLinkListAccess" id="1145576838844">
                      <link role="link" targetNodeId="1.1068499141038" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1145576838845">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1145576838846">
            <property name="name" value="count_not_efficient" />
            <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1145576838847" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.InstanceMethodCall" id="1145576838848">
              <link role="baseMethodDeclaration" extResolveInfo="5.method ([Classifier]List).([InstanceMethodDeclaration]size() : (jetbrains.mps.baseLanguage.types.int/jetbrains.mps.baseLanguage.types.int))" />
              <node role="instance" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1145576838850">
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1145583516177">
                  <link role="variableDeclaration" targetNodeId="1145583482393" />
                </node>
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SLinkListAccessAsList" id="1171483448259">
                  <link role="link" targetNodeId="1.1068499141038" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1145576838853">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1145576838854">
            <property name="name" value="count_best" />
            <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1145576838855" />
            <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1145576838856">
              <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1145576838857">
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1145583519975">
                  <link role="variableDeclaration" targetNodeId="1145583482393" />
                </node>
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SLinkListAccess" id="1145576838859">
                  <link role="link" targetNodeId="1.1068499141038" />
                </node>
              </node>
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.LinkList_GetCountOperation" id="1145576838860" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1171483610591">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1171483610592">
            <property name="name" value="ll" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeListType" id="1171483610593" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1171483715401">
          <node role="expression" type="jetbrains.mps.baseLanguage.InstanceMethodCall" id="1171483759284">
            <link role="baseMethodDeclaration" extResolveInfo="5.method ([Classifier]List).([InstanceMethodDeclaration]size() : (jetbrains.mps.baseLanguage.types.int/jetbrains.mps.baseLanguage.types.int))" />
            <node role="instance" type="jetbrains.mps.baseLanguage.ParenthesizedExpression" id="1171483752292">
              <node role="expression" type="jetbrains.mps.baseLanguage.CastExpression" id="1171483752293">
                <node role="expression" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1171483752294">
                  <link role="variableDeclaration" targetNodeId="1171483610592" resolveInfo="ll" />
                </node>
                <node role="type" type="jetbrains.mps.baseLanguage.ClassifierType" id="1171483752295">
                  <link role="classifier" extResolveInfo="5.[Classifier]List" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1145583482393">
        <property name="name" value="methodCall" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1145583482394">
          <link role="concept" targetNodeId="1.1068580123163" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.ClassConcept" id="1145576981486">
    <property name="name" value="Child_Referent_Parent" />
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1145577144409">
      <property name="name" value="accessToChildNode_1" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.VoidType" id="1145577193037" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1145577144411">
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1145577459789">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1145577459790">
            <property name="name" value="condition" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1145577459823">
              <link role="concept" targetNodeId="1.1068431790191" />
            </node>
            <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1145577448974">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1145577447004">
                <link role="variableDeclaration" targetNodeId="1145577408546" />
              </node>
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SLinkAccess" id="1145577453522">
                <link role="link" targetNodeId="1.1068580123160" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1145577543854">
          <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1145577545762">
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1145577543855">
              <link role="variableDeclaration" targetNodeId="1145577459790" />
            </node>
            <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Node_DeleteOperation" id="1145577548263" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1145577492784">
          <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1145577506710">
            <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1145577495474">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1145577492785">
                <link role="variableDeclaration" targetNodeId="1145577408546" />
              </node>
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SLinkAccess" id="1145577498334">
                <link role="link" targetNodeId="1.1068580123160" />
              </node>
            </node>
            <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Link_DeleteChildOperation" id="1145577525898" />
          </node>
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1145577408546">
        <property name="name" value="ifStatement" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1145577408547">
          <link role="concept" targetNodeId="1.1068580123159" />
        </node>
      </node>
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1145577584165">
      <property name="name" value="accessToChildNode_2" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.VoidType" id="1145577584166" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1145577584167">
        <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1145577655050">
          <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1145577661475">
            <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1145577657364">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1145577655051">
                <link role="variableDeclaration" targetNodeId="1145577584184" />
              </node>
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SLinkAccess" id="1145577659709">
                <link role="link" targetNodeId="1.1068580123160" />
              </node>
            </node>
            <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Link_SetTargetOperation" id="1145577668586">
              <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterReference" id="1145577674478">
                <link role="variableDeclaration" targetNodeId="1145577623217" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1145577584168">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1145577584169">
            <property name="name" value="condition" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1145577584170">
              <link role="concept" targetNodeId="1.1068431790191" />
            </node>
            <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1145577584171">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1145577584172">
                <link role="variableDeclaration" targetNodeId="1145577584184" />
              </node>
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SLinkAccess" id="1145577584173">
                <link role="link" targetNodeId="1.1068580123160" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1145577584174">
          <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1145577584175">
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1145577584176">
              <link role="variableDeclaration" targetNodeId="1145577584169" />
            </node>
            <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Node_ReplaceWithAnotherOperation" id="1145577770495">
              <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterReference" id="1145577776653">
                <link role="variableDeclaration" targetNodeId="1145577623217" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1145577584184">
        <property name="name" value="ifStatement" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1145577584185">
          <link role="concept" targetNodeId="1.1068580123159" />
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1145577623217">
        <property name="name" value="newCondition" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1145577626532">
          <link role="concept" targetNodeId="1.1068431790191" />
        </node>
      </node>
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1145577814142">
      <property name="name" value="accessToChildNode_3" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.VoidType" id="1145577814143" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1145577814144">
        <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1145577814145">
          <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1145577814146">
            <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1145577814147">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1145577814148">
                <link role="variableDeclaration" targetNodeId="1145577814163" />
              </node>
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SLinkAccess" id="1145577814149">
                <link role="link" targetNodeId="1.1068580123160" />
              </node>
            </node>
            <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Link_SetTargetOperation" id="1145577814150">
              <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1145577863162">
                <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1145577855473">
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1145577851003">
                    <link role="variableDeclaration" targetNodeId="1145577834220" />
                  </node>
                  <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SLinkAccess" id="1145577861161">
                    <link role="link" targetNodeId="1.1068580123160" />
                  </node>
                </node>
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Node_CopyOperation" id="1145577866257" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1145577814152">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1145577814153">
            <property name="name" value="condition" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1145577814154">
              <link role="concept" targetNodeId="1.1068431790191" />
            </node>
            <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1145577814155">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1145577814156">
                <link role="variableDeclaration" targetNodeId="1145577814163" />
              </node>
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SLinkAccess" id="1145577814157">
                <link role="link" targetNodeId="1.1068580123160" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1145577814158">
          <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1145577814159">
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1145577814160">
              <link role="variableDeclaration" targetNodeId="1145577814153" />
            </node>
            <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Node_ReplaceWithAnotherOperation" id="1145577814161">
              <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1145577903161">
                <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1145577899206">
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1145577896814">
                    <link role="variableDeclaration" targetNodeId="1145577834220" />
                  </node>
                  <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SLinkAccess" id="1145577900957">
                    <link role="link" targetNodeId="1.1068580123160" />
                  </node>
                </node>
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Node_CopyOperation" id="1145577906099" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1145577814163">
        <property name="name" value="ifStatement1" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1145577814164">
          <link role="concept" targetNodeId="1.1068580123159" />
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1145577834220">
        <property name="name" value="ifStatement2" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1145577834221">
          <link role="concept" targetNodeId="1.1068580123159" />
        </node>
      </node>
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1145577972932">
      <property name="name" value="accessToChildNode_4" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.VoidType" id="1145577972933" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1145577972934">
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1145578426519">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1145578426520">
            <property name="name" value="newCondition1" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1145578426522">
              <link role="concept" targetNodeId="1.1068431790191" />
            </node>
            <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1145578409876">
              <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1145578404952">
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1145578401951">
                  <link role="variableDeclaration" targetNodeId="1145577972961" />
                </node>
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SLinkAccess" id="1145578407032">
                  <link role="link" targetNodeId="1.1068580123160" />
                </node>
              </node>
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Link_SetNewChildOperation" id="1145578416909" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1145578074915">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1145578074916">
            <property name="name" value="newCondition2" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1145578074918">
              <link role="concept" targetNodeId="1.1068580123152" />
            </node>
            <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1145578042819">
              <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1145578037551">
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1145578035644">
                  <link role="variableDeclaration" targetNodeId="1145577972961" />
                </node>
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SLinkAccess" id="1145578040193">
                  <link role="link" targetNodeId="1.1068580123160" />
                </node>
              </node>
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Link_SetNewChildOperation" id="1145578046835">
                <link role="concept" targetNodeId="1.1068580123152" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1145579167456">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1145579167457">
            <property name="name" value="newCondition3" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1145579167459">
              <link role="concept" targetNodeId="1.1081516740877" />
            </node>
            <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1145579133876">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1145579131828">
                <link role="variableDeclaration" targetNodeId="1145578426520" />
              </node>
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Node_ReplaceWithNewOperation" id="1145579137502">
                <link role="concept" targetNodeId="1.1081516740877" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1145577972961">
        <property name="name" value="ifStatement" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1145577972962">
          <link role="concept" targetNodeId="1.1068580123159" />
        </node>
      </node>
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1145580908119">
      <property name="name" value="accessToReferentNode_1" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.VoidType" id="1145580908120" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1145580908121">
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1145580908122">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1145580908123">
            <property name="name" value="oldMethod" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1145580908124">
              <link role="concept" targetNodeId="1.1068580123165" />
            </node>
            <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1145580908125">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1145580908126">
                <link role="variableDeclaration" targetNodeId="1145580908149" />
              </node>
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SLinkAccess" id="1145580908127">
                <link role="link" targetNodeId="1.1070568044740" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1145580908128">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1145580908129">
            <property name="name" value="oldMethopdName" />
            <node role="type" type="jetbrains.mps.baseLanguage.ClassifierType" id="1145580908130">
              <link role="classifier" extResolveInfo="3.[Classifier]String" />
            </node>
            <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1145580908131">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1145580908132">
                <link role="variableDeclaration" targetNodeId="1145580908123" />
              </node>
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SPropertyAccess" id="1145580908133">
                <link role="property" targetNodeId="1.1083152972672" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1145580908134">
          <node role="expression" type="jetbrains.mps.baseLanguage.AssignmentExpression" id="1145580908135">
            <node role="lValue" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1145580908136">
              <link role="variableDeclaration" targetNodeId="1145580908129" />
            </node>
            <node role="rValue" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1145580908137">
              <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1145580908138">
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1145580908139">
                  <link role="variableDeclaration" targetNodeId="1145580908149" />
                </node>
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SLinkAccess" id="1145580908140">
                  <link role="link" targetNodeId="1.1070568044740" />
                </node>
              </node>
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SPropertyAccess" id="1145580908141">
                <link role="property" targetNodeId="1.1083152972672" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1145580908142">
          <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1145580908143">
            <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1145580908144">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1145580908145">
                <link role="variableDeclaration" targetNodeId="1145580908149" />
              </node>
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SLinkAccess" id="1145580908146">
                <link role="link" targetNodeId="1.1070568044740" />
              </node>
            </node>
            <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Link_SetTargetOperation" id="1145580908147">
              <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterReference" id="1145580908148">
                <link role="variableDeclaration" targetNodeId="1145580908151" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1145580908149">
        <property name="name" value="methodCall" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1145580908150">
          <link role="concept" targetNodeId="1.1068580123163" />
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1145580908151">
        <property name="name" value="method" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1145580908152">
          <link role="concept" targetNodeId="1.1068580123165" />
        </node>
      </node>
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1145578543179">
      <property name="name" value="accessToParentNode_1" />
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1145578576769">
        <property name="name" value="expression" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1145578576770">
          <link role="concept" targetNodeId="1.1068431790191" />
        </node>
      </node>
      <node role="returnType" type="jetbrains.mps.baseLanguage.VoidType" id="1145578549088" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1145578543181">
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1145578691173">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1145578691174">
            <property name="name" value="parent_IfStatement" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1145578691175">
              <link role="concept" targetNodeId="1.1068580123159" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.NullLiteral" id="1145578717943" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1145578626412">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1145578626413">
            <property name="name" value="mayBe_IfStatement" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1145578626414" />
            <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1145578667558">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1145578665041">
                <link role="variableDeclaration" targetNodeId="1145578576769" />
              </node>
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Node_GetParentOperation" id="1145578670574" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.WhileStatement" id="1145578745054">
          <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1145578745056">
            <node role="statement" type="jetbrains.mps.baseLanguage.IfStatement" id="1145578893969">
              <node role="ifTrue" type="jetbrains.mps.baseLanguage.StatementList" id="1145578893971">
                <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1145578906283">
                  <node role="expression" type="jetbrains.mps.baseLanguage.AssignmentExpression" id="1145578907989">
                    <node role="lValue" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1145578906284">
                      <link role="variableDeclaration" targetNodeId="1145578691174" />
                    </node>
                    <node role="rValue" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeTypeCastExpression" id="1145578916131">
                      <link role="concept" targetNodeId="1.1068580123159" />
                      <node role="leftExpression" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1145578914068">
                        <link role="variableDeclaration" targetNodeId="1145578626413" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statement" type="jetbrains.mps.baseLanguage.BreakStatement" id="1145578927789" />
              </node>
              <node role="condition" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1145578901749">
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1145578901750">
                  <link role="variableDeclaration" targetNodeId="1145578626413" />
                </node>
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Node_IsInstanceOfOperation" id="1145578901751">
                  <link role="concept" targetNodeId="1.1068580123159" />
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1145578775437">
              <node role="expression" type="jetbrains.mps.baseLanguage.AssignmentExpression" id="1145578777611">
                <node role="lValue" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1145578775438">
                  <link role="variableDeclaration" targetNodeId="1145578626413" />
                </node>
                <node role="rValue" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1145578791378">
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1145578780393">
                    <link role="variableDeclaration" targetNodeId="1145578626413" />
                  </node>
                  <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Node_GetParentOperation" id="1145578792770" />
                </node>
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.NotEqualsExpression" id="1145578945674">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.NullLiteral" id="1145578945675" />
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1145578945676">
              <link role="variableDeclaration" targetNodeId="1145578626413" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1145578988611">
      <property name="name" value="accessToParentNode_2" />
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1145578988612">
        <property name="name" value="expression" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1145578988613">
          <link role="concept" targetNodeId="1.1068431790191" />
        </node>
      </node>
      <node role="returnType" type="jetbrains.mps.baseLanguage.VoidType" id="1145578988614" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1145578988615">
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1145578988616">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1145578988617">
            <property name="name" value="parent_IfStatement" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1145578988618">
              <link role="concept" targetNodeId="1.1068580123159" />
            </node>
            <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1145579018836">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1145579016960">
                <link role="variableDeclaration" targetNodeId="1145578988612" />
              </node>
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Node_GetAncestorOperation" id="1171418801284">
                <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.OperationParm_Concept" id="1145579026527">
                  <link role="concept" targetNodeId="1.1068580123159" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1154554569772">
      <property name="name" value="accessToParentNode_3" />
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1154554569773">
        <property name="name" value="expression" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1154554569774">
          <link role="concept" targetNodeId="1.1068431790191" />
        </node>
      </node>
      <node role="returnType" type="jetbrains.mps.baseLanguage.VoidType" id="1154554569775" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1154554569776">
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1154554569777">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1154554569778">
            <property name="name" value="parent_If_or_WhileStatement" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1154554569779" />
            <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1154554569780">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1154554569781">
                <link role="variableDeclaration" targetNodeId="1154554569773" />
              </node>
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Node_GetAncestorOperation" id="1171418809723">
                <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.OperationParm_ConceptList" id="1154554584737">
                  <node role="concept" type="jetbrains.mps.bootstrap.smodelLanguage.ConceptReference" id="1154554587926">
                    <link role="concept" targetNodeId="1.1068580123159" />
                  </node>
                  <node role="concept" type="jetbrains.mps.bootstrap.smodelLanguage.ConceptReference" id="1154554591272">
                    <link role="concept" targetNodeId="1.1076505808687" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1171242667791">
      <property name="name" value="accessToParentNode_4" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.VoidType" id="1171242667792" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1171242667793">
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1171242823055">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1171242823056">
            <property name="name" value="declaringClass" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1171242823058">
              <link role="concept" targetNodeId="1.1068390468198" />
            </node>
            <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeTypeCastExpression" id="1171242808819">
              <link role="concept" targetNodeId="1.1068390468198" />
              <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1171242783656">
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Node_GetParentOperation" id="1171242786409" />
                <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1171242774542">
                  <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SLinkAccess" id="1171242782327">
                    <link role="link" targetNodeId="1.1070568044740" />
                  </node>
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1171242773354">
                    <link role="variableDeclaration" targetNodeId="1171242727248" resolveInfo="expression" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1171242727248">
        <property name="name" value="expression" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1171242727249">
          <link role="concept" targetNodeId="1.1068580123163" />
        </node>
      </node>
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1171311597599">
      <property name="name" value="accessToParentNode_5" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.VoidType" id="1171311597600" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1171311597601">
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1171311897876">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1171311897877">
            <property name="name" value="root" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1171311897879">
              <link role="concept" targetNodeId="6.1133920641626" />
            </node>
            <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1171311656651">
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Node_GetContainingRootOperation" id="1171311660295" />
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1171311655432">
                <link role="variableDeclaration" targetNodeId="1171311648804" resolveInfo="node" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1171311648804">
        <property name="name" value="node" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1171311648805" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.ClassConcept" id="1145579089043">
    <property name="name" value="TypeCast" />
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1145579400031">
      <property name="name" value="cast_snode_to_SNode" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.VoidType" id="1145579402252" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1145579400033">
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1145579487693">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1145579487694">
            <property name="name" value="nodeObject1" />
            <node role="type" type="jetbrains.mps.baseLanguage.ClassifierType" id="1145579487695">
              <link role="classifier" extResolveInfo="4.[Classifier]SNode" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.ParameterReference" id="1145579507587">
              <link role="variableDeclaration" targetNodeId="1145579470753" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1145579514621">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1145579514622">
            <property name="name" value="nodeObject2" />
            <node role="type" type="jetbrains.mps.baseLanguage.ClassifierType" id="1145579514623">
              <link role="classifier" extResolveInfo="4.[Classifier]SNode" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.CastExpression" id="1145579558787">
              <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1145579560596">
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1145579560597">
                  <link role="variableDeclaration" targetNodeId="1145579470753" />
                </node>
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SLinkAccess" id="1145579560598">
                  <link role="link" targetNodeId="1.1068580123160" />
                </node>
              </node>
              <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1145579576460" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1145579716249">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1145579716250">
            <property name="name" value="nodeObject3" />
            <node role="type" type="jetbrains.mps.baseLanguage.ClassifierType" id="1145579716251">
              <link role="classifier" extResolveInfo="4.[Classifier]SNode" />
            </node>
            <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.SemanticDowncastExpression" id="1145579744382">
              <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1145579727707">
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1145579725612">
                  <link role="variableDeclaration" targetNodeId="1145579470753" />
                </node>
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SLinkAccess" id="1145579730708">
                  <link role="link" targetNodeId="1.1068580123160" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1145579470753">
        <property name="name" value="ifStatement" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1145579470754">
          <link role="concept" targetNodeId="1.1068580123159" />
        </node>
      </node>
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1145579627401">
      <property name="name" value="cast_SNode_to_snode" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.VoidType" id="1145579627402" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1145579627403">
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1145579768617">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1145579768618">
            <property name="name" value="snode1" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1145579768619" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.ParameterReference" id="1145579784340">
              <link role="variableDeclaration" targetNodeId="1145579627416" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1145579796826">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1145579796827">
            <property name="name" value="snode2" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1145579796828">
              <link role="concept" targetNodeId="1.1068580123159" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.CastExpression" id="1145579829069">
              <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1145579834338">
                <link role="concept" targetNodeId="1.1068580123159" />
              </node>
              <node role="expression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1145579839902">
                <link role="variableDeclaration" targetNodeId="1145579627416" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1145579627416">
        <property name="name" value="node" />
        <node role="type" type="jetbrains.mps.baseLanguage.ClassifierType" id="1145579654622">
          <link role="classifier" extResolveInfo="4.[Classifier]SNode" />
        </node>
      </node>
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1145579883106">
      <property name="name" value="upcast_snode" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.VoidType" id="1145579885296" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1145579883108">
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1145579911190">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1145579911191">
            <property name="name" value="ifStatement" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1145579911192">
              <link role="concept" targetNodeId="1.1068580123159" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.CastExpression" id="1145579931319">
              <node role="expression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1145579942762">
                <link role="variableDeclaration" targetNodeId="1145579900985" />
              </node>
              <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1145579938949">
                <link role="concept" targetNodeId="1.1068580123159" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1145579947994">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1145579947995">
            <property name="name" value="ifStatement1" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1145579947996">
              <link role="concept" targetNodeId="1.1068580123159" />
            </node>
            <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeTypeCastExpression" id="1145579952781">
              <link role="concept" targetNodeId="1.1068580123159" />
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1145579947998">
                <link role="variableDeclaration" targetNodeId="1145579900985" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1145579900985">
        <property name="name" value="snode" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1145579900986" />
      </node>
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1145584821369">
      <property name="name" value="cast_children_to_snodes" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.VoidType" id="1145584821370" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1145584821371">
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1145584821372">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1145584821373">
            <property name="name" value="statements" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeListType" id="1145584877701">
              <link role="elementConcept" targetNodeId="1.1068580123157" />
            </node>
            <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1145584821376">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1145584821377">
                <link role="variableDeclaration" targetNodeId="1145584821387" />
              </node>
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SLinkListAccess" id="1145584821378">
                <link role="link" targetNodeId="1.1068581517665" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1145584821387">
        <property name="name" value="statementList" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1145584821388">
          <link role="concept" targetNodeId="1.1068580123136" />
        </node>
      </node>
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1145584542698">
      <property name="name" value="cast_snodes_to_List" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.VoidType" id="1145584552779" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1145584542700">
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1145584644470">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1145584644471">
            <property name="name" value="list1" />
            <node role="type" type="jetbrains.mps.baseLanguage.ClassifierType" id="1145584644472">
              <link role="classifier" extResolveInfo="5.[Classifier]List" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.ParameterReference" id="1145584651958">
              <link role="variableDeclaration" targetNodeId="1145584628327" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1145584668913">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1145584668914">
            <property name="name" value="list2" />
            <node role="type" type="jetbrains.mps.baseLanguage.ClassifierType" id="1145584668915">
              <link role="classifier" extResolveInfo="5.[Classifier]List" />
              <node role="parameter" type="jetbrains.mps.baseLanguage.ClassifierType" id="1145584685714">
                <link role="classifier" extResolveInfo="4.[Classifier]SNode" />
              </node>
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.ParameterReference" id="1145584691357">
              <link role="variableDeclaration" targetNodeId="1145584628327" />
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1145584628327">
        <property name="name" value="statements" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeListType" id="1145584628328">
          <link role="elementConcept" targetNodeId="1.1068580123157" />
        </node>
      </node>
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1145584704464">
      <property name="name" value="cast_children_to_List" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.VoidType" id="1145584704465" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1145584704466">
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1145584704467">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1145584704468">
            <property name="name" value="list1" />
            <node role="type" type="jetbrains.mps.baseLanguage.ClassifierType" id="1145584704469">
              <link role="classifier" extResolveInfo="5.[Classifier]List" />
            </node>
            <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.SemanticDowncastExpression" id="1145584752090">
              <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1145584732182">
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1145584704470">
                  <link role="variableDeclaration" targetNodeId="1145584704476" />
                </node>
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SLinkListAccess" id="1145584734371">
                  <link role="link" targetNodeId="1.1068581517665" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1145584704471">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1145584704472">
            <property name="name" value="list2" />
            <node role="type" type="jetbrains.mps.baseLanguage.ClassifierType" id="1145584704473">
              <link role="classifier" extResolveInfo="5.[Classifier]List" />
              <node role="parameter" type="jetbrains.mps.baseLanguage.ClassifierType" id="1145584704474">
                <link role="classifier" extResolveInfo="4.[Classifier]SNode" />
              </node>
            </node>
            <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.SemanticDowncastExpression" id="1145584763968">
              <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1145584759326">
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1145584704475">
                  <link role="variableDeclaration" targetNodeId="1145584704476" />
                </node>
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SLinkListAccess" id="1145584760842">
                  <link role="link" targetNodeId="1.1068581517665" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1145585042265">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1145585042266">
            <property name="name" value="list3" />
            <node role="type" type="jetbrains.mps.baseLanguage.ClassifierType" id="1145585042267">
              <link role="classifier" extResolveInfo="5.[Classifier]List" />
              <node role="parameter" type="jetbrains.mps.baseLanguage.ClassifierType" id="1145585042268">
                <link role="classifier" extResolveInfo="4.[Classifier]SNode" />
              </node>
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.CastExpression" id="1145585051632">
              <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeListType" id="1145585051633" />
              <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1145585051634">
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1145585051635">
                  <link role="variableDeclaration" targetNodeId="1145584704476" />
                </node>
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SLinkListAccess" id="1145585051636">
                  <link role="link" targetNodeId="1.1068581517665" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1145584704476">
        <property name="name" value="statements" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1145584721837">
          <link role="concept" targetNodeId="1.1068580123136" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.ClassConcept" id="1145580307798">
    <property name="name" value="Children" />
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1145580957387">
      <property name="name" value="accessToChildren_1" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.VoidType" id="1145580963609" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1145580957389">
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1145581051477">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1145581051478">
            <property name="name" value="count" />
            <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1145581051480" />
            <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1145581039710">
              <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1145581011083">
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1145581008394">
                  <link role="variableDeclaration" targetNodeId="1145580983579" />
                </node>
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SLinkListAccess" id="1145581012568">
                  <link role="link" targetNodeId="1.1068581517665" />
                </node>
              </node>
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.LinkList_GetCountOperation" id="1145581042414" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1145581102186">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1145581102187">
            <property name="name" value="statements" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeListType" id="1145581154786">
              <link role="elementConcept" targetNodeId="1.1068580123157" />
            </node>
            <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1145581133795">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1145581133796">
                <link role="variableDeclaration" targetNodeId="1145580983579" />
              </node>
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SLinkListAccess" id="1145581133797">
                <link role="link" targetNodeId="1.1068581517665" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1145581177881">
          <node role="expression" type="jetbrains.mps.baseLanguage.AssignmentExpression" id="1145581178946">
            <node role="lValue" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1145581177882">
              <link role="variableDeclaration" targetNodeId="1145581051478" />
            </node>
            <node role="rValue" type="jetbrains.mps.baseLanguage.InstanceMethodCall" id="1145581187605">
              <link role="baseMethodDeclaration" extResolveInfo="5.method ([Classifier]List).([InstanceMethodDeclaration]size() : (jetbrains.mps.baseLanguage.types.int/jetbrains.mps.baseLanguage.types.int))" />
              <node role="instance" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1145581182806">
                <link role="variableDeclaration" targetNodeId="1145581102187" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1145580983579">
        <property name="name" value="statementList" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1145580983580">
          <link role="concept" targetNodeId="1.1068580123136" />
        </node>
      </node>
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1145581213889">
      <property name="name" value="accessToChildren_2" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.VoidType" id="1145581213890" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1145581213891">
        <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1145581354822">
          <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1145581363404">
            <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1145581359605">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1145581354823">
                <link role="variableDeclaration" targetNodeId="1145581213911" />
              </node>
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SLinkListAccess" id="1145581361278">
                <link role="link" targetNodeId="1.1068581517665" />
              </node>
            </node>
            <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.LinkList_AddNewChildOperation" id="1145581379516">
              <link role="concept" targetNodeId="1.1068581242864" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1145581471717">
          <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1145581471718">
            <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1145581471719">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1145581471720">
                <link role="variableDeclaration" targetNodeId="1145581213911" />
              </node>
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SLinkListAccess" id="1145581471721">
                <link role="link" targetNodeId="1.1068581517665" />
              </node>
            </node>
            <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.LinkList_AddNewChildOperation" id="1145581471722">
              <link role="concept" targetNodeId="1.1068580123159" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1145581538604">
          <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1145581538605">
            <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1145581538606">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1145581538607">
                <link role="variableDeclaration" targetNodeId="1145581213911" />
              </node>
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SLinkListAccess" id="1145581538608">
                <link role="link" targetNodeId="1.1068581517665" />
              </node>
            </node>
            <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.LinkList_AddNewChildOperation" id="1145581538609">
              <link role="concept" targetNodeId="1.1068581242878" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.ForeachStatement" id="1145583145456">
          <node role="iterable" type="jetbrains.mps.bootstrap.smodelLanguage.SemanticDowncastExpression" id="1145583187996">
            <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1145583182275">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1145583179149">
                <link role="variableDeclaration" targetNodeId="1145581213911" />
              </node>
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SLinkListAccess" id="1145583183886">
                <link role="link" targetNodeId="1.1068581517665" />
              </node>
            </node>
          </node>
          <node role="variable" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1145583145458">
            <property name="name" value="statement" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1145583162289">
              <link role="concept" targetNodeId="1.1068580123157" />
            </node>
          </node>
          <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1145583145460">
            <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1145583206278">
              <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1145583212595">
                <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1145583208561">
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1145583206279">
                    <link role="variableDeclaration" targetNodeId="1145581220850" />
                  </node>
                  <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SLinkListAccess" id="1145583210656">
                    <link role="link" targetNodeId="1.1068581517665" />
                  </node>
                </node>
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.LinkList_AddChildOperation" id="1145583221283">
                  <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1145583239146">
                    <node role="leftExpression" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1145583226426">
                      <link role="variableDeclaration" targetNodeId="1145583145458" />
                    </node>
                    <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Node_CopyOperation" id="1145583241272" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.ForeachStatement" id="1169145112427">
          <node role="iterable" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1169145112429">
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1169145112430">
              <link role="variableDeclaration" targetNodeId="1145581213911" resolveInfo="statementList1" />
            </node>
            <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SLinkListAccessAsList" id="1169145134961">
              <link role="link" targetNodeId="1.1068581517665" />
            </node>
          </node>
          <node role="variable" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1169145112432">
            <property name="name" value="statement" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1169145112433">
              <link role="concept" targetNodeId="1.1068580123157" />
            </node>
          </node>
          <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1169145112434">
            <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1169145112435">
              <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1169145112436">
                <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1169145112437">
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1169145112438">
                    <link role="variableDeclaration" targetNodeId="1145581220850" resolveInfo="statementList2" />
                  </node>
                  <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SLinkListAccess" id="1169145112439">
                    <link role="link" targetNodeId="1.1068581517665" />
                  </node>
                </node>
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.LinkList_AddChildOperation" id="1169145112440">
                  <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1169145112441">
                    <node role="leftExpression" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1169145112442">
                      <link role="variableDeclaration" targetNodeId="1169145112432" resolveInfo="statement" />
                    </node>
                    <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Node_CopyOperation" id="1169145112443" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1145581213911">
        <property name="name" value="statementList1" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1145581213912">
          <link role="concept" targetNodeId="1.1068580123136" />
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1145581220850">
        <property name="name" value="statementList2" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1145581225227">
          <link role="concept" targetNodeId="1.1068580123136" />
        </node>
      </node>
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1171306154582">
      <property name="name" value="accessToChildren_3" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.VoidType" id="1171306154583" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1171306154584">
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1171307443924">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1171307443925">
            <property name="name" value="children1" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeListType" id="1171307443927">
              <link role="elementConcept" targetNodeId="6.1133920641626" />
            </node>
            <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1171306275406">
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Node_GetDescendantsOperation" id="1171306280050" />
              <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1171306257418">
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SLinkAccess" id="1171306274061">
                  <link role="link" targetNodeId="1.1068580123156" />
                </node>
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1171306234655">
                  <link role="variableDeclaration" targetNodeId="1171306220390" resolveInfo="statement" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1171307456038">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1171307456039">
            <property name="name" value="children2" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeListType" id="1171307456041">
              <link role="elementConcept" targetNodeId="1.1068580123137" />
            </node>
            <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1171306992486">
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Node_GetDescendantsOperation" id="1171306993754">
                <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.OperationParm_Concept" id="1171307251425">
                  <link role="concept" targetNodeId="1.1068580123137" />
                </node>
              </node>
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1171306988606">
                <link role="variableDeclaration" targetNodeId="1171306220390" resolveInfo="statement" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1171307602592">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1171307602593">
            <property name="name" value="children3" />
            <node role="type" type="jetbrains.mps.baseLanguage.ext.collections.lang.SequenceType" id="1171307602595">
              <node role="elementType" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1171307602596">
                <link role="concept" targetNodeId="1.1068580123137" />
              </node>
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.ext.collections.lang.SequenceOperationExpression" id="1171307549010">
              <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.WhereOperation" id="1171307563638">
                <node role="whereClosure" type="jetbrains.mps.baseLanguage.ext.collections.lang.WhereBlock" id="1171307563639">
                  <node role="defaultInputElement" type="jetbrains.mps.baseLanguage.ext.collections.lang.DefaultInputElement" id="1171307563640">
                    <property name="name" value="it" />
                  </node>
                  <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1171307563641">
                    <node role="statement" type="jetbrains.mps.baseLanguage.ReturnStatement" id="1171307573846">
                      <node role="expression" type="jetbrains.mps.baseLanguage.EqualsExpression" id="1171307582837">
                        <node role="rightExpression" type="jetbrains.mps.baseLanguage.BooleanConstant" id="1171307584824">
                          <property name="value" value="true" />
                        </node>
                        <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1171307578755">
                          <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SPropertyAccess" id="1171307580164">
                            <link role="property" targetNodeId="1.1068580123138" />
                          </node>
                          <node role="leftExpression" type="jetbrains.mps.baseLanguage.ClosureParameterReference" id="1171307576176">
                            <link role="closureParameter" targetNodeId="1171307563640" resolveInfo="it" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1171307513442">
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Node_GetDescendantsOperation" id="1171307517257">
                  <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.OperationParm_Concept" id="1171307541103">
                    <link role="concept" targetNodeId="1.1068580123137" />
                  </node>
                </node>
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1171307509374">
                  <link role="variableDeclaration" targetNodeId="1171306220390" resolveInfo="statement" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1171306220390">
        <property name="name" value="statement" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1171306250057">
          <link role="concept" targetNodeId="1.1068580123155" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.ClassConcept" id="1145583629132">
    <property name="name" value="Siblings" />
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1145583649555">
      <property name="name" value="nextSibling" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.VoidType" id="1145583660917" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1145583649557">
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1145583711846">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1145583711847">
            <property name="name" value="next1" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1145583711849" />
            <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1145583691875">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1145583689406">
                <link role="variableDeclaration" targetNodeId="1145583677356" />
              </node>
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Node_GetNextSiblingOperation" id="1145583695767" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1145583734518">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1145583734519">
            <property name="name" value="next2" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1145583734520">
              <link role="concept" targetNodeId="1.1068580123157" />
            </node>
            <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeTypeCastExpression" id="1145583743681">
              <link role="concept" targetNodeId="1.1068580123157" />
              <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1145583734521">
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1145583734522">
                  <link role="variableDeclaration" targetNodeId="1145583677356" />
                </node>
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Node_GetNextSiblingOperation" id="1145583734523" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1145583822374">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1145583822375">
            <property name="name" value="next3" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1145583822377">
              <link role="concept" targetNodeId="1.1068580123159" />
            </node>
            <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1145583790763">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1145583787996">
                <link role="variableDeclaration" targetNodeId="1145583677356" />
              </node>
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Node_InsertNewNextSiblingOperation" id="1145583808654">
                <link role="concept" targetNodeId="1.1068580123159" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1145583832489">
          <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1145583834350">
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1145583832490">
              <link role="variableDeclaration" targetNodeId="1145583677356" />
            </node>
            <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Node_InsertNextSiblingOperation" id="1145583839085">
              <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1145583848338">
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1145583846306">
                  <link role="variableDeclaration" targetNodeId="1145583822375" />
                </node>
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Node_CopyOperation" id="1145583850574" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1145583677356">
        <property name="name" value="statement" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1145583677357">
          <link role="concept" targetNodeId="1.1068580123157" />
        </node>
      </node>
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1145583918340">
      <property name="name" value="nextSiblings" />
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1145583950009">
        <property name="name" value="statement" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1145583950010">
          <link role="concept" targetNodeId="1.1068580123157" />
        </node>
      </node>
      <node role="returnType" type="jetbrains.mps.baseLanguage.VoidType" id="1145583920968" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1145583918342">
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1145584385090">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1145584385091">
            <property name="name" value="nextSiblings_exclusive" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeListType" id="1145584385109" />
            <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1145583955778">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1145583953918">
                <link role="variableDeclaration" targetNodeId="1145583950009" />
              </node>
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Node_GetNextSiblingsOperation" id="1145583962982" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1145584032484">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1145584032485">
            <property name="name" value="nextSiblings_inclusive" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeListType" id="1145584032486" />
            <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1145584059786">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1145584058285">
                <link role="variableDeclaration" targetNodeId="1145583950009" />
              </node>
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Node_GetNextSiblingsOperation" id="1145584074615">
                <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.OperationParm_Inclusion" id="1145584420173" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1145584437784">
      <property name="name" value="allSiblings" />
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1145584454874">
        <property name="name" value="statement" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1145584454875">
          <link role="concept" targetNodeId="1.1068580123157" />
        </node>
      </node>
      <node role="returnType" type="jetbrains.mps.baseLanguage.VoidType" id="1145584440021" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1145584437786">
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1145584484835">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1145584484836">
            <property name="name" value="siblings_inclusive" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeListType" id="1145584484838" />
            <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1145584460190">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1145584457736">
                <link role="variableDeclaration" targetNodeId="1145584454874" />
              </node>
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Node_GetAllSiblingsOperation" id="1145584461519">
                <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.OperationParm_Inclusion" id="1145584468928" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.ClassConcept" id="1145914896888">
    <property name="name" value="Conditions" />
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1145914906733">
      <property name="name" value="checkTypeOfNode" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.VoidType" id="1145914909298" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1145914906735">
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1145915104368">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1145915104369">
            <property name="name" value="b" />
            <node role="type" type="jetbrains.mps.baseLanguage.BooleanType" id="1145915104370" />
            <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1145915110712">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1145915110713">
                <link role="variableDeclaration" targetNodeId="1145914952409" />
              </node>
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Node_IsInstanceOfOperation" id="1145915110714">
                <link role="concept" targetNodeId="1.1068580123159" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1145915120826">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1145915120827">
            <property name="name" value="b2" />
            <node role="type" type="jetbrains.mps.baseLanguage.BooleanType" id="1145915120828" />
            <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1145915131244">
              <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1145915131245">
                <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeTypeCastExpression" id="1145915131246">
                  <link role="concept" targetNodeId="1.1068580123159" />
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1145915131247">
                    <link role="variableDeclaration" targetNodeId="1145914952409" />
                  </node>
                </node>
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SLinkAccess" id="1145915131248">
                  <link role="link" targetNodeId="1.1068580123160" />
                </node>
              </node>
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Node_IsInstanceOfOperation" id="1145915131249">
                <link role="concept" targetNodeId="1.1068580123137" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1145914952409">
        <property name="name" value="node" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1145914952410" />
      </node>
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1145915661989">
      <property name="name" value="checkRoleAndTypeOfDirectParent" />
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1145915711626">
        <property name="name" value="node" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1145915711627" />
      </node>
      <node role="returnType" type="jetbrains.mps.baseLanguage.VoidType" id="1145915664288" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1145915661991">
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1145915715784">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1145915715785">
            <property name="name" value="b" />
            <node role="type" type="jetbrains.mps.baseLanguage.BooleanType" id="1145915715786" />
            <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1145915722929">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1145915721366">
                <link role="variableDeclaration" targetNodeId="1145915711626" />
              </node>
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Node_IsRoleOperation" id="1145915725680">
                <link role="conceptOfParent" targetNodeId="1.1068580123159" />
                <link role="linkInParent" targetNodeId="1.1068580123160" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.ClassConcept" id="1146073464944">
    <property name="name" value="ConceptProperties" />
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1146073487579">
      <property name="name" value="stringConceptProperty" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.VoidType" id="1146073487580" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1146073487581">
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1146073487582">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1146073487583">
            <property name="name" value="hasAlias" />
            <node role="type" type="jetbrains.mps.baseLanguage.BooleanType" id="1146073487584" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.NotEqualsExpression" id="1146073487585">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.NullLiteral" id="1146073487586" />
              <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146073487587">
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1146073487588">
                  <link role="variableDeclaration" targetNodeId="1146073487612" />
                </node>
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SConceptPropertyAccess" id="1146073487589">
                  <link role="conceptProperty" targetNodeId="6.1137473891462" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1146073487590">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1146073487591">
            <property name="name" value="alias" />
            <node role="type" type="jetbrains.mps.baseLanguage.ClassifierType" id="1146073487592">
              <link role="classifier" extResolveInfo="3.[Classifier]String" />
            </node>
            <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146073487593">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1146073487594">
                <link role="variableDeclaration" targetNodeId="1146073487612" />
              </node>
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SConceptPropertyAccess" id="1146073487595">
                <link role="conceptProperty" targetNodeId="6.1137473891462" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1146073487596">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1146073487597">
            <property name="name" value="text" />
            <node role="type" type="jetbrains.mps.baseLanguage.ClassifierType" id="1146073487598">
              <link role="classifier" extResolveInfo="3.[Classifier]String" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.PlusExpression" id="1146073487599">
              <node role="rightExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146073487600">
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1146073487601">
                  <link role="variableDeclaration" targetNodeId="1146073487612" />
                </node>
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SConceptPropertyAccess" id="1146073487602">
                  <link role="conceptProperty" targetNodeId="6.1137473891462" />
                </node>
              </node>
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.StringLiteral" id="1146073487603">
                <property name="value" value="alias is " />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1146073487604">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1146073487605">
            <property name="name" value="length" />
            <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1146073487606" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.InstanceMethodCall" id="1146073487607">
              <link role="baseMethodDeclaration" extResolveInfo="3.method ([Classifier]String).([InstanceMethodDeclaration]length() : (jetbrains.mps.baseLanguage.types.int/jetbrains.mps.baseLanguage.types.int))" />
              <node role="instance" type="jetbrains.mps.bootstrap.smodelLanguage.SemanticDowncastExpression" id="1146073487608">
                <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146073487609">
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1146073487610">
                    <link role="variableDeclaration" targetNodeId="1146073487612" />
                  </node>
                  <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SConceptPropertyAccess" id="1146073487611">
                    <link role="conceptProperty" targetNodeId="6.1137473891462" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1146073487612">
        <property name="name" value="node" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1146073487613" />
      </node>
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1146073487614">
      <property name="name" value="booleanConceptProperty" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.VoidType" id="1146073487615" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1146073487616">
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1146073487617">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1146073487618">
            <property name="name" value="isAbstract" />
            <node role="type" type="jetbrains.mps.baseLanguage.BooleanType" id="1146073487619" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.BooleanConstant" id="1146073487620" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.IfStatement" id="1146073487621">
          <node role="condition" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146073487622">
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1146073487623">
              <link role="variableDeclaration" targetNodeId="1146073487636" />
            </node>
            <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SConceptPropertyAccess" id="1146073487624">
              <link role="conceptProperty" targetNodeId="6.1137473854053" />
            </node>
          </node>
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.StatementList" id="1146073487625">
            <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1146073487626">
              <node role="expression" type="jetbrains.mps.baseLanguage.AssignmentExpression" id="1146073487627">
                <node role="lValue" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1146073487628">
                  <link role="variableDeclaration" targetNodeId="1146073487618" />
                </node>
                <node role="rValue" type="jetbrains.mps.baseLanguage.BooleanConstant" id="1146073487629">
                  <property name="value" value="true" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1146073487630">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1146073487631">
            <property name="name" value="isAbstract2" />
            <node role="type" type="jetbrains.mps.baseLanguage.BooleanType" id="1146073487632" />
            <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146073487633">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1146073487634">
                <link role="variableDeclaration" targetNodeId="1146073487636" />
              </node>
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SConceptPropertyAccess" id="1146073487635">
                <link role="conceptProperty" targetNodeId="6.1137473854053" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1146073487636">
        <property name="name" value="node" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1146073487637" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.ClassConcept" id="1146073640825">
    <property name="name" value="Properties" />
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1146073718686">
      <property name="name" value="stringProperty" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.VoidType" id="1146073722048" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1146073718688">
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1146073804864">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1146073804865">
            <property name="name" value="hasName" />
            <node role="type" type="jetbrains.mps.baseLanguage.BooleanType" id="1146073804866" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.NotEqualsExpression" id="1146073820230">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.NullLiteral" id="1146073824327" />
              <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146073816244">
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1146073812774">
                  <link role="variableDeclaration" targetNodeId="1146073759127" />
                </node>
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SPropertyAccess" id="1146073818401">
                  <link role="property" targetNodeId="1.1075300953595" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1146073845876">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1146073845877">
            <property name="name" value="name" />
            <node role="type" type="jetbrains.mps.baseLanguage.ClassifierType" id="1146073845878">
              <link role="classifier" extResolveInfo="3.[Classifier]String" />
            </node>
            <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146073855849">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1146073854348">
                <link role="variableDeclaration" targetNodeId="1146073759127" />
              </node>
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SPropertyAccess" id="1146073857585">
                <link role="property" targetNodeId="1.1075300953595" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1146073864305">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1146073864306">
            <property name="name" value="text" />
            <node role="type" type="jetbrains.mps.baseLanguage.ClassifierType" id="1146073864307">
              <link role="classifier" extResolveInfo="3.[Classifier]String" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.PlusExpression" id="1146073884186">
              <node role="rightExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146073887909">
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1146073886736">
                  <link role="variableDeclaration" targetNodeId="1146073759127" />
                </node>
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SPropertyAccess" id="1146073889770">
                  <link role="property" targetNodeId="1.1075300953595" />
                </node>
              </node>
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.StringLiteral" id="1146073869481">
                <property name="value" value="Name is " />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1146073912085">
          <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146073916277">
            <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146073913321">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1146073912086">
                <link role="variableDeclaration" targetNodeId="1146073759127" />
              </node>
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SPropertyAccess" id="1146073914822">
                <link role="property" targetNodeId="1.1075300953595" />
              </node>
            </node>
            <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Property_SetOperation" id="1146073919403">
              <node role="value" type="jetbrains.mps.baseLanguage.StringLiteral" id="1146073923858">
                <property name="value" value="Sample" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1146073951453">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1146073951454">
            <property name="name" value="ok_not_safely" />
            <node role="type" type="jetbrains.mps.baseLanguage.BooleanType" id="1146073951455" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.InstanceMethodCall" id="1146076080122">
              <link role="baseMethodDeclaration" extResolveInfo="3.method ([Classifier]String).([InstanceMethodDeclaration]equals((jetbrains.mps.baseLanguage.types.classifier/jetbrains.mps.baseLanguage.types.classifier [Object])) : (jetbrains.mps.baseLanguage.types.boolean/jetbrains.mps.baseLanguage.types.boolean))" />
              <node role="instance" type="jetbrains.mps.bootstrap.smodelLanguage.SemanticDowncastExpression" id="1146073972602">
                <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146073960833">
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1146073958848">
                    <link role="variableDeclaration" targetNodeId="1146073759127" />
                  </node>
                  <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SPropertyAccess" id="1146073962709">
                    <link role="property" targetNodeId="1.1075300953595" />
                  </node>
                </node>
              </node>
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.StringLiteral" id="1146076084435">
                <property name="value" value="Sample" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1146255412021">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1146255412022">
            <property name="name" value="ok_safely" />
            <node role="type" type="jetbrains.mps.baseLanguage.BooleanType" id="1146255412023" />
            <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146255464762">
              <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146255454088">
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1146255452587">
                  <link role="variableDeclaration" targetNodeId="1146073759127" />
                </node>
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SPropertyAccess" id="1146255507129">
                  <link role="property" targetNodeId="1.1075300953595" />
                </node>
              </node>
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Property_HasValue_Simple" id="1146255541723">
                <node role="value" type="jetbrains.mps.baseLanguage.StringLiteral" id="1146255548475">
                  <property name="value" value="Sample" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1146255570634">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1146255570635">
            <property name="name" value="ok_in_java" />
            <node role="type" type="jetbrains.mps.baseLanguage.BooleanType" id="1146255570636" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.EqualsExpression" id="1146255591359">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.StringLiteral" id="1146255594753">
                <property name="value" value="Sample" />
              </node>
              <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146255587014">
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1146255585763">
                  <link role="variableDeclaration" targetNodeId="1146073759127" />
                </node>
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SPropertyAccess" id="1146255589796">
                  <link role="property" targetNodeId="1.1075300953595" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1146073759127">
        <property name="name" value="clazz" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1146073759128">
          <link role="concept" targetNodeId="1.1068390468198" />
        </node>
      </node>
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1146255828848">
      <property name="name" value="stringProperty2" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.VoidType" id="1146255831444" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1146255828850">
        <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1146255884016">
          <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146255889457">
            <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146255885362">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1146255884017">
                <link role="variableDeclaration" targetNodeId="1146255845133" />
              </node>
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SPropertyAccess" id="1146255887488">
                <link role="property" targetNodeId="1.1075300953595" />
              </node>
            </node>
            <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Property_SetOperation" id="1146255891552">
              <node role="value" type="jetbrains.mps.baseLanguage.StringLiteral" id="1146255902179">
                <property name="value" value="Sample" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1146255913679">
          <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146255913680">
            <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146255913681">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1146255920390">
                <link role="variableDeclaration" targetNodeId="1146255864561" />
              </node>
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SPropertyAccess" id="1146255913683">
                <link role="property" targetNodeId="1.1075300953595" />
              </node>
            </node>
            <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Property_SetOperation" id="1146255913684">
              <node role="value" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146526327540">
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1146526289461">
                  <link role="variableDeclaration" targetNodeId="1146255845133" />
                </node>
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SPropertyAccess" id="1146526333401">
                  <link role="property" targetNodeId="1.1075300953595" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1146255924814">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1146255924815">
            <property name="name" value="ok" />
            <node role="type" type="jetbrains.mps.baseLanguage.BooleanType" id="1146255924816" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.EqualsExpression" id="1146255938821">
              <node role="rightExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146255947246">
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1146255945230">
                  <link role="variableDeclaration" targetNodeId="1146255864561" />
                </node>
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SPropertyAccess" id="1146255948810">
                  <link role="property" targetNodeId="1.1075300953595" />
                </node>
              </node>
              <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146255934928">
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1146255932958">
                  <link role="variableDeclaration" targetNodeId="1146255845133" />
                </node>
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SPropertyAccess" id="1146255936960">
                  <link role="property" targetNodeId="1.1075300953595" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1146255845133">
        <property name="name" value="clazz1" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1146255845134">
          <link role="concept" targetNodeId="1.1068390468198" />
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1146255864561">
        <property name="name" value="clazz2" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1146255864562">
          <link role="concept" targetNodeId="1.1068390468198" />
        </node>
      </node>
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1146080703110">
      <property name="name" value="booleanProperty" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.VoidType" id="1146080706894" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1146080703112">
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1146080832045">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1146080832046">
            <property name="name" value="isTrue" />
            <node role="type" type="jetbrains.mps.baseLanguage.BooleanType" id="1146080832047" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.BooleanConstant" id="1146080839284" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.IfStatement" id="1146080849848">
          <node role="condition" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146080856712">
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1146080854976">
              <link role="variableDeclaration" targetNodeId="1146080718317" />
            </node>
            <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SPropertyAccess" id="1146080863463">
              <link role="property" targetNodeId="1.1068580123138" />
            </node>
          </node>
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.StatementList" id="1146080849850">
            <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1146080867432">
              <node role="expression" type="jetbrains.mps.baseLanguage.AssignmentExpression" id="1146080869059">
                <node role="lValue" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1146080867433">
                  <link role="variableDeclaration" targetNodeId="1146080832046" />
                </node>
                <node role="rValue" type="jetbrains.mps.baseLanguage.BooleanConstant" id="1146080871951">
                  <property name="value" value="true" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1146080764694">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1146080764695">
            <property name="name" value="isTrue2" />
            <node role="type" type="jetbrains.mps.baseLanguage.BooleanType" id="1146080764696" />
            <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146080773433">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1146080771416">
                <link role="variableDeclaration" targetNodeId="1146080718317" />
              </node>
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SPropertyAccess" id="1146080784434">
                <link role="property" targetNodeId="1.1068580123138" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1146080941406">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1146080941407">
            <property name="name" value="isTrue3" />
            <node role="type" type="jetbrains.mps.baseLanguage.BooleanType" id="1146080941408" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.AndExpression" id="1146080958913">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.BooleanConstant" id="1146080968572">
                <property name="value" value="true" />
              </node>
              <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146080954692">
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1146080953082">
                  <link role="variableDeclaration" targetNodeId="1146080718317" />
                </node>
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SPropertyAccess" id="1146080956287">
                  <link role="property" targetNodeId="1.1068580123138" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1146081001465">
          <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146081020750">
            <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146081008748">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1146081001466">
                <link role="variableDeclaration" targetNodeId="1146080718317" />
              </node>
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SPropertyAccess" id="1146081019218">
                <link role="property" targetNodeId="1.1068580123138" />
              </node>
            </node>
            <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Property_SetOperation" id="1146081022954">
              <node role="value" type="jetbrains.mps.baseLanguage.NotExpression" id="1146081036239">
                <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146081042320">
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1146081040600">
                    <link role="variableDeclaration" targetNodeId="1146080718317" />
                  </node>
                  <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SPropertyAccess" id="1146081044446">
                    <link role="property" targetNodeId="1.1068580123138" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1146080718317">
        <property name="name" value="boolConst" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1146080718318">
          <link role="concept" targetNodeId="1.1068580123137" />
        </node>
      </node>
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1146081100025">
      <property name="name" value="integerProperty" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.VoidType" id="1146081102387" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1146081100027">
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1146081139984">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1146081139985">
            <property name="name" value="i" />
            <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1146081139986" />
            <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146081149505">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1146081147941">
                <link role="variableDeclaration" targetNodeId="1146081113920" />
              </node>
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SPropertyAccess" id="1146081152115">
                <link role="property" targetNodeId="1.1068580320021" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1146081158851">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1146081158852">
            <property name="name" value="i2" />
            <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1146081158853" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.PlusExpression" id="1146081176390">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.IntegerConstant" id="1146081179518">
                <property name="value" value="10" />
              </node>
              <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146081171606">
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1146081167090">
                  <link role="variableDeclaration" targetNodeId="1146081113920" />
                </node>
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SPropertyAccess" id="1146081173139">
                  <link role="property" targetNodeId="1.1068580320021" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.IfStatement" id="1146081199098">
          <node role="condition" type="jetbrains.mps.baseLanguage.GreaterThanExpression" id="1146081213213">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.IntegerConstant" id="1146081216497">
              <property name="value" value="100" />
            </node>
            <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146081203602">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1146081201804">
                <link role="variableDeclaration" targetNodeId="1146081113920" />
              </node>
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SPropertyAccess" id="1146081204962">
                <link role="property" targetNodeId="1.1068580320021" />
              </node>
            </node>
          </node>
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.StatementList" id="1146081199100">
            <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1146081241420">
              <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146081247956">
                <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146081244657">
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1146081241421">
                    <link role="variableDeclaration" targetNodeId="1146081113920" />
                  </node>
                  <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SPropertyAccess" id="1146081246080">
                    <link role="property" targetNodeId="1.1068580320021" />
                  </node>
                </node>
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Property_SetOperation" id="1146081250066">
                  <node role="value" type="jetbrains.mps.baseLanguage.MinusExpression" id="1146081297931">
                    <node role="rightExpression" type="jetbrains.mps.baseLanguage.IntegerConstant" id="1146081301184">
                      <property name="value" value="100" />
                    </node>
                    <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146081284445">
                      <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1146081282819">
                        <link role="variableDeclaration" targetNodeId="1146081113920" />
                      </node>
                      <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SPropertyAccess" id="1146081285743">
                        <link role="property" targetNodeId="1.1068580320021" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1146081113920">
        <property name="name" value="intConst" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1146081113921">
          <link role="concept" targetNodeId="1.1068580320020" />
        </node>
      </node>
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1146086375054">
      <property name="name" value="enumProperty_string" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.VoidType" id="1146086384448" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1146086375056">
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1146086546631">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1146086546632">
            <property name="name" value="s" />
            <node role="type" type="jetbrains.mps.baseLanguage.ClassifierType" id="1146086546650">
              <link role="classifier" extResolveInfo="3.[Classifier]String" />
            </node>
            <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146086492582">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1146086488346">
                <link role="variableDeclaration" targetNodeId="1146086404917" />
              </node>
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SPropertyAccess" id="1146086496817">
                <link role="property" targetNodeId="9.1071599893252" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1146251209145">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1146251209146">
            <property name="name" value="ok1" />
            <node role="type" type="jetbrains.mps.baseLanguage.BooleanType" id="1146251209147" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.EqualsExpression" id="1146251222870">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1146251227030">
                <link role="variableDeclaration" targetNodeId="1146086546632" />
              </node>
              <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146251219603">
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1146251218430">
                  <link role="variableDeclaration" targetNodeId="1146086404917" />
                </node>
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SPropertyAccess" id="1146251221197">
                  <link role="property" targetNodeId="9.1071599893252" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1146156976572">
          <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146157240004">
            <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146156978418">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1146156976573">
                <link role="variableDeclaration" targetNodeId="1146086404917" />
              </node>
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SPropertyAccess" id="1146526928684">
                <link role="property" targetNodeId="9.1071599893252" />
              </node>
            </node>
            <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Property_SetOperation" id="1146157242208">
              <node role="value" type="jetbrains.mps.bootstrap.smodelLanguage.EnumMemberReference" id="1146158120773">
                <link role="enumMember" targetNodeId="9.1084197782725" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1146251243328">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1146251243329">
            <property name="name" value="ok2" />
            <node role="type" type="jetbrains.mps.baseLanguage.BooleanType" id="1146251243330" />
            <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146251253106">
              <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146251253107">
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1146251253108">
                  <link role="variableDeclaration" targetNodeId="1146086404917" />
                </node>
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SPropertyAccess" id="1146251253109">
                  <link role="property" targetNodeId="9.1071599893252" />
                </node>
              </node>
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Property_HasValue_Enum" id="1146251253110">
                <node role="value" type="jetbrains.mps.bootstrap.smodelLanguage.EnumMemberReference" id="1146251253111">
                  <link role="enumMember" targetNodeId="9.1084197782725" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1146086404917">
        <property name="name" value="link" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1146086404918">
          <link role="concept" targetNodeId="9.1071489288298" />
        </node>
      </node>
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1146250911625">
      <property name="name" value="enumProperty2_string" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.VoidType" id="1146250914019" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1146250911627">
        <node role="statement" type="jetbrains.mps.baseLanguage.IfStatement" id="1146250966728">
          <node role="condition" type="jetbrains.mps.baseLanguage.NotEqualsExpression" id="1146250976328">
            <node role="rightExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146250982348">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1146250981050">
                <link role="variableDeclaration" targetNodeId="1146250941022" />
              </node>
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SPropertyAccess" id="1146250984099">
                <link role="property" targetNodeId="9.1071599937831" />
              </node>
            </node>
            <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146250972763">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1146250971528">
                <link role="variableDeclaration" targetNodeId="1146250930364" />
              </node>
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SPropertyAccess" id="1146250974186">
                <link role="property" targetNodeId="9.1071599937831" />
              </node>
            </node>
          </node>
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.StatementList" id="1146250966730">
            <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1146251002600">
              <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146251010275">
                <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146251004102">
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1146251002601">
                    <link role="variableDeclaration" targetNodeId="1146250930364" />
                  </node>
                  <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SPropertyAccess" id="1146251006462">
                    <link role="property" targetNodeId="9.1071599937831" />
                  </node>
                </node>
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Property_SetOperation" id="1146251012339">
                  <node role="value" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146251018826">
                    <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1146251017450">
                      <link role="variableDeclaration" targetNodeId="1146250941022" />
                    </node>
                    <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SPropertyAccess" id="1146251020749">
                      <link role="property" targetNodeId="9.1071599937831" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1146251031486">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1146251031487">
            <property name="name" value="ok1" />
            <node role="type" type="jetbrains.mps.baseLanguage.BooleanType" id="1146251031488" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.EqualsExpression" id="1146251044852">
              <node role="rightExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146251053137">
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1146251050214">
                  <link role="variableDeclaration" targetNodeId="1146250941022" />
                </node>
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SPropertyAccess" id="1146251055544">
                  <link role="property" targetNodeId="9.1071599937831" />
                </node>
              </node>
              <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146251040725">
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1146251039505">
                  <link role="variableDeclaration" targetNodeId="1146250930364" />
                </node>
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SPropertyAccess" id="1146251043413">
                  <link role="property" targetNodeId="9.1071599937831" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.IfStatement" id="1146251073093">
          <node role="condition" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146251081506">
            <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146251077707">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1146251076503">
                <link role="variableDeclaration" targetNodeId="1146250930364" />
              </node>
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SPropertyAccess" id="1146251079442">
                <link role="property" targetNodeId="9.1071599937831" />
              </node>
            </node>
            <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Property_HasValue_Enum" id="1146251083460">
              <node role="value" type="jetbrains.mps.bootstrap.smodelLanguage.EnumMemberReference" id="1146251083461">
                <link role="enumMember" targetNodeId="9.1084199179705" />
              </node>
            </node>
          </node>
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.StatementList" id="1146251073095">
            <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1146251097024">
              <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1146251097025">
                <property name="name" value="ok2" />
                <node role="type" type="jetbrains.mps.baseLanguage.BooleanType" id="1146251097026" />
                <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146251111234">
                  <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146251107560">
                    <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1146251106091">
                      <link role="variableDeclaration" targetNodeId="1146250941022" />
                    </node>
                    <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SPropertyAccess" id="1146251109249">
                      <link role="property" targetNodeId="9.1071599937831" />
                    </node>
                  </node>
                  <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Property_HasValue_Enum" id="1146251113220">
                    <node role="value" type="jetbrains.mps.bootstrap.smodelLanguage.EnumMemberReference" id="1146251113221">
                      <link role="enumMember" targetNodeId="9.1084199179705" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1146250930364">
        <property name="name" value="link1" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1146250930365">
          <link role="concept" targetNodeId="9.1071489288298" />
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1146250941022">
        <property name="name" value="link2" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1146250943899">
          <link role="concept" targetNodeId="9.1071489288298" />
        </node>
      </node>
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1146854597219">
      <property name="name" value="enumProperty3_integer" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.VoidType" id="1146854599691" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1146854597221">
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1170458748584">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1170458748585">
            <property name="name" value="i" />
            <node role="type" type="jetbrains.mps.baseLanguage.IntegerType" id="1170458748586" />
            <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1170458765574">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1170458764073">
                <link role="variableDeclaration" targetNodeId="1146854625161" resolveInfo="cellModel" />
              </node>
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SPropertyAccess" id="1170458766543">
                <link role="property" targetNodeId="11.1130859485024" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.IfStatement" id="1146854709495">
          <node role="condition" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146854729735">
            <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146854717671">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1146854715904">
                <link role="variableDeclaration" targetNodeId="1146854625161" />
              </node>
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SPropertyAccess" id="1146854727016">
                <link role="property" targetNodeId="11.1130859485024" />
              </node>
            </node>
            <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Property_HasValue_Enum" id="1146854732877">
              <node role="value" type="jetbrains.mps.bootstrap.smodelLanguage.EnumMemberReference" id="1146854732878">
                <link role="enumMember" targetNodeId="11.1130926557292" />
              </node>
            </node>
          </node>
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.StatementList" id="1146854709497">
            <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1146854741629">
              <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146854749649">
                <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146854743350">
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1146854741630">
                    <link role="variableDeclaration" targetNodeId="1146854625161" />
                  </node>
                  <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SPropertyAccess" id="1146854746257">
                    <link role="property" targetNodeId="11.1130859485024" />
                  </node>
                </node>
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Property_SetOperation" id="1146854752337">
                  <node role="value" type="jetbrains.mps.bootstrap.smodelLanguage.EnumMemberReference" id="1146854761011">
                    <link role="enumMember" targetNodeId="11.1130926603060" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1146854625161">
        <property name="name" value="cellModel" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1146854625162">
          <link role="concept" targetNodeId="11.1073389214265" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.ClassConcept" id="1146260811624">
    <property name="name" value="NewNode" />
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1146260830963">
      <property name="name" value="newNode1" />
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1146260830964">
        <property name="name" value="model" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SModelType" id="1166649130813" />
      </node>
      <node role="returnType" type="jetbrains.mps.baseLanguage.VoidType" id="1146260830966" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1146260830967">
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1166649349905">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1166649349906">
            <property name="name" value="newClass" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1166649349908">
              <link role="concept" targetNodeId="1.1068390468198" />
            </node>
            <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1166649177367">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1166649175866">
                <link role="variableDeclaration" targetNodeId="1146260830964" resolveInfo="model" />
              </node>
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Model_CreateNewRootNodeOperation" id="1166649180368">
                <link role="concept" targetNodeId="1.1068390468198" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1166649175865">
          <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1166649239153">
            <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1166649209291">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1166649349909">
                <link role="variableDeclaration" targetNodeId="1166649349906" resolveInfo="newClass" />
              </node>
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SLinkListAccess" id="1166649237824">
                <link role="link" targetNodeId="1.1068390468201" />
              </node>
            </node>
            <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.LinkList_AddNewChildOperation" id="1166649242794" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1166649357812">
          <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1166649373634">
            <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1166649364132">
              <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1166649357813">
                <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1166649357814">
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1166649357815">
                    <link role="variableDeclaration" targetNodeId="1166649349906" resolveInfo="newClass" />
                  </node>
                  <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SLinkListAccess" id="1166649357816">
                    <link role="link" targetNodeId="1.1068390468201" />
                  </node>
                </node>
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.LinkList_AddNewChildOperation" id="1166649357817" />
              </node>
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SLinkListAccess" id="1166649370711">
                <link role="link" targetNodeId="1.1068580123134" />
              </node>
            </node>
            <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.LinkList_AddNewChildOperation" id="1166649378713" />
          </node>
        </node>
      </node>
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1166649120551">
      <property name="name" value="newNode2" />
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1166649120552">
        <property name="name" value="node" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1166649120553" />
      </node>
      <node role="returnType" type="jetbrains.mps.baseLanguage.VoidType" id="1166649120554" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1166649120555">
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1166649120556">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1166649120557">
            <property name="name" value="newIfStatement" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1166649120558">
              <link role="concept" targetNodeId="1.1068580123159" />
            </node>
            <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1166649120559">
              <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1166649120560">
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1166649120561">
                  <link role="variableDeclaration" targetNodeId="1166649120552" resolveInfo="node" />
                </node>
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Node_GetModelOperation" id="1166649120562" />
              </node>
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Model_CreateNewNodeOperation" id="1166649120563">
                <link role="concept" targetNodeId="1.1068580123159" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1166649120564">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1166649120565">
            <property name="name" value="newCondition" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1166649120566">
              <link role="concept" targetNodeId="1.1068431790191" />
            </node>
            <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1166649120567">
              <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1166649120568">
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1166649120569">
                  <link role="variableDeclaration" targetNodeId="1166649120557" resolveInfo="newIfStatement" />
                </node>
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SLinkAccess" id="1166649120570">
                  <link role="link" targetNodeId="1.1068580123160" />
                </node>
              </node>
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Link_SetNewChildOperation" id="1166649120571" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1166649120572">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1166649120573">
            <property name="name" value="newCondition2" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1166649120574">
              <link role="concept" targetNodeId="1.1080120340718" />
            </node>
            <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1166649120575">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1166649120576">
                <link role="variableDeclaration" targetNodeId="1166649120565" resolveInfo="newCondition" />
              </node>
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Node_ReplaceWithNewOperation" id="1166649120577">
                <link role="concept" targetNodeId="1.1080120340718" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1166649120578">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1166649120579">
            <property name="name" value="newStatement" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1166649120580">
              <link role="concept" targetNodeId="1.1068581242878" />
            </node>
            <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1166649120581">
              <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1166649120582">
                <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1166649120583">
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1166649120584">
                    <link role="variableDeclaration" targetNodeId="1166649120557" resolveInfo="newIfStatement" />
                  </node>
                  <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SLinkAccess" id="1166649120585">
                    <link role="link" targetNodeId="1.1068580123161" />
                  </node>
                </node>
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SLinkListAccess" id="1166649120586">
                  <link role="link" targetNodeId="1.1068581517665" />
                </node>
              </node>
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.LinkList_AddNewChildOperation" id="1166649120587">
                <link role="concept" targetNodeId="1.1068581242878" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.ClassConcept" id="1169584463554">
    <property name="name" value="ListOfNodes" />
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1169584502071">
      <property name="name" value="newList" />
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1169584531902">
        <property name="name" value="e1" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1169584546667">
          <link role="concept" targetNodeId="1.1068431790191" />
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1169584559825">
        <property name="name" value="e2" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1169584562436">
          <link role="concept" targetNodeId="1.1068431790191" />
        </node>
      </node>
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1169584502072">
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1169584573812">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1169584573813">
            <property name="name" value="list" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeListType" id="1169584581690">
              <link role="elementConcept" targetNodeId="1.1068431790191" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.GenericNewExpression" id="1169584599130">
              <node role="creator" type="jetbrains.mps.baseLanguage.ext.collections.lang.ListCreatorWithInit" id="1169584639100">
                <node role="elementType" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1169584646696">
                  <link role="concept" targetNodeId="1.1068431790191" />
                </node>
                <node role="initValue" type="jetbrains.mps.baseLanguage.ParameterReference" id="1169584663213">
                  <link role="variableDeclaration" targetNodeId="1169584531902" resolveInfo="e1" />
                </node>
                <node role="initValue" type="jetbrains.mps.baseLanguage.ParameterReference" id="1169584667683">
                  <link role="variableDeclaration" targetNodeId="1169584559825" resolveInfo="e2" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="returnType" type="jetbrains.mps.baseLanguage.VoidType" id="1169584502073" />
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1169585406422">
      <property name="name" value="first" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1169585406423">
        <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1169585438286">
          <node role="expression" type="jetbrains.mps.baseLanguage.ext.collections.lang.SequenceOperationExpression" id="1169585560832">
            <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1169585438304">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1169585438287">
                <link role="variableDeclaration" targetNodeId="1169585427175" resolveInfo="sl" />
              </node>
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SLinkListAccessAsList" id="1169585455478">
                <link role="link" targetNodeId="1.1068581517665" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.GetFirstOperation" id="1169585563426" />
          </node>
        </node>
      </node>
      <node role="returnType" type="jetbrains.mps.baseLanguage.VoidType" id="1169585406424" />
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1169585427175">
        <property name="name" value="sl" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1169585427176">
          <link role="concept" targetNodeId="1.1068580123136" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.ClassConcept" id="1170385738897">
    <property name="name" value="NodeAdapterClass" />
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1170385750351">
      <property name="name" value="getAdapter" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.VoidType" id="1170385750352" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1170385750353">
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1170386370725">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1170386370726">
            <property name="name" value="adapter" />
            <node role="type" type="jetbrains.mps.baseLanguage.ClassifierType" id="1170386370728">
              <link role="classifier" extResolveInfo="13.[Classifier]IfStatement" />
            </node>
            <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1170385770905">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1170385769685">
                <link role="variableDeclaration" targetNodeId="1170385759464" resolveInfo="node" />
              </node>
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Node_GetAdapterOperation" id="1170385773547" />
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1170385759464">
        <property name="name" value="node" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1170385759465">
          <link role="concept" targetNodeId="1.1068580123159" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.ClassConcept" id="1171313827134">
    <property name="name" value="Model" />
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1171315492760">
      <property name="name" value="new_node_1" />
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1171315527256">
        <property name="name" value="model" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SModelType" id="1171315527257" />
      </node>
      <node role="returnType" type="jetbrains.mps.baseLanguage.VoidType" id="1171315492761" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1171315492762">
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1171315595156">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1171315595157">
            <property name="name" value="new_stmt" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1171315595159">
              <link role="concept" targetNodeId="1.1068580123159" />
            </node>
            <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1171315578481">
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Model_CreateNewNodeOperation" id="1171315582609">
                <link role="concept" targetNodeId="1.1068580123159" />
              </node>
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1171315576886">
                <link role="variableDeclaration" targetNodeId="1171315527256" resolveInfo="model" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1171315620434">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1171315620435">
            <property name="name" value="new_class" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1171315620437">
              <link role="concept" targetNodeId="1.1068390468198" />
            </node>
            <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1171315603743">
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Model_CreateNewRootNodeOperation" id="1171315607136">
                <link role="concept" targetNodeId="1.1068390468198" />
              </node>
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1171315601945">
                <link role="variableDeclaration" targetNodeId="1171315527256" resolveInfo="model" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1171315698438">
      <property name="name" value="roots_access_1" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.VoidType" id="1171315698439" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1171315698440">
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1171321770453">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1171321770454">
            <property name="name" value="roots1" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeListType" id="1171321770456">
              <link role="elementConcept" targetNodeId="6.1133920641626" />
            </node>
            <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1171316178370">
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Model_RootsOperation" id="1171316180295" />
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1171316177134">
                <link role="variableDeclaration" targetNodeId="1171315708426" resolveInfo="model" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1171321797074">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1171321797075">
            <property name="name" value="roots2" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeListType" id="1171321797077">
              <link role="elementConcept" targetNodeId="1.1068390468198" />
            </node>
            <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1171321780117">
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Model_RootsOperation" id="1171321783011">
                <link role="concept" targetNodeId="1.1068390468198" />
              </node>
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1171321778725">
                <link role="variableDeclaration" targetNodeId="1171315708426" resolveInfo="model" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1171321871373">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1171321871374">
            <property name="name" value="roots3" />
            <node role="type" type="jetbrains.mps.baseLanguage.ext.collections.lang.SequenceType" id="1171321871376">
              <node role="elementType" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1171321871377">
                <link role="concept" targetNodeId="1.1068390468198" />
              </node>
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.ext.collections.lang.SequenceOperationExpression" id="1171321817492">
              <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.WhereOperation" id="1171321823495">
                <node role="whereClosure" type="jetbrains.mps.baseLanguage.ext.collections.lang.WhereBlock" id="1171321823496">
                  <node role="defaultInputElement" type="jetbrains.mps.baseLanguage.ext.collections.lang.DefaultInputElement" id="1171321823497">
                    <property name="name" value="c" />
                  </node>
                  <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1171321823498">
                    <node role="statement" type="jetbrains.mps.baseLanguage.ReturnStatement" id="1171321839656">
                      <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1171321844960">
                        <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Property_HasValue_Simple" id="1171321848088">
                          <node role="value" type="jetbrains.mps.baseLanguage.StringLiteral" id="1171321850480">
                            <property name="value" value="Utils" />
                          </node>
                        </node>
                        <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1171321842377">
                          <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SPropertyAccess" id="1171321843990">
                            <link role="property" targetNodeId="1.1075300953595" />
                          </node>
                          <node role="leftExpression" type="jetbrains.mps.baseLanguage.ClosureParameterReference" id="1171321842345">
                            <link role="closureParameter" targetNodeId="1171321823497" resolveInfo="c" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1171321807973">
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Model_RootsOperation" id="1171321810132">
                  <link role="concept" targetNodeId="1.1068390468198" />
                </node>
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1171321807956">
                  <link role="variableDeclaration" targetNodeId="1171315708426" resolveInfo="model" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1171315708426">
        <property name="name" value="model" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SModelType" id="1171315708427" />
      </node>
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.InstanceMethodDeclaration" id="1171324257150">
      <property name="name" value="nodes_access_1" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.VoidType" id="1171324257151" />
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1171324257152">
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1171324292577">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1171324292578">
            <property name="name" value="nodes1" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeListType" id="1171324292580">
              <link role="elementConcept" targetNodeId="6.1133920641626" />
            </node>
            <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1171324283588">
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Model_NodesOperation" id="1171324285294" />
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1171324281040">
                <link role="variableDeclaration" targetNodeId="1171324273193" resolveInfo="model" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1171324311010">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1171324311011">
            <property name="name" value="nodes2" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeListType" id="1171324311013">
              <link role="elementConcept" targetNodeId="1.1068390468198" />
            </node>
            <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1171324299600">
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Model_NodesOperation" id="1171324300728">
                <link role="concept" targetNodeId="1.1068390468198" />
              </node>
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1171324298552">
                <link role="variableDeclaration" targetNodeId="1171324273193" resolveInfo="model" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1171324366903">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1171324366904">
            <property name="name" value="nodes3" />
            <node role="type" type="jetbrains.mps.baseLanguage.ext.collections.lang.SequenceType" id="1171324366906">
              <node role="elementType" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1171324366907">
                <link role="concept" targetNodeId="1.1068390468198" />
              </node>
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.ext.collections.lang.SequenceOperationExpression" id="1171324331741">
              <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.WhereOperation" id="1171324339057">
                <node role="whereClosure" type="jetbrains.mps.baseLanguage.ext.collections.lang.WhereBlock" id="1171324339058">
                  <node role="defaultInputElement" type="jetbrains.mps.baseLanguage.ext.collections.lang.DefaultInputElement" id="1171324339059">
                    <property name="name" value="c" />
                  </node>
                  <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1171324339060">
                    <node role="statement" type="jetbrains.mps.baseLanguage.ReturnStatement" id="1171324346592">
                      <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1171324352146">
                        <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Property_HasValue_Simple" id="1171324352977">
                          <node role="value" type="jetbrains.mps.baseLanguage.StringLiteral" id="1171324355635">
                            <property name="value" value="Utils" />
                          </node>
                        </node>
                        <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1171324349470">
                          <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SPropertyAccess" id="1171324351223">
                            <link role="property" targetNodeId="1.1075300953595" />
                          </node>
                          <node role="leftExpression" type="jetbrains.mps.baseLanguage.ClosureParameterReference" id="1171324348125">
                            <link role="closureParameter" targetNodeId="1171324339059" resolveInfo="c" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1171324321206">
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Model_NodesOperation" id="1171324323615">
                  <link role="concept" targetNodeId="1.1068390468198" />
                </node>
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1171324319471">
                  <link role="variableDeclaration" targetNodeId="1171324273193" resolveInfo="model" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1171324273193">
        <property name="name" value="model" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SModelType" id="1171324273194" />
      </node>
    </node>
  </node>
</model>


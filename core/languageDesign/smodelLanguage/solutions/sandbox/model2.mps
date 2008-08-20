<?xml version="1.0" encoding="UTF-8"?>
<model name="model2">
  <persistence version="1" />
  <refactoringHistory />
  <language namespace="jetbrains.mps.baseLanguage">
    <languageAspect modelUID="jetbrains.mps.baseLanguage.constraints" version="83" />
    <languageAspect modelUID="jetbrains.mps.baseLanguage.structure" version="0" />
  </language>
  <language namespace="jetbrains.mps.baseLanguage.ext.collections.lang">
    <languageAspect modelUID="jetbrains.mps.baseLanguage.ext.collections.lang.constraints" version="6" />
    <languageAspect modelUID="jetbrains.mps.baseLanguage.ext.collections.lang.structure" version="1" />
  </language>
  <language namespace="jetbrains.mps.bootstrap.smodelLanguage">
    <languageAspect modelUID="jetbrains.mps.bootstrap.smodelLanguage.constraints" version="21" />
    <languageAspect modelUID="jetbrains.mps.bootstrap.smodelLanguage.structure" version="1" />
  </language>
  <languageAspect modelUID="jetbrains.mps.bootstrap.constraintsLanguage.structure" version="0" />
  <languageAspect modelUID="jetbrains.mps.transformation.TLBase.structure" version="1" />
  <languageAspect modelUID="jetbrains.mps.closures.structure" version="0" />
  <languageAspect modelUID="jetbrains.mps.closures.constraints" version="2" />
  <languageAspect modelUID="jetbrains.mps.core.constraints" version="2" />
  <languageAspect modelUID="jetbrains.mps.internal.collections.constraints" version="2" />
  <maxImportIndex value="7" />
  <import index="1" modelUID="jetbrains.mps.bootstrap.smodelLanguage.structure" version="1" />
  <import index="2" modelUID="jetbrains.mps.bootstrap.structureLanguage.structure" version="-1" />
  <import index="3" modelUID="jetbrains.mps.core.structure" version="-1" />
  <import index="4" modelUID="jetbrains.mps.transformation.TLBase.structure" version="1" />
  <import index="6" modelUID="java.lang@java_stub" version="-1" />
  <import index="7" modelUID="jetbrains.mps.baseLanguage.structure" version="0" />
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept" id="1170455697846">
    <property name="name" value="AAA" />
    <node role="field" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration" id="1205334673796">
      <property name="name" value="aaa" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1205334673797" />
      <node role="type" type="jetbrains.mps.baseLanguage.structure.IntegerType" id="1205334679112" />
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" id="1170455701847">
      <property name="name" value="aaa" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.BooleanType" id="1170455838774" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1170455701849">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1170455840650">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1170455850695">
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227893631">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227833445">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1170455850698">
                  <link role="variableDeclaration" targetNodeId="1170455810678" resolveInfo="node" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1170455850699">
                  <link role="link" targetNodeId="1.1138676095763" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1170455850700">
                <link role="property" targetNodeId="2.1083923523171" />
              </node>
            </node>
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1170455850701" />
          </node>
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1170455810678">
        <property name="name" value="node" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1170455810679">
          <link role="concept" targetNodeId="1.1138676077309" />
        </node>
      </node>
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1206574355060" />
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" id="1170455942976">
      <property name="name" value="bbb" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.BooleanType" id="1170455942977" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1170455942978">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1170455942979">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1170455942980">
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227820980">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1170455942983">
                <link role="variableDeclaration" targetNodeId="1170455942987" resolveInfo="node" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1170455956427">
                <link role="property" targetNodeId="3.1156235010670" />
              </node>
            </node>
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1170455942986" />
          </node>
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1170455942987">
        <property name="name" value="node" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1170455942988">
          <link role="concept" targetNodeId="1.1138676077309" />
        </node>
      </node>
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1206574355041" />
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" id="1179351056139">
      <property name="name" value="ccc" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.VoidType" id="1179351056140" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1179351056141" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1179351056142">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1179356197150">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1179356197151">
            <property name="name" value="directSuperConcepts" />
            <node role="type" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ListType" id="1179356197152">
              <node role="elementType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SConceptType" id="1179356197153" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227896743">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227897001">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1179351091413">
                  <link role="variableDeclaration" targetNodeId="1179351074639" resolveInfo="node" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetConceptOperation" id="1179351094997" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Concept_GetDirectSuperConcepts" id="1179351102726" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1185486081131">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1185486081132">
            <property name="name" value="aaa" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1185486081133">
              <link role="classifier" targetNodeId="1170455697846" resolveInfo="AAA" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1185502680867">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1185502680868">
            <property name="name" value="aaa" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.BooleanType" id="1185502684573" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1185486320618">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1185486320619">
            <property name="name" value="aaa" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1185486320620">
              <link role="classifier" targetNodeId="1170455697846" resolveInfo="AAA" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1185486521434">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1185486521435">
            <property name="name" value="aaa" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1185486521436">
              <link role="classifier" targetNodeId="1170455697846" resolveInfo="AAA" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1205345969184">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference" id="1205346056800">
            <link role="classifier" targetNodeId="6.~Double" resolveInfo="Double" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.Statement" id="1205346587858" />
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1179351074639">
        <property name="name" value="node" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1179351074640">
          <link role="concept" targetNodeId="1.1138676077309" />
        </node>
      </node>
    </node>
    <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1206574358519" />
  </node>
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept" id="1204763824500">
    <property name="name" value="TestAttr" />
    <node role="method" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" id="1204763860596">
      <property name="name" value="aaa" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.VoidType" id="1204763860597" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1204763860598" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1204763860599">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1204841101562">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204841102767">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1204841101563">
              <link role="variableDeclaration" targetNodeId="1204763884209" resolveInfo="node" />
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.AttributeAccessOperation" id="1204841820695">
              <node role="attributeQualifier" type="jetbrains.mps.bootstrap.smodelLanguage.structure.PropertyAttributeAccessQualifier" id="1204841840166">
                <link role="annotationLink" targetNodeId="4.1149694466802" resolveInfo="propertyMacro" />
                <node role="propertyQualifier" type="jetbrains.mps.bootstrap.smodelLanguage.structure.PropertyRefQualifier" id="1204848393954">
                  <link role="property" targetNodeId="2.1071599893252" resolveInfo="sourceCardinality" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1204763888180">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204763890635">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1204763888181">
              <link role="variableDeclaration" targetNodeId="1204763884209" resolveInfo="node" />
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.AttributeAccessOperation" id="1204763895715">
              <node role="attributeQualifier" type="jetbrains.mps.bootstrap.smodelLanguage.structure.NodeAttributeAccessQualifier" id="1204833144014">
                <link role="annotationLink" targetNodeId="4.1149694500506" resolveInfo="nodeMacro" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1204833102335">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204833103618">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1204833102336">
              <link role="variableDeclaration" targetNodeId="1204763884209" resolveInfo="node" />
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.AttributeAccessOperation" id="1204833106011">
              <node role="attributeQualifier" type="jetbrains.mps.bootstrap.smodelLanguage.structure.PropertyAttributeAccessQualifier" id="1204833111684">
                <link role="annotationLink" targetNodeId="4.1149694466802" resolveInfo="propertyMacro" />
                <node role="propertyQualifier" type="jetbrains.mps.bootstrap.smodelLanguage.structure.PoundExpression" id="1204835129683">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" id="1204835289622">
                    <link role="classifier" targetNodeId="1170455697846" resolveInfo="AAA" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1204836689331">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204836690630">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1204836689332">
              <link role="variableDeclaration" targetNodeId="1204763884209" resolveInfo="node" />
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.AttributeAccessOperation" id="1204836692554">
              <node role="attributeQualifier" type="jetbrains.mps.bootstrap.smodelLanguage.structure.PropertyAttributeAccessQualifier" id="1204836697368">
                <link role="annotationLink" targetNodeId="4.1149694466802" resolveInfo="propertyMacro" />
                <node role="propertyQualifier" type="jetbrains.mps.bootstrap.smodelLanguage.structure.PoundExpression" id="1204848538498">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204848544251">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1204848543156">
                      <link role="variableDeclaration" targetNodeId="1204763884209" resolveInfo="node" />
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1204848554097">
                      <link role="property" targetNodeId="2.1071599776563" resolveInfo="role" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1204836194166">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1204836194167">
            <property name="name" value="aaa" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1204836194168">
              <link role="classifier" targetNodeId="6.~String" resolveInfo="String" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" id="1204836199780">
              <link role="classifier" targetNodeId="1170455697846" resolveInfo="AAA" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1204841384261">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1204841384262">
            <property name="name" value="ccc" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SConceptType" id="1204841384263" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1204842391806">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204842392917">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1204842391807">
              <link role="variableDeclaration" targetNodeId="1204763884209" resolveInfo="node" />
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1204844265078">
              <link role="property" targetNodeId="3.1156235010670" resolveInfo="alias" />
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1204763884209">
        <property name="name" value="node" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1204763884210">
          <link role="concept" targetNodeId="3.1169194658468" resolveInfo="INamedConcept" />
        </node>
      </node>
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" id="1204848592317">
      <property name="name" value="bbb" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.VoidType" id="1204848592318" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1204848592319" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1204848592320">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1204929878483">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1204929878484">
            <property name="name" value="macro" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1204929878485">
              <link role="concept" targetNodeId="4.1088761943574" resolveInfo="ReferenceMacro" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205263433588">
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.AttributeAccessOperation" id="1205263433589">
                <node role="attributeQualifier" type="jetbrains.mps.bootstrap.smodelLanguage.structure.LinkAttributeAccessQualifier" id="1205263433590">
                  <link role="annotationLink" targetNodeId="4.1149694518242" resolveInfo="referenceMacro" />
                  <node role="linkQualifier" type="jetbrains.mps.bootstrap.smodelLanguage.structure.PoundExpression" id="1205263433591">
                    <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205263433592">
                      <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1205263433593">
                        <link role="property" targetNodeId="3.1156235010670" resolveInfo="alias" />
                      </node>
                      <node role="operand" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1205263433594">
                        <link role="variableDeclaration" targetNodeId="1204848597508" resolveInfo="node" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1205263433595">
                <link role="variableDeclaration" targetNodeId="1204848597508" resolveInfo="node" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1205265482373">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205265500866">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205265483437">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1205265482374">
                <link role="variableDeclaration" targetNodeId="1204848597508" resolveInfo="node" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.AttributeAccessOperation" id="1205265485736">
                <node role="attributeQualifier" type="jetbrains.mps.bootstrap.smodelLanguage.structure.LinkAttributeAccessQualifier" id="1205265490721">
                  <link role="annotationLink" targetNodeId="4.1149694518242" resolveInfo="referenceMacro" />
                  <node role="linkQualifier" type="jetbrains.mps.bootstrap.smodelLanguage.structure.PoundExpression" id="1205265494925">
                    <node role="expression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1205265497693">
                      <property name="value" value="aaa" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1205265504009">
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1205265512890">
                <node role="creator" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeCreator" id="1205265521158">
                  <node role="createdType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1205265521159">
                    <link role="concept" targetNodeId="4.1088761943574" resolveInfo="ReferenceMacro" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1205265942953">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205265953544">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205265944221">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1205265942954">
                <link role="variableDeclaration" targetNodeId="1204848597508" resolveInfo="node" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.AttributeAccessOperation" id="1205265947558">
                <node role="attributeQualifier" type="jetbrains.mps.bootstrap.smodelLanguage.structure.NodeAttributeAccessQualifier" id="1205265951230">
                  <link role="annotationLink" targetNodeId="4.1149694500506" resolveInfo="nodeMacro" />
                </node>
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.LinkList_AddChildOperation" id="1205272345203">
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1205272351487">
                <node role="creator" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeCreator" id="1205272351488">
                  <node role="createdType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1205272351489">
                    <link role="concept" targetNodeId="4.1087833466690" resolveInfo="NodeMacro" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1204929905527">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204929906591">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1204929905528">
              <link role="variableDeclaration" targetNodeId="1204848597508" resolveInfo="node" />
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAncestorOperation" id="1204929909796">
              <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Concept" id="1204929913250">
                <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1212685367987">
                  <link role="conceptDeclaration" targetNodeId="7.1194952169813" resolveInfo="IMemberContainer" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1205273179670">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205273180672">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1205273179671">
              <link role="variableDeclaration" targetNodeId="1204848597508" resolveInfo="node" />
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1219272921217">
              <link role="link" targetNodeId="7.1202948736718" />
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1204848597508">
        <property name="name" value="node" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1204848597509">
          <link role="concept" targetNodeId="7.1202948039474" resolveInfo="InstanceMethodCallOperation" />
        </node>
      </node>
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" id="1205273112699">
      <property name="name" value="ccc" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.VoidType" id="1205273112700" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1205273112701" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1205273112702">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1205273131720">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205276869018">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205273131721">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1205273131722">
                <link role="variableDeclaration" targetNodeId="1205273117249" resolveInfo="node" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.AttributeAccessOperation" id="1205273131723">
                <node role="attributeQualifier" type="jetbrains.mps.bootstrap.smodelLanguage.structure.PropertyAttributeAccessQualifier" id="1205273131724">
                  <link role="annotationLink" targetNodeId="4.1149694466802" resolveInfo="propertyMacro" />
                  <node role="propertyQualifier" type="jetbrains.mps.bootstrap.smodelLanguage.structure.PropertyRefQualifier" id="1205273152881">
                    <link role="property" targetNodeId="2.1071599937831" resolveInfo="metaClass" />
                  </node>
                </node>
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1205276921348">
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1205276932194">
                <node role="creator" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeCreator" id="1205276932195">
                  <node role="createdType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1205276932196">
                    <link role="concept" targetNodeId="4.1087833241328" resolveInfo="PropertyMacro" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1205352868353">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1205352868354">
            <property name="name" value="macros1" />
            <node role="type" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.SequenceType" id="1205352868355">
              <node role="elementType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1205352868356">
                <link role="concept" targetNodeId="4.1087833466690" resolveInfo="NodeMacro" />
              </node>
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205352868357">
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.AttributeAccessOperation" id="1205352868358">
                <node role="attributeQualifier" type="jetbrains.mps.bootstrap.smodelLanguage.structure.NodeAttributeAccessQualifier" id="1205352868359">
                  <link role="annotationLink" targetNodeId="4.1149694500506" resolveInfo="nodeMacro" />
                </node>
              </node>
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1205352868360">
                <link role="variableDeclaration" targetNodeId="1205273117249" resolveInfo="node" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1205354389071">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1205354389072">
            <node role="type" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ListType" id="1205354745781">
              <node role="elementType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1205354749630">
                <link role="concept" targetNodeId="4.1087833241328" resolveInfo="PropertyMacro" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1205352377649">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1205352377650">
            <property name="name" value="macros" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeListType" id="1205352377651">
              <link role="elementConcept" targetNodeId="4.1087833466690" resolveInfo="NodeMacro" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" id="1205352936239">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.CastExpression" id="1205352936240">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1205352936241">
                  <link role="variableDeclaration" targetNodeId="1205352868354" resolveInfo="macros1" />
                </node>
                <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeListType" id="1205352936242">
                  <link role="elementConcept" targetNodeId="4.1087833466690" resolveInfo="NodeMacro" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1205352410851">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1205352410852">
            <property name="name" value="macro" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1205352410853">
              <link role="concept" targetNodeId="4.1087833241328" resolveInfo="PropertyMacro" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205352410854">
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.AttributeAccessOperation" id="1205352410855">
                <node role="attributeQualifier" type="jetbrains.mps.bootstrap.smodelLanguage.structure.PropertyAttributeAccessQualifier" id="1205352410856">
                  <link role="annotationLink" targetNodeId="4.1149694466802" resolveInfo="propertyMacro" />
                  <node role="propertyQualifier" type="jetbrains.mps.bootstrap.smodelLanguage.structure.PropertyRefQualifier" id="1205352410857">
                    <link role="property" targetNodeId="3.1156235010670" resolveInfo="alias" />
                  </node>
                </node>
              </node>
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1205352410858">
                <link role="variableDeclaration" targetNodeId="1205273117249" resolveInfo="node" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1205357710817">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1205357710818">
            <property name="name" value="nodes" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeListType" id="1205357716528">
              <link role="elementConcept" targetNodeId="3.1133920641626" resolveInfo="BaseConcept" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205364115860">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205357710821">
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.AttributeAccessOperation" id="1205357710822">
                  <node role="attributeQualifier" type="jetbrains.mps.bootstrap.smodelLanguage.structure.AllAttributesQualifier" id="1205357710823" />
                </node>
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1205357710824">
                  <link role="variableDeclaration" targetNodeId="1205273117249" resolveInfo="node" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.AddElementOperation" id="1205364133518">
                <node role="argument" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1205364138068" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1205273117249">
        <property name="name" value="node" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1205273117250">
          <link role="concept" targetNodeId="2.1071489288298" resolveInfo="LinkDeclaration" />
        </node>
      </node>
    </node>
    <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1204763824501" />
  </node>
</model>


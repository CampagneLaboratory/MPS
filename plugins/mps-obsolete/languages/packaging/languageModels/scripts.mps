<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:b0216b35-f2a6-4584-8a8d-009581b87b4c(jetbrains.mps.build.packaging.scripts)">
  <persistence version="8" />
  <language namespace="4e6c5313-7662-4c44-9bc7-b488cec17508(jetbrains.mps.build.packaging)" />
  <language namespace="0eddeefa-c2d6-4437-bc2c-de50fd4ce470(jetbrains.mps.lang.script)" />
  <devkit namespace="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  <import index="tps4" modelUID="r:00000000-0000-4000-0000-011c895904d8(jetbrains.mps.build.packaging.structure)" version="8" />
  <import index="tpsf" modelUID="r:00000000-0000-4000-0000-011c895904d3(jetbrains.mps.build.packaging.behavior)" version="-1" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="tp25" modelUID="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" version="16" implicit="yes" />
  <import index="tp33" modelUID="r:00000000-0000-4000-0000-011c89590323(jetbrains.mps.lang.script.structure)" version="0" implicit="yes" />
  <import index="tpee" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="4" implicit="yes" />
  <import index="tp3r" modelUID="r:00000000-0000-4000-0000-011c8959034b(jetbrains.mps.lang.quotation.structure)" version="0" implicit="yes" />
  <import index="e2lb" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(JDK/java.lang@java_stub)" version="-1" implicit="yes" />
  <root type="tp33.MigrationScript" typeId="tp33.1177457067821" id="462257719548498247" nodeInfo="ng">
    <property name="title" nameId="tp33.1177457669450" value="Migrate directories in build scripts" />
    <property name="name" nameId="tpck.1169194664001" value="DirctoriesInLayout" />
    <property name="toBuild" nameId="tp33.5299416737274925397" value="MPS 2.0" />
    <property name="type" nameId="tp33.5299416737274925395" value="migration" />
    <node role="part" roleId="tp33.1177458178889" type="tp33.MigrationScriptPart_Instance" typeId="tp33.1177457850499" id="462257719548507215" nodeInfo="ng">
      <property name="description" nameId="tp33.1177457972041" value="Migrate deploy directory in build scripts" />
      <link role="affectedInstanceConcept" roleId="tp33.1177457957477" targetNodeId="tps4.1202916958754" resolveInfo="Layout" />
      <node role="affectedInstanceUpdater" roleId="tp33.1177458005323" type="tp33.MigrationScriptPart_Instance_Updater" typeId="tp33.1177458491964" id="462257719548507216" nodeInfo="nn">
        <node role="body" roleId="tpee.1137022507850" type="tpee.StatementList" typeId="tpee.1068580123136" id="462257719548507217" nodeInfo="nn">
          <node role="statement" roleId="tpee.1068581517665" type="tpee.IfStatement" typeId="tpee.1068580123159" id="462257719548525230" nodeInfo="nn">
            <node role="condition" roleId="tpee.1068580123160" type="tpee.DotExpression" typeId="tpee.1197027756228" id="462257719548525234" nodeInfo="nn">
              <node role="operand" roleId="tpee.1197027771414" type="tp33.MigrationScriptPart_node" typeId="tp33.1177458237937" id="462257719548525233" nodeInfo="nn" />
              <node role="operation" roleId="tpee.1197027833540" type="tp25.SPropertyAccess" typeId="tp25.1138056022639" id="462257719548525238" nodeInfo="nn">
                <link role="property" roleId="tp25.1138056395725" targetNodeId="tps4.4993758969474324591" resolveInfo="useTmpDir" />
              </node>
            </node>
            <node role="ifTrue" roleId="tpee.1068580123161" type="tpee.StatementList" typeId="tpee.1068580123136" id="462257719548525232" nodeInfo="nn">
              <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="462257719548525239" nodeInfo="nn">
                <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="462257719548525246" nodeInfo="nn">
                  <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="462257719548525241" nodeInfo="nn">
                    <node role="operand" roleId="tpee.1197027771414" type="tp33.MigrationScriptPart_node" typeId="tp33.1177458237937" id="462257719548525240" nodeInfo="nn" />
                    <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="462257719548525245" nodeInfo="nn">
                      <link role="link" roleId="tp25.1138056516764" targetNodeId="tps4.462257719548209895" />
                    </node>
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tp25.Link_SetTargetOperation" typeId="tp25.1140725362528" id="462257719548525250" nodeInfo="nn">
                    <node role="linkTarget" roleId="tp25.1140725362529" type="tp3r.Quotation" typeId="tp3r.1196350785113" id="462257719548507237" nodeInfo="nn">
                      <node role="quotedNode" roleId="tp3r.1196350785114" type="tps4.Path" typeId="tps4.1220973916698" id="462257719548507240" nodeInfo="ng">
                        <node role="macro" roleId="tps4.1220976095387" type="tps4.MacroReference" typeId="tps4.1220976052975" id="462257719548507241" nodeInfo="ng">
                          <property name="name" nameId="tps4.1220976068141" value="base_dir" />
                          <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tp3r.PropertyAntiquotation" typeId="tp3r.1196866233735" id="4483399040246435260" nodeInfo="ng">
                            <property name="propertyName" nameId="tpck.1757699476691236117" value="name" />
                            <property name="label" nameId="tp3r.6489343236075007666" value="MacroReference" />
                            <node role="expression" roleId="tp3r.1196350785111" type="tp25.StaticConceptMethodCall" typeId="tp25.1206019730951" id="4483399040246435263" nodeInfo="nn">
                              <link role="concept" roleId="tp25.1206019820684" targetNodeId="tps4.1202916958754" resolveInfo="Layout" />
                              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="tpsf.1226509010730" resolveInfo="getBasedirName" />
                            </node>
                          </node>
                        </node>
                        <node role="compositePathComponent" roleId="tps4.1220974249696" type="tps4.CompositePathComponent" typeId="tps4.1220973992845" id="462257719548507242" nodeInfo="ng">
                          <node role="pathComponent" roleId="tps4.1220978161990" type="tps4.PathComponent" typeId="tps4.1220973955905" id="462257719548525256" nodeInfo="ng">
                            <property name="path" nameId="tps4.1220974398640" value=".." />
                          </node>
                          <node role="pathComponent" roleId="tps4.1220978161990" type="tps4.PathComponent" typeId="tps4.1220973955905" id="462257719548507244" nodeInfo="ng">
                            <property name="path" nameId="tps4.1220974398640" value="artifacts" />
                            <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tp3r.PropertyAntiquotation" typeId="tp3r.1196866233735" id="462257719548525268" nodeInfo="ng">
                              <property name="propertyName" nameId="tpck.1757699476691236117" value="path" />
                              <property name="label" nameId="tp3r.6489343236075007666" value="PathComponent" />
                              <node role="expression" roleId="tp3r.1196350785111" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="462257719548525276" nodeInfo="nn">
                                <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="462257719548525279" nodeInfo="nn">
                                  <property name="value" nameId="tpee.1070475926801" value=".artifacts" />
                                </node>
                                <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.DotExpression" typeId="tpee.1197027756228" id="462257719548525271" nodeInfo="nn">
                                  <node role="operand" roleId="tpee.1197027771414" type="tp33.MigrationScriptPart_node" typeId="tp33.1177458237937" id="462257719548525270" nodeInfo="nn" />
                                  <node role="operation" roleId="tpee.1197027833540" type="tp25.SPropertyAccess" typeId="tp25.1138056022639" id="462257719548525275" nodeInfo="nn">
                                    <link role="property" roleId="tp25.1138056395725" targetNodeId="tpck.1169194664001" resolveInfo="name" />
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
            <node role="ifFalseStatement" roleId="tpee.1082485599094" type="tpee.BlockStatement" typeId="tpee.1082485599095" id="462257719548525280" nodeInfo="nn">
              <node role="statements" roleId="tpee.1082485599096" type="tpee.StatementList" typeId="tpee.1068580123136" id="462257719548525281" nodeInfo="nn">
                <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="462257719548525282" nodeInfo="nn">
                  <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="462257719548525289" nodeInfo="nn">
                    <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="462257719548525284" nodeInfo="nn">
                      <node role="operand" roleId="tpee.1197027771414" type="tp33.MigrationScriptPart_node" typeId="tp33.1177458237937" id="462257719548525283" nodeInfo="nn" />
                      <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="462257719548525288" nodeInfo="nn">
                        <link role="link" roleId="tp25.1138056516764" targetNodeId="tps4.462257719548209895" />
                      </node>
                    </node>
                    <node role="operation" roleId="tpee.1197027833540" type="tp25.Link_SetTargetOperation" typeId="tp25.1140725362528" id="462257719548525293" nodeInfo="nn">
                      <node role="linkTarget" roleId="tp25.1140725362529" type="tp3r.Quotation" typeId="tp3r.1196350785113" id="462257719548525296" nodeInfo="nn">
                        <node role="quotedNode" roleId="tp3r.1196350785114" type="tps4.Path" typeId="tps4.1220973916698" id="462257719548525297" nodeInfo="ng">
                          <node role="macro" roleId="tps4.1220976095387" type="tps4.MacroReference" typeId="tps4.1220976052975" id="462257719548525298" nodeInfo="ng">
                            <property name="name" nameId="tps4.1220976068141" value="base_dir" />
                            <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tp3r.PropertyAntiquotation" typeId="tp3r.1196866233735" id="4483399040246435256" nodeInfo="ng">
                              <property name="propertyName" nameId="tpck.1757699476691236117" value="name" />
                              <property name="label" nameId="tp3r.6489343236075007666" value="MacroReference" />
                              <node role="expression" roleId="tp3r.1196350785111" type="tp25.StaticConceptMethodCall" typeId="tp25.1206019730951" id="4483399040246435259" nodeInfo="nn">
                                <link role="concept" roleId="tp25.1206019820684" targetNodeId="tps4.1202916958754" resolveInfo="Layout" />
                                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="tpsf.1226509010730" resolveInfo="getBasedirName" />
                              </node>
                            </node>
                          </node>
                          <node role="compositePathComponent" roleId="tps4.1220974249696" type="tps4.CompositePathComponent" typeId="tps4.1220973992845" id="462257719548525299" nodeInfo="ng">
                            <node role="pathComponent" roleId="tps4.1220978161990" type="tps4.PathComponent" typeId="tps4.1220973955905" id="462257719548525300" nodeInfo="ng">
                              <property name="path" nameId="tps4.1220974398640" value="artifacts" />
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
      <node role="affectedInstancePredicate" roleId="tp33.1177457957478" type="tp33.MigrationScriptPart_Instance_Predicate" typeId="tp33.1177458061340" id="462257719548507221" nodeInfo="nn">
        <node role="body" roleId="tpee.1137022507850" type="tpee.StatementList" typeId="tpee.1068580123136" id="462257719548507222" nodeInfo="nn">
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="462257719548507223" nodeInfo="nn">
            <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="462257719548507230" nodeInfo="nn">
              <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="462257719548507225" nodeInfo="nn">
                <node role="operand" roleId="tpee.1197027771414" type="tp33.MigrationScriptPart_node" typeId="tp33.1177458237937" id="462257719548507224" nodeInfo="nn" />
                <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="462257719548507229" nodeInfo="nn">
                  <link role="link" roleId="tp25.1138056516764" targetNodeId="tps4.462257719548209895" />
                </node>
              </node>
              <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_IsNullOperation" typeId="tp25.1171999116870" id="462257719548507234" nodeInfo="nn" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="part" roleId="tp33.1177458178889" type="tp33.MigrationScriptPart_Instance" typeId="tp33.1177457850499" id="462257719548525302" nodeInfo="ng">
      <property name="description" nameId="tp33.1177457972041" value="Migrate scripts directory in build scripts" />
      <link role="affectedInstanceConcept" roleId="tp33.1177457957477" targetNodeId="tps4.1202916958754" resolveInfo="Layout" />
      <node role="affectedInstanceUpdater" roleId="tp33.1177458005323" type="tp33.MigrationScriptPart_Instance_Updater" typeId="tp33.1177458491964" id="462257719548525303" nodeInfo="nn">
        <node role="body" roleId="tpee.1137022507850" type="tpee.StatementList" typeId="tpee.1068580123136" id="462257719548525304" nodeInfo="nn">
          <node role="statement" roleId="tpee.1068581517665" type="tpee.IfStatement" typeId="tpee.1068580123159" id="462257719548525305" nodeInfo="nn">
            <node role="condition" roleId="tpee.1068580123160" type="tpee.DotExpression" typeId="tpee.1197027756228" id="462257719548525353" nodeInfo="nn">
              <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="462257719548525306" nodeInfo="nn">
                <node role="operand" roleId="tpee.1197027771414" type="tp33.MigrationScriptPart_node" typeId="tp33.1177458237937" id="462257719548525307" nodeInfo="nn" />
                <node role="operation" roleId="tpee.1197027833540" type="tp25.SPropertyAccess" typeId="tp25.1138056022639" id="462257719548525357" nodeInfo="nn">
                  <link role="property" roleId="tp25.1138056395725" targetNodeId="tps4.1229522370639" resolveInfo="scriptsFolder" />
                </node>
              </node>
              <node role="operation" roleId="tpee.1197027833540" type="tpee.IsNotEmptyOperation" typeId="tpee.1225271408483" id="462257719548526049" nodeInfo="nn" />
            </node>
            <node role="ifTrue" roleId="tpee.1068580123161" type="tpee.StatementList" typeId="tpee.1068580123136" id="462257719548525309" nodeInfo="nn">
              <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="462257719548525310" nodeInfo="nn">
                <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="462257719548525311" nodeInfo="nn">
                  <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="462257719548525312" nodeInfo="nn">
                    <node role="operand" roleId="tpee.1197027771414" type="tp33.MigrationScriptPart_node" typeId="tp33.1177458237937" id="462257719548525313" nodeInfo="nn" />
                    <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="462257719548546341" nodeInfo="nn">
                      <link role="link" roleId="tp25.1138056516764" targetNodeId="tps4.462257719548209896" />
                    </node>
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tp25.Link_SetTargetOperation" typeId="tp25.1140725362528" id="462257719548525315" nodeInfo="nn">
                    <node role="linkTarget" roleId="tp25.1140725362529" type="tp3r.Quotation" typeId="tp3r.1196350785113" id="462257719548525316" nodeInfo="nn">
                      <node role="quotedNode" roleId="tp3r.1196350785114" type="tps4.Path" typeId="tps4.1220973916698" id="462257719548525317" nodeInfo="ng">
                        <node role="macro" roleId="tps4.1220976095387" type="tps4.MacroReference" typeId="tps4.1220976052975" id="462257719548525318" nodeInfo="ng">
                          <property name="name" nameId="tps4.1220976068141" value="base_dir" />
                          <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tp3r.PropertyAntiquotation" typeId="tp3r.1196866233735" id="4483399040246435264" nodeInfo="ng">
                            <property name="propertyName" nameId="tpck.1757699476691236117" value="name" />
                            <property name="label" nameId="tp3r.6489343236075007666" value="MacroReference" />
                            <node role="expression" roleId="tp3r.1196350785111" type="tp25.StaticConceptMethodCall" typeId="tp25.1206019730951" id="4483399040246435267" nodeInfo="nn">
                              <link role="concept" roleId="tp25.1206019820684" targetNodeId="tps4.1202916958754" resolveInfo="Layout" />
                              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="tpsf.1226509010730" resolveInfo="getBasedirName" />
                            </node>
                          </node>
                        </node>
                        <node role="compositePathComponent" roleId="tps4.1220974249696" type="tps4.CompositePathComponent" typeId="tps4.1220973992845" id="462257719548525319" nodeInfo="ng">
                          <node role="pathComponent" roleId="tps4.1220978161990" type="tps4.PathComponent" typeId="tps4.1220973955905" id="462257719548525321" nodeInfo="ng">
                            <property name="path" nameId="tps4.1220974398640" value="artifacts" />
                            <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tp3r.PropertyAntiquotation" typeId="tp3r.1196866233735" id="462257719548525322" nodeInfo="ng">
                              <property name="propertyName" nameId="tpck.1757699476691236117" value="path" />
                              <property name="label" nameId="tp3r.6489343236075007666" value="PathComponent" />
                              <node role="expression" roleId="tp3r.1196350785111" type="tpee.DotExpression" typeId="tpee.1197027756228" id="462257719548526051" nodeInfo="nn">
                                <node role="operand" roleId="tpee.1197027771414" type="tp33.MigrationScriptPart_node" typeId="tp33.1177458237937" id="462257719548526050" nodeInfo="nn" />
                                <node role="operation" roleId="tpee.1197027833540" type="tp25.SPropertyAccess" typeId="tp25.1138056022639" id="462257719548526055" nodeInfo="nn">
                                  <link role="property" roleId="tp25.1138056395725" targetNodeId="tps4.1229522370639" resolveInfo="scriptsFolder" />
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
            <node role="ifFalseStatement" roleId="tpee.1082485599094" type="tpee.BlockStatement" typeId="tpee.1082485599095" id="462257719548525328" nodeInfo="nn">
              <node role="statements" roleId="tpee.1082485599096" type="tpee.StatementList" typeId="tpee.1068580123136" id="462257719548525329" nodeInfo="nn">
                <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="462257719548525330" nodeInfo="nn">
                  <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="462257719548525331" nodeInfo="nn">
                    <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="462257719548525332" nodeInfo="nn">
                      <node role="operand" roleId="tpee.1197027771414" type="tp33.MigrationScriptPart_node" typeId="tp33.1177458237937" id="462257719548525333" nodeInfo="nn" />
                      <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="462257719548546343" nodeInfo="nn">
                        <link role="link" roleId="tp25.1138056516764" targetNodeId="tps4.462257719548209896" />
                      </node>
                    </node>
                    <node role="operation" roleId="tpee.1197027833540" type="tp25.Link_SetTargetOperation" typeId="tp25.1140725362528" id="462257719548525335" nodeInfo="nn">
                      <node role="linkTarget" roleId="tp25.1140725362529" type="tp3r.Quotation" typeId="tp3r.1196350785113" id="462257719548525336" nodeInfo="nn">
                        <node role="quotedNode" roleId="tp3r.1196350785114" type="tps4.Path" typeId="tps4.1220973916698" id="462257719548525337" nodeInfo="ng">
                          <node role="macro" roleId="tps4.1220976095387" type="tps4.MacroReference" typeId="tps4.1220976052975" id="462257719548525338" nodeInfo="ng">
                            <property name="name" nameId="tps4.1220976068141" value="base_dir" />
                            <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tp3r.PropertyAntiquotation" typeId="tp3r.1196866233735" id="4483399040246435268" nodeInfo="ng">
                              <property name="propertyName" nameId="tpck.1757699476691236117" value="name" />
                              <property name="label" nameId="tp3r.6489343236075007666" value="MacroReference" />
                              <node role="expression" roleId="tp3r.1196350785111" type="tp25.StaticConceptMethodCall" typeId="tp25.1206019730951" id="4483399040246435271" nodeInfo="nn">
                                <link role="concept" roleId="tp25.1206019820684" targetNodeId="tps4.1202916958754" resolveInfo="Layout" />
                                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="tpsf.1226509010730" resolveInfo="getBasedirName" />
                              </node>
                            </node>
                          </node>
                          <node role="compositePathComponent" roleId="tps4.1220974249696" type="tps4.CompositePathComponent" typeId="tps4.1220973992845" id="462257719548525339" nodeInfo="ng" />
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
      <node role="affectedInstancePredicate" roleId="tp33.1177457957478" type="tp33.MigrationScriptPart_Instance_Predicate" typeId="tp33.1177458061340" id="462257719548525341" nodeInfo="nn">
        <node role="body" roleId="tpee.1137022507850" type="tpee.StatementList" typeId="tpee.1068580123136" id="462257719548525342" nodeInfo="nn">
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="462257719548525343" nodeInfo="nn">
            <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="462257719548525344" nodeInfo="nn">
              <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="462257719548525345" nodeInfo="nn">
                <node role="operand" roleId="tpee.1197027771414" type="tp33.MigrationScriptPart_node" typeId="tp33.1177458237937" id="462257719548525346" nodeInfo="nn" />
                <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="462257719548525351" nodeInfo="nn">
                  <link role="link" roleId="tp25.1138056516764" targetNodeId="tps4.462257719548209896" />
                </node>
              </node>
              <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_IsNullOperation" typeId="tp25.1171999116870" id="462257719548525348" nodeInfo="nn" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="part" roleId="tp33.1177458178889" type="tp33.MigrationScriptPart_Instance" typeId="tp33.1177457850499" id="4483399040246412795" nodeInfo="ng">
      <property name="description" nameId="tp33.1177457972041" value="Replace basedir macro with base_dir" />
      <link role="affectedInstanceConcept" roleId="tp33.1177457957477" targetNodeId="tps4.1219228952036" resolveInfo="Macro" />
      <node role="affectedInstanceUpdater" roleId="tp33.1177458005323" type="tp33.MigrationScriptPart_Instance_Updater" typeId="tp33.1177458491964" id="4483399040246412796" nodeInfo="nn">
        <node role="body" roleId="tpee.1137022507850" type="tpee.StatementList" typeId="tpee.1068580123136" id="4483399040246412797" nodeInfo="nn">
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="4483399040246412814" nodeInfo="nn">
            <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="4483399040246412821" nodeInfo="nn">
              <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="4483399040246412816" nodeInfo="nn">
                <node role="operand" roleId="tpee.1197027771414" type="tp33.MigrationScriptPart_node" typeId="tp33.1177458237937" id="4483399040246412815" nodeInfo="nn" />
                <node role="operation" roleId="tpee.1197027833540" type="tp25.SPropertyAccess" typeId="tp25.1138056022639" id="4483399040246412820" nodeInfo="nn">
                  <link role="property" roleId="tp25.1138056395725" targetNodeId="tpck.1169194664001" resolveInfo="name" />
                </node>
              </node>
              <node role="operation" roleId="tpee.1197027833540" type="tp25.Property_SetOperation" typeId="tp25.1138661924179" id="4483399040246412825" nodeInfo="nn">
                <node role="value" roleId="tp25.1138662048170" type="tp25.StaticConceptMethodCall" typeId="tp25.1206019730951" id="4483399040246417850" nodeInfo="nn">
                  <link role="concept" roleId="tp25.1206019820684" targetNodeId="tps4.1202916958754" resolveInfo="Layout" />
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="tpsf.1226509010730" resolveInfo="getBasedirName" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="affectedInstancePredicate" roleId="tp33.1177457957478" type="tp33.MigrationScriptPart_Instance_Predicate" typeId="tp33.1177458061340" id="4483399040246412798" nodeInfo="nn">
        <node role="body" roleId="tpee.1137022507850" type="tpee.StatementList" typeId="tpee.1068580123136" id="4483399040246412799" nodeInfo="nn">
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="4483399040246412800" nodeInfo="nn">
            <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="4483399040246412807" nodeInfo="nn">
              <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="4483399040246412802" nodeInfo="nn">
                <node role="operand" roleId="tpee.1197027771414" type="tp33.MigrationScriptPart_node" typeId="tp33.1177458237937" id="4483399040246412801" nodeInfo="nn" />
                <node role="operation" roleId="tpee.1197027833540" type="tp25.SPropertyAccess" typeId="tp25.1138056022639" id="4483399040246412806" nodeInfo="nn">
                  <link role="property" roleId="tp25.1138056395725" targetNodeId="tpck.1169194664001" resolveInfo="name" />
                </node>
              </node>
              <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="4483399040246412812" nodeInfo="nn">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lb.~String%dequals(java%dlang%dObject)%cboolean" resolveInfo="equals" />
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="4483399040246412813" nodeInfo="nn">
                  <property name="value" nameId="tpee.1070475926801" value="basedir" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </root>
</model>


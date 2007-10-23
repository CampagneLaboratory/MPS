<?xml version="1.0" encoding="UTF-8"?>
<model name="agreementLanguage.actions">
  <persistence version="1" />
  <language namespace="jetbrains.mps.bootstrap.actionsLanguage" />
  <maxImportIndex value="2" />
  <import index="1" modelUID="agreementLanguage.structure" version="-1" />
  <import index="2" modelUID="jetbrains.mps.formulaLanguage.structure" version="-1" />
  <node type="jetbrains.mps.bootstrap.actionsLanguage.structure.NodeSubstituteActions" id="1112119676621">
    <property name="name" value="AGRL_node_substitute" />
    <node role="actionsBuilder" type="jetbrains.mps.bootstrap.actionsLanguage.structure.NodeSubstituteActionsBuilder" id="1112119679872">
      <property name="actionsFactoryAspectId" value="Expression" />
      <property name="actionsFilterAspectId" value="Expression" />
      <property name="applicableLinkMetaclass" value="aggregation" />
      <link role="applicableConcept" targetNodeId="2.1111784312737" />
    </node>
  </node>
</model>


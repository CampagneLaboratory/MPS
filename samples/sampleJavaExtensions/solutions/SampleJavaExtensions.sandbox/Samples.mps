<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:e4037414-5f44-49d5-a48e-7fa4d3a4ee2e(Samples)">
  <persistence version="7" />
  <language namespace="0d40d465-dded-40d0-8d4c-2c6d177f60d7(org.jetbrains.mps.samples.Constants)" />
  <language namespace="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" />
  <language namespace="65c13e67-09b6-4695-af88-52024b7d2027(org.jetbrains.mps.samples.DecisionTable)" />
  <language namespace="83888646-71ce-4f1c-9c53-c54016f6ad4f(jetbrains.mps.baseLanguage.collections)" />
  <language namespace="cb7388e8-f182-4cda-bd83-9796e8634856(org.jetbrains.mps.samples.ParallelFor)" />
  <language namespace="fd392034-7849-419d-9071-12563d152375(jetbrains.mps.baseLanguage.closures)" />
  <language namespace="662a9f2b-5802-4d16-9558-72c65c7a681e(org.jetbrains.mps.samples.Money)" />
  <language namespace="67b828fd-8fbc-4496-b7f7-8b64ac097c62(org.jetbrains.mps.samples.IfAndUnless)" />
  <import index="fxg7" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.io(JDK/java.io@java_stub)" version="-1" />
  <import index="53gy" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.util.concurrent(JDK/java.util.concurrent@java_stub)" version="-1" />
  <import index="vft3" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.util.concurrent.atomic(JDK/java.util.concurrent.atomic@java_stub)" version="-1" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="tpee" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="3" implicit="yes" />
  <import index="nd9w" modelUID="r:ef9fd842-b350-4ad1-83c7-4b57a2c65330(org.jetbrains.mps.samples.Constants.structure)" version="2" implicit="yes" />
  <import index="278c" modelUID="r:885978b0-baca-4eda-8c29-d1384945a64e(org.jetbrains.mps.samples.DecisionTable.structure)" version="0" implicit="yes" />
  <import index="tp2q" modelUID="r:00000000-0000-4000-0000-011c8959032e(jetbrains.mps.baseLanguage.collections.structure)" version="7" implicit="yes" />
  <import index="e2lb" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(JDK/java.lang@java_stub)" version="-1" implicit="yes" />
  <import index="cgfx" modelUID="r:10e9da27-7113-45e6-9477-92c95760f135(org.jetbrains.mps.samples.ParallelFor.structure)" version="0" implicit="yes" />
  <import index="tp2c" modelUID="r:00000000-0000-4000-0000-011c89590338(jetbrains.mps.baseLanguage.closures.structure)" version="3" implicit="yes" />
  <import index="v0h4" modelUID="r:cd29712f-cf1b-4f19-90a2-4ce86af0d5f6(org.jetbrains.mps.samples.Money.structure)" version="0" implicit="yes" />
  <import index="3v68" modelUID="r:47174b35-df1c-485d-9362-8e3256f44aca(org.jetbrains.mps.samples.IfAndUnless.structure)" version="0" implicit="yes" />
  <roots>
    <node type="nd9w.Constants" typeId="nd9w.1494751830318912535" id="1603335834236229182">
      <property name="name" nameId="tpck.1169194664001" value="MyConstants" />
    </node>
    <node type="tpee.ClassConcept" typeId="tpee.1068390468198" id="1603335834236231963">
      <property name="name" nameId="tpck.1169194664001" value="DecisionSample" />
    </node>
    <node type="tpee.ClassConcept" typeId="tpee.1068390468198" id="1603335834236290404">
      <property name="name" nameId="tpck.1169194664001" value="ParallelForSample" />
    </node>
    <node type="tpee.ClassConcept" typeId="tpee.1068390468198" id="3385910400465347285">
      <property name="name" nameId="tpck.1169194664001" value="MoneySample" />
    </node>
    <node type="v0h4.CurrencyDefTable" typeId="v0h4.3607579524910560662" id="3385910400465347303" />
    <node type="tpee.ClassConcept" typeId="tpee.1068390468198" id="3385910400465380671">
      <property name="name" nameId="tpck.1169194664001" value="UnlessSample" />
    </node>
    <node type="tpee.ClassConcept" typeId="tpee.1068390468198" id="3385910400465407946">
      <property name="name" nameId="tpck.1169194664001" value="SidewaysIfSample" />
    </node>
  </roots>
  <root id="1603335834236229182">
    <node role="constants" roleId="nd9w.1494751830318912552" type="nd9w.Constant" typeId="nd9w.1494751830318912537" id="1603335834236229183">
      <property name="name" nameId="tpck.1169194664001" value="MINIMUM" />
      <node role="initializer" roleId="nd9w.2001769927721010657" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="1603335834236229185">
        <property name="value" nameId="tpee.1068580320021" value="0" />
      </node>
    </node>
    <node role="constants" roleId="nd9w.1494751830318912552" type="nd9w.Constant" typeId="nd9w.1494751830318912537" id="1603335834236229186">
      <property name="name" nameId="tpck.1169194664001" value="DEFAULT" />
      <node role="initializer" roleId="nd9w.2001769927721010657" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="1603335834236229191">
        <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="1603335834236229194">
          <property name="value" nameId="tpee.1068580320021" value="50" />
        </node>
        <node role="leftExpression" roleId="tpee.1081773367580" type="nd9w.ConstantReference" typeId="nd9w.3990190717072393829" id="1603335834236229188">
          <link role="original" roleId="nd9w.3990190717072393830" targetNodeId="1603335834236229183" resolveInfo="MINIMUM" />
        </node>
      </node>
    </node>
    <node role="constants" roleId="nd9w.1494751830318912552" type="nd9w.Constant" typeId="nd9w.1494751830318912537" id="1603335834236229195">
      <property name="name" nameId="tpck.1169194664001" value="MAXIMUM" />
      <node role="initializer" roleId="nd9w.2001769927721010657" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="1603335834236229206">
        <node role="leftExpression" roleId="tpee.1081773367580" type="nd9w.ConstantReference" typeId="nd9w.3990190717072393829" id="1603335834236229197">
          <link role="original" roleId="nd9w.3990190717072393830" targetNodeId="1603335834236229186" resolveInfo="DEFAULT" />
        </node>
        <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="1603335834236229209">
          <property name="value" nameId="tpee.1068580320021" value="50" />
        </node>
      </node>
    </node>
    <node role="constants" roleId="nd9w.1494751830318912552" type="nd9w.Constant" typeId="nd9w.1494751830318912537" id="1603335834236229210">
      <property name="name" nameId="tpck.1169194664001" value="NAME" />
      <node role="initializer" roleId="nd9w.2001769927721010657" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="1603335834236229212">
        <property name="value" nameId="tpee.1070475926801" value="MPS" />
      </node>
    </node>
    <node role="constants" roleId="nd9w.1494751830318912552" type="nd9w.Constant" typeId="nd9w.1494751830318912537" id="1603335834236229213">
      <property name="name" nameId="tpck.1169194664001" value="flag" />
      <node role="initializer" roleId="nd9w.2001769927721010657" type="tpee.BooleanConstant" typeId="tpee.1068580123137" id="1603335834236229215">
        <property name="value" nameId="tpee.1068580123138" value="true" />
      </node>
    </node>
    <node role="constants" roleId="nd9w.1494751830318912552" type="nd9w.Constant" typeId="nd9w.1494751830318912537" id="1603335834236229216">
      <property name="name" nameId="tpck.1169194664001" value="FULL_NAME" />
      <node role="initializer" roleId="nd9w.2001769927721010657" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="1603335834236229227">
        <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="1603335834236229230">
          <property name="value" nameId="tpee.1070475926801" value=" Develop with pleasure!" />
        </node>
        <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="1603335834236229221">
          <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="1603335834236229218">
            <property name="value" nameId="tpee.1070475926801" value="JetBrains " />
          </node>
          <node role="rightExpression" roleId="tpee.1081773367579" type="nd9w.ConstantReference" typeId="nd9w.3990190717072393829" id="1603335834236229232">
            <link role="original" roleId="nd9w.3990190717072393830" targetNodeId="1603335834236229210" resolveInfo="NAME" />
          </node>
        </node>
      </node>
    </node>
  </root>
  <root id="1603335834236231963">
    <node role="staticMethod" roleId="tpee.1070462273904" type="tpee.StaticMethodDeclaration" typeId="tpee.1081236700938" id="1987251859607101849">
      <property name="name" nameId="tpck.1169194664001" value="isBaby" />
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="1987251859607102044">
        <property name="name" nameId="tpck.1169194664001" value="person" />
        <node role="type" roleId="tpee.5680397130376446158" type="tp2q.MapType" typeId="tp2q.1197683403723" id="1987251859607102045">
          <node role="keyType" roleId="tp2q.1197683466920" type="tpee.StringType" typeId="tpee.1225271177708" id="1987251859607102046" />
          <node role="valueType" roleId="tp2q.1197683475734" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="1987251859607102047">
            <link role="classifier" roleId="tpee.1107535924139" targetNodeId="e2lb.~Object" resolveInfo="Object" />
          </node>
        </node>
      </node>
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.BooleanType" typeId="tpee.1070534644030" id="1987251859607101863" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="1987251859607101851" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="1987251859607101852">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ReturnStatement" typeId="tpee.1068581242878" id="1987251859607101855">
          <node role="expression" roleId="tpee.1068581517676" type="tpee.LessThanOrEqualsExpression" typeId="tpee.1153422305557" id="1987251859607101883">
            <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.CastExpression" typeId="tpee.1070534934090" id="3863300516938089913">
              <node role="type" roleId="tpee.1070534934091" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="3863300516938090044">
                <link role="classifier" roleId="tpee.1107535924139" targetNodeId="e2lb.~Integer" resolveInfo="Integer" />
              </node>
              <node role="expression" roleId="tpee.1070534934092" type="tp2q.MapElement" typeId="tp2q.1197932370469" id="1987251859607102053">
                <node role="key" roleId="tp2q.1197932525128" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="1987251859607102056">
                  <property name="value" nameId="tpee.1070475926801" value="age" />
                </node>
                <node role="map" roleId="tp2q.1197932505799" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="1987251859607102052">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1987251859607102044" resolveInfo="person" />
                </node>
              </node>
            </node>
            <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="1987251859607101885">
              <property name="value" nameId="tpee.1068580320021" value="2" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="staticMethod" roleId="tpee.1070462273904" type="tpee.StaticMethodDeclaration" typeId="tpee.1081236700938" id="1987251859607101864">
      <property name="name" nameId="tpck.1169194664001" value="isChild" />
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="1987251859607102048">
        <property name="name" nameId="tpck.1169194664001" value="person" />
        <node role="type" roleId="tpee.5680397130376446158" type="tp2q.MapType" typeId="tp2q.1197683403723" id="1987251859607102049">
          <node role="keyType" roleId="tp2q.1197683466920" type="tpee.StringType" typeId="tpee.1225271177708" id="1987251859607102050" />
          <node role="valueType" roleId="tp2q.1197683475734" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="1987251859607102051">
            <link role="classifier" roleId="tpee.1107535924139" targetNodeId="e2lb.~Object" resolveInfo="Object" />
          </node>
        </node>
      </node>
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.BooleanType" typeId="tpee.1070534644030" id="1987251859607101865" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="1987251859607101866" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="1987251859607101867">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ReturnStatement" typeId="tpee.1068581242878" id="1987251859607101868">
          <node role="expression" roleId="tpee.1068581517676" type="tpee.AndExpression" typeId="tpee.1080120340718" id="1987251859607101875">
            <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.GreaterThanExpression" typeId="tpee.1081506762703" id="1987251859607101879">
              <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="1987251859607101882">
                <property name="value" nameId="tpee.1068580320021" value="2" />
              </node>
              <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.CastExpression" typeId="tpee.1070534934090" id="3863300516938089921">
                <node role="type" roleId="tpee.1070534934091" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="3863300516938090046">
                  <link role="classifier" roleId="tpee.1107535924139" targetNodeId="e2lb.~Integer" resolveInfo="Integer" />
                </node>
                <node role="expression" roleId="tpee.1070534934092" type="tp2q.MapElement" typeId="tp2q.1197932370469" id="1987251859607102067">
                  <node role="key" roleId="tp2q.1197932525128" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="1987251859607102068">
                    <property name="value" nameId="tpee.1070475926801" value="age" />
                  </node>
                  <node role="map" roleId="tp2q.1197932505799" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="1987251859607102069">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1987251859607102048" resolveInfo="person" />
                  </node>
                </node>
              </node>
            </node>
            <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.LessThanExpression" typeId="tpee.1081506773034" id="1987251859607101869">
              <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="1987251859607101870">
                <property name="value" nameId="tpee.1068580320021" value="18" />
              </node>
              <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.CastExpression" typeId="tpee.1070534934090" id="3863300516938089917">
                <node role="type" roleId="tpee.1070534934091" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="3863300516938090045">
                  <link role="classifier" roleId="tpee.1107535924139" targetNodeId="e2lb.~Integer" resolveInfo="Integer" />
                </node>
                <node role="expression" roleId="tpee.1070534934092" type="tp2q.MapElement" typeId="tp2q.1197932370469" id="1987251859607102064">
                  <node role="key" roleId="tp2q.1197932525128" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="1987251859607102065">
                    <property name="value" nameId="tpee.1070475926801" value="age" />
                  </node>
                  <node role="map" roleId="tp2q.1197932505799" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="1987251859607102066">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1987251859607102048" resolveInfo="person" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="staticMethod" roleId="tpee.1070462273904" type="tpee.StaticMethodDeclaration" typeId="tpee.1081236700938" id="1987251859607101886">
      <property name="name" nameId="tpck.1169194664001" value="isAdult" />
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="1987251859607102040">
        <property name="name" nameId="tpck.1169194664001" value="person" />
        <node role="type" roleId="tpee.5680397130376446158" type="tp2q.MapType" typeId="tp2q.1197683403723" id="1987251859607102041">
          <node role="keyType" roleId="tp2q.1197683466920" type="tpee.StringType" typeId="tpee.1225271177708" id="1987251859607102042" />
          <node role="valueType" roleId="tp2q.1197683475734" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="1987251859607102043">
            <link role="classifier" roleId="tpee.1107535924139" targetNodeId="e2lb.~Object" resolveInfo="Object" />
          </node>
        </node>
      </node>
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.BooleanType" typeId="tpee.1070534644030" id="1987251859607101887" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="1987251859607101888" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="1987251859607101889">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ReturnStatement" typeId="tpee.1068581242878" id="1987251859607101890">
          <node role="expression" roleId="tpee.1068581517676" type="tpee.AndExpression" typeId="tpee.1080120340718" id="1987251859607101891">
            <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.GreaterThanOrEqualsExpression" typeId="tpee.1153417849900" id="1987251859607101901">
              <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="1987251859607101903">
                <property name="value" nameId="tpee.1068580320021" value="18" />
              </node>
              <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.CastExpression" typeId="tpee.1070534934090" id="3863300516938089925">
                <node role="type" roleId="tpee.1070534934091" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="3863300516938090048">
                  <link role="classifier" roleId="tpee.1107535924139" targetNodeId="e2lb.~Integer" resolveInfo="Integer" />
                </node>
                <node role="expression" roleId="tpee.1070534934092" type="tp2q.MapElement" typeId="tp2q.1197932370469" id="1987251859607102070">
                  <node role="key" roleId="tp2q.1197932525128" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="1987251859607102071">
                    <property name="value" nameId="tpee.1070475926801" value="age" />
                  </node>
                  <node role="map" roleId="tp2q.1197932505799" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="1987251859607102072">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1987251859607102040" resolveInfo="person" />
                  </node>
                </node>
              </node>
            </node>
            <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.LessThanOrEqualsExpression" typeId="tpee.1153422305557" id="1987251859607101904">
              <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="1987251859607101906">
                <property name="value" nameId="tpee.1068580320021" value="60" />
              </node>
              <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.CastExpression" typeId="tpee.1070534934090" id="3863300516938089929">
                <node role="type" roleId="tpee.1070534934091" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="3863300516938090047">
                  <link role="classifier" roleId="tpee.1107535924139" targetNodeId="e2lb.~Integer" resolveInfo="Integer" />
                </node>
                <node role="expression" roleId="tpee.1070534934092" type="tp2q.MapElement" typeId="tp2q.1197932370469" id="1987251859607102073">
                  <node role="key" roleId="tp2q.1197932525128" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="1987251859607102074">
                    <property name="value" nameId="tpee.1070475926801" value="age" />
                  </node>
                  <node role="map" roleId="tp2q.1197932505799" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="1987251859607102075">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1987251859607102040" resolveInfo="person" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="staticMethod" roleId="tpee.1070462273904" type="tpee.StaticMethodDeclaration" typeId="tpee.1081236700938" id="1987251859607101907">
      <property name="name" nameId="tpck.1169194664001" value="isRetired" />
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="1987251859607102036">
        <property name="name" nameId="tpck.1169194664001" value="person" />
        <node role="type" roleId="tpee.5680397130376446158" type="tp2q.MapType" typeId="tp2q.1197683403723" id="1987251859607102037">
          <node role="keyType" roleId="tp2q.1197683466920" type="tpee.StringType" typeId="tpee.1225271177708" id="1987251859607102038" />
          <node role="valueType" roleId="tp2q.1197683475734" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="1987251859607102039">
            <link role="classifier" roleId="tpee.1107535924139" targetNodeId="e2lb.~Object" resolveInfo="Object" />
          </node>
        </node>
      </node>
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.BooleanType" typeId="tpee.1070534644030" id="1987251859607101908" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="1987251859607101909" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="1987251859607101910">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ReturnStatement" typeId="tpee.1068581242878" id="1987251859607101911">
          <node role="expression" roleId="tpee.1068581517676" type="tpee.GreaterThanExpression" typeId="tpee.1081506762703" id="1987251859607101927">
            <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="1987251859607101929">
              <property name="value" nameId="tpee.1068580320021" value="60" />
            </node>
            <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.CastExpression" typeId="tpee.1070534934090" id="3863300516938089933">
              <node role="type" roleId="tpee.1070534934091" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="3863300516938090049">
                <link role="classifier" roleId="tpee.1107535924139" targetNodeId="e2lb.~Integer" resolveInfo="Integer" />
              </node>
              <node role="expression" roleId="tpee.1070534934092" type="tp2q.MapElement" typeId="tp2q.1197932370469" id="1987251859607102076">
                <node role="key" roleId="tp2q.1197932525128" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="1987251859607102077">
                  <property name="value" nameId="tpee.1070475926801" value="age" />
                </node>
                <node role="map" roleId="tp2q.1197932505799" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="1987251859607102078">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1987251859607102036" resolveInfo="person" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="staticMethod" roleId="tpee.1070462273904" type="tpee.StaticMethodDeclaration" typeId="tpee.1081236700938" id="1987251859607101824">
      <property name="name" nameId="tpck.1169194664001" value="isMale" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.BooleanType" typeId="tpee.1070534644030" id="1987251859607101828" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="1987251859607101826" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="1987251859607101827">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.IfStatement" typeId="tpee.1068580123159" id="1987251859607101831">
          <node role="condition" roleId="tpee.1068580123160" type="tpee.EqualsExpression" typeId="tpee.1068580123152" id="1987251859607101838">
            <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="1987251859607101841">
              <property name="value" nameId="tpee.1070475926801" value="male" />
            </node>
            <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.CastExpression" typeId="tpee.1070534934090" id="3863300516938089937">
              <node role="expression" roleId="tpee.1070534934092" type="tp2q.MapElement" typeId="tp2q.1197932370469" id="1987251859607102024">
                <node role="key" roleId="tp2q.1197932525128" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="1987251859607102027">
                  <property name="value" nameId="tpee.1070475926801" value="gender" />
                </node>
                <node role="map" roleId="tp2q.1197932505799" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="1987251859607101834">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1987251859607101829" resolveInfo="person" />
                </node>
              </node>
              <node role="type" roleId="tpee.1070534934091" type="tpee.StringType" typeId="tpee.1225271177708" id="3863300516938089941" />
            </node>
          </node>
          <node role="ifTrue" roleId="tpee.1068580123161" type="tpee.StatementList" typeId="tpee.1068580123136" id="1987251859607101833">
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ReturnStatement" typeId="tpee.1068581242878" id="1987251859607101844">
              <node role="expression" roleId="tpee.1068581517676" type="tpee.BooleanConstant" typeId="tpee.1068580123137" id="1987251859607101843">
                <property name="value" nameId="tpee.1068580123138" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ReturnStatement" typeId="tpee.1068581242878" id="1987251859607101846">
          <node role="expression" roleId="tpee.1068581517676" type="tpee.BooleanConstant" typeId="tpee.1068580123137" id="1987251859607101848">
            <property name="value" nameId="tpee.1068580123138" value="false" />
          </node>
        </node>
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="1987251859607101829">
        <property name="name" nameId="tpck.1169194664001" value="person" />
        <node role="type" roleId="tpee.5680397130376446158" type="tp2q.MapType" typeId="tp2q.1197683403723" id="1987251859607102019">
          <node role="keyType" roleId="tp2q.1197683466920" type="tpee.StringType" typeId="tpee.1225271177708" id="1987251859607102022" />
          <node role="valueType" roleId="tp2q.1197683475734" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="1987251859607102023">
            <link role="classifier" roleId="tpee.1107535924139" targetNodeId="e2lb.~Object" resolveInfo="Object" />
          </node>
        </node>
      </node>
    </node>
    <node role="staticMethod" roleId="tpee.1070462273904" type="tpee.StaticMethodDeclaration" typeId="tpee.1081236700938" id="1987251859607102089">
      <property name="name" nameId="tpck.1169194664001" value="isFemale" />
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="1987251859607102093">
        <property name="name" nameId="tpck.1169194664001" value="person" />
        <node role="type" roleId="tpee.5680397130376446158" type="tp2q.MapType" typeId="tp2q.1197683403723" id="1987251859607102095">
          <node role="keyType" roleId="tp2q.1197683466920" type="tpee.StringType" typeId="tpee.1225271177708" id="1987251859607102098" />
          <node role="valueType" roleId="tp2q.1197683475734" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="1987251859607102099">
            <link role="classifier" roleId="tpee.1107535924139" targetNodeId="e2lb.~Object" resolveInfo="Object" />
          </node>
        </node>
      </node>
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.BooleanType" typeId="tpee.1070534644030" id="1987251859607102100" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="1987251859607102091" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="1987251859607102092">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ReturnStatement" typeId="tpee.1068581242878" id="1987251859607102101">
          <node role="expression" roleId="tpee.1068581517676" type="tpee.NotExpression" typeId="tpee.1081516740877" id="1987251859607102103">
            <node role="expression" roleId="tpee.1081516765348" type="tpee.LocalStaticMethodCall" typeId="tpee.1172058436953" id="1987251859607102105">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="1987251859607101824" resolveInfo="isMale" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="1987251859607102106">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1987251859607102093" resolveInfo="person" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method" roleId="tpee.1107880067339" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="3607579524910568188">
      <property name="name" nameId="tpck.1169194664001" value="run" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="3607579524910568189" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="3607579524910568190" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="3607579524910568191">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="1987251859607101931">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="1987251859607101932">
            <property name="name" nameId="tpck.1169194664001" value="person" />
            <node role="type" roleId="tpee.5680397130376446158" type="tp2q.MapType" typeId="tp2q.1197683403723" id="1987251859607101933">
              <node role="keyType" roleId="tp2q.1197683466920" type="tpee.StringType" typeId="tpee.1225271177708" id="1987251859607101936" />
              <node role="valueType" roleId="tp2q.1197683475734" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="1987251859607101937">
                <link role="classifier" roleId="tpee.1107535924139" targetNodeId="e2lb.~Object" resolveInfo="Object" />
              </node>
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="tpee.DotExpression" typeId="tpee.1197027756228" id="8238782355405135931">
              <node role="operand" roleId="tpee.1197027771414" type="tpee.ThisExpression" typeId="tpee.1070475354124" id="8238782355405135932" />
              <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="8238782355405135933">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="8238782355405135920" resolveInfo="createPerson" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="1987251859607101969" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.SingleLineComment" typeId="tpee.6329021646629104954" id="7427325263439042344">
          <node role="commentPart" roleId="tpee.6329021646629175155" type="tpee.TextCommentPart" typeId="tpee.6329021646629104957" id="7427325263439042345">
            <property name="text" nameId="tpee.6329021646629104958" value="A decision table gets translated into a series of nested &quot;if&quot; statements" />
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.SingleLineComment" typeId="tpee.6329021646629104954" id="7427325263439042348">
          <node role="commentPart" roleId="tpee.6329021646629175155" type="tpee.TextCommentPart" typeId="tpee.6329021646629104957" id="7427325263439042349">
            <property name="text" nameId="tpee.6329021646629104958" value="A table can be manipulated just like any other expression - try selecting one and invoke e.g. &quot;Extract Method&quot;" />
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="7427325263439042420" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="7427325263439042378">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="7427325263439042379">
            <property name="name" nameId="tpck.1169194664001" value="title" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.StringType" typeId="tpee.1225271177708" id="7427325263439042380" />
            <node role="initializer" roleId="tpee.1068431790190" type="278c.DecisionTable" typeId="278c.1987251859606934913" id="7427325263439042381">
              <node role="rowHeaders" roleId="278c.1987251859606934917" type="tpee.LocalStaticMethodCall" typeId="tpee.1172058436953" id="7427325263439042382">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="1987251859607101864" resolveInfo="isChild" />
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="7427325263439042399">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1987251859607101932" resolveInfo="person" />
                </node>
              </node>
              <node role="rowHeaders" roleId="278c.1987251859606934917" type="tpee.LocalStaticMethodCall" typeId="tpee.1172058436953" id="7427325263439042383">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="1987251859607101886" resolveInfo="isAdult" />
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="7427325263439042400">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1987251859607101932" resolveInfo="person" />
                </node>
              </node>
              <node role="colHeaders" roleId="278c.1987251859606934916" type="tpee.LocalStaticMethodCall" typeId="tpee.1172058436953" id="7427325263439042384">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="1987251859607101824" resolveInfo="isMale" />
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="7427325263439042385">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1987251859607101932" resolveInfo="person" />
                </node>
              </node>
              <node role="colHeaders" roleId="278c.1987251859606934916" type="tpee.LocalStaticMethodCall" typeId="tpee.1172058436953" id="7427325263439042386">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="1987251859607102089" resolveInfo="isFemale" />
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="7427325263439042387">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1987251859607101932" resolveInfo="person" />
                </node>
              </node>
              <node role="resultValues" roleId="278c.1987251859606934918" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7427325263439042395">
                <property name="value" nameId="tpee.1070475926801" value="boy" />
              </node>
              <node role="resultValues" roleId="278c.1987251859606934918" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7427325263439042396">
                <property name="value" nameId="tpee.1070475926801" value="girl" />
              </node>
              <node role="resultValues" roleId="278c.1987251859606934918" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7427325263439042397">
                <property name="value" nameId="tpee.1070475926801" value="man" />
              </node>
              <node role="resultValues" roleId="278c.1987251859606934918" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7427325263439042398">
                <property name="value" nameId="tpee.1070475926801" value="woman" />
              </node>
              <node role="expectedType" roleId="278c.1987251859606934914" type="tpee.StringType" typeId="tpee.1225271177708" id="7427325263439042392" />
              <node role="defaultValue" roleId="278c.1987251859606934915" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7427325263439042393">
                <property name="value" nameId="tpee.1070475926801" value="Nothing to show here" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7427325263439042402">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7427325263439042403">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="7427325263439042404">
              <link role="classifier" roleId="tpee.1144433057691" targetNodeId="e2lb.~System" resolveInfo="System" />
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="e2lb.~System%dout" resolveInfo="out" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7427325263439042405">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~PrintStream%dprintln(java%dlang%dString)%cvoid" resolveInfo="println" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="7427325263439042410">
                <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="7427325263439042416">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7427325263439042379" resolveInfo="title" />
                </node>
                <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7427325263439042406">
                  <property name="value" nameId="tpee.1070475926801" value="The title is: " />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="7427325263439042418" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="7427325263439042419" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.SingleLineComment" typeId="tpee.6329021646629104954" id="7427325263439042352">
          <node role="commentPart" roleId="tpee.6329021646629175155" type="tpee.TextCommentPart" typeId="tpee.6329021646629104957" id="7427325263439042353">
            <property name="text" nameId="tpee.6329021646629104958" value="The cells in a table may contain more complex expressions" />
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="7427325263439042421" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="1987251859607100447">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="1987251859607087470">
            <property name="name" nameId="tpck.1169194664001" value="discount" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.IntegerType" typeId="tpee.1070534370425" id="1987251859607087471" />
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="8238782355405273835">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="8238782355405273837">
            <node role="lValue" roleId="tpee.1068498886295" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="8238782355405273836">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1987251859607087470" resolveInfo="discount" />
            </node>
            <node role="rValue" roleId="tpee.1068498886297" type="278c.DecisionTable" typeId="278c.1987251859606934913" id="1987251859607011611">
              <node role="rowHeaders" roleId="278c.1987251859606934917" type="tpee.LocalStaticMethodCall" typeId="tpee.1172058436953" id="1987251859607101970">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="1987251859607101849" resolveInfo="isBaby" />
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="8238782355405135956">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1987251859607101932" resolveInfo="person" />
                </node>
              </node>
              <node role="colHeaders" roleId="278c.1987251859606934916" type="tpee.LocalStaticMethodCall" typeId="tpee.1172058436953" id="1987251859607102007">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="1987251859607101824" resolveInfo="isMale" />
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="8238782355405135954">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1987251859607101932" resolveInfo="person" />
                </node>
              </node>
              <node role="colHeaders" roleId="278c.1987251859606934916" type="tpee.LocalStaticMethodCall" typeId="tpee.1172058436953" id="1987251859607102108">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="1987251859607102089" resolveInfo="isFemale" />
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="8238782355405135955">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1987251859607101932" resolveInfo="person" />
                </node>
              </node>
              <node role="expectedType" roleId="278c.1987251859606934914" type="tpee.IntegerType" typeId="tpee.1070534370425" id="1987251859607089439" />
              <node role="defaultValue" roleId="278c.1987251859606934915" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="1987251859607011623">
                <property name="value" nameId="tpee.1068580320021" value="0" />
              </node>
              <node role="resultValues" roleId="278c.1987251859606934918" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="1987251859607102087">
                <property name="value" nameId="tpee.1068580320021" value="100" />
              </node>
              <node role="resultValues" roleId="278c.1987251859606934918" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="1987251859607102088">
                <property name="value" nameId="tpee.1068580320021" value="100" />
              </node>
              <node role="resultValues" roleId="278c.1987251859606934918" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="1987251859607019353">
                <property name="value" nameId="tpee.1068580320021" value="50" />
              </node>
              <node role="rowHeaders" roleId="278c.1987251859606934917" type="tpee.LocalStaticMethodCall" typeId="tpee.1172058436953" id="1987251859607101983">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="1987251859607101864" resolveInfo="isChild" />
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="8238782355405135957">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1987251859607101932" resolveInfo="person" />
                </node>
              </node>
              <node role="resultValues" roleId="278c.1987251859606934918" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="2603031361000938098">
                <property name="value" nameId="tpee.1068580320021" value="50" />
              </node>
              <node role="rowHeaders" roleId="278c.1987251859606934917" type="tpee.LocalStaticMethodCall" typeId="tpee.1172058436953" id="2603031361000938102">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="1987251859607101886" resolveInfo="isAdult" />
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="8238782355405135958">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1987251859607101932" resolveInfo="person" />
                </node>
              </node>
              <node role="resultValues" roleId="278c.1987251859606934918" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="7427325263439042422">
                <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.MulExpression" typeId="tpee.1092119917967" id="7427325263439042428">
                  <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7427325263439042438">
                    <node role="operand" roleId="tpee.1197027771414" type="tpee.ThisExpression" typeId="tpee.1070475354124" id="7427325263439042439" />
                    <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7427325263439042440">
                      <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="7427325263439042432" resolveInfo="seasonalBonus" />
                    </node>
                  </node>
                  <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="7427325263439042425">
                    <property name="value" nameId="tpee.1068580320021" value="2" />
                  </node>
                </node>
                <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="2603031361000938104">
                  <property name="value" nameId="tpee.1068580320021" value="5" />
                </node>
              </node>
              <node role="resultValues" roleId="278c.1987251859606934918" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="7427325263439042445">
                <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7427325263439042451">
                  <node role="operand" roleId="tpee.1197027771414" type="tpee.ThisExpression" typeId="tpee.1070475354124" id="7427325263439042448" />
                  <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7427325263439042458">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="7427325263439042432" resolveInfo="seasonalBonus" />
                  </node>
                </node>
                <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="2603031361000938105">
                  <property name="value" nameId="tpee.1068580320021" value="10" />
                </node>
              </node>
              <node role="rowHeaders" roleId="278c.1987251859606934917" type="tpee.LocalStaticMethodCall" typeId="tpee.1172058436953" id="2603031361000938111">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="1987251859607101907" resolveInfo="isRetired" />
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="8238782355405135959">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1987251859607101932" resolveInfo="person" />
                </node>
              </node>
              <node role="resultValues" roleId="278c.1987251859606934918" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="2603031361000938110">
                <property name="value" nameId="tpee.1068580320021" value="20" />
              </node>
              <node role="resultValues" roleId="278c.1987251859606934918" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="7427325263439042524">
                <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="7427325263439042521">
                  <property name="value" nameId="tpee.1068580320021" value="10" />
                </node>
                <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.TernaryOperatorExpression" typeId="tpee.1163668896201" id="7427325263439042477">
                  <node role="ifTrue" roleId="tpee.1163668922816" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7427325263439042484">
                    <node role="operand" roleId="tpee.1197027771414" type="tpee.ThisExpression" typeId="tpee.1070475354124" id="7427325263439042481" />
                    <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7427325263439042489">
                      <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="7427325263439042432" resolveInfo="seasonalBonus" />
                    </node>
                  </node>
                  <node role="ifFalse" roleId="tpee.1163668934364" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="7427325263439042490">
                    <property name="value" nameId="tpee.1068580320021" value="40" />
                  </node>
                  <node role="condition" roleId="tpee.1163668914799" type="tpee.ParenthesizedExpression" typeId="tpee.1079359253375" id="7427325263439042510">
                    <node role="expression" roleId="tpee.1079359253376" type="tpee.EqualsExpression" typeId="tpee.1068580123152" id="7427325263439042516">
                      <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7427325263439042519">
                        <property name="value" nameId="tpee.1070475926801" value="Susan" />
                      </node>
                      <node role="leftExpression" roleId="tpee.1081773367580" type="tp2q.MapElement" typeId="tp2q.1197932370469" id="7427325263439042511">
                        <node role="key" roleId="tp2q.1197932525128" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7427325263439042512">
                          <property name="value" nameId="tpee.1070475926801" value="name" />
                        </node>
                        <node role="map" roleId="tp2q.1197932505799" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="7427325263439042527">
                          <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1987251859607101932" resolveInfo="person" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="1987251859607100446" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="7427325263439042355" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="8238782355405273240">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="8238782355405273241">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="8238782355405273242">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="e2lb.~System%dout" resolveInfo="out" />
              <link role="classifier" roleId="tpee.1144433057691" targetNodeId="e2lb.~System" resolveInfo="System" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="8238782355405273243">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~PrintStream%dprintln(java%dlang%dString)%cvoid" resolveInfo="println" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="8238782355405273245">
                <node role="rightExpression" roleId="tpee.1081773367579" type="tp2q.MapElement" typeId="tp2q.1197932370469" id="8238782355405273249">
                  <node role="key" roleId="tp2q.1197932525128" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="8238782355405273252">
                    <property name="value" nameId="tpee.1070475926801" value="name" />
                  </node>
                  <node role="map" roleId="tp2q.1197932505799" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="8238782355405273248">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1987251859607101932" resolveInfo="person" />
                  </node>
                </node>
                <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="8238782355405273244">
                  <property name="value" nameId="tpee.1070475926801" value="Your name: " />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="1987251859607100453">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1987251859607100454">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="1987251859607100455">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="e2lb.~System%dout" resolveInfo="out" />
              <link role="classifier" roleId="tpee.1144433057691" targetNodeId="e2lb.~System" resolveInfo="System" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="1987251859607100456">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~PrintStream%dprintln(java%dlang%dString)%cvoid" resolveInfo="println" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="1987251859607100458">
                <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="1987251859607100461">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1987251859607087470" resolveInfo="discount" />
                </node>
                <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="1987251859607100457">
                  <property name="value" nameId="tpee.1070475926801" value="Your discount: " />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="7427325263439042356" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.SingleLineComment" typeId="tpee.6329021646629104954" id="7427325263439042535">
          <node role="commentPart" roleId="tpee.6329021646629175155" type="tpee.TextCommentPart" typeId="tpee.6329021646629104957" id="7427325263439042536">
            <property name="text" nameId="tpee.6329021646629104958" value="type &quot;dectab&quot; and Control + Space to create a new table" />
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="7427325263439042537" />
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="3607579524910568200">
        <property name="name" nameId="tpck.1169194664001" value="args" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ArrayType" typeId="tpee.1070534760951" id="3607579524910568202">
          <node role="componentType" roleId="tpee.1070534760952" type="tpee.StringType" typeId="tpee.1225271177708" id="3607579524910568201" />
        </node>
      </node>
    </node>
    <node role="method" roleId="tpee.1107880067339" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="7427325263439042432">
      <property name="name" nameId="tpck.1169194664001" value="seasonalBonus" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PrivateVisibility" typeId="tpee.1146644623116" id="7427325263439042433" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.IntegerType" typeId="tpee.1070534370425" id="7427325263439042434" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="7427325263439042435">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ReturnStatement" typeId="tpee.1068581242878" id="7427325263439042436">
          <node role="expression" roleId="tpee.1068581517676" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="7427325263439042437">
            <property name="value" nameId="tpee.1068580320021" value="10" />
          </node>
        </node>
      </node>
    </node>
    <node role="method" roleId="tpee.1107880067339" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="8238782355405135920">
      <property name="name" nameId="tpck.1169194664001" value="createPerson" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PrivateVisibility" typeId="tpee.1146644623116" id="8238782355405135921" />
      <node role="returnType" roleId="tpee.1068580123133" type="tp2q.MapType" typeId="tp2q.1197683403723" id="8238782355405135922">
        <node role="keyType" roleId="tp2q.1197683466920" type="tpee.StringType" typeId="tpee.1225271177708" id="8238782355405135923" />
        <node role="valueType" roleId="tp2q.1197683475734" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="8238782355405135924">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="e2lb.~Object" resolveInfo="Object" />
        </node>
      </node>
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="8238782355405135925">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="8238782355405135937">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="8238782355405135938">
            <property name="name" nameId="tpck.1169194664001" value="person" />
            <node role="type" roleId="tpee.5680397130376446158" type="tp2q.MapType" typeId="tp2q.1197683403723" id="8238782355405135939">
              <node role="keyType" roleId="tp2q.1197683466920" type="tpee.StringType" typeId="tpee.1225271177708" id="8238782355405135940" />
              <node role="valueType" roleId="tp2q.1197683475734" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="8238782355405135941">
                <link role="classifier" roleId="tpee.1107535924139" targetNodeId="e2lb.~Object" resolveInfo="Object" />
              </node>
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="8238782355405135942">
              <node role="creator" roleId="tpee.1145553007750" type="tp2q.HashMapCreator" typeId="tp2q.1197686869805" id="8238782355405135943">
                <node role="keyType" roleId="tp2q.1197687026896" type="tpee.StringType" typeId="tpee.1225271177708" id="8238782355405135944" />
                <node role="valueType" roleId="tp2q.1197687035757" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="8238782355405135945">
                  <link role="classifier" roleId="tpee.1107535924139" targetNodeId="e2lb.~Object" resolveInfo="Object" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="1987251859607101944">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="1987251859607101954">
            <node role="rValue" roleId="tpee.1068498886297" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="1987251859607101957">
              <property name="value" nameId="tpee.1070475926801" value="Joe" />
            </node>
            <node role="lValue" roleId="tpee.1068498886295" type="tp2q.MapElement" typeId="tp2q.1197932370469" id="1987251859607101950">
              <node role="key" roleId="tp2q.1197932525128" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="1987251859607101953">
                <property name="value" nameId="tpee.1070475926801" value="name" />
              </node>
              <node role="map" roleId="tp2q.1197932505799" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="8238782355405135947">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="8238782355405135938" resolveInfo="person" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="1987251859607101959">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="1987251859607101965">
            <node role="rValue" roleId="tpee.1068498886297" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="1987251859607101968">
              <property name="value" nameId="tpee.1068580320021" value="29" />
            </node>
            <node role="lValue" roleId="tpee.1068498886295" type="tp2q.MapElement" typeId="tp2q.1197932370469" id="1987251859607101961">
              <node role="key" roleId="tp2q.1197932525128" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="1987251859607101964">
                <property name="value" nameId="tpee.1070475926801" value="age" />
              </node>
              <node role="map" roleId="tp2q.1197932505799" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="8238782355405135948">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="8238782355405135938" resolveInfo="person" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="1987251859607102110">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="1987251859607102111">
            <node role="lValue" roleId="tpee.1068498886295" type="tp2q.MapElement" typeId="tp2q.1197932370469" id="1987251859607102113">
              <node role="key" roleId="tp2q.1197932525128" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="1987251859607102114">
                <property name="value" nameId="tpee.1070475926801" value="gender" />
              </node>
              <node role="map" roleId="tp2q.1197932505799" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="8238782355405135949">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="8238782355405135938" resolveInfo="person" />
              </node>
            </node>
            <node role="rValue" roleId="tpee.1068498886297" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="1987251859607102116">
              <property name="value" nameId="tpee.1070475926801" value="male" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ReturnStatement" typeId="tpee.1068581242878" id="8238782355405135951">
          <node role="expression" roleId="tpee.1068581517676" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="8238782355405135953">
            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="8238782355405135938" resolveInfo="person" />
          </node>
        </node>
      </node>
    </node>
    <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="1603335834236231964" />
    <node role="constructor" roleId="tpee.1068390468201" type="tpee.ConstructorDeclaration" typeId="tpee.1068580123140" id="1603335834236231965">
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="1603335834236231966" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="1603335834236231967" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="1603335834236231968" />
    </node>
    <node role="staticMethod" roleId="tpee.1070462273904" type="tpee.StaticMethodDeclaration" typeId="tpee.1081236700938" id="1603335834236235900">
      <property name="name" nameId="tpck.1169194664001" value="main" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="1603335834236235901" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="1603335834236235902" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="1603335834236235903">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="1603335834236235908">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1603335834236244663">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="1603335834236235909">
              <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="1603335834236244660">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="1603335834236231965" resolveInfo="DecisionSample" />
              </node>
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="1603335834236244668">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="3607579524910568188" resolveInfo="run" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="1603335834236244669">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1603335834236235904" resolveInfo="args" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="1603335834236235904">
        <property name="name" nameId="tpck.1169194664001" value="args" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ArrayType" typeId="tpee.1070534760951" id="1603335834236235905">
          <node role="componentType" roleId="tpee.1070534760952" type="tpee.StringType" typeId="tpee.1225271177708" id="1603335834236235906" />
        </node>
      </node>
    </node>
  </root>
  <root id="1603335834236290404">
    <node role="staticMethod" roleId="tpee.1070462273904" type="tpee.StaticMethodDeclaration" typeId="tpee.1081236700938" id="8923957828369564585">
      <property name="name" nameId="tpck.1169194664001" value="main" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="8923957828369564586" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="8923957828369564587" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="8923957828369564588">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.SingleLineComment" typeId="tpee.6329021646629104954" id="1603335834236290420">
          <node role="commentPart" roleId="tpee.6329021646629175155" type="tpee.TextCommentPart" typeId="tpee.6329021646629104957" id="1603335834236290421">
            <property name="text" nameId="tpee.6329021646629104958" value="Some thread pools to use" />
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="4659204813808501232">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="4659204813808501233">
            <property name="name" nameId="tpck.1169194664001" value="myPool" />
            <property name="isFinal" nameId="tpee.1176718929932" value="true" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="4659204813808501234">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="53gy.~ExecutorService" resolveInfo="ExecutorService" />
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="cgfx.ThreadPool" typeId="cgfx.633195941006921788" id="4659204813808501235">
              <property name="numberOfThreads" nameId="cgfx.633195941006921797" value="3" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="4659204813808501240">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="4659204813808501241">
            <property name="name" nameId="tpck.1169194664001" value="youPool" />
            <property name="isFinal" nameId="tpee.1176718929932" value="true" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="4659204813808501242">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="53gy.~ExecutorService" resolveInfo="ExecutorService" />
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="cgfx.ThreadPool" typeId="cgfx.633195941006921788" id="4659204813808501244">
              <property name="numberOfThreads" nameId="cgfx.633195941006921797" value="10" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="633195941006938091" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.SingleLineComment" typeId="tpee.6329021646629104954" id="1603335834236290423">
          <node role="commentPart" roleId="tpee.6329021646629175155" type="tpee.TextCommentPart" typeId="tpee.6329021646629104957" id="1603335834236290424">
            <property name="text" nameId="tpee.6329021646629104958" value="A collection of numbers to play with" />
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="8923957828369573429">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="8923957828369573430">
            <property name="name" nameId="tpck.1169194664001" value="numbers" />
            <property name="isFinal" nameId="tpee.1176718929932" value="true" />
            <node role="type" roleId="tpee.5680397130376446158" type="tp2q.SequenceType" typeId="tp2q.1151689724996" id="8923957828369573431">
              <node role="elementType" roleId="tp2q.1151689745422" type="tpee.IntegerType" typeId="tpee.1070534370425" id="8923957828369573433" />
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="8923957828369573435">
              <node role="creator" roleId="tpee.1145553007750" type="tp2q.SequenceCreator" typeId="tp2q.1224414427926" id="8923957828369573436">
                <node role="elementType" roleId="tp2q.1224414456414" type="tpee.IntegerType" typeId="tpee.1070534370425" id="8923957828369573437" />
                <node role="initializer" roleId="tp2q.1224414466839" type="tp2c.ClosureLiteral" typeId="tp2c.1199569711397" id="8923957828369573438">
                  <node role="body" roleId="tp2c.1199569916463" type="tpee.StatementList" typeId="tpee.1068580123136" id="8923957828369573439">
                    <node role="statement" roleId="tpee.1068581517665" type="tp2c.YieldStatement" typeId="tp2c.1200830824066" id="8923957828369573440">
                      <node role="expression" roleId="tp2c.1200830928149" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="8923957828369573442">
                        <property name="value" nameId="tpee.1068580320021" value="1" />
                      </node>
                    </node>
                    <node role="statement" roleId="tpee.1068581517665" type="tp2c.YieldStatement" typeId="tp2c.1200830824066" id="8923957828369573444">
                      <node role="expression" roleId="tp2c.1200830928149" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="8923957828369573446">
                        <property name="value" nameId="tpee.1068580320021" value="2" />
                      </node>
                    </node>
                    <node role="statement" roleId="tpee.1068581517665" type="tp2c.YieldStatement" typeId="tp2c.1200830824066" id="8923957828369573448">
                      <node role="expression" roleId="tp2c.1200830928149" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="8923957828369573450">
                        <property name="value" nameId="tpee.1068580320021" value="3" />
                      </node>
                    </node>
                    <node role="statement" roleId="tpee.1068581517665" type="tp2c.YieldStatement" typeId="tp2c.1200830824066" id="7793246093816002846">
                      <node role="expression" roleId="tp2c.1200830928149" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="7793246093816002850">
                        <property name="value" nameId="tpee.1068580320021" value="4" />
                      </node>
                    </node>
                    <node role="statement" roleId="tpee.1068581517665" type="tp2c.YieldStatement" typeId="tp2c.1200830824066" id="7793246093816002848">
                      <node role="expression" roleId="tp2c.1200830928149" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="7793246093816002851">
                        <property name="value" nameId="tpee.1068580320021" value="5" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="7793246093816006104" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.SingleLineComment" typeId="tpee.6329021646629104954" id="4659204813808676482">
          <node role="commentPart" roleId="tpee.6329021646629175155" type="tpee.TextCommentPart" typeId="tpee.6329021646629104957" id="4659204813808676484">
            <property name="text" nameId="tpee.6329021646629104958" value="The optional reference to a thread pool is set in the Inspector (Alt|Command + 2)" />
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="cgfx.ParallelFor" typeId="cgfx.8923957828369477802" id="8923957828369582224">
          <node role="loopVariable" roleId="cgfx.8923957828369518786" type="cgfx.ParallelLoopVariable" typeId="cgfx.8923957828369477803" id="8923957828369582225">
            <property name="name" nameId="tpck.1169194664001" value="a" />
            <property name="isFinal" nameId="tpee.1176718929932" value="true" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.IntegerType" typeId="tpee.1070534370425" id="8923957828369582232" />
          </node>
          <node role="inputSequence" roleId="cgfx.8923957828369550462" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="8923957828369582230">
            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="8923957828369573430" resolveInfo="numbers" />
          </node>
          <node role="body" roleId="tpee.1154032183016" type="tpee.StatementList" typeId="tpee.1068580123136" id="8923957828369582228">
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="1077635873539568033">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.LocalStaticMethodCall" typeId="tpee.1172058436953" id="1077635873539568034">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="1077635873539567998" resolveInfo="log" />
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="8923957828369591802">
                  <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="8923957828369591806">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lb.~Thread%dcurrentThread()%cjava%dlang%dThread" resolveInfo="currentThread" />
                    <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="e2lb.~Thread" resolveInfo="Thread" />
                  </node>
                  <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="7793246093816002424">
                    <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7793246093816002427">
                      <property name="value" nameId="tpee.1070475926801" value=" in thread " />
                    </node>
                    <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="7793246093816001916">
                      <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="8923957828369582237">
                        <property name="value" nameId="tpee.1070475926801" value="Starting calculation for number " />
                      </node>
                      <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="7793246093816001919">
                        <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="8923957828369582225" resolveInfo="a" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="3294321158385477451">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="3294321158385477452">
                <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="1603335834236290404" resolveInfo="ParallelForSample" />
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="3294321158385477432" resolveInfo="sleep" />
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.MulExpression" typeId="tpee.1092119917967" id="1077635873539567993">
                  <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="1077635873539567996">
                    <property name="value" nameId="tpee.1068580320021" value="1000" />
                  </node>
                  <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="1077635873539567992">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="8923957828369582225" resolveInfo="a" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="1077635873539568036">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.LocalStaticMethodCall" typeId="tpee.1172058436953" id="1077635873539568037">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="1077635873539567998" resolveInfo="log" />
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="7793246093816002439">
                  <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="7793246093816002440">
                    <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="e2lb.~Thread" resolveInfo="Thread" />
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lb.~Thread%dcurrentThread()%cjava%dlang%dThread" resolveInfo="currentThread" />
                  </node>
                  <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="7793246093816002441">
                    <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7793246093816002442">
                      <property name="value" nameId="tpee.1070475926801" value=" in thread " />
                    </node>
                    <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="7793246093816002443">
                      <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7793246093816002444">
                        <property name="value" nameId="tpee.1070475926801" value="Finished calculation for number " />
                      </node>
                      <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="7793246093816002445">
                        <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="8923957828369582225" resolveInfo="a" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="threadPool" roleId="cgfx.4659204813808501246" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="1996249409163327661">
            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4659204813808501233" resolveInfo="myPool" />
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="1077635873539568042">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.LocalStaticMethodCall" typeId="tpee.1172058436953" id="1077635873539568043">
            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="1077635873539567998" resolveInfo="log" />
            <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7793246093816002845">
              <property name="value" nameId="tpee.1070475926801" value="Done" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="7793246093816037823" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="3294321158385477456" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.SingleLineComment" typeId="tpee.6329021646629104954" id="4659204813808676485">
          <node role="commentPart" roleId="tpee.6329021646629175155" type="tpee.TextCommentPart" typeId="tpee.6329021646629104957" id="4659204813808676486">
            <property name="text" nameId="tpee.6329021646629104958" value="References to non-final variables and parameters from within parallel loops are reported as errors" />
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.SingleLineComment" typeId="tpee.6329021646629104954" id="4659204813808676489">
          <node role="commentPart" roleId="tpee.6329021646629175155" type="tpee.TextCommentPart" typeId="tpee.6329021646629104957" id="4659204813808676490">
            <property name="text" nameId="tpee.6329021646629104958" value="Try making the following variable non-final (Alt + Enter)" />
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="7793246093816012169">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="7793246093816012170">
            <property name="name" nameId="tpck.1169194664001" value="doNotMessupWith" />
            <property name="isFinal" nameId="tpee.1176718929932" value="true" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.StringType" typeId="tpee.1225271177708" id="7793246093816012171" />
            <node role="initializer" roleId="tpee.1068431790190" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7793246093816012173">
              <property name="value" nameId="tpee.1070475926801" value="The Shared State" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="4659204813808676491" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.SingleLineComment" typeId="tpee.6329021646629104954" id="4659204813808676494">
          <node role="commentPart" roleId="tpee.6329021646629175155" type="tpee.TextCommentPart" typeId="tpee.6329021646629104957" id="4659204813808676495">
            <property name="text" nameId="tpee.6329021646629104958" value="Accessing non-thread-safe classes, such as lists, is reported as warnings" />
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="7793246093816029038">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="7793246093816029039">
            <property name="name" nameId="tpck.1169194664001" value="names" />
            <property name="isFinal" nameId="tpee.1176718929932" value="true" />
            <node role="initializer" roleId="tpee.1068431790190" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="7793246093816029044">
              <node role="creator" roleId="tpee.1145553007750" type="tp2q.ListCreatorWithInit" typeId="tp2q.1160600644654" id="7793246093816037798">
                <node role="elementType" roleId="tp2q.1237721435807" type="tpee.StringType" typeId="tpee.1225271177708" id="7793246093816037800" />
                <node role="initValue" roleId="tp2q.1237721435808" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7793246093816037804">
                  <property name="value" nameId="tpee.1070475926801" value="Joe" />
                </node>
                <node role="initValue" roleId="tp2q.1237721435808" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7793246093816037806">
                  <property name="value" nameId="tpee.1070475926801" value="Dave" />
                </node>
                <node role="initValue" roleId="tp2q.1237721435808" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7793246093816037808">
                  <property name="value" nameId="tpee.1070475926801" value="Alice" />
                </node>
              </node>
            </node>
            <node role="type" roleId="tpee.5680397130376446158" type="tp2q.ListType" typeId="tp2q.1151688443754" id="7793246093816037816">
              <node role="elementType" roleId="tp2q.1151688676805" type="tpee.StringType" typeId="tpee.1225271177708" id="7793246093816037818" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="4659204813808676496" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.SingleLineComment" typeId="tpee.6329021646629104954" id="4659204813808676498">
          <node role="commentPart" roleId="tpee.6329021646629175155" type="tpee.TextCommentPart" typeId="tpee.6329021646629104957" id="4659204813808676499">
            <property name="text" nameId="tpee.6329021646629104958" value="Accessing thread-safe classes is considered ok" />
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="7793246093816053469">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="7793246093816053470">
            <property name="name" nameId="tpck.1169194664001" value="counter" />
            <property name="isFinal" nameId="tpee.1176718929932" value="true" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7793246093816053471">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="vft3.~AtomicInteger" resolveInfo="AtomicInteger" />
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="7793246093816053472">
              <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="7793246093816053473">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="vft3.~AtomicInteger%d&lt;init&gt;(int)" resolveInfo="AtomicInteger" />
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="7793246093816053474">
                  <property name="value" nameId="tpee.1068580320021" value="0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="7793246093816048900" />
        <node role="statement" roleId="tpee.1068581517665" type="cgfx.ParallelFor" typeId="cgfx.8923957828369477802" id="7793246093816008675">
          <node role="loopVariable" roleId="cgfx.8923957828369518786" type="cgfx.ParallelLoopVariable" typeId="cgfx.8923957828369477803" id="7793246093816008676">
            <property name="name" nameId="tpck.1169194664001" value="b" />
            <property name="isFinal" nameId="tpee.1176718929932" value="true" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.IntegerType" typeId="tpee.1070534370425" id="7793246093816008680" />
          </node>
          <node role="inputSequence" roleId="cgfx.8923957828369550462" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="7793246093816008681">
            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="8923957828369573430" resolveInfo="numbers" />
          </node>
          <node role="body" roleId="tpee.1154032183016" type="tpee.StatementList" typeId="tpee.1068580123136" id="7793246093816008679">
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="1077635873539568048">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.LocalStaticMethodCall" typeId="tpee.1172058436953" id="1077635873539568049">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="1077635873539567998" resolveInfo="log" />
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="7793246093816012181">
                  <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="7793246093816012184">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7793246093816012170" resolveInfo="doNotMessupWith" />
                  </node>
                  <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7793246093816008686">
                    <property name="value" nameId="tpee.1070475926801" value="Touching " />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="1077635873539568051">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.LocalStaticMethodCall" typeId="tpee.1172058436953" id="1077635873539568052">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="1077635873539567998" resolveInfo="log" />
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="1603335834236319164">
                  <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="1603335834236319161">
                    <property name="value" nameId="tpee.1070475926801" value="Counter: " />
                  </node>
                  <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7793246093816053479">
                    <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="7793246093816053478">
                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7793246093816053470" resolveInfo="counter" />
                    </node>
                    <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7793246093816053483">
                      <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="vft3.~AtomicInteger%dincrementAndGet()%cint" resolveInfo="incrementAndGet" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7793246093816037810">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7793246093816037812">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="7793246093816037811">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7793246093816029039" resolveInfo="names" />
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tp2q.RemoveElementOperation" typeId="tp2q.1167380149909" id="7793246093816037819">
                  <node role="argument" roleId="tp2q.1167380149910" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7793246093816037822">
                    <property name="value" nameId="tpee.1070475926801" value="Joe" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="3294321158385477459">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="3294321158385477461">
                <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="1603335834236290404" resolveInfo="ParallelForSample" />
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="3294321158385477432" resolveInfo="sleep" />
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="3294321158385477462">
                  <property name="value" nameId="tpee.1068580320021" value="1000" />
                </node>
              </node>
            </node>
          </node>
          <node role="threadPool" roleId="cgfx.4659204813808501246" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="4659204813808594922">
            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4659204813808501241" resolveInfo="youPool" />
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="3294321158385477463" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.SingleLineComment" typeId="tpee.6329021646629104954" id="4659204813808676516">
          <node role="commentPart" roleId="tpee.6329021646629175155" type="tpee.TextCommentPart" typeId="tpee.6329021646629104957" id="4659204813808676517">
            <property name="text" nameId="tpee.6329021646629104958" value="Iterating over a collection of strings" />
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.SingleLineComment" typeId="tpee.6329021646629104954" id="4659204813808678329">
          <node role="commentPart" roleId="tpee.6329021646629175155" type="tpee.TextCommentPart" typeId="tpee.6329021646629104957" id="4659204813808678330">
            <property name="text" nameId="tpee.6329021646629104958" value="No thread pool is set (Alt|Command + 2) so using threads directly" />
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="cgfx.ParallelFor" typeId="cgfx.8923957828369477802" id="633195941006828922">
          <node role="loopVariable" roleId="cgfx.8923957828369518786" type="cgfx.ParallelLoopVariable" typeId="cgfx.8923957828369477803" id="633195941006828923">
            <property name="isFinal" nameId="tpee.1176718929932" value="true" />
            <property name="name" nameId="tpck.1169194664001" value="c" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.StringType" typeId="tpee.1225271177708" id="633195941006828927" />
          </node>
          <node role="inputSequence" roleId="cgfx.8923957828369550462" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="633195941006828928">
            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7793246093816029039" resolveInfo="names" />
          </node>
          <node role="body" roleId="tpee.1154032183016" type="tpee.StatementList" typeId="tpee.1068580123136" id="633195941006828926">
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="1077635873539568076">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.LocalStaticMethodCall" typeId="tpee.1172058436953" id="1077635873539568077">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="1077635873539567998" resolveInfo="log" />
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="633195941006828937">
                  <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="633195941006828940">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="633195941006828923" resolveInfo="c" />
                  </node>
                  <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="633195941006828933">
                    <property name="value" nameId="tpee.1070475926801" value="Name: " />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="tpee.1068581517665" type="tpee.IfStatement" typeId="tpee.1068580123159" id="633195941006820172">
              <node role="ifTrue" roleId="tpee.1068580123161" type="tpee.StatementList" typeId="tpee.1068580123136" id="633195941006820173">
                <node role="statement" roleId="tpee.1068581517665" type="tpee.ThrowStatement" typeId="tpee.1164991038168" id="633195941006820194">
                  <node role="throwable" roleId="tpee.1164991057263" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="633195941006820196">
                    <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="633195941006820198">
                      <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lb.~RuntimeException%d&lt;init&gt;(java%dlang%dString)" resolveInfo="RuntimeException" />
                      <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="633195941006820199">
                        <property name="value" nameId="tpee.1070475926801" value="test" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="condition" roleId="tpee.1068580123160" type="tpee.EqualsExpression" typeId="tpee.1068580123152" id="4659204813808676506">
                <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="4659204813808676509">
                  <property name="value" nameId="tpee.1070475926801" value="Joe" />
                </node>
                <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="4659204813808676503">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="633195941006828923" resolveInfo="c" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="4659204813808676512" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.SingleLineComment" typeId="tpee.6329021646629104954" id="4659204813808676514">
          <node role="commentPart" roleId="tpee.6329021646629175155" type="tpee.TextCommentPart" typeId="tpee.6329021646629104957" id="4659204813808676515">
            <property name="text" nameId="tpee.6329021646629104958" value="Shutdown the thread pools" />
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="4659204813808594924">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="4659204813808594928">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="4659204813808594925">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4659204813808501233" resolveInfo="myPool" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="4659204813808594934">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="53gy.~ExecutorService%dshutdown()%cvoid" resolveInfo="shutdown" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="4659204813808594936">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="4659204813808594940">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="4659204813808594937">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4659204813808501241" resolveInfo="youPool" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="4659204813808594946">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="53gy.~ExecutorService%dshutdown()%cvoid" resolveInfo="shutdown" />
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="8923957828369564589">
        <property name="name" nameId="tpck.1169194664001" value="args" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ArrayType" typeId="tpee.1070534760951" id="8923957828369564590">
          <node role="componentType" roleId="tpee.1070534760952" type="tpee.StringType" typeId="tpee.1225271177708" id="8923957828369564591" />
        </node>
      </node>
    </node>
    <node role="staticMethod" roleId="tpee.1070462273904" type="tpee.StaticMethodDeclaration" typeId="tpee.1081236700938" id="3294321158385477432">
      <property name="name" nameId="tpck.1169194664001" value="sleep" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PrivateVisibility" typeId="tpee.1146644623116" id="3294321158385477433" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="3294321158385477434" />
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="3294321158385477431">
        <property name="name" nameId="tpck.1169194664001" value="timeout" />
        <property name="isFinal" nameId="tpee.1176718929932" value="true" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.IntegerType" typeId="tpee.1070534370425" id="3294321158385477435" />
      </node>
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="3294321158385477436">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.TryCatchStatement" typeId="tpee.1164879751025" id="3294321158385477437">
          <node role="body" roleId="tpee.1164879758292" type="tpee.StatementList" typeId="tpee.1068580123136" id="3294321158385477438">
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="3294321158385477439">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="3294321158385477440">
                <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="e2lb.~Thread" resolveInfo="Thread" />
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lb.~Thread%dsleep(long)%cvoid" resolveInfo="sleep" />
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="3294321158385477441">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="3294321158385477431" resolveInfo="timeout" />
                </node>
              </node>
            </node>
          </node>
          <node role="catchClause" roleId="tpee.1164903496223" type="tpee.CatchClause" typeId="tpee.1164903280175" id="3294321158385477442">
            <node role="throwable" roleId="tpee.1164903359217" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="3294321158385477443">
              <property name="name" nameId="tpck.1169194664001" value="e" />
              <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="3294321158385477444">
                <link role="classifier" roleId="tpee.1107535924139" targetNodeId="e2lb.~InterruptedException" resolveInfo="InterruptedException" />
              </node>
            </node>
            <node role="catchBody" roleId="tpee.1164903359218" type="tpee.StatementList" typeId="tpee.1068580123136" id="3294321158385477445">
              <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="3294321158385477446">
                <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="3294321158385477447">
                  <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="3294321158385477448">
                    <link role="classifier" roleId="tpee.1144433057691" targetNodeId="e2lb.~System" resolveInfo="System" />
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="e2lb.~System%dout" resolveInfo="out" />
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="3294321158385477449">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~PrintStream%dprintln(java%dlang%dString)%cvoid" resolveInfo="println" />
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="3294321158385477450">
                      <property name="value" nameId="tpee.1070475926801" value="Interrupted" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="staticMethod" roleId="tpee.1070462273904" type="tpee.StaticMethodDeclaration" typeId="tpee.1081236700938" id="1077635873539567998">
      <property name="name" nameId="tpck.1169194664001" value="log" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="1077635873539567999" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PrivateVisibility" typeId="tpee.1146644623116" id="1077635873539568078" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="1077635873539568001">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="1077635873539568004">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1077635873539568005">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="1077635873539568006">
              <link role="classifier" roleId="tpee.1144433057691" targetNodeId="e2lb.~System" resolveInfo="System" />
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="e2lb.~System%dout" resolveInfo="out" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="1077635873539568007">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~PrintStream%dprintln(java%dlang%dString)%cvoid" resolveInfo="println" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="1077635873539568024">
                <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="1077635873539568030">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1077635873539568002" resolveInfo="message" />
                </node>
                <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="1077635873539568008">
                  <property name="value" nameId="tpee.1070475926801" value="Logging: " />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="1077635873539568002">
        <property name="name" nameId="tpck.1169194664001" value="message" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.StringType" typeId="tpee.1225271177708" id="1077635873539568003" />
      </node>
    </node>
    <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="1603335834236290405" />
    <node role="constructor" roleId="tpee.1068390468201" type="tpee.ConstructorDeclaration" typeId="tpee.1068580123140" id="1603335834236290406">
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="1603335834236290407" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="1603335834236290408" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="1603335834236290409" />
    </node>
  </root>
  <root id="3385910400465347285">
    <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="3385910400465347286" />
    <node role="constructor" roleId="tpee.1068390468201" type="tpee.ConstructorDeclaration" typeId="tpee.1068580123140" id="3385910400465347287">
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="3385910400465347288" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="3385910400465347289" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="3385910400465347290" />
    </node>
    <node role="staticMethod" roleId="tpee.1070462273904" type="tpee.StaticMethodDeclaration" typeId="tpee.1081236700938" id="3385910400465347291">
      <property name="name" nameId="tpck.1169194664001" value="main" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="3385910400465347292" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="3385910400465347293" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="3385910400465347294">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.SingleLineComment" typeId="tpee.6329021646629104954" id="7427325263439038937">
          <node role="commentPart" roleId="tpee.6329021646629175155" type="tpee.TextCommentPart" typeId="tpee.6329021646629104957" id="7427325263439038938">
            <property name="text" nameId="tpee.6329021646629104958" value="To create a money literal, just type the number immediately followed by the desired currency symbol" />
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.SingleLineComment" typeId="tpee.6329021646629104954" id="7427325263439038942">
          <node role="commentPart" roleId="tpee.6329021646629175155" type="tpee.TextCommentPart" typeId="tpee.6329021646629104957" id="7427325263439038943">
            <property name="text" nameId="tpee.6329021646629104958" value="E.g. type &quot;10EUR&quot; to get 10 EUR money literal" />
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.SingleLineComment" typeId="tpee.6329021646629104954" id="7427325263439038946">
          <node role="commentPart" roleId="tpee.6329021646629175155" type="tpee.TextCommentPart" typeId="tpee.6329021646629104957" id="7427325263439038947">
            <property name="text" nameId="tpee.6329021646629104958" value="The allowed currencies are specified in the co-located instance of CurrencyDefTable" />
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="3385910400465347314">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="3385910400465347315">
            <property name="name" nameId="tpck.1169194664001" value="cash" />
            <node role="type" roleId="tpee.5680397130376446158" type="v0h4.MoneyType" typeId="v0h4.5447719361346490730" id="3385910400465347316" />
            <node role="initializer" roleId="tpee.1068431790190" type="v0h4.MoneyLiteral" typeId="v0h4.5447719361346490674" id="3385910400465347317">
              <property name="amount" nameId="v0h4.5447719361346490755" value="10" />
              <link role="unit" roleId="v0h4.3607579524910560680" targetNodeId="3385910400465347304" resolveInfo="EUR" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="7427325263439038948" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.SingleLineComment" typeId="tpee.6329021646629104954" id="7427325263439038950">
          <node role="commentPart" roleId="tpee.6329021646629175155" type="tpee.TextCommentPart" typeId="tpee.6329021646629104957" id="7427325263439038951">
            <property name="text" nameId="tpee.6329021646629104958" value="Money literal can be manipulated just like any other type of literals in MPS" />
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="3385910400465347335">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="3385910400465347336">
            <property name="name" nameId="tpck.1169194664001" value="total" />
            <node role="type" roleId="tpee.5680397130376446158" type="v0h4.MoneyType" typeId="v0h4.5447719361346490730" id="3385910400465347337" />
            <node role="initializer" roleId="tpee.1068431790190" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="3385910400465347338">
              <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="3385910400465347339">
                <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="3385910400465347285" resolveInfo="MoneySample" />
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="3385910400465347328" resolveInfo="getDonation" />
              </node>
              <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="3385910400465347340">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="3385910400465347315" resolveInfo="cash" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="3385910400465347343">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="3385910400465347344">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="3385910400465347345">
              <link role="classifier" roleId="tpee.1144433057691" targetNodeId="e2lb.~System" resolveInfo="System" />
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="e2lb.~System%dout" resolveInfo="out" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="3385910400465347346">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~PrintStream%dprintln(java%dlang%dString)%cvoid" resolveInfo="println" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="3385910400465347351">
                <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="3385910400465348251">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="3385910400465347336" resolveInfo="total" />
                </node>
                <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="3385910400465347347">
                  <property name="value" nameId="tpee.1070475926801" value="total amount: " />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.SingleLineComment" typeId="tpee.6329021646629104954" id="7427325263439038953">
          <node role="commentPart" roleId="tpee.6329021646629175155" type="tpee.TextCommentPart" typeId="tpee.6329021646629104957" id="7427325263439038954">
            <property name="text" nameId="tpee.6329021646629104958" value="Code with the classes from org.jetbrains.mps.samples.MoneyRuntime will be generated and then used at run-time" />
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.SingleLineComment" typeId="tpee.6329021646629104954" id="7427325263439041392">
          <node role="commentPart" roleId="tpee.6329021646629175155" type="tpee.TextCommentPart" typeId="tpee.6329021646629104957" id="7427325263439041393">
            <property name="text" nameId="tpee.6329021646629104958" value="Try &quot;Preview Generated Text (Control|Cmd + Alt + Shift + F9)&quot;" />
          </node>
        </node>
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="3385910400465347295">
        <property name="name" nameId="tpck.1169194664001" value="args" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ArrayType" typeId="tpee.1070534760951" id="3385910400465347296">
          <node role="componentType" roleId="tpee.1070534760952" type="tpee.StringType" typeId="tpee.1225271177708" id="3385910400465347297" />
        </node>
      </node>
    </node>
    <node role="staticMethod" roleId="tpee.1070462273904" type="tpee.StaticMethodDeclaration" typeId="tpee.1081236700938" id="3385910400465347328">
      <property name="name" nameId="tpck.1169194664001" value="getDonation" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PrivateVisibility" typeId="tpee.1146644623116" id="3385910400465347329" />
      <node role="returnType" roleId="tpee.1068580123133" type="v0h4.MoneyType" typeId="v0h4.5447719361346490730" id="3385910400465347330" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="3385910400465347331">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ReturnStatement" typeId="tpee.1068581242878" id="3385910400465347332">
          <node role="expression" roleId="tpee.1068581517676" type="v0h4.MoneyLiteral" typeId="v0h4.5447719361346490674" id="3385910400465347333">
            <property name="amount" nameId="v0h4.5447719361346490755" value="30" />
            <link role="unit" roleId="v0h4.3607579524910560680" targetNodeId="3385910400465347304" resolveInfo="EUR" />
          </node>
        </node>
      </node>
    </node>
  </root>
  <root id="3385910400465347303">
    <node role="units" roleId="v0h4.3607579524910560668" type="v0h4.CurrencyUnit" typeId="v0h4.3607579524910560663" id="3385910400465347304">
      <property name="name" nameId="tpck.1169194664001" value="EUR" />
    </node>
    <node role="units" roleId="v0h4.3607579524910560668" type="v0h4.CurrencyUnit" typeId="v0h4.3607579524910560663" id="3385910400465347305">
      <property name="name" nameId="tpck.1169194664001" value="USD" />
    </node>
    <node role="units" roleId="v0h4.3607579524910560668" type="v0h4.CurrencyUnit" typeId="v0h4.3607579524910560663" id="3385910400465347307">
      <property name="name" nameId="tpck.1169194664001" value="GBP" />
    </node>
    <node role="units" roleId="v0h4.3607579524910560668" type="v0h4.CurrencyUnit" typeId="v0h4.3607579524910560663" id="3385910400465347308">
      <property name="name" nameId="tpck.1169194664001" value="CZK" />
    </node>
    <node role="units" roleId="v0h4.3607579524910560668" type="v0h4.CurrencyUnit" typeId="v0h4.3607579524910560663" id="3385910400465347309">
      <property name="name" nameId="tpck.1169194664001" value="CHF" />
    </node>
  </root>
  <root id="3385910400465380671">
    <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="3385910400465380672" />
    <node role="constructor" roleId="tpee.1068390468201" type="tpee.ConstructorDeclaration" typeId="tpee.1068580123140" id="3385910400465380673">
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="3385910400465380674" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="3385910400465380675" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="3385910400465380676" />
    </node>
    <node role="staticMethod" roleId="tpee.1070462273904" type="tpee.StaticMethodDeclaration" typeId="tpee.1081236700938" id="3385910400465380677">
      <property name="name" nameId="tpck.1169194664001" value="main" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="3385910400465380678" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="3385910400465380679" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="3385910400465380680">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.SingleLineComment" typeId="tpee.6329021646629104954" id="3385910400465380722">
          <node role="commentPart" roleId="tpee.6329021646629175155" type="tpee.TextCommentPart" typeId="tpee.6329021646629104957" id="3385910400465380723">
            <property name="text" nameId="tpee.6329021646629104958" value="Type &quot;unless&quot; followed by Control + Space to create an &quot;unless statement&quot;" />
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="3385910400465380725" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="3385910400465380684">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="3385910400465380685">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="3385910400465380686">
              <link role="classifier" roleId="tpee.1144433057691" targetNodeId="e2lb.~System" resolveInfo="System" />
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="e2lb.~System%dout" resolveInfo="out" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="3385910400465380687">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~PrintStream%dprintln(java%dlang%dString)%cvoid" resolveInfo="println" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="3385910400465380688">
                <property name="value" nameId="tpee.1070475926801" value="Surround me with unless (Select the line, then Control + Alt + T)" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="3385910400465380726" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.SingleLineComment" typeId="tpee.6329021646629104954" id="3385910400465380847">
          <node role="commentPart" roleId="tpee.6329021646629175155" type="tpee.TextCommentPart" typeId="tpee.6329021646629104957" id="3385910400465380848">
            <property name="text" nameId="tpee.6329021646629104958" value="Checking rules with quick-fixes" />
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="3v68.UnlessStatement" typeId="3v68.393299394024627213" id="3385910400465380698">
          <node role="condition" roleId="3v68.393299394024627214" type="tpee.GreaterThanExpression" typeId="tpee.1081506762703" id="3385910400465380704">
            <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="3385910400465380707">
              <property name="value" nameId="tpee.1068580320021" value="0" />
            </node>
            <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="3385910400465380701">
              <property name="value" nameId="tpee.1068580320021" value="1" />
            </node>
          </node>
          <node role="body" roleId="3v68.393299394024627228" type="tpee.StatementList" typeId="tpee.1068580123136" id="3385910400465380700">
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="3385910400465380708">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="3385910400465380709">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="3385910400465380710">
                  <link role="classifier" roleId="tpee.1144433057691" targetNodeId="e2lb.~System" resolveInfo="System" />
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="e2lb.~System%dout" resolveInfo="out" />
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="3385910400465380711">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~PrintStream%dprintln(java%dlang%dString)%cvoid" resolveInfo="println" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="3385910400465380712">
                    <property name="value" nameId="tpee.1070475926801" value="Remove this line and you'll get a warning about an empty unless block. Try Alt + Enter then." />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="3385910400465380728" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.SingleLineComment" typeId="tpee.6329021646629104954" id="3385910400465380844">
          <node role="commentPart" roleId="tpee.6329021646629175155" type="tpee.TextCommentPart" typeId="tpee.6329021646629104957" id="3385910400465380845">
            <property name="text" nameId="tpee.6329021646629104958" value="Intentions" />
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="3v68.UnlessStatement" typeId="3v68.393299394024627213" id="3385910400465380731">
          <node role="condition" roleId="3v68.393299394024627214" type="tpee.BooleanConstant" typeId="tpee.1068580123137" id="3385910400465380734">
            <property name="value" nameId="tpee.1068580123138" value="false" />
          </node>
          <node role="body" roleId="3v68.393299394024627228" type="tpee.StatementList" typeId="tpee.1068580123136" id="3385910400465380733">
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="3385910400465380735">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="3385910400465380736">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="3385910400465380737">
                  <link role="classifier" roleId="tpee.1144433057691" targetNodeId="e2lb.~System" resolveInfo="System" />
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="e2lb.~System%dout" resolveInfo="out" />
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="3385910400465380738">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~PrintStream%dprintln(java%dlang%dString)%cvoid" resolveInfo="println" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="3385910400465380739">
                    <property name="value" nameId="tpee.1070475926801" value="Try the intention offered after Alt + Enter when positioned on the unless keyword" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="3385910400465380750" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.SingleLineComment" typeId="tpee.6329021646629104954" id="3385910400465380841">
          <node role="commentPart" roleId="tpee.6329021646629175155" type="tpee.TextCommentPart" typeId="tpee.6329021646629104957" id="3385910400465380842">
            <property name="text" nameId="tpee.6329021646629104958" value="Potential NPE reporting" />
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="3385910400465380758">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="3385910400465380759">
            <property name="name" nameId="tpck.1169194664001" value="s" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.StringType" typeId="tpee.1225271177708" id="3385910400465380760" />
            <node role="initializer" roleId="tpee.1068431790190" type="tpee.NullLiteral" typeId="tpee.1070534058343" id="3385910400465380762" />
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="3v68.UnlessStatement" typeId="3v68.393299394024627213" id="3385910400465380753">
          <node role="condition" roleId="3v68.393299394024627214" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="3385910400465380769">
            <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="3385910400465380671" resolveInfo="UnlessSample" />
            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="3385910400465380763" resolveInfo="condition" />
          </node>
          <node role="body" roleId="3v68.393299394024627228" type="tpee.StatementList" typeId="tpee.1068580123136" id="3385910400465380755">
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="3385910400465380777">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="3385910400465380781">
                <node role="rValue" roleId="tpee.1068498886297" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="3385910400465380784">
                  <property name="value" nameId="tpee.1070475926801" value="value" />
                </node>
                <node role="lValue" roleId="tpee.1068498886295" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="3385910400465380778">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="3385910400465380759" resolveInfo="s" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="3385910400465380786">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="3385910400465380787">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="3385910400465380788">
              <link role="classifier" roleId="tpee.1144433057691" targetNodeId="e2lb.~System" resolveInfo="System" />
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="e2lb.~System%dout" resolveInfo="out" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="3385910400465380789">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~PrintStream%dprintln(java%dlang%dString)%cvoid" resolveInfo="println" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="3385910400465380794">
                <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.DotExpression" typeId="tpee.1197027756228" id="3385910400465380800">
                  <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="3385910400465380797">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="3385910400465380759" resolveInfo="s" />
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="3385910400465380808">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lb.~String%dlength()%cint" resolveInfo="length" />
                  </node>
                </node>
                <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="3385910400465380790">
                  <property name="value" nameId="tpee.1070475926801" value="Dangerous reference. Note the warning issues by the dataflow engine " />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="3385910400465380714" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.SingleLineComment" typeId="tpee.6329021646629104954" id="3385910400465380838">
          <node role="commentPart" roleId="tpee.6329021646629175155" type="tpee.TextCommentPart" typeId="tpee.6329021646629104957" id="3385910400465380839">
            <property name="text" nameId="tpee.6329021646629104958" value="Unreachable code detection" />
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="3v68.UnlessStatement" typeId="3v68.393299394024627213" id="3385910400465380814">
          <node role="condition" roleId="3v68.393299394024627214" type="tpee.BooleanConstant" typeId="tpee.1068580123137" id="3385910400465380817">
            <property name="value" nameId="tpee.1068580123138" value="false" />
          </node>
          <node role="body" roleId="3v68.393299394024627228" type="tpee.StatementList" typeId="tpee.1068580123136" id="3385910400465380816">
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="3385910400465380818">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="3385910400465380819">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="3385910400465380820">
                  <link role="classifier" roleId="tpee.1144433057691" targetNodeId="e2lb.~System" resolveInfo="System" />
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="e2lb.~System%dout" resolveInfo="out" />
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="3385910400465380821">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~PrintStream%dprintln(java%dlang%dString)%cvoid" resolveInfo="println" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="3385910400465380822">
                    <property name="value" nameId="tpee.1070475926801" value="So far so good" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="tpee.1068581517665" type="tpee.SingleLineComment" typeId="tpee.6329021646629104954" id="3385910400465380834">
              <node role="commentPart" roleId="tpee.6329021646629175155" type="tpee.StatementCommentPart" typeId="tpee.6329021646629175143" id="3385910400465380835">
                <node role="commentedStatement" roleId="tpee.6329021646629175144" type="tpee.ReturnStatement" typeId="tpee.1068581242878" id="3385910400465380826" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="3385910400465380828">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="3385910400465380829">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="3385910400465380830">
              <link role="classifier" roleId="tpee.1144433057691" targetNodeId="e2lb.~System" resolveInfo="System" />
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="e2lb.~System%dout" resolveInfo="out" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="3385910400465380831">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~PrintStream%dprintln(java%dlang%dString)%cvoid" resolveInfo="println" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="3385910400465380832">
                <property name="value" nameId="tpee.1070475926801" value="We can become unreachable by uncommenting the return expression above." />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="3385910400465380681">
        <property name="name" nameId="tpck.1169194664001" value="args" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ArrayType" typeId="tpee.1070534760951" id="3385910400465380682">
          <node role="componentType" roleId="tpee.1070534760952" type="tpee.StringType" typeId="tpee.1225271177708" id="3385910400465380683" />
        </node>
      </node>
    </node>
    <node role="staticMethod" roleId="tpee.1070462273904" type="tpee.StaticMethodDeclaration" typeId="tpee.1081236700938" id="3385910400465380763">
      <property name="name" nameId="tpck.1169194664001" value="condition" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PrivateVisibility" typeId="tpee.1146644623116" id="3385910400465380764" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.BooleanType" typeId="tpee.1070534644030" id="3385910400465380765" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="3385910400465380766">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ReturnStatement" typeId="tpee.1068581242878" id="3385910400465380767">
          <node role="expression" roleId="tpee.1068581517676" type="tpee.LessThanExpression" typeId="tpee.1081506773034" id="3385910400465380773">
            <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="3385910400465380776">
              <property name="value" nameId="tpee.1068580320021" value="0" />
            </node>
            <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="3385910400465380770">
              <property name="value" nameId="tpee.1068580320021" value="1" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </root>
  <root id="3385910400465407946">
    <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="3385910400465407947" />
    <node role="constructor" roleId="tpee.1068390468201" type="tpee.ConstructorDeclaration" typeId="tpee.1068580123140" id="3385910400465407948">
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="3385910400465407949" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="3385910400465407950" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="3385910400465407951" />
    </node>
    <node role="staticMethod" roleId="tpee.1070462273904" type="tpee.StaticMethodDeclaration" typeId="tpee.1081236700938" id="3385910400465407952">
      <property name="name" nameId="tpck.1169194664001" value="main" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="3385910400465407953" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="3385910400465407954" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="3385910400465407955">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.SingleLineComment" typeId="tpee.6329021646629104954" id="3385910400465411644">
          <node role="commentPart" roleId="tpee.6329021646629175155" type="tpee.TextCommentPart" typeId="tpee.6329021646629104957" id="3385910400465411645">
            <property name="text" nameId="tpee.6329021646629104958" value="This is a good old &quot;if&quot;, just displayed differently on the screen" />
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="3v68.MyIfStatement" typeId="3v68.954830572075912394" id="3385910400465411630">
          <node role="condition" roleId="3v68.954830572075912397" type="tpee.GreaterThanExpression" typeId="tpee.1081506762703" id="8238782355405273178">
            <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="8238782355405273181">
              <property name="value" nameId="tpee.1068580320021" value="1" />
            </node>
            <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.DotExpression" typeId="tpee.1197027756228" id="8238782355405273173">
              <node role="operand" roleId="tpee.1197027771414" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="8238782355405273172">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="3385910400465407956" resolveInfo="args" />
              </node>
              <node role="operation" roleId="tpee.1197027833540" type="tpee.ArrayLengthOperation" typeId="tpee.1208890769693" id="8238782355405273177" />
            </node>
          </node>
          <node role="body" roleId="3v68.954830572075912398" type="3v68.TrueFlow" typeId="3v68.954830572075998495" id="3385910400465411631">
            <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="3863300516938089426">
              <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="3863300516938089427">
                <property name="name" nameId="tpck.1169194664001" value="value1" />
                <node role="type" roleId="tpee.5680397130376446158" type="tpee.IntegerType" typeId="tpee.1070534370425" id="3863300516938089428" />
                <node role="initializer" roleId="tpee.1068431790190" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="8238782355405273189">
                  <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="e2lb.~Integer" resolveInfo="Integer" />
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lb.~Integer%dparseInt(java%dlang%dString)%cint" resolveInfo="parseInt" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.ArrayAccessExpression" typeId="tpee.1173175405605" id="8238782355405273191">
                    <node role="index" roleId="tpee.1173175577737" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="8238782355405273194">
                      <property name="value" nameId="tpee.1068580320021" value="0" />
                    </node>
                    <node role="array" roleId="tpee.1173175590490" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="8238782355405273190">
                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="3385910400465407956" resolveInfo="args" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="8238782355405273199">
              <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="8238782355405273200">
                <property name="name" nameId="tpck.1169194664001" value="value2" />
                <node role="type" roleId="tpee.5680397130376446158" type="tpee.IntegerType" typeId="tpee.1070534370425" id="8238782355405273201" />
                <node role="initializer" roleId="tpee.1068431790190" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="8238782355405273202">
                  <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="e2lb.~Integer" resolveInfo="Integer" />
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lb.~Integer%dparseInt(java%dlang%dString)%cint" resolveInfo="parseInt" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.ArrayAccessExpression" typeId="tpee.1173175405605" id="8238782355405273203">
                    <node role="array" roleId="tpee.1173175590490" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="8238782355405273205">
                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="3385910400465407956" resolveInfo="args" />
                    </node>
                    <node role="index" roleId="tpee.1173175577737" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="8238782355405273206">
                      <property name="value" nameId="tpee.1068580320021" value="1" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="3863300516938089430">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="3863300516938089431">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="3863300516938089432">
                  <link role="classifier" roleId="tpee.1144433057691" targetNodeId="e2lb.~System" resolveInfo="System" />
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="e2lb.~System%dout" resolveInfo="out" />
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="3863300516938089433">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~PrintStream%dprintln(java%dlang%dString)%cvoid" resolveInfo="println" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="3863300516938089434">
                    <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="3863300516938089436">
                      <property name="value" nameId="tpee.1070475926801" value="Result: " />
                    </node>
                    <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.ParenthesizedExpression" typeId="tpee.1079359253375" id="8238782355405273207">
                      <node role="expression" roleId="tpee.1079359253376" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="8238782355405273210">
                        <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="8238782355405273213">
                          <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="8238782355405273200" resolveInfo="value2" />
                        </node>
                        <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="8238782355405273209">
                          <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="3863300516938089427" resolveInfo="value1" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="3863300516938089452">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="3863300516938089453">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="3863300516938089454">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="e2lb.~System%dout" resolveInfo="out" />
                  <link role="classifier" roleId="tpee.1144433057691" targetNodeId="e2lb.~System" resolveInfo="System" />
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="3863300516938089455">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~PrintStream%dprintln(java%dlang%dString)%cvoid" resolveInfo="println" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="3863300516938089456">
                    <property name="value" nameId="tpee.1070475926801" value="Done" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="alternative" roleId="3v68.954830572075974221" type="3v68.FalseFlow" typeId="3v68.954830572075998500" id="3385910400465411632">
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="3863300516938089470">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="3863300516938089471">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="3863300516938089472">
                  <link role="classifier" roleId="tpee.1144433057691" targetNodeId="e2lb.~System" resolveInfo="System" />
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="e2lb.~System%dout" resolveInfo="out" />
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="3863300516938089473">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~PrintStream%dprintln(java%dlang%dString)%cvoid" resolveInfo="println" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="3863300516938089474">
                    <property name="value" nameId="tpee.1070475926801" value="We can add two numbers" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="3863300516938089475">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="3863300516938089476">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="3863300516938089477">
                  <link role="classifier" roleId="tpee.1144433057691" targetNodeId="e2lb.~System" resolveInfo="System" />
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="e2lb.~System%dout" resolveInfo="out" />
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="3863300516938089478">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~PrintStream%dprintln(java%dlang%dString)%cvoid" resolveInfo="println" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="3863300516938089479">
                    <property name="value" nameId="tpee.1070475926801" value="Specify them as arguments" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="8238782355405273222">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="8238782355405273223">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="8238782355405273224">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="e2lb.~System%dout" resolveInfo="out" />
                  <link role="classifier" roleId="tpee.1144433057691" targetNodeId="e2lb.~System" resolveInfo="System" />
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="8238782355405273225">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~PrintStream%dprintln(java%dlang%dString)%cvoid" resolveInfo="println" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="8238782355405273226">
                    <property name="value" nameId="tpee.1070475926801" value="Done" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="3385910400465411684" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.SingleLineComment" typeId="tpee.6329021646629104954" id="3385910400465411658">
          <node role="commentPart" roleId="tpee.6329021646629175155" type="tpee.TextCommentPart" typeId="tpee.6329021646629104957" id="3385910400465411659">
            <property name="text" nameId="tpee.6329021646629104958" value="Try Alt + Enter on the &quot;on condition that&quot; text to turn in back to standard &quot;if&quot;" />
          </node>
        </node>
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="3385910400465407956">
        <property name="name" nameId="tpck.1169194664001" value="args" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ArrayType" typeId="tpee.1070534760951" id="3385910400465407957">
          <node role="componentType" roleId="tpee.1070534760952" type="tpee.StringType" typeId="tpee.1225271177708" id="3385910400465407958" />
        </node>
      </node>
    </node>
  </root>
</model>


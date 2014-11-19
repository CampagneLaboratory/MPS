<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:00000000-0000-4000-0000-011c895905ff(jetbrains.mps.transformation.test.inputModels.test_getPrevInput)" doNotGenerate="true">
  <persistence version="9" />
  <debugInfo>
    <lang id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" />
    <lang id="ab0ae915-e3b5-4f35-b55a-c655d649a03c" name="jetbrains.mps.transformation.test.inputLang" />
    <concept id="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" />
    <concept id="ab0ae915-e3b5-4f35-b55a-c655d649a03c/1195168316083" name="jetbrains.mps.transformation.test.inputLang.structure.InputRoot" />
    <concept id="ab0ae915-e3b5-4f35-b55a-c655d649a03c/1195169091918" name="jetbrains.mps.transformation.test.inputLang.structure.InputNode" />
    <concept id="ab0ae915-e3b5-4f35-b55a-c655d649a03c/1195171011194" name="jetbrains.mps.transformation.test.inputLang.structure.InputNode_A" />
    <property id="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" name="name" />
    <property id="ab0ae915-e3b5-4f35-b55a-c655d649a03c/1195168316083/1202243304949" name="useInTest" />
    <childRole id="ab0ae915-e3b5-4f35-b55a-c655d649a03c/1195168316083/1195169805620" name="inputChild" />
    <childRole id="ab0ae915-e3b5-4f35-b55a-c655d649a03c/1195169091918/1202254005876" name="inputChild" />
  </debugInfo>
  <languages>
    <use id="ab0ae915-e3b5-4f35-b55a-c655d649a03c" version="-1" index="9749" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" version="0" implicit="true" index="asn4" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="tpm0" ref="r:00000000-0000-4000-0000-011c895905f4(jetbrains.mps.transformation.test.inputLang.structure)" implicit="true" />
  </imports>
  <contents>
    <node concept="9749.1195168316083" id="1202252822820" info="ng">
      <property role="asn4.1169194658468.1169194664001" value="Input_root_1" />
      <property role="9749.1195168316083.1202243304949" value="getPrevInputTest" />
      <node concept="9749.1195171011194" id="1202252885400" role="9749.1195168316083.1195169805620" info="ng">
        <property role="asn4.1169194658468.1169194664001" value="LEVEl 1 (1)" />
        <node concept="9749.1195171011194" id="1202255039141" role="9749.1195169091918.1202254005876" info="ng">
          <property role="asn4.1169194658468.1169194664001" value="LEVEL 2 (1.1)" />
          <node concept="9749.1195171011194" id="1202255079285" role="9749.1195169091918.1202254005876" info="ng">
            <property role="asn4.1169194658468.1169194664001" value="LEVEL 3 (1.1.1)" />
          </node>
        </node>
      </node>
      <node concept="9749.1195171011194" id="1202252892215" role="9749.1195168316083.1195169805620" info="ng">
        <property role="asn4.1169194658468.1169194664001" value="LEVEl 1 (2)" />
        <node concept="9749.1195171011194" id="1202255059189" role="9749.1195169091918.1202254005876" info="ng">
          <property role="asn4.1169194658468.1169194664001" value="LEVEL 2 (2.1)" />
          <node concept="9749.1195171011194" id="1202255097756" role="9749.1195169091918.1202254005876" info="ng">
            <property role="asn4.1169194658468.1169194664001" value="LEVEL 3 (2.1.1)" />
          </node>
        </node>
      </node>
    </node>
  </contents>
</model>


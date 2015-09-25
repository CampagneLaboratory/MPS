<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:12897c41-1d23-444a-8c3d-8a254e74f9b6(jetbrains.mps.ide.build.tests.generatedTests)">
  <persistence version="9" />
  <languages>
    <use id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build" version="0" />
    <use id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps" version="1" />
    <use id="3600cb0a-44dd-4a5b-9968-22924406419e" name="jetbrains.mps.build.mps.tests" version="0" />
  </languages>
  <imports>
    <import index="ffeo" ref="r:874d959d-e3b4-4d04-b931-ca849af130dd(jetbrains.mps.ide.build)" />
  </imports>
  <registry>
    <language id="3600cb0a-44dd-4a5b-9968-22924406419e" name="jetbrains.mps.build.mps.tests">
      <concept id="4560297596904469355" name="jetbrains.mps.build.mps.tests.structure.BuildMpsLayout_TestModuleGroup" flags="ng" index="22LTRF">
        <reference id="4560297596904469356" name="group" index="22LTRG" />
      </concept>
      <concept id="4560297596904469357" name="jetbrains.mps.build.mps.tests.structure.BuildMpsLayout_TestModules" flags="nn" index="22LTRH">
        <child id="4560297596904469360" name="modules" index="22LTRK" />
      </concept>
      <concept id="4005526075820600484" name="jetbrains.mps.build.mps.tests.structure.BuildModuleTestsPlugin" flags="ng" index="1gjT0q" />
    </language>
    <language id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build">
      <concept id="5481553824944787378" name="jetbrains.mps.build.structure.BuildSourceProjectRelativePath" flags="ng" index="55IIr" />
      <concept id="7321017245476976379" name="jetbrains.mps.build.structure.BuildRelativePath" flags="ng" index="iG8Mu">
        <child id="7321017245477039051" name="compositePart" index="iGT6I" />
      </concept>
      <concept id="4993211115183325728" name="jetbrains.mps.build.structure.BuildProjectDependency" flags="ng" index="2sgV4H">
        <reference id="5617550519002745380" name="script" index="1l3spb" />
        <child id="4129895186893471026" name="artifacts" index="2JcizS" />
      </concept>
      <concept id="927724900262033858" name="jetbrains.mps.build.structure.BuildSource_JavaOptions" flags="ng" index="2_Ic$z">
        <property id="927724900262398947" name="heapSize" index="2_GNG2" />
        <property id="927724900262033861" name="generateDebugInfo" index="2_Ic$$" />
        <property id="927724900262033862" name="copyResources" index="2_Ic$B" />
        <property id="6998860900671147996" name="javaLevel" index="TZNOO" />
        <property id="2059109515400425365" name="compiler" index="3fwGa$" />
        <child id="927724900262033863" name="resourceSelectors" index="2_Ic$A" />
      </concept>
      <concept id="4380385936562003279" name="jetbrains.mps.build.structure.BuildString" flags="ng" index="NbPM2">
        <child id="4903714810883783243" name="parts" index="3MwsjC" />
      </concept>
      <concept id="8618885170173601777" name="jetbrains.mps.build.structure.BuildCompositePath" flags="nn" index="2Ry0Ak">
        <property id="8618885170173601779" name="head" index="2Ry0Am" />
        <child id="8618885170173601778" name="tail" index="2Ry0An" />
      </concept>
      <concept id="6647099934206700647" name="jetbrains.mps.build.structure.BuildJavaPlugin" flags="ng" index="10PD9b" />
      <concept id="7181125477683417252" name="jetbrains.mps.build.structure.BuildExternalLayoutDependency" flags="ng" index="13uUGR">
        <reference id="7181125477683417255" name="layout" index="13uUGO" />
        <child id="7181125477683417254" name="artifacts" index="13uUGP" />
      </concept>
      <concept id="7389400916848050060" name="jetbrains.mps.build.structure.BuildLayout_NamedContainer" flags="ng" index="3981dR">
        <child id="4380385936562148502" name="containerName" index="Nbhlr" />
      </concept>
      <concept id="7389400916848036984" name="jetbrains.mps.build.structure.BuildLayout_Folder" flags="ng" index="398223" />
      <concept id="7389400916848136194" name="jetbrains.mps.build.structure.BuildFolderMacro" flags="ng" index="398rNT">
        <child id="7389400916848144618" name="defaultPath" index="398pKh" />
      </concept>
      <concept id="7389400916848153117" name="jetbrains.mps.build.structure.BuildSourceMacroRelativePath" flags="ng" index="398BVA">
        <reference id="7389400916848153130" name="macro" index="398BVh" />
      </concept>
      <concept id="5617550519002745364" name="jetbrains.mps.build.structure.BuildLayout" flags="ng" index="1l3spV" />
      <concept id="5617550519002745363" name="jetbrains.mps.build.structure.BuildProject" flags="ng" index="1l3spW">
        <property id="4915877860348071612" name="fileName" index="turDy" />
        <property id="5204048710541015587" name="internalBaseDirectory" index="2DA0ip" />
        <child id="4796668409958418110" name="scriptsDir" index="auvoZ" />
        <child id="6647099934206700656" name="plugins" index="10PD9s" />
        <child id="7389400916848080626" name="parts" index="3989C9" />
        <child id="3542413272732620719" name="aspects" index="1hWBAP" />
        <child id="5617550519002745381" name="dependencies" index="1l3spa" />
        <child id="5617550519002745378" name="macros" index="1l3spd" />
        <child id="5617550519002745372" name="layout" index="1l3spN" />
      </concept>
      <concept id="8654221991637384182" name="jetbrains.mps.build.structure.BuildFileIncludesSelector" flags="ng" index="3qWCbU">
        <property id="8654221991637384184" name="pattern" index="3qWCbO" />
      </concept>
      <concept id="4701820937132344003" name="jetbrains.mps.build.structure.BuildLayout_Container" flags="ng" index="1y1bJS">
        <child id="7389400916848037006" name="children" index="39821P" />
      </concept>
      <concept id="841011766566059607" name="jetbrains.mps.build.structure.BuildStringNotEmpty" flags="ng" index="3_J27D" />
      <concept id="4903714810883702019" name="jetbrains.mps.build.structure.BuildTextStringPart" flags="ng" index="3Mxwew">
        <property id="4903714810883755350" name="text" index="3MwjfP" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps">
      <concept id="6503355885715333289" name="jetbrains.mps.build.mps.structure.BuildMpsAspect" flags="ng" index="2igEWh">
        <property id="6503355885715353788" name="bootstrap" index="2igJW4" />
      </concept>
      <concept id="1500819558095907805" name="jetbrains.mps.build.mps.structure.BuildMps_Group" flags="ng" index="2G$12M">
        <child id="1500819558095907806" name="modules" index="2G$12L" />
      </concept>
      <concept id="1265949165890536423" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_ModuleJars" flags="ng" index="L2wRC">
        <reference id="1265949165890536425" name="module" index="L2wRA" />
      </concept>
      <concept id="868032131020265945" name="jetbrains.mps.build.mps.structure.BuildMPSPlugin" flags="ng" index="3b7kt6" />
      <concept id="5253498789149381388" name="jetbrains.mps.build.mps.structure.BuildMps_Module" flags="ng" index="3bQrTs">
        <property id="1500819558096356884" name="doNotCompile" index="2GAjPV" />
        <child id="5253498789149547704" name="dependencies" index="3bR37C" />
      </concept>
      <concept id="5253498789149585690" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyOnModule" flags="ng" index="3bR9La">
        <property id="5253498789149547713" name="reexport" index="3bR36h" />
        <reference id="5253498789149547705" name="module" index="3bR37D" />
      </concept>
      <concept id="5507251971038816436" name="jetbrains.mps.build.mps.structure.BuildMps_Generator" flags="ng" index="1yeLz9" />
      <concept id="4278635856200794926" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyExtendLanguage" flags="ng" index="1Busua">
        <reference id="4278635856200794928" name="language" index="1Busuk" />
      </concept>
      <concept id="3189788309731840247" name="jetbrains.mps.build.mps.structure.BuildMps_Solution" flags="ng" index="1E1JtA">
        <property id="269707337715731330" name="sourcesKind" index="aoJFB" />
      </concept>
      <concept id="3189788309731840248" name="jetbrains.mps.build.mps.structure.BuildMps_Language" flags="ng" index="1E1JtD">
        <child id="9200313594498201639" name="generator" index="1TViLv" />
      </concept>
      <concept id="322010710375871467" name="jetbrains.mps.build.mps.structure.BuildMps_AbstractModule" flags="ng" index="3LEN3z">
        <property id="322010710375892619" name="uuid" index="3LESm3" />
        <child id="322010710375956261" name="path" index="3LF7KH" />
      </concept>
      <concept id="7259033139236285166" name="jetbrains.mps.build.mps.structure.BuildMps_ExtractedModuleDependency" flags="nn" index="1SiIV0">
        <child id="7259033139236285167" name="dependency" index="1SiIV1" />
      </concept>
    </language>
  </registry>
  <node concept="1l3spW" id="5HWqn7opvLJ">
    <property role="2DA0ip" value="../../../../" />
    <property role="turDy" value="mpsTestModules.xml" />
    <property role="TrG5h" value="mpsTestModules" />
    <property role="3GE5qa" value="generated" />
    <node concept="2_Ic$z" id="5HWqn7opvLK" role="3989C9">
      <property role="2_Ic$$" value="true" />
      <property role="2_Ic$B" value="true" />
      <property role="3fwGa$" value="IntelliJ" />
      <property role="2_GNG2" value="1024" />
      <property role="TZNOO" value="1.6" />
      <node concept="3qWCbU" id="5HWqn7opvLL" role="2_Ic$A">
        <property role="3qWCbO" value="**/*.properties, **/*.xml, **/*.html, **/*.png, **/*.txt, **/*.ico, **/*.zip, **/*.info" />
      </node>
    </node>
    <node concept="2G$12M" id="5HWqn7opvLM" role="3989C9">
      <property role="TrG5h" value="mpsTestModules-test-languages" />
      <node concept="1E1JtD" id="5HWqn7opvKA" role="2G$12L">
        <property role="TrG5h" value="testAnnotatedType" />
        <property role="3LESm3" value="2f74e72e-3e3d-480e-bae1-cc709d588366" />
        <property role="2GAjPV" value="false" />
        <node concept="55IIr" id="5HWqn7opvKB" role="3LF7KH">
          <node concept="2Ry0Ak" id="5HWqn7opvKC" role="iGT6I">
            <property role="2Ry0Am" value="plugins" />
            <node concept="2Ry0Ak" id="5HWqn7opvKD" role="2Ry0An">
              <property role="2Ry0Am" value="testModules" />
              <node concept="2Ry0Ak" id="5HWqn7opvKE" role="2Ry0An">
                <property role="2Ry0Am" value="testSubstituteType" />
                <node concept="2Ry0Ak" id="5HWqn7opvKF" role="2Ry0An">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="5HWqn7opvKG" role="2Ry0An">
                    <property role="2Ry0Am" value="testAnnotatedType" />
                    <node concept="2Ry0Ak" id="5HWqn7opvKH" role="2Ry0An">
                      <property role="2Ry0Am" value="testAnnotatedType.mpl" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5HWqn7opvMa" role="3bR37C">
          <node concept="1Busua" id="5HWqn7opvMb" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1yeLz9" id="5HWqn7opvMc" role="1TViLv">
          <property role="TrG5h" value="testAnnotatedType#6405009306797628759" />
          <property role="3LESm3" value="f94030c2-fd0d-44b7-9e44-9abfb59c3ba5" />
          <property role="2GAjPV" value="false" />
        </node>
      </node>
      <node concept="1E1JtD" id="5HWqn7opvKI" role="2G$12L">
        <property role="TrG5h" value="testOverridingType" />
        <property role="3LESm3" value="394e3857-3256-4e8b-9601-5abe7ad354d9" />
        <property role="2GAjPV" value="false" />
        <node concept="55IIr" id="5HWqn7opvKJ" role="3LF7KH">
          <node concept="2Ry0Ak" id="5HWqn7opvKK" role="iGT6I">
            <property role="2Ry0Am" value="plugins" />
            <node concept="2Ry0Ak" id="5HWqn7opvKL" role="2Ry0An">
              <property role="2Ry0Am" value="testModules" />
              <node concept="2Ry0Ak" id="5HWqn7opvKM" role="2Ry0An">
                <property role="2Ry0Am" value="testSubstituteType" />
                <node concept="2Ry0Ak" id="5HWqn7opvKN" role="2Ry0An">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="5HWqn7opvKO" role="2Ry0An">
                    <property role="2Ry0Am" value="testOverridingType" />
                    <node concept="2Ry0Ak" id="5HWqn7opvKP" role="2Ry0An">
                      <property role="2Ry0Am" value="testOverridingType.mpl" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5HWqn7opvMs" role="3bR37C">
          <node concept="3bR9La" id="5HWqn7opvMt" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1SiIV0" id="5HWqn7opvMu" role="3bR37C">
          <node concept="3bR9La" id="5HWqn7opvMv" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" node="5HWqn7opvKA" resolve="testAnnotatedType" />
          </node>
        </node>
        <node concept="1SiIV0" id="5HWqn7opvMw" role="3bR37C">
          <node concept="1Busua" id="5HWqn7opvMx" role="1SiIV1">
            <ref role="1Busuk" node="5HWqn7opvKA" resolve="testAnnotatedType" />
          </node>
        </node>
        <node concept="1yeLz9" id="5HWqn7opvMy" role="1TViLv">
          <property role="TrG5h" value="testOverridingType#6572489169071277907" />
          <property role="3LESm3" value="12413e6d-6d1e-4071-b306-e36b5da0d263" />
          <property role="2GAjPV" value="false" />
        </node>
      </node>
      <node concept="1E1JtD" id="5HWqn7opvKQ" role="2G$12L">
        <property role="TrG5h" value="testWrappedType" />
        <property role="3LESm3" value="9290638e-635b-4ec6-bcad-945ecb88a928" />
        <property role="2GAjPV" value="false" />
        <node concept="55IIr" id="5HWqn7opvKR" role="3LF7KH">
          <node concept="2Ry0Ak" id="5HWqn7opvKS" role="iGT6I">
            <property role="2Ry0Am" value="plugins" />
            <node concept="2Ry0Ak" id="5HWqn7opvKT" role="2Ry0An">
              <property role="2Ry0Am" value="testModules" />
              <node concept="2Ry0Ak" id="5HWqn7opvKU" role="2Ry0An">
                <property role="2Ry0Am" value="testSubstituteType" />
                <node concept="2Ry0Ak" id="5HWqn7opvKV" role="2Ry0An">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="5HWqn7opvKW" role="2Ry0An">
                    <property role="2Ry0Am" value="testWrappedType" />
                    <node concept="2Ry0Ak" id="5HWqn7opvKX" role="2Ry0An">
                      <property role="2Ry0Am" value="testWrappedType.mpl" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5HWqn7opvMM" role="3bR37C">
          <node concept="1Busua" id="5HWqn7opvMN" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1yeLz9" id="5HWqn7opvMO" role="1TViLv">
          <property role="TrG5h" value="testWrappedType#1252378774017429256" />
          <property role="3LESm3" value="2f72b76c-318c-4049-ad6f-d93fccc08c25" />
          <property role="2GAjPV" value="false" />
        </node>
      </node>
      <node concept="1E1JtD" id="5HWqn7opvKY" role="2G$12L">
        <property role="TrG5h" value="testPrimitiveType" />
        <property role="3LESm3" value="8a53c705-15e4-4f87-8796-457845605512" />
        <property role="2GAjPV" value="false" />
        <node concept="55IIr" id="5HWqn7opvKZ" role="3LF7KH">
          <node concept="2Ry0Ak" id="5HWqn7opvL0" role="iGT6I">
            <property role="2Ry0Am" value="plugins" />
            <node concept="2Ry0Ak" id="5HWqn7opvL1" role="2Ry0An">
              <property role="2Ry0Am" value="testModules" />
              <node concept="2Ry0Ak" id="5HWqn7opvL2" role="2Ry0An">
                <property role="2Ry0Am" value="testSubtyping" />
                <node concept="2Ry0Ak" id="5HWqn7opvL3" role="2Ry0An">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="5HWqn7opvL4" role="2Ry0An">
                    <property role="2Ry0Am" value="testPrimitiveType" />
                    <node concept="2Ry0Ak" id="5HWqn7opvL5" role="2Ry0An">
                      <property role="2Ry0Am" value="testPrimitiveType.mpl" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5HWqn7opvN4" role="3bR37C">
          <node concept="1Busua" id="5HWqn7opvN5" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1yeLz9" id="5HWqn7opvN6" role="1TViLv">
          <property role="TrG5h" value="testPrimitiveType#706089536801030402" />
          <property role="3LESm3" value="83ede959-ca7a-4d58-b7f6-ca2b24865e4d" />
          <property role="2GAjPV" value="false" />
        </node>
      </node>
      <node concept="1E1JtD" id="5HWqn7opvL6" role="2G$12L">
        <property role="TrG5h" value="testSubtypingA" />
        <property role="3LESm3" value="36a4d1c5-6ec1-426f-8192-1875a7cc48de" />
        <property role="2GAjPV" value="false" />
        <node concept="55IIr" id="5HWqn7opvL7" role="3LF7KH">
          <node concept="2Ry0Ak" id="5HWqn7opvL8" role="iGT6I">
            <property role="2Ry0Am" value="plugins" />
            <node concept="2Ry0Ak" id="5HWqn7opvL9" role="2Ry0An">
              <property role="2Ry0Am" value="testModules" />
              <node concept="2Ry0Ak" id="5HWqn7opvLa" role="2Ry0An">
                <property role="2Ry0Am" value="testSubtyping" />
                <node concept="2Ry0Ak" id="5HWqn7opvLb" role="2Ry0An">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="5HWqn7opvLc" role="2Ry0An">
                    <property role="2Ry0Am" value="testSubtypingA" />
                    <node concept="2Ry0Ak" id="5HWqn7opvLd" role="2Ry0An">
                      <property role="2Ry0Am" value="testSubtypingA.mpl" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5HWqn7opvNm" role="3bR37C">
          <node concept="1Busua" id="5HWqn7opvNn" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1yeLz9" id="5HWqn7opvNo" role="1TViLv">
          <property role="TrG5h" value="testSubtypingA#2078093584692769750" />
          <property role="3LESm3" value="d1d044b8-08b5-4de8-8186-8bdf6ff312f7" />
          <property role="2GAjPV" value="false" />
        </node>
      </node>
      <node concept="1E1JtD" id="5HWqn7opvLe" role="2G$12L">
        <property role="TrG5h" value="testSubtypingB" />
        <property role="3LESm3" value="65611934-24fb-470c-813e-a9df6058b93a" />
        <property role="2GAjPV" value="false" />
        <node concept="55IIr" id="5HWqn7opvLf" role="3LF7KH">
          <node concept="2Ry0Ak" id="5HWqn7opvLg" role="iGT6I">
            <property role="2Ry0Am" value="plugins" />
            <node concept="2Ry0Ak" id="5HWqn7opvLh" role="2Ry0An">
              <property role="2Ry0Am" value="testModules" />
              <node concept="2Ry0Ak" id="5HWqn7opvLi" role="2Ry0An">
                <property role="2Ry0Am" value="testSubtyping" />
                <node concept="2Ry0Ak" id="5HWqn7opvLj" role="2Ry0An">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="5HWqn7opvLk" role="2Ry0An">
                    <property role="2Ry0Am" value="testSubtypingB" />
                    <node concept="2Ry0Ak" id="5HWqn7opvLl" role="2Ry0An">
                      <property role="2Ry0Am" value="testSubtypingB.mpl" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5HWqn7opvNC" role="3bR37C">
          <node concept="1Busua" id="5HWqn7opvND" role="1SiIV1">
            <ref role="1Busuk" node="5HWqn7opvL6" resolve="testSubtypingA" />
          </node>
        </node>
        <node concept="1SiIV0" id="5HWqn7opvNE" role="3bR37C">
          <node concept="1Busua" id="5HWqn7opvNF" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1yeLz9" id="5HWqn7opvNG" role="1TViLv">
          <property role="TrG5h" value="testSubtypingB#2078093584692983110" />
          <property role="3LESm3" value="3383be12-8310-46f2-b8de-eb89e44f9242" />
          <property role="2GAjPV" value="false" />
        </node>
      </node>
    </node>
    <node concept="2G$12M" id="5HWqn7opvLN" role="3989C9">
      <property role="TrG5h" value="mpsTestModules-tests" />
      <node concept="1E1JtA" id="5HWqn7opvLm" role="2G$12L">
        <property role="TrG5h" value="testSubstituteType" />
        <property role="3LESm3" value="f4227833-0d14-4ab5-8560-70880fd9d5ef" />
        <property role="aoJFB" value="sources and tests" />
        <property role="2GAjPV" value="false" />
        <node concept="55IIr" id="5HWqn7opvLn" role="3LF7KH">
          <node concept="2Ry0Ak" id="5HWqn7opvLo" role="iGT6I">
            <property role="2Ry0Am" value="plugins" />
            <node concept="2Ry0Ak" id="5HWqn7opvLp" role="2Ry0An">
              <property role="2Ry0Am" value="testModules" />
              <node concept="2Ry0Ak" id="5HWqn7opvLq" role="2Ry0An">
                <property role="2Ry0Am" value="testSubstituteType" />
                <node concept="2Ry0Ak" id="5HWqn7opvLr" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="5HWqn7opvLs" role="2Ry0An">
                    <property role="2Ry0Am" value="testSubstituteType" />
                    <node concept="2Ry0Ak" id="5HWqn7opvLt" role="2Ry0An">
                      <property role="2Ry0Am" value="testSubstituteType.msd" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="5HWqn7opvLu" role="2G$12L">
        <property role="TrG5h" value="testSubtypingTest" />
        <property role="3LESm3" value="b3170ec7-82d9-4e10-a3f0-31baa75ffc0c" />
        <property role="aoJFB" value="sources and tests" />
        <property role="2GAjPV" value="false" />
        <node concept="55IIr" id="5HWqn7opvLv" role="3LF7KH">
          <node concept="2Ry0Ak" id="5HWqn7opvLw" role="iGT6I">
            <property role="2Ry0Am" value="plugins" />
            <node concept="2Ry0Ak" id="5HWqn7opvLx" role="2Ry0An">
              <property role="2Ry0Am" value="testModules" />
              <node concept="2Ry0Ak" id="5HWqn7opvLy" role="2Ry0An">
                <property role="2Ry0Am" value="testSubtyping" />
                <node concept="2Ry0Ak" id="5HWqn7opvLz" role="2Ry0An">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="5HWqn7opvL$" role="2Ry0An">
                    <property role="2Ry0Am" value="testSubtypingTest" />
                    <node concept="2Ry0Ak" id="5HWqn7opvL_" role="2Ry0An">
                      <property role="2Ry0Am" value="testSubtypingTest.msd" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5HWqn7opvO3" role="3bR37C">
          <node concept="3bR9La" id="5HWqn7opvO4" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13uUGR" id="5HWqn7opvLO" role="1l3spa">
      <ref role="13uUGO" to="ffeo:6eCuTcwOnJO" resolve="IDEA" />
      <node concept="398BVA" id="5HWqn7opvLP" role="13uUGP">
        <ref role="398BVh" node="5HWqn7opvLT" resolve="idea_home" />
      </node>
    </node>
    <node concept="2sgV4H" id="5HWqn7opvLQ" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="5HWqn7opvLR" role="2JcizS">
        <ref role="398BVh" node="5HWqn7opvLS" resolve="mps_home" />
      </node>
    </node>
    <node concept="398rNT" id="5HWqn7opvLS" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
    </node>
    <node concept="398rNT" id="5HWqn7opvLT" role="1l3spd">
      <property role="TrG5h" value="idea_home" />
      <node concept="398BVA" id="5HWqn7opvLU" role="398pKh">
        <ref role="398BVh" node="5HWqn7opvLS" resolve="mps_home" />
      </node>
    </node>
    <node concept="10PD9b" id="5HWqn7opvLV" role="10PD9s" />
    <node concept="3b7kt6" id="5HWqn7opvLW" role="10PD9s" />
    <node concept="1gjT0q" id="5HWqn7opvLX" role="10PD9s" />
    <node concept="1l3spV" id="5HWqn7opvLY" role="1l3spN">
      <node concept="398223" id="5HWqn7opvLZ" role="39821P">
        <node concept="3_J27D" id="5HWqn7opvM0" role="Nbhlr">
          <node concept="3Mxwew" id="5HWqn7opvM1" role="3MwsjC">
            <property role="3MwjfP" value="languages" />
          </node>
        </node>
        <node concept="L2wRC" id="5HWqn7opvLA" role="39821P">
          <ref role="L2wRA" node="5HWqn7opvKA" resolve="testAnnotatedType" />
        </node>
        <node concept="L2wRC" id="5HWqn7opvLB" role="39821P">
          <ref role="L2wRA" node="5HWqn7opvKI" resolve="testOverridingType" />
        </node>
        <node concept="L2wRC" id="5HWqn7opvLC" role="39821P">
          <ref role="L2wRA" node="5HWqn7opvKQ" resolve="testWrappedType" />
        </node>
        <node concept="L2wRC" id="5HWqn7opvLD" role="39821P">
          <ref role="L2wRA" node="5HWqn7opvKY" resolve="testPrimitiveType" />
        </node>
        <node concept="L2wRC" id="5HWqn7opvLE" role="39821P">
          <ref role="L2wRA" node="5HWqn7opvL6" resolve="testSubtypingA" />
        </node>
        <node concept="L2wRC" id="5HWqn7opvLF" role="39821P">
          <ref role="L2wRA" node="5HWqn7opvLe" resolve="testSubtypingB" />
        </node>
      </node>
      <node concept="398223" id="5HWqn7opvM2" role="39821P">
        <node concept="3_J27D" id="5HWqn7opvM3" role="Nbhlr">
          <node concept="3Mxwew" id="5HWqn7opvM4" role="3MwsjC">
            <property role="3MwjfP" value="tests" />
          </node>
        </node>
        <node concept="L2wRC" id="5HWqn7opvLG" role="39821P">
          <ref role="L2wRA" node="5HWqn7opvLm" resolve="testSubstituteType" />
        </node>
        <node concept="L2wRC" id="5HWqn7opvLH" role="39821P">
          <ref role="L2wRA" node="5HWqn7opvLu" resolve="testSubtypingTest" />
        </node>
      </node>
    </node>
    <node concept="2igEWh" id="5HWqn7opvM5" role="1hWBAP">
      <property role="2igJW4" value="true" />
    </node>
    <node concept="22LTRH" id="5HWqn7opvM6" role="1hWBAP">
      <property role="TrG5h" value="mpsTestModules" />
      <node concept="22LTRF" id="5HWqn7opvLI" role="22LTRK">
        <ref role="22LTRG" node="5HWqn7opvLN" resolve="mpsTestModules-tests" />
      </node>
    </node>
    <node concept="55IIr" id="5HWqn7opvM7" role="auvoZ">
      <node concept="2Ry0Ak" id="5HWqn7opvM8" role="iGT6I">
        <property role="2Ry0Am" value="build" />
        <node concept="2Ry0Ak" id="5HWqn7opvM9" role="2Ry0An">
          <property role="2Ry0Am" value="testModules" />
        </node>
      </node>
    </node>
  </node>
</model>


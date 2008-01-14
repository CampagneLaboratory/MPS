<?xml version="1.0" encoding="UTF-8"?>
<model name="jetbrains.mps.baseLanguage.ext.dates.lang.accessories">
  <persistence version="1" />
  <language namespace="jetbrains.mps.baseLanguage.ext.dates.lang" />
  <language namespace="jetbrains.mps.baseLanguage.ext.dates.internal" />
  <language namespace="jetbrains.mps.baseLanguage" />
  <language namespace="jetbrains.springframework.configurationInternal" />
  <maxImportIndex value="5" />
  <import index="1" modelUID="org.joda.time@java_stub" version="-1" />
  <import index="2" modelUID="java.util@java_stub" version="-1" />
  <import index="3" modelUID="jetbrains.mps.baseLanguage.ext.dates.table@java_stub" version="-1" />
  <import index="4" modelUID="org.joda.time.format@java_stub" version="-1" />
  <import index="5" modelUID="jetbrains.mps.baseLanguage.ext.dates@java_stub" version="-1" />
  <node type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.FormatTokenSettings" id="1169483995724">
    <node role="dateTimePropertyFormatConfiguration" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimeIntPropertyFormatConfiguration" id="1173957241813">
      <link role="dateTimeProperty" targetNodeId="1173957203373" resolveInfo="era" />
      <node role="dateTimePropertyFormatType" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimePropertyFormatType" id="1173957241814">
        <property name="examples" value="BC, AD" />
        <property name="letter" value="G" />
        <property name="meaning" value="as abbr" />
        <link role="dateTimePropertyCardinality" targetNodeId="1173954931195" resolveInfo="short text" />
      </node>
    </node>
    <node role="dateTimePropertyFormatConfiguration" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimeIntPropertyFormatConfiguration" id="1173957246346">
      <link role="dateTimeProperty" targetNodeId="1173957123915" resolveInfo="century" />
      <node role="dateTimePropertyFormatType" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimePropertyFormatType" id="1173957246347">
        <property name="meaning" value="as number" />
        <property name="letter" value="C" />
        <property name="examples" value="5, 20" />
        <link role="dateTimePropertyCardinality" targetNodeId="1173954948729" resolveInfo="1 digit number" />
      </node>
      <node role="dateTimePropertyFormatType" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimePropertyFormatType" id="1173957606078">
        <property name="meaning" value="as 2-digit number" />
        <property name="letter" value="C" />
        <property name="examples" value="05, 20" />
        <link role="dateTimePropertyCardinality" targetNodeId="1173954964371" resolveInfo="2 digits number" />
      </node>
    </node>
    <node role="dateTimePropertyFormatConfiguration" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimeIntPropertyFormatConfiguration" id="1173955075287">
      <link role="dateTimeProperty" targetNodeId="1172074760743" resolveInfo="year" />
      <node role="dateTimePropertyFormatType" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimePropertyFormatType" id="1173955167721">
        <property name="meaning" value="of era" />
        <property name="letter" value="y" />
        <property name="examples" value="1996" />
        <link role="dateTimePropertyCardinality" targetNodeId="1173955177629" resolveInfo="4 digits number" />
      </node>
    </node>
    <node role="dateTimePropertyFormatConfiguration" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimeIntPropertyFormatConfiguration" id="1173958166476">
      <link role="dateTimeProperty" targetNodeId="1173957959032" resolveInfo="yearOfCentury" />
      <node role="dateTimePropertyFormatType" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimePropertyFormatType" id="1173958176385">
        <property name="meaning" value="of century" />
        <property name="letter" value="y" />
        <property name="examples" value="96" />
        <link role="dateTimePropertyCardinality" targetNodeId="1173954964371" resolveInfo="2 digits number" />
      </node>
    </node>
    <node role="dateTimePropertyFormatConfiguration" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimeIntPropertyFormatConfiguration" id="1173955635836">
      <link role="dateTimeProperty" targetNodeId="1172074751786" resolveInfo="month" />
      <node role="dateTimePropertyFormatType" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimePropertyFormatType" id="1173955657885">
        <property name="meaning" value="as 2-digit number" />
        <property name="letter" value="M" />
        <property name="examples" value="07, 11" />
        <link role="dateTimePropertyCardinality" targetNodeId="1173954964371" resolveInfo="2 digits number" />
      </node>
      <node role="dateTimePropertyFormatType" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimePropertyFormatType" id="1173955635837">
        <property name="meaning" value="as number" />
        <property name="letter" value="M" />
        <property name="examples" value="7, 11" />
        <link role="dateTimePropertyCardinality" targetNodeId="1173954948729" resolveInfo="1 digit number" />
      </node>
      <node role="dateTimePropertyFormatType" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimePropertyFormatType" id="1173955661152">
        <property name="meaning" value="as abbr" />
        <property name="letter" value="M" />
        <property name="examples" value="Jul, Nov" />
        <link role="dateTimePropertyCardinality" targetNodeId="1173954931195" resolveInfo="short text" />
      </node>
      <node role="dateTimePropertyFormatType" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimePropertyFormatType" id="1173955664763">
        <property name="meaning" value="as text" />
        <property name="letter" value="M" />
        <property name="examples" value="July, November" />
        <link role="dateTimePropertyCardinality" targetNodeId="1173954941353" resolveInfo="full text" />
      </node>
    </node>
    <node role="dateTimePropertyFormatConfiguration" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimeIntPropertyFormatConfiguration" id="1173955220617">
      <link role="dateTimeProperty" targetNodeId="1172162485440" resolveInfo="week" />
      <node role="dateTimePropertyFormatType" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimePropertyFormatType" id="1173955220618">
        <property name="examples" value="7, 27" />
        <property name="letter" value="x" />
        <property name="meaning" value="as number" />
        <link role="dateTimePropertyCardinality" targetNodeId="1173954948729" resolveInfo="1 digit number" />
      </node>
      <node role="dateTimePropertyFormatType" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimePropertyFormatType" id="1173955241870">
        <property name="examples" value="07, 27" />
        <property name="letter" value="x" />
        <property name="meaning" value="as 2-digit number" />
        <link role="dateTimePropertyCardinality" targetNodeId="1173954964371" resolveInfo="2 digits number" />
      </node>
    </node>
    <node role="dateTimePropertyFormatConfiguration" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimeIntPropertyFormatConfiguration" id="1173955483575">
      <link role="dateTimeProperty" targetNodeId="1172332326016" resolveInfo="dayOfYear" />
      <node role="dateTimePropertyFormatType" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimePropertyFormatType" id="1173955483576">
        <property name="meaning" value="as number" />
        <property name="letter" value="D" />
        <property name="examples" value="1, 17, 179" />
        <link role="dateTimePropertyCardinality" targetNodeId="1173954948729" resolveInfo="1 digit number" />
      </node>
      <node role="dateTimePropertyFormatType" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimePropertyFormatType" id="1173955525766">
        <property name="meaning" value="as 2-digit number" />
        <property name="letter" value="D" />
        <property name="examples" value="01, 17, 179" />
        <link role="dateTimePropertyCardinality" targetNodeId="1173954964371" resolveInfo="2 digits number" />
      </node>
      <node role="dateTimePropertyFormatType" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimePropertyFormatType" id="1173955563331">
        <property name="meaning" value="as 3-digit number" />
        <property name="letter" value="D" />
        <property name="examples" value="001, 017, 179" />
        <link role="dateTimePropertyCardinality" targetNodeId="1173954972904" resolveInfo="3 digits number" />
      </node>
    </node>
    <node role="dateTimePropertyFormatConfiguration" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimeIntPropertyFormatConfiguration" id="1173955777519">
      <link role="dateTimeProperty" targetNodeId="1172074737375" resolveInfo="day" />
      <node role="dateTimePropertyFormatType" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimePropertyFormatType" id="1173955798256">
        <property name="meaning" value="as 2-digit number" />
        <property name="letter" value="d" />
        <property name="examples" value="01, 31" />
        <link role="dateTimePropertyCardinality" targetNodeId="1173954964371" resolveInfo="2 digits number" />
      </node>
      <node role="dateTimePropertyFormatType" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimePropertyFormatType" id="1173955777520">
        <property name="meaning" value="as number" />
        <property name="letter" value="d" />
        <property name="examples" value="1, 31" />
        <link role="dateTimePropertyCardinality" targetNodeId="1173954948729" resolveInfo="1 digit number" />
      </node>
    </node>
    <node role="dateTimePropertyFormatConfiguration" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimeIntPropertyFormatConfiguration" id="1173955366736">
      <link role="dateTimeProperty" targetNodeId="1172332318159" resolveInfo="dayOfWeek" />
      <node role="dateTimePropertyFormatType" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimePropertyFormatType" id="1173955388739">
        <property name="meaning" value="as abbr" />
        <property name="letter" value="E" />
        <property name="examples" value="Mon, Tue, etc." />
        <link role="dateTimePropertyCardinality" targetNodeId="1173954931195" resolveInfo="short text" />
      </node>
      <node role="dateTimePropertyFormatType" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimePropertyFormatType" id="1173955428462">
        <property name="meaning" value="as text" />
        <property name="letter" value="E" />
        <property name="examples" value="Monday, Tuesday, etc." />
        <link role="dateTimePropertyCardinality" targetNodeId="1173954941353" resolveInfo="full text" />
      </node>
      <node role="dateTimePropertyFormatType" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimePropertyFormatType" id="1173955366737">
        <property name="meaning" value="as number" />
        <property name="letter" value="e" />
        <property name="examples" value="1" />
        <link role="dateTimePropertyCardinality" targetNodeId="1173954948729" resolveInfo="1 digit number" />
      </node>
    </node>
    <node role="dateTimePropertyFormatConfiguration" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimeIntPropertyFormatConfiguration" id="1173955922497">
      <link role="dateTimeProperty" targetNodeId="1172074620250" resolveInfo="hour" />
      <node role="dateTimePropertyFormatType" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimePropertyFormatType" id="1173955922498">
        <property name="meaning" value="00~23" />
        <property name="letter" value="H" />
        <property name="examples" value="00, 23" />
        <link role="dateTimePropertyCardinality" targetNodeId="1173954964371" resolveInfo="2 digits number" />
      </node>
      <node role="dateTimePropertyFormatType" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimePropertyFormatType" id="1173956119633">
        <property name="meaning" value="0~23" />
        <property name="letter" value="H" />
        <property name="examples" value="0, 23" />
        <link role="dateTimePropertyCardinality" targetNodeId="1173954948729" resolveInfo="1 digit number" />
      </node>
    </node>
    <node role="dateTimePropertyFormatConfiguration" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimeIntPropertyFormatConfiguration" id="1173956157510">
      <link role="dateTimeProperty" targetNodeId="1173955983718" resolveInfo="clockhour" />
      <node role="dateTimePropertyFormatType" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimePropertyFormatType" id="1173956157511">
        <property name="meaning" value="1~24" />
        <property name="letter" value="k" />
        <property name="examples" value="1, 24" />
        <link role="dateTimePropertyCardinality" targetNodeId="1173954948729" resolveInfo="1 digit number" />
      </node>
      <node role="dateTimePropertyFormatType" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimePropertyFormatType" id="1173956189139">
        <property name="meaning" value="01~24" />
        <property name="letter" value="k" />
        <property name="examples" value="01, 24" />
        <link role="dateTimePropertyCardinality" targetNodeId="1173954964371" resolveInfo="2 digits number" />
      </node>
    </node>
    <node role="dateTimePropertyFormatConfiguration" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimeIntPropertyFormatConfiguration" id="1173956224970">
      <link role="dateTimeProperty" targetNodeId="1173955957891" resolveInfo="hourOfHalfday" />
      <node role="dateTimePropertyFormatType" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimePropertyFormatType" id="1173956224971">
        <property name="meaning" value="00~11" />
        <property name="letter" value="K" />
        <property name="examples" value="00, 11" />
        <link role="dateTimePropertyCardinality" targetNodeId="1173954964371" resolveInfo="2 digits number" />
      </node>
      <node role="dateTimePropertyFormatType" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimePropertyFormatType" id="1173956263301">
        <property name="meaning" value="0~11" />
        <property name="letter" value="K" />
        <property name="examples" value="0, 11" />
        <link role="dateTimePropertyCardinality" targetNodeId="1173954948729" resolveInfo="1 digit number" />
      </node>
    </node>
    <node role="dateTimePropertyFormatConfiguration" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimeIntPropertyFormatConfiguration" id="1173956289951">
      <link role="dateTimeProperty" targetNodeId="1173955990079" resolveInfo="clockhourOfHalfday" />
      <node role="dateTimePropertyFormatType" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimePropertyFormatType" id="1173956289953">
        <property name="meaning" value="1~12" />
        <property name="letter" value="h" />
        <property name="examples" value="1, 12" />
        <link role="dateTimePropertyCardinality" targetNodeId="1173954948729" resolveInfo="1 digit number" />
      </node>
      <node role="dateTimePropertyFormatType" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimePropertyFormatType" id="1173956289952">
        <property name="meaning" value="01~12" />
        <property name="letter" value="h" />
        <property name="examples" value="01, 12" />
        <link role="dateTimePropertyCardinality" targetNodeId="1173954964371" resolveInfo="2 digits number" />
      </node>
    </node>
    <node role="dateTimePropertyFormatConfiguration" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimeIntPropertyFormatConfiguration" id="1173956355145">
      <link role="dateTimeProperty" targetNodeId="1172074618358" resolveInfo="minute" />
      <node role="dateTimePropertyFormatType" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimePropertyFormatType" id="1173956355146">
        <property name="meaning" value="00~59" />
        <property name="letter" value="m" />
        <property name="examples" value="00, 59" />
        <link role="dateTimePropertyCardinality" targetNodeId="1173954964371" resolveInfo="2 digits number" />
      </node>
      <node role="dateTimePropertyFormatType" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimePropertyFormatType" id="1173956406774">
        <property name="meaning" value="0~59" />
        <property name="letter" value="m" />
        <property name="examples" value="0, 59" />
        <link role="dateTimePropertyCardinality" targetNodeId="1173954948729" resolveInfo="1 digit number" />
      </node>
    </node>
    <node role="dateTimePropertyFormatConfiguration" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimeIntPropertyFormatConfiguration" id="1173956423307">
      <link role="dateTimeProperty" targetNodeId="1172074612199" resolveInfo="second" />
      <node role="dateTimePropertyFormatType" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimePropertyFormatType" id="1173956423308">
        <property name="meaning" value="00~59" />
        <property name="letter" value="s" />
        <property name="examples" value="00, 59" />
        <link role="dateTimePropertyCardinality" targetNodeId="1173954964371" resolveInfo="2 digits number" />
      </node>
      <node role="dateTimePropertyFormatType" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimePropertyFormatType" id="1173956447373">
        <property name="meaning" value="0~59" />
        <property name="letter" value="s" />
        <property name="examples" value="0, 59" />
        <link role="dateTimePropertyCardinality" targetNodeId="1173954948729" resolveInfo="1 digit number" />
      </node>
    </node>
    <node role="dateTimePropertyFormatConfiguration" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimeIntPropertyFormatConfiguration" id="1173956481647">
      <link role="dateTimeProperty" targetNodeId="1172074929011" resolveInfo="millis" />
      <node role="dateTimePropertyFormatType" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimePropertyFormatType" id="1173956494103">
        <property name="meaning" value="000~999" />
        <property name="letter" value="S" />
        <property name="examples" value="005, 035, 735" />
        <link role="dateTimePropertyCardinality" targetNodeId="1173954972904" resolveInfo="3 digits number" />
      </node>
      <node role="dateTimePropertyFormatType" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimePropertyFormatType" id="1173956481648">
        <property name="meaning" value="00~999" />
        <property name="letter" value="S" />
        <property name="examples" value="05, 35, 735" />
        <link role="dateTimePropertyCardinality" targetNodeId="1173954964371" resolveInfo="2 digits number" />
      </node>
      <node role="dateTimePropertyFormatType" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimePropertyFormatType" id="1173956481649">
        <property name="meaning" value="0~999" />
        <property name="letter" value="S" />
        <property name="examples" value="5, 35, 735" />
        <link role="dateTimePropertyCardinality" targetNodeId="1173954948729" resolveInfo="1 digit number" />
      </node>
    </node>
    <node role="dateTimePropertyFormatConfiguration" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimeZonePropertyFormatConfiguration" id="1174043562058">
      <node role="dateTimePropertyFormatType" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimePropertyFormatType" id="1174043562059">
        <property name="examples" value="PST" />
        <property name="letter" value="z" />
        <property name="meaning" value="as abbr" />
        <link role="dateTimePropertyCardinality" targetNodeId="1173954931195" resolveInfo="short text" />
      </node>
      <node role="dateTimePropertyFormatType" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimePropertyFormatType" id="1174043607498">
        <property name="examples" value="Pacific Standard Time" />
        <property name="letter" value="z" />
        <property name="meaning" value="as text" />
        <link role="dateTimePropertyCardinality" targetNodeId="1173954941353" resolveInfo="full text" />
      </node>
      <node role="dateTimePropertyFormatType" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimePropertyFormatType" id="1174043624421">
        <property name="examples" value="-0800" />
        <property name="letter" value="Z" />
        <property name="meaning" value="as offset without colon" />
        <link role="dateTimePropertyCardinality" targetNodeId="1173954999766" resolveInfo="zone offset without a colon" />
      </node>
      <node role="dateTimePropertyFormatType" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimePropertyFormatType" id="1174043695375">
        <property name="examples" value="-08:00" />
        <property name="letter" value="Z" />
        <property name="meaning" value="as offset with colon" />
        <link role="dateTimePropertyCardinality" targetNodeId="1173955029690" resolveInfo="zone offset with a colon" />
      </node>
      <node role="dateTimePropertyFormatType" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimePropertyFormatType" id="1174043734470">
        <property name="examples" value="America/Los_Angeles" />
        <property name="letter" value="Z" />
        <property name="meaning" value="as id" />
        <link role="dateTimePropertyCardinality" targetNodeId="1173955043707" resolveInfo="zone id" />
      </node>
    </node>
    <node role="dateTimePropertyCardinality" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimePropertyCardinality" id="1173954931195">
      <property name="meaning" value="short text" />
      <property name="numberOfSymbols" value="3" />
    </node>
    <node role="dateTimePropertyCardinality" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimePropertyCardinality" id="1173954941353">
      <property name="meaning" value="full text" />
      <property name="numberOfSymbols" value="4" />
    </node>
    <node role="dateTimePropertyCardinality" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimePropertyCardinality" id="1173954948729">
      <property name="meaning" value="1 digit number" />
      <property name="numberOfSymbols" value="1" />
    </node>
    <node role="dateTimePropertyCardinality" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimePropertyCardinality" id="1173954964371">
      <property name="meaning" value="2 digits number" />
      <property name="numberOfSymbols" value="2" />
    </node>
    <node role="dateTimePropertyCardinality" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimePropertyCardinality" id="1173954972904">
      <property name="meaning" value="3 digits number" />
      <property name="numberOfSymbols" value="3" />
    </node>
    <node role="dateTimePropertyCardinality" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimePropertyCardinality" id="1173955177629">
      <property name="meaning" value="4 digits number" />
      <property name="numberOfSymbols" value="4" />
    </node>
    <node role="dateTimePropertyCardinality" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimePropertyCardinality" id="1173954999766">
      <property name="meaning" value="zone offset without a colon" />
      <property name="numberOfSymbols" value="1" />
    </node>
    <node role="dateTimePropertyCardinality" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimePropertyCardinality" id="1173955029690">
      <property name="meaning" value="zone offset with a colon" />
      <property name="numberOfSymbols" value="2" />
    </node>
    <node role="dateTimePropertyCardinality" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimePropertyCardinality" id="1173955043707">
      <property name="meaning" value="zone id" />
      <property name="numberOfSymbols" value="3" />
    </node>
    <node role="predefinedDateFormat" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.PredefinedDateFormat" id="1173884238614">
      <node role="formatter" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1173884238615">
        <link role="classConcept" targetNodeId="4.~DateTimeFormat" resolveInfo="DateTimeFormat" />
        <link role="baseMethodDeclaration" targetNodeId="4.~DateTimeFormat.shortDate():org.joda.time.format.DateTimeFormatter" resolveInfo="shortDate" />
      </node>
    </node>
    <node role="predefinedDateFormat" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.PredefinedDateFormat" id="1173884312409">
      <node role="formatter" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1173884312410">
        <link role="classConcept" targetNodeId="4.~DateTimeFormat" resolveInfo="DateTimeFormat" />
        <link role="baseMethodDeclaration" targetNodeId="4.~DateTimeFormat.shortDateTime():org.joda.time.format.DateTimeFormatter" resolveInfo="shortDateTime" />
      </node>
    </node>
    <node role="predefinedDateFormat" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.PredefinedDateFormat" id="1173884323756">
      <node role="formatter" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1173884323757">
        <link role="classConcept" targetNodeId="4.~DateTimeFormat" resolveInfo="DateTimeFormat" />
        <link role="baseMethodDeclaration" targetNodeId="4.~DateTimeFormat.shortTime():org.joda.time.format.DateTimeFormatter" resolveInfo="shortTime" />
      </node>
    </node>
    <node role="predefinedDateFormat" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.PredefinedDateFormat" id="1173884338039">
      <node role="formatter" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1173884338040">
        <link role="classConcept" targetNodeId="4.~DateTimeFormat" resolveInfo="DateTimeFormat" />
        <link role="baseMethodDeclaration" targetNodeId="4.~DateTimeFormat.mediumDate():org.joda.time.format.DateTimeFormatter" resolveInfo="mediumDate" />
      </node>
    </node>
    <node role="predefinedDateFormat" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.PredefinedDateFormat" id="1173884353503">
      <node role="formatter" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1173884353504">
        <link role="classConcept" targetNodeId="4.~DateTimeFormat" resolveInfo="DateTimeFormat" />
        <link role="baseMethodDeclaration" targetNodeId="4.~DateTimeFormat.mediumDateTime():org.joda.time.format.DateTimeFormatter" resolveInfo="mediumDateTime" />
      </node>
    </node>
    <node role="predefinedDateFormat" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.PredefinedDateFormat" id="1173884354230">
      <node role="formatter" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1173884354231">
        <link role="classConcept" targetNodeId="4.~DateTimeFormat" resolveInfo="DateTimeFormat" />
        <link role="baseMethodDeclaration" targetNodeId="4.~DateTimeFormat.mediumTime():org.joda.time.format.DateTimeFormatter" resolveInfo="mediumTime" />
      </node>
    </node>
    <node role="predefinedDateFormat" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.PredefinedDateFormat" id="1173884354722">
      <node role="formatter" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1173884354723">
        <link role="classConcept" targetNodeId="4.~DateTimeFormat" resolveInfo="DateTimeFormat" />
        <link role="baseMethodDeclaration" targetNodeId="4.~DateTimeFormat.fullDate():org.joda.time.format.DateTimeFormatter" resolveInfo="fullDate" />
      </node>
    </node>
    <node role="predefinedDateFormat" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.PredefinedDateFormat" id="1173884355215">
      <node role="formatter" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1173884355216">
        <link role="classConcept" targetNodeId="4.~DateTimeFormat" resolveInfo="DateTimeFormat" />
        <link role="baseMethodDeclaration" targetNodeId="4.~DateTimeFormat.fullDateTime():org.joda.time.format.DateTimeFormatter" resolveInfo="fullDateTime" />
      </node>
    </node>
    <node role="predefinedDateFormat" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.PredefinedDateFormat" id="1173884489979">
      <node role="formatter" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1173884489980">
        <link role="classConcept" targetNodeId="4.~DateTimeFormat" resolveInfo="DateTimeFormat" />
        <link role="baseMethodDeclaration" targetNodeId="4.~DateTimeFormat.fullTime():org.joda.time.format.DateTimeFormatter" resolveInfo="fullTime" />
      </node>
    </node>
    <node role="predefinedDateFormat" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.PredefinedDateFormat" id="1173884490706">
      <node role="formatter" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1173884490707">
        <link role="classConcept" targetNodeId="4.~DateTimeFormat" resolveInfo="DateTimeFormat" />
        <link role="baseMethodDeclaration" targetNodeId="4.~DateTimeFormat.longDate():org.joda.time.format.DateTimeFormatter" resolveInfo="longDate" />
      </node>
    </node>
    <node role="predefinedDateFormat" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.PredefinedDateFormat" id="1173884491425">
      <node role="formatter" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1173884491426">
        <link role="classConcept" targetNodeId="4.~DateTimeFormat" resolveInfo="DateTimeFormat" />
        <link role="baseMethodDeclaration" targetNodeId="4.~DateTimeFormat.longDateTime():org.joda.time.format.DateTimeFormatter" resolveInfo="longDateTime" />
      </node>
    </node>
    <node role="predefinedDateFormat" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.PredefinedDateFormat" id="1173884491182">
      <node role="formatter" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1173884491183">
        <link role="classConcept" targetNodeId="4.~DateTimeFormat" resolveInfo="DateTimeFormat" />
        <link role="baseMethodDeclaration" targetNodeId="4.~DateTimeFormat.longTime():org.joda.time.format.DateTimeFormatter" resolveInfo="longTime" />
      </node>
    </node>
    <node role="predefinedDateFormat" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.PredefinedDateFormat" id="1174102040370">
      <node role="formatter" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1174102040371">
        <link role="classConcept" targetNodeId="5.~PredefinedFormats" resolveInfo="PredefinedFormats" />
        <link role="baseMethodDeclaration" targetNodeId="5.~PredefinedFormats.rssDate():org.joda.time.format.DateTimeFormatter" resolveInfo="rssDate" />
      </node>
    </node>
    <node role="predefinedDateFormat" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.PredefinedDateFormat" id="1177068304373">
      <node role="formatter" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1177068304374">
        <link role="classConcept" targetNodeId="5.~PredefinedFormats" resolveInfo="PredefinedFormats" />
        <link role="baseMethodDeclaration" targetNodeId="5.~PredefinedFormats.defaultFormat():org.joda.time.format.DateTimeFormatter" resolveInfo="defaultFormat" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimePropertySettings" id="1172074610338">
    <node role="schedulePeriod" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.SchedulePeriod" id="1194007170385">
      <property name="name" value="every minute" />
    </node>
    <node role="schedulePeriod" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.SchedulePeriod" id="1194007337295">
      <property name="name" value="hourly" />
      <property name="minute" value="true" />
      <property name="second" value="true" />
    </node>
    <node role="schedulePeriod" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.SchedulePeriod" id="1194007349104">
      <property name="name" value="daily" />
      <property name="minute" value="true" />
      <property name="second" value="true" />
      <property name="hour" value="true" />
    </node>
    <node role="schedulePeriod" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.SchedulePeriod" id="1194007431923">
      <property name="name" value="weekly" />
      <property name="minute" value="true" />
      <property name="second" value="true" />
      <property name="hour" value="true" />
      <property name="dayOfWeek" value="true" />
    </node>
    <node role="schedulePeriod" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.SchedulePeriod" id="1194007453211">
      <property name="name" value="monthly" />
      <property name="second" value="true" />
      <property name="minute" value="true" />
      <property name="hour" value="true" />
      <property name="dayOfMonth" value="true" />
    </node>
    <node role="schedulePeriod" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.SchedulePeriod" id="1194007480540">
      <property name="name" value="yearly" />
      <property name="second" value="true" />
      <property name="minute" value="true" />
      <property name="hour" value="true" />
      <property name="dayOfMonth" value="true" />
      <property name="month" value="true" />
    </node>
    <node role="month" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.Month" id="1194006123738">
      <property name="name" value="January" />
      <property name="days" value="31" />
      <property name="shortName" value="JAN" />
    </node>
    <node role="month" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.Month" id="1194006152676">
      <property name="name" value="February" />
      <property name="days" value="29" />
      <property name="shortName" value="FEB" />
    </node>
    <node role="month" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.Month" id="1194006159484">
      <property name="name" value="March" />
      <property name="days" value="31" />
      <property name="shortName" value="MAR" />
    </node>
    <node role="month" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.Month" id="1194006186107">
      <property name="name" value="April" />
      <property name="days" value="30" />
      <property name="shortName" value="APR" />
    </node>
    <node role="month" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.Month" id="1194006191796">
      <property name="name" value="May" />
      <property name="days" value="31" />
      <property name="shortName" value="MAY" />
    </node>
    <node role="month" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.Month" id="1194006197551">
      <property name="name" value="June" />
      <property name="days" value="30" />
      <property name="shortName" value="JUN" />
    </node>
    <node role="month" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.Month" id="1194006201142">
      <property name="name" value="July" />
      <property name="days" value="31" />
      <property name="shortName" value="JUL" />
    </node>
    <node role="month" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.Month" id="1194006205361">
      <property name="name" value="August" />
      <property name="days" value="31" />
      <property name="shortName" value="AUG" />
    </node>
    <node role="month" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.Month" id="1194006210984">
      <property name="name" value="September" />
      <property name="days" value="30" />
      <property name="shortName" value="SEP" />
    </node>
    <node role="month" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.Month" id="1194006227657">
      <property name="name" value="October" />
      <property name="days" value="31" />
      <property name="shortName" value="OCT" />
    </node>
    <node role="month" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.Month" id="1194006244243">
      <property name="name" value="November" />
      <property name="days" value="30" />
      <property name="shortName" value="NOV" />
    </node>
    <node role="month" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.Month" id="1194006274157">
      <property name="name" value="December" />
      <property name="days" value="31" />
      <property name="shortName" value="DEC" />
    </node>
    <node role="durationType" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DurationType" id="1174321453450">
      <node role="jodaDurationFieldType" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1174321453451">
        <link role="classConcept" targetNodeId="1.~DurationFieldType" resolveInfo="DurationFieldType" />
        <link role="baseMethodDeclaration" targetNodeId="1.~DurationFieldType.millis():org.joda.time.DurationFieldType" resolveInfo="millis" />
      </node>
    </node>
    <node role="durationType" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DurationType" id="1174321465494">
      <node role="jodaDurationFieldType" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1174321465495">
        <link role="classConcept" targetNodeId="1.~DurationFieldType" resolveInfo="DurationFieldType" />
        <link role="baseMethodDeclaration" targetNodeId="1.~DurationFieldType.seconds():org.joda.time.DurationFieldType" resolveInfo="seconds" />
      </node>
    </node>
    <node role="durationType" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DurationType" id="1174321471793">
      <node role="jodaDurationFieldType" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1174321471794">
        <link role="classConcept" targetNodeId="1.~DurationFieldType" resolveInfo="DurationFieldType" />
        <link role="baseMethodDeclaration" targetNodeId="1.~DurationFieldType.minutes():org.joda.time.DurationFieldType" resolveInfo="minutes" />
      </node>
    </node>
    <node role="durationType" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DurationType" id="1174321480910">
      <node role="jodaDurationFieldType" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1174321480911">
        <link role="classConcept" targetNodeId="1.~DurationFieldType" resolveInfo="DurationFieldType" />
        <link role="baseMethodDeclaration" targetNodeId="1.~DurationFieldType.hours():org.joda.time.DurationFieldType" resolveInfo="hours" />
      </node>
    </node>
    <node role="durationType" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DurationType" id="1174321481621">
      <node role="jodaDurationFieldType" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1174321481622">
        <link role="classConcept" targetNodeId="1.~DurationFieldType" resolveInfo="DurationFieldType" />
        <link role="baseMethodDeclaration" targetNodeId="1.~DurationFieldType.halfdays():org.joda.time.DurationFieldType" resolveInfo="halfdays" />
      </node>
    </node>
    <node role="durationType" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DurationType" id="1174321481848">
      <node role="jodaDurationFieldType" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1174321481849">
        <link role="classConcept" targetNodeId="1.~DurationFieldType" resolveInfo="DurationFieldType" />
        <link role="baseMethodDeclaration" targetNodeId="1.~DurationFieldType.days():org.joda.time.DurationFieldType" resolveInfo="days" />
      </node>
    </node>
    <node role="durationType" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DurationType" id="1174321482653">
      <node role="jodaDurationFieldType" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1174321482654">
        <link role="classConcept" targetNodeId="1.~DurationFieldType" resolveInfo="DurationFieldType" />
        <link role="baseMethodDeclaration" targetNodeId="1.~DurationFieldType.weeks():org.joda.time.DurationFieldType" resolveInfo="weeks" />
      </node>
    </node>
    <node role="durationType" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DurationType" id="1174321482973">
      <node role="jodaDurationFieldType" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1174321482974">
        <link role="classConcept" targetNodeId="1.~DurationFieldType" resolveInfo="DurationFieldType" />
        <link role="baseMethodDeclaration" targetNodeId="1.~DurationFieldType.months():org.joda.time.DurationFieldType" resolveInfo="months" />
      </node>
    </node>
    <node role="durationType" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DurationType" id="1174321483216">
      <node role="jodaDurationFieldType" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1174321483217">
        <link role="classConcept" targetNodeId="1.~DurationFieldType" resolveInfo="DurationFieldType" />
        <link role="baseMethodDeclaration" targetNodeId="1.~DurationFieldType.years():org.joda.time.DurationFieldType" resolveInfo="years" />
      </node>
    </node>
    <node role="durationType" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DurationType" id="1174321483411">
      <node role="jodaDurationFieldType" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1174321483412">
        <link role="classConcept" targetNodeId="1.~DurationFieldType" resolveInfo="DurationFieldType" />
        <link role="baseMethodDeclaration" targetNodeId="1.~DurationFieldType.centuries():org.joda.time.DurationFieldType" resolveInfo="centuries" />
      </node>
    </node>
    <node role="durationType" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DurationType" id="1174321483591">
      <node role="jodaDurationFieldType" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1174321483592">
        <link role="classConcept" targetNodeId="1.~DurationFieldType" resolveInfo="DurationFieldType" />
        <link role="baseMethodDeclaration" targetNodeId="1.~DurationFieldType.eras():org.joda.time.DurationFieldType" resolveInfo="eras" />
      </node>
    </node>
    <node role="locale" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.Locale" id="1172681308861">
      <property name="name" value="ENGLISH" />
      <property name="country" value="en" />
      <node role="javaLocale" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference" id="1172681673803">
        <link role="classifier" targetNodeId="2.~Locale" resolveInfo="Locale" />
        <link role="variableDeclaration" targetNodeId="2.~Locale.ENGLISH" resolveInfo="ENGLISH" />
      </node>
    </node>
    <node role="locale" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.Locale" id="1172681346440">
      <property name="name" value="FRENCH" />
      <node role="javaLocale" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference" id="1172681679979">
        <link role="classifier" targetNodeId="2.~Locale" resolveInfo="Locale" />
        <link role="variableDeclaration" targetNodeId="2.~Locale.FRENCH" resolveInfo="FRENCH" />
      </node>
    </node>
    <node role="locale" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.Locale" id="1172681353262">
      <property name="name" value="GERMAN" />
      <node role="javaLocale" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference" id="1172681686404">
        <link role="classifier" targetNodeId="2.~Locale" resolveInfo="Locale" />
        <link role="variableDeclaration" targetNodeId="2.~Locale.GERMAN" resolveInfo="GERMAN" />
      </node>
    </node>
    <node role="locale" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.Locale" id="1172681356611">
      <property name="name" value="ITALIAN" />
      <node role="javaLocale" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference" id="1172681691836">
        <link role="classifier" targetNodeId="2.~Locale" resolveInfo="Locale" />
        <link role="variableDeclaration" targetNodeId="2.~Locale.ITALIAN" resolveInfo="ITALIAN" />
      </node>
    </node>
    <node role="locale" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.Locale" id="1172681500391">
      <property name="name" value="RUSSIAN" />
      <node role="javaLocale" type="jetbrains.mps.baseLanguage.structure.NewExpression" id="1172681751386">
        <link role="baseMethodDeclaration" targetNodeId="2.~Locale.&lt;init&gt;(java.lang.String,java.lang.String,java.lang.String)" resolveInfo="Locale" />
        <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1172681769380">
          <property name="value" value="ru" />
        </node>
        <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1172681773251" />
        <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1172681775640" />
      </node>
    </node>
    <node role="locale" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.Locale" id="1172681359631">
      <property name="name" value="JAPANESE" />
      <node role="javaLocale" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference" id="1172681696477">
        <link role="classifier" targetNodeId="2.~Locale" resolveInfo="Locale" />
        <link role="variableDeclaration" targetNodeId="2.~Locale.JAPANESE" resolveInfo="JAPANESE" />
      </node>
    </node>
    <node role="locale" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.Locale" id="1172681362980">
      <property name="name" value="KOREAN" />
      <node role="javaLocale" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference" id="1172681702933">
        <link role="classifier" targetNodeId="2.~Locale" resolveInfo="Locale" />
        <link role="variableDeclaration" targetNodeId="2.~Locale.KOREAN" resolveInfo="KOREAN" />
      </node>
    </node>
    <node role="locale" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.Locale" id="1172681366548">
      <property name="name" value="CHINESE" />
      <node role="javaLocale" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference" id="1172681709172">
        <link role="classifier" targetNodeId="2.~Locale" resolveInfo="Locale" />
        <link role="variableDeclaration" targetNodeId="2.~Locale.CHINESE" resolveInfo="CHINESE" />
      </node>
    </node>
    <node role="locale" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.Locale" id="1172681369537">
      <property name="name" value="SIMPLIFIED_CHINESE" />
      <node role="javaLocale" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference" id="1172681784298">
        <link role="classifier" targetNodeId="2.~Locale" resolveInfo="Locale" />
        <link role="variableDeclaration" targetNodeId="2.~Locale.SIMPLIFIED_CHINESE" resolveInfo="SIMPLIFIED_CHINESE" />
      </node>
    </node>
    <node role="locale" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.Locale" id="1172681372682">
      <property name="name" value="TRADITIONAL_CHINESE" />
      <node role="javaLocale" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference" id="1172681792332">
        <link role="classifier" targetNodeId="2.~Locale" resolveInfo="Locale" />
        <link role="variableDeclaration" targetNodeId="2.~Locale.TRADITIONAL_CHINESE" resolveInfo="TRADITIONAL_CHINESE" />
      </node>
    </node>
    <node role="locale" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.Locale" id="1172681375640">
      <property name="name" value="FRANCE" />
      <node role="javaLocale" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference" id="1172681798697">
        <link role="classifier" targetNodeId="2.~Locale" resolveInfo="Locale" />
        <link role="variableDeclaration" targetNodeId="2.~Locale.FRANCE" resolveInfo="FRANCE" />
      </node>
    </node>
    <node role="locale" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.Locale" id="1172681381086">
      <property name="name" value="GERMANY" />
      <node role="javaLocale" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference" id="1172681805078">
        <link role="classifier" targetNodeId="2.~Locale" resolveInfo="Locale" />
        <link role="variableDeclaration" targetNodeId="2.~Locale.GERMANY" resolveInfo="GERMANY" />
      </node>
    </node>
    <node role="locale" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.Locale" id="1172681384294">
      <property name="name" value="ITALY" />
      <node role="javaLocale" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference" id="1172681817496">
        <link role="classifier" targetNodeId="2.~Locale" resolveInfo="Locale" />
        <link role="variableDeclaration" targetNodeId="2.~Locale.ITALY" resolveInfo="ITALY" />
      </node>
    </node>
    <node role="locale" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.Locale" id="1172681388190">
      <property name="name" value="JAPAN" />
      <node role="javaLocale" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference" id="1172681824001">
        <link role="classifier" targetNodeId="2.~Locale" resolveInfo="Locale" />
        <link role="variableDeclaration" targetNodeId="2.~Locale.JAPAN" resolveInfo="JAPAN" />
      </node>
    </node>
    <node role="locale" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.Locale" id="1172681391383">
      <property name="name" value="KOREA" />
      <node role="javaLocale" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference" id="1172681829883">
        <link role="classifier" targetNodeId="2.~Locale" resolveInfo="Locale" />
        <link role="variableDeclaration" targetNodeId="2.~Locale.KOREA" resolveInfo="KOREA" />
      </node>
    </node>
    <node role="locale" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.Locale" id="1172681395248">
      <property name="name" value="CHINA" />
      <node role="javaLocale" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference" id="1172681835733">
        <link role="classifier" targetNodeId="2.~Locale" resolveInfo="Locale" />
        <link role="variableDeclaration" targetNodeId="2.~Locale.CHINA" resolveInfo="CHINA" />
      </node>
    </node>
    <node role="locale" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.Locale" id="1172681398738">
      <property name="name" value="PRC" />
      <node role="javaLocale" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference" id="1172681846014">
        <link role="classifier" targetNodeId="2.~Locale" resolveInfo="Locale" />
        <link role="variableDeclaration" targetNodeId="2.~Locale.PRC" resolveInfo="PRC" />
      </node>
    </node>
    <node role="locale" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.Locale" id="1172681402650">
      <property name="name" value="TAIWAN" />
      <node role="javaLocale" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference" id="1172681850944">
        <link role="classifier" targetNodeId="2.~Locale" resolveInfo="Locale" />
        <link role="variableDeclaration" targetNodeId="2.~Locale.TAIWAN" resolveInfo="TAIWAN" />
      </node>
    </node>
    <node role="locale" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.Locale" id="1172681406875">
      <property name="name" value="UK" />
      <node role="javaLocale" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference" id="1172681857528">
        <link role="classifier" targetNodeId="2.~Locale" resolveInfo="Locale" />
        <link role="variableDeclaration" targetNodeId="2.~Locale.UK" resolveInfo="UK" />
      </node>
    </node>
    <node role="locale" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.Locale" id="1172681410396">
      <property name="name" value="US" />
      <node role="javaLocale" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference" id="1172681863737">
        <link role="classifier" targetNodeId="2.~Locale" resolveInfo="Locale" />
        <link role="variableDeclaration" targetNodeId="2.~Locale.US" resolveInfo="US" />
      </node>
    </node>
    <node role="locale" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.Locale" id="1172681496091">
      <property name="name" value="RU" />
      <node role="javaLocale" type="jetbrains.mps.baseLanguage.structure.NewExpression" id="1172681884658">
        <link role="baseMethodDeclaration" targetNodeId="2.~Locale.&lt;init&gt;(java.lang.String,java.lang.String,java.lang.String)" resolveInfo="Locale" />
        <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1172681892068">
          <property name="value" value="ru" />
        </node>
        <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1172681896703">
          <property name="value" value="RU" />
        </node>
        <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1172681900121" />
      </node>
    </node>
    <node role="locale" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.Locale" id="1172681413400">
      <property name="name" value="CANADA" />
      <node role="javaLocale" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference" id="1172681868059">
        <link role="classifier" targetNodeId="2.~Locale" resolveInfo="Locale" />
        <link role="variableDeclaration" targetNodeId="2.~Locale.CANADA" resolveInfo="CANADA" />
      </node>
    </node>
    <node role="locale" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.Locale" id="1172681416718">
      <property name="name" value="CANADA_FRENCH" />
      <node role="javaLocale" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference" id="1172681873597">
        <link role="classifier" targetNodeId="2.~Locale" resolveInfo="Locale" />
        <link role="variableDeclaration" targetNodeId="2.~Locale.CANADA_FRENCH" resolveInfo="CANADA_FRENCH" />
      </node>
    </node>
    <node role="dateTimeProperty" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimeProperty" id="1172074929011">
      <property name="name" value="millis" />
      <property name="pluralForm" value="milliseconds" />
      <link role="jodaDateTimeFieldType" targetNodeId="1.~DateTimeFieldType.millisOfSecond():org.joda.time.DateTimeFieldType" resolveInfo="millisOfSecond" />
      <link role="jodaPeriodType" targetNodeId="1.~Period.millis(int):org.joda.time.Period" resolveInfo="millis" />
    </node>
    <node role="dateTimeProperty" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimeProperty" id="1172074612199">
      <property name="name" value="second" />
      <property name="pluralForm" value="seconds" />
      <link role="jodaDateTimeFieldType" targetNodeId="1.~DateTimeFieldType.secondOfMinute():org.joda.time.DateTimeFieldType" resolveInfo="secondOfMinute" />
      <link role="jodaPeriodType" targetNodeId="1.~Period.seconds(int):org.joda.time.Period" resolveInfo="seconds" />
    </node>
    <node role="dateTimeProperty" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimeProperty" id="1172074618358">
      <property name="name" value="minute" />
      <property name="pluralForm" value="minutes" />
      <link role="jodaDateTimeFieldType" targetNodeId="1.~DateTimeFieldType.minuteOfHour():org.joda.time.DateTimeFieldType" resolveInfo="minuteOfHour" />
      <link role="jodaPeriodType" targetNodeId="1.~Period.minutes(int):org.joda.time.Period" resolveInfo="minutes" />
    </node>
    <node role="dateTimeProperty" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimeProperty" id="1173955957891">
      <property name="name" value="hourOfHalfday" />
      <property name="pluralForm" value="hours of halfday" />
      <link role="jodaDateTimeFieldType" targetNodeId="1.~DateTimeFieldType.hourOfHalfday():org.joda.time.DateTimeFieldType" resolveInfo="hourOfHalfday" />
      <link role="jodaPeriodType" targetNodeId="1.~Period.hours(int):org.joda.time.Period" resolveInfo="hours" />
    </node>
    <node role="dateTimeProperty" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimeProperty" id="1173955990079">
      <property name="name" value="clockhourOfHalfday" />
      <property name="pluralForm" value="clockhours of halfday" />
      <link role="jodaDateTimeFieldType" targetNodeId="1.~DateTimeFieldType.clockhourOfHalfday():org.joda.time.DateTimeFieldType" resolveInfo="clockhourOfHalfday" />
      <link role="jodaPeriodType" targetNodeId="1.~Period.hours(int):org.joda.time.Period" resolveInfo="hours" />
    </node>
    <node role="dateTimeProperty" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimeProperty" id="1172074620250">
      <property name="name" value="hour" />
      <property name="pluralForm" value="hours" />
      <link role="jodaDateTimeFieldType" targetNodeId="1.~DateTimeFieldType.hourOfDay():org.joda.time.DateTimeFieldType" resolveInfo="hourOfDay" />
      <link role="jodaPeriodType" targetNodeId="1.~Period.hours(int):org.joda.time.Period" resolveInfo="hours" />
    </node>
    <node role="dateTimeProperty" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimeProperty" id="1173955983718">
      <property name="name" value="clockhour" />
      <property name="pluralForm" value="clockhours" />
      <link role="jodaDateTimeFieldType" targetNodeId="1.~DateTimeFieldType.clockhourOfDay():org.joda.time.DateTimeFieldType" resolveInfo="clockhourOfDay" />
      <link role="jodaPeriodType" targetNodeId="1.~Period.hours(int):org.joda.time.Period" resolveInfo="hours" />
    </node>
    <node role="dateTimeProperty" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimeProperty" id="1172074737375">
      <property name="name" value="day" />
      <property name="pluralForm" value="days" />
      <link role="jodaDateTimeFieldType" targetNodeId="1.~DateTimeFieldType.dayOfMonth():org.joda.time.DateTimeFieldType" resolveInfo="dayOfMonth" />
      <link role="jodaPeriodType" targetNodeId="1.~Period.days(int):org.joda.time.Period" resolveInfo="days" />
    </node>
    <node role="dateTimeProperty" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimeProperty" id="1172332318159">
      <property name="name" value="dayOfWeek" />
      <property name="pluralForm" value="days of week" />
      <link role="jodaDateTimeFieldType" targetNodeId="1.~DateTimeFieldType.dayOfWeek():org.joda.time.DateTimeFieldType" resolveInfo="dayOfWeek" />
      <link role="jodaPeriodType" targetNodeId="1.~Period.days(int):org.joda.time.Period" resolveInfo="days" />
    </node>
    <node role="dateTimeProperty" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimeProperty" id="1172332326016">
      <property name="name" value="dayOfYear" />
      <property name="pluralForm" value="days of year" />
      <link role="jodaDateTimeFieldType" targetNodeId="1.~DateTimeFieldType.dayOfYear():org.joda.time.DateTimeFieldType" resolveInfo="dayOfYear" />
      <link role="jodaPeriodType" targetNodeId="1.~Period.days(int):org.joda.time.Period" resolveInfo="days" />
    </node>
    <node role="dateTimeProperty" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimeProperty" id="1172162485440">
      <property name="name" value="week" />
      <property name="pluralForm" value="weeks" />
      <link role="jodaDateTimeFieldType" targetNodeId="1.~DateTimeFieldType.weekOfWeekyear():org.joda.time.DateTimeFieldType" resolveInfo="weekOfWeekyear" />
      <link role="jodaPeriodType" targetNodeId="1.~Period.weeks(int):org.joda.time.Period" resolveInfo="weeks" />
    </node>
    <node role="dateTimeProperty" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimeProperty" id="1172074751786">
      <property name="name" value="month" />
      <property name="pluralForm" value="months" />
      <link role="jodaDateTimeFieldType" targetNodeId="1.~DateTimeFieldType.monthOfYear():org.joda.time.DateTimeFieldType" resolveInfo="monthOfYear" />
      <link role="jodaPeriodType" targetNodeId="1.~Period.months(int):org.joda.time.Period" resolveInfo="months" />
    </node>
    <node role="dateTimeProperty" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimeProperty" id="1172074760743">
      <property name="name" value="year" />
      <property name="pluralForm" value="years" />
      <link role="jodaDateTimeFieldType" targetNodeId="1.~DateTimeFieldType.yearOfEra():org.joda.time.DateTimeFieldType" resolveInfo="yearOfEra" />
      <link role="jodaPeriodType" targetNodeId="1.~Period.years(int):org.joda.time.Period" resolveInfo="years" />
    </node>
    <node role="dateTimeProperty" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimeProperty" id="1173957959032">
      <property name="name" value="yearOfCentury" />
      <property name="pluralForm" value="years of century" />
      <link role="jodaDateTimeFieldType" targetNodeId="1.~DateTimeFieldType.yearOfCentury():org.joda.time.DateTimeFieldType" resolveInfo="yearOfCentury" />
      <link role="jodaPeriodType" targetNodeId="1.~Period.years(int):org.joda.time.Period" resolveInfo="years" />
    </node>
    <node role="dateTimeProperty" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimeProperty" id="1173957123915">
      <property name="name" value="century" />
      <property name="pluralForm" value="centuries" />
      <link role="jodaDateTimeFieldType" targetNodeId="1.~DateTimeFieldType.centuryOfEra():org.joda.time.DateTimeFieldType" resolveInfo="centuryOfEra" />
    </node>
    <node role="dateTimeProperty" type="jetbrains.mps.baseLanguage.ext.dates.internal.structure.DateTimeProperty" id="1173957203373">
      <property name="name" value="era" />
      <property name="pluralForm" value="eras" />
      <link role="jodaDateTimeFieldType" targetNodeId="1.~DateTimeFieldType.era():org.joda.time.DateTimeFieldType" resolveInfo="era" />
    </node>
  </node>
  <node type="jetbrains.springframework.configurationInternal.structure.ConfigurationInterface" id="1173784420120">
    <property name="name" value="datetimeConfigurationInterface" />
    <node role="beanDeclaration" type="jetbrains.springframework.configurationInternal.structure.BeanDeclaration" id="1173784443355">
      <property name="name" value="formatTableManager" />
      <node role="classifierType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1173784741906">
        <link role="classifier" targetNodeId="3.~FormatTableManager" resolveInfo="FormatTableManager" />
      </node>
    </node>
  </node>
</model>


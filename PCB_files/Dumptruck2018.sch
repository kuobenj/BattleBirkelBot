<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.6.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="16" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="14" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="50" name="dxf" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="53" name="tGND_GNDA" color="7" fill="9" visible="no" active="no"/>
<layer number="54" name="bGND_GNDA" color="1" fill="9" visible="no" active="no"/>
<layer number="56" name="wert" color="7" fill="1" visible="no" active="no"/>
<layer number="57" name="tCAD" color="7" fill="1" visible="no" active="no"/>
<layer number="59" name="tCarbon" color="7" fill="1" visible="no" active="no"/>
<layer number="60" name="bCarbon" color="7" fill="1" visible="no" active="no"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="99" name="SpiceOrder" color="7" fill="1" visible="no" active="no"/>
<layer number="100" name="Muster" color="7" fill="1" visible="no" active="no"/>
<layer number="101" name="Patch_Top" color="12" fill="4" visible="yes" active="yes"/>
<layer number="102" name="Vscore" color="7" fill="1" visible="yes" active="yes"/>
<layer number="103" name="tMap" color="7" fill="1" visible="yes" active="yes"/>
<layer number="104" name="Name" color="16" fill="1" visible="yes" active="yes"/>
<layer number="105" name="tPlate" color="7" fill="1" visible="yes" active="yes"/>
<layer number="106" name="bPlate" color="7" fill="1" visible="yes" active="yes"/>
<layer number="107" name="Crop" color="7" fill="1" visible="yes" active="yes"/>
<layer number="108" name="tplace-old" color="10" fill="1" visible="yes" active="yes"/>
<layer number="109" name="ref-old" color="11" fill="1" visible="yes" active="yes"/>
<layer number="110" name="fp0" color="7" fill="1" visible="yes" active="yes"/>
<layer number="111" name="LPC17xx" color="7" fill="1" visible="yes" active="yes"/>
<layer number="112" name="tSilk" color="7" fill="1" visible="yes" active="yes"/>
<layer number="113" name="IDFDebug" color="4" fill="1" visible="yes" active="yes"/>
<layer number="114" name="Badge_Outline" color="7" fill="1" visible="yes" active="yes"/>
<layer number="115" name="ReferenceISLANDS" color="7" fill="1" visible="yes" active="yes"/>
<layer number="116" name="Patch_BOT" color="9" fill="4" visible="yes" active="yes"/>
<layer number="118" name="Rect_Pads" color="7" fill="1" visible="yes" active="yes"/>
<layer number="121" name="_tsilk" color="7" fill="1" visible="yes" active="yes"/>
<layer number="122" name="_bsilk" color="7" fill="1" visible="yes" active="yes"/>
<layer number="123" name="tTestmark" color="7" fill="1" visible="yes" active="yes"/>
<layer number="124" name="bTestmark" color="7" fill="1" visible="yes" active="yes"/>
<layer number="125" name="_tNames" color="7" fill="1" visible="yes" active="yes"/>
<layer number="126" name="_bNames" color="7" fill="1" visible="yes" active="yes"/>
<layer number="127" name="_tValues" color="7" fill="1" visible="yes" active="yes"/>
<layer number="128" name="_bValues" color="7" fill="1" visible="yes" active="yes"/>
<layer number="129" name="Mask" color="7" fill="1" visible="yes" active="yes"/>
<layer number="131" name="tAdjust" color="7" fill="1" visible="yes" active="yes"/>
<layer number="132" name="bAdjust" color="7" fill="1" visible="yes" active="yes"/>
<layer number="144" name="Drill_legend" color="7" fill="1" visible="yes" active="yes"/>
<layer number="150" name="Notes" color="7" fill="1" visible="yes" active="yes"/>
<layer number="151" name="HeatSink" color="7" fill="1" visible="yes" active="yes"/>
<layer number="152" name="_bDocu" color="7" fill="1" visible="yes" active="yes"/>
<layer number="153" name="FabDoc1" color="7" fill="1" visible="yes" active="yes"/>
<layer number="154" name="FabDoc2" color="7" fill="1" visible="yes" active="yes"/>
<layer number="155" name="FabDoc3" color="7" fill="1" visible="yes" active="yes"/>
<layer number="199" name="Contour" color="7" fill="1" visible="yes" active="yes"/>
<layer number="200" name="200bmp" color="1" fill="10" visible="yes" active="yes"/>
<layer number="201" name="201bmp" color="2" fill="10" visible="yes" active="yes"/>
<layer number="202" name="202bmp" color="3" fill="10" visible="yes" active="yes"/>
<layer number="203" name="203bmp" color="4" fill="10" visible="yes" active="yes"/>
<layer number="204" name="204bmp" color="5" fill="10" visible="yes" active="yes"/>
<layer number="205" name="205bmp" color="6" fill="10" visible="yes" active="yes"/>
<layer number="206" name="206bmp" color="7" fill="10" visible="yes" active="yes"/>
<layer number="207" name="207bmp" color="8" fill="10" visible="yes" active="yes"/>
<layer number="208" name="208bmp" color="9" fill="10" visible="yes" active="yes"/>
<layer number="209" name="209bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="210" name="210bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="211" name="211bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="212" name="212bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="213" name="213bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="214" name="214bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="215" name="215bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="216" name="216bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="217" name="217bmp" color="18" fill="1" visible="no" active="no"/>
<layer number="218" name="218bmp" color="19" fill="1" visible="no" active="no"/>
<layer number="219" name="219bmp" color="20" fill="1" visible="no" active="no"/>
<layer number="220" name="220bmp" color="21" fill="1" visible="no" active="no"/>
<layer number="221" name="221bmp" color="22" fill="1" visible="no" active="no"/>
<layer number="222" name="222bmp" color="23" fill="1" visible="no" active="no"/>
<layer number="223" name="223bmp" color="24" fill="1" visible="no" active="no"/>
<layer number="224" name="224bmp" color="25" fill="1" visible="no" active="no"/>
<layer number="225" name="225bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="226" name="226bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="227" name="227bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="228" name="228bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="229" name="229bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="230" name="230bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="231" name="231bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="248" name="Housing" color="7" fill="1" visible="yes" active="yes"/>
<layer number="249" name="Edge" color="7" fill="1" visible="yes" active="yes"/>
<layer number="250" name="Descript" color="3" fill="1" visible="no" active="no"/>
<layer number="251" name="SMDround" color="12" fill="11" visible="no" active="no"/>
<layer number="254" name="cooling" color="7" fill="1" visible="yes" active="yes"/>
<layer number="255" name="routoute" color="7" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="SparkFun-Boards">
<description>&lt;h3&gt;SparkFun Electronics' preferred foot prints&lt;/h3&gt;
In this library you'll find boards and modules: Arduino footprints, breadboards, non-RF modules, etc.&lt;br&gt;&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is the end user's responsibility to ensure correctness and suitablity for a given componet or application. If you enjoy using this library, please buy one of our products at www.sparkfun.com.
&lt;br&gt;&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/ 
&lt;br&gt;&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="ARDUINO_PRO_MINI">
<wire x1="-8.89" y1="16.51" x2="-8.89" y2="-16.51" width="0.127" layer="51"/>
<wire x1="-8.89" y1="-16.51" x2="8.89" y2="-16.51" width="0.127" layer="51"/>
<wire x1="8.89" y1="-16.51" x2="8.89" y2="16.51" width="0.127" layer="51"/>
<wire x1="8.89" y1="16.51" x2="-8.89" y2="16.51" width="0.127" layer="51"/>
<pad name="1" x="-7.62" y="12.7" drill="1.016" diameter="1.8796"/>
<pad name="2" x="-7.62" y="10.16" drill="1.016" diameter="1.8796"/>
<pad name="3" x="-7.62" y="7.62" drill="1.016" diameter="1.8796"/>
<pad name="4" x="-7.62" y="5.08" drill="1.016" diameter="1.8796"/>
<pad name="5" x="-7.62" y="2.54" drill="1.016" diameter="1.8796"/>
<pad name="6" x="-7.62" y="0" drill="1.016" diameter="1.8796"/>
<pad name="7" x="-7.62" y="-2.54" drill="1.016" diameter="1.8796"/>
<pad name="8" x="-7.62" y="-5.08" drill="1.016" diameter="1.8796"/>
<pad name="9" x="-7.62" y="-7.62" drill="1.016" diameter="1.8796"/>
<pad name="10" x="-7.62" y="-10.16" drill="1.016" diameter="1.8796"/>
<pad name="11" x="-7.62" y="-12.7" drill="1.016" diameter="1.8796"/>
<pad name="12" x="-7.62" y="-15.24" drill="1.016" diameter="1.8796"/>
<pad name="13" x="7.62" y="-15.24" drill="1.016" diameter="1.8796"/>
<pad name="14" x="7.62" y="-12.7" drill="1.016" diameter="1.8796"/>
<pad name="15" x="7.62" y="-10.16" drill="1.016" diameter="1.8796"/>
<pad name="16" x="7.62" y="-7.62" drill="1.016" diameter="1.8796"/>
<pad name="17" x="7.62" y="-5.08" drill="1.016" diameter="1.8796"/>
<pad name="18" x="7.62" y="-2.54" drill="1.016" diameter="1.8796"/>
<pad name="19" x="7.62" y="0" drill="1.016" diameter="1.8796"/>
<pad name="20" x="7.62" y="2.54" drill="1.016" diameter="1.8796"/>
<pad name="21" x="7.62" y="5.08" drill="1.016" diameter="1.8796"/>
<pad name="22" x="7.62" y="7.62" drill="1.016" diameter="1.8796"/>
<pad name="23" x="7.62" y="10.16" drill="1.016" diameter="1.8796"/>
<pad name="24" x="7.62" y="12.7" drill="1.016" diameter="1.8796"/>
<text x="-3.81" y="-13.97" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.81" y="-15.875" size="1.27" layer="27">&gt;VALUE</text>
<pad name="A6" x="4.7625" y="-9.04875" drill="1.016" diameter="1.8796"/>
<pad name="A7" x="4.7625" y="-6.50875" drill="1.016" diameter="1.8796"/>
<pad name="A5" x="4.7625" y="3.96875" drill="1.016" diameter="1.8796"/>
<pad name="A4" x="4.7625" y="1.42875" drill="1.016" diameter="1.8796"/>
<pad name="BLK" x="-6.35" y="15.24" drill="1.016" diameter="1.8796"/>
<pad name="GND" x="-3.81" y="15.24" drill="1.016" diameter="1.8796"/>
<pad name="VCC" x="-1.27" y="15.24" drill="1.016" diameter="1.8796"/>
<pad name="RXI" x="1.27" y="15.24" drill="1.016" diameter="1.8796"/>
<pad name="TXO" x="3.81" y="15.24" drill="1.016" diameter="1.8796"/>
<pad name="GRN" x="6.35" y="15.24" drill="1.016" diameter="1.8796"/>
</package>
<package name="LOGIC_LEVEL_CONVERTER">
<pad name="P$1" x="1.27" y="13.97" drill="0.8"/>
<pad name="P$2" x="1.27" y="11.43" drill="0.8"/>
<pad name="P$3" x="1.27" y="8.89" drill="0.8"/>
<pad name="P$4" x="1.27" y="6.35" drill="0.8"/>
<pad name="P$5" x="1.27" y="3.81" drill="0.8"/>
<pad name="P$6" x="1.27" y="1.27" drill="0.8"/>
<pad name="P$7" x="11.43" y="1.27" drill="0.8"/>
<pad name="P$8" x="11.43" y="3.81" drill="0.8"/>
<pad name="P$9" x="11.43" y="6.35" drill="0.8"/>
<pad name="P$10" x="11.43" y="8.89" drill="0.8"/>
<pad name="P$11" x="11.43" y="11.43" drill="0.8"/>
<pad name="P$12" x="11.43" y="13.97" drill="0.8"/>
<wire x1="0" y1="0" x2="0" y2="5.08" width="0.127" layer="21"/>
<wire x1="0" y1="5.08" x2="0" y2="10.16" width="0.127" layer="21"/>
<wire x1="0" y1="10.16" x2="0" y2="15.24" width="0.127" layer="21"/>
<wire x1="0" y1="15.24" x2="12.7" y2="15.24" width="0.127" layer="21"/>
<wire x1="12.7" y1="15.24" x2="12.7" y2="10.16" width="0.127" layer="21"/>
<wire x1="12.7" y1="10.16" x2="12.7" y2="5.08" width="0.127" layer="21"/>
<wire x1="12.7" y1="5.08" x2="12.7" y2="0" width="0.127" layer="21"/>
<wire x1="12.7" y1="0" x2="0" y2="0" width="0.127" layer="21"/>
<text x="3.81" y="10.16" size="1.27" layer="21">Chan1</text>
<text x="3.81" y="3.81" size="1.27" layer="21">Chan2</text>
<wire x1="0" y1="10.16" x2="12.7" y2="10.16" width="0.127" layer="21"/>
<wire x1="0" y1="5.08" x2="12.7" y2="5.08" width="0.127" layer="21"/>
<text x="2.54" y="13.97" size="1.27" layer="21">LV</text>
<text x="2.54" y="0" size="1.27" layer="21">LV</text>
<text x="7.62" y="13.97" size="1.27" layer="21">HV</text>
<text x="7.62" y="0" size="1.27" layer="21">HV</text>
</package>
</packages>
<symbols>
<symbol name="ARDUINO_PRO_MINI">
<wire x1="-7.62" y1="17.78" x2="-7.62" y2="-22.86" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-22.86" x2="10.16" y2="-22.86" width="0.254" layer="94"/>
<wire x1="10.16" y1="-22.86" x2="10.16" y2="17.78" width="0.254" layer="94"/>
<wire x1="10.16" y1="17.78" x2="-7.62" y2="17.78" width="0.254" layer="94"/>
<text x="-7.62" y="18.542" size="1.778" layer="95">&gt;NAME</text>
<text x="-7.62" y="-25.4" size="1.778" layer="96">&gt;VALUE</text>
<pin name="2" x="-10.16" y="5.08" length="short"/>
<pin name="*3" x="-10.16" y="2.54" length="short"/>
<pin name="4" x="-10.16" y="0" length="short"/>
<pin name="*5" x="-10.16" y="-2.54" length="short"/>
<pin name="*6" x="-10.16" y="-5.08" length="short"/>
<pin name="7" x="-10.16" y="-7.62" length="short"/>
<pin name="8" x="-10.16" y="-10.16" length="short"/>
<pin name="*9" x="-10.16" y="-12.7" length="short"/>
<pin name="*10" x="12.7" y="-12.7" length="short" rot="R180"/>
<pin name="*11" x="12.7" y="-10.16" length="short" rot="R180"/>
<pin name="12" x="12.7" y="-7.62" length="short" rot="R180"/>
<pin name="13" x="12.7" y="-5.08" length="short" rot="R180"/>
<pin name="A0" x="12.7" y="-2.54" length="short" rot="R180"/>
<pin name="A1" x="12.7" y="0" length="short" rot="R180"/>
<pin name="A2" x="12.7" y="2.54" length="short" rot="R180"/>
<pin name="A3" x="12.7" y="5.08" length="short" rot="R180"/>
<pin name="GND" x="-10.16" y="7.62" length="short"/>
<pin name="GND@2" x="12.7" y="12.7" length="short" rot="R180"/>
<pin name="RAW" x="12.7" y="15.24" length="short" rot="R180"/>
<pin name="RST" x="-10.16" y="10.16" length="short"/>
<pin name="RST@2" x="12.7" y="10.16" length="short" rot="R180"/>
<pin name="RXI" x="-10.16" y="12.7" length="short"/>
<pin name="TXO" x="-10.16" y="15.24" length="short"/>
<pin name="VCC" x="12.7" y="7.62" length="short" rot="R180"/>
<pin name="A7" x="12.7" y="-17.78" length="short" rot="R180"/>
<pin name="A6" x="12.7" y="-20.32" length="short" rot="R180"/>
<pin name="A4" x="-10.16" y="-17.78" length="short"/>
<pin name="A5" x="-10.16" y="-20.32" length="short"/>
</symbol>
<symbol name="LOGIC_LEVEL_CONVERTER">
<description>Logic Level Converter (3.3v - 5v)</description>
<pin name="HV_TXO_1" x="7.62" y="30.48" length="middle" rot="R180"/>
<pin name="HV_RXI_1" x="7.62" y="27.94" length="middle" rot="R180"/>
<pin name="HV" x="7.62" y="25.4" length="middle" rot="R180"/>
<pin name="GND@2" x="7.62" y="22.86" length="middle" rot="R180"/>
<pin name="HV_RXI_2" x="7.62" y="20.32" length="middle" rot="R180"/>
<pin name="HV_TXO_2" x="7.62" y="17.78" length="middle" rot="R180"/>
<pin name="LV_TXI_1" x="-30.48" y="30.48" length="middle"/>
<pin name="LV" x="-30.48" y="25.4" length="middle"/>
<pin name="LV_RXO_1" x="-30.48" y="27.94" length="middle"/>
<pin name="GND" x="-30.48" y="22.86" length="middle"/>
<pin name="LV_RXO_2" x="-30.48" y="20.32" length="middle"/>
<pin name="LV_TXI_2" x="-30.48" y="17.78" length="middle"/>
<wire x1="-25.4" y1="15.24" x2="-25.4" y2="33.02" width="0.254" layer="94"/>
<wire x1="-25.4" y1="33.02" x2="2.54" y2="33.02" width="0.254" layer="94"/>
<wire x1="2.54" y1="33.02" x2="2.54" y2="15.24" width="0.254" layer="94"/>
<wire x1="2.54" y1="15.24" x2="-25.4" y2="15.24" width="0.254" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="ARDUINO_PRO_MINI">
<gates>
<gate name="G$1" symbol="ARDUINO_PRO_MINI" x="0" y="2.54"/>
</gates>
<devices>
<device name="" package="ARDUINO_PRO_MINI">
<connects>
<connect gate="G$1" pin="*10" pad="13"/>
<connect gate="G$1" pin="*11" pad="14"/>
<connect gate="G$1" pin="*3" pad="6"/>
<connect gate="G$1" pin="*5" pad="8"/>
<connect gate="G$1" pin="*6" pad="9"/>
<connect gate="G$1" pin="*9" pad="12"/>
<connect gate="G$1" pin="12" pad="15"/>
<connect gate="G$1" pin="13" pad="16"/>
<connect gate="G$1" pin="2" pad="5"/>
<connect gate="G$1" pin="4" pad="7"/>
<connect gate="G$1" pin="7" pad="10"/>
<connect gate="G$1" pin="8" pad="11"/>
<connect gate="G$1" pin="A0" pad="17"/>
<connect gate="G$1" pin="A1" pad="18"/>
<connect gate="G$1" pin="A2" pad="19"/>
<connect gate="G$1" pin="A3" pad="20"/>
<connect gate="G$1" pin="A4" pad="A4"/>
<connect gate="G$1" pin="A5" pad="A5"/>
<connect gate="G$1" pin="A6" pad="A6"/>
<connect gate="G$1" pin="A7" pad="A7"/>
<connect gate="G$1" pin="GND" pad="4"/>
<connect gate="G$1" pin="GND@2" pad="23"/>
<connect gate="G$1" pin="RAW" pad="24"/>
<connect gate="G$1" pin="RST" pad="3"/>
<connect gate="G$1" pin="RST@2" pad="22"/>
<connect gate="G$1" pin="RXI" pad="2"/>
<connect gate="G$1" pin="TXO" pad="1"/>
<connect gate="G$1" pin="VCC" pad="21"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="LOGIC_LEVEL_CONVERTER">
<description>Logic Level Converter (3.3v - 5v)


https://www.sparkfun.com/products/8745</description>
<gates>
<gate name="G$1" symbol="LOGIC_LEVEL_CONVERTER" x="10.16" y="-22.86"/>
</gates>
<devices>
<device name="" package="LOGIC_LEVEL_CONVERTER">
<connects>
<connect gate="G$1" pin="GND" pad="P$4"/>
<connect gate="G$1" pin="GND@2" pad="P$9"/>
<connect gate="G$1" pin="HV" pad="P$10"/>
<connect gate="G$1" pin="HV_RXI_1" pad="P$11"/>
<connect gate="G$1" pin="HV_RXI_2" pad="P$8"/>
<connect gate="G$1" pin="HV_TXO_1" pad="P$12"/>
<connect gate="G$1" pin="HV_TXO_2" pad="P$7"/>
<connect gate="G$1" pin="LV" pad="P$3"/>
<connect gate="G$1" pin="LV_RXO_1" pad="P$2"/>
<connect gate="G$1" pin="LV_RXO_2" pad="P$5"/>
<connect gate="G$1" pin="LV_TXI_1" pad="P$1"/>
<connect gate="G$1" pin="LV_TXI_2" pad="P$6"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun-RF">
<description>&lt;h3&gt;SparkFun Electronics' preferred foot prints&lt;/h3&gt;
In this library you'll find things that send or receive RF- GPS, cellular modules, Bluetooth, WiFi, etc.&lt;br&gt;&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is the end user's responsibility to ensure correctness and suitablity for a given componet or application. If you enjoy using this library, please buy one of our products at www.sparkfun.com.
&lt;br&gt;&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/ 
&lt;br&gt;&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="XBEE-1">
<wire x1="-5" y1="27.6" x2="5" y2="27.6" width="0.2032" layer="51"/>
<wire x1="-12.25" y1="21.25" x2="-5" y2="27.6" width="0.2032" layer="51"/>
<wire x1="12.25" y1="21.25" x2="5" y2="27.6" width="0.2032" layer="51"/>
<wire x1="9.75" y1="21.25" x2="12.25" y2="21.25" width="0.2032" layer="21"/>
<wire x1="12.25" y1="21.25" x2="12.25" y2="0.75" width="0.2032" layer="21"/>
<wire x1="12.25" y1="0.75" x2="9.75" y2="0.75" width="0.2032" layer="21"/>
<wire x1="9.75" y1="21.25" x2="9.75" y2="0.75" width="0.2032" layer="21"/>
<wire x1="-9.75" y1="21.25" x2="-12.25" y2="21.25" width="0.2032" layer="21"/>
<wire x1="-12.25" y1="21.25" x2="-12.25" y2="0.75" width="0.2032" layer="21"/>
<wire x1="-12.25" y1="0.75" x2="-9.75" y2="0.75" width="0.2032" layer="21"/>
<wire x1="-9.75" y1="21.25" x2="-9.75" y2="0.75" width="0.2032" layer="21"/>
<wire x1="-12.25" y1="0.75" x2="-12.25" y2="0" width="0.2032" layer="51"/>
<wire x1="12.25" y1="0.75" x2="12.25" y2="0" width="0.2032" layer="51"/>
<wire x1="-12.25" y1="0" x2="12.25" y2="0" width="0.2032" layer="51"/>
<wire x1="12.25" y1="0" x2="12.25" y2="-6.25" width="0.2032" layer="51"/>
<wire x1="-12.25" y1="0" x2="-12.25" y2="-6.25" width="0.2032" layer="51"/>
<wire x1="-12.25" y1="-6.25" x2="12.25" y2="-6.25" width="0.2032" layer="51"/>
<pad name="10" x="-11" y="2" drill="0.8" diameter="1.524"/>
<pad name="9" x="-11" y="4" drill="0.8" diameter="1.524"/>
<pad name="8" x="-11" y="6" drill="0.8" diameter="1.524"/>
<pad name="7" x="-11" y="8" drill="0.8" diameter="1.524"/>
<pad name="6" x="-11" y="10" drill="0.8" diameter="1.524"/>
<pad name="5" x="-11" y="12" drill="0.8" diameter="1.524"/>
<pad name="4" x="-11" y="14" drill="0.8" diameter="1.524"/>
<pad name="3" x="-11" y="16" drill="0.8" diameter="1.524"/>
<pad name="2" x="-11" y="18" drill="0.8" diameter="1.524"/>
<pad name="1" x="-11" y="20" drill="0.8" diameter="1.524"/>
<pad name="11" x="11" y="2" drill="0.8" diameter="1.524"/>
<pad name="12" x="11" y="4" drill="0.8" diameter="1.524"/>
<pad name="13" x="11" y="6" drill="0.8" diameter="1.524"/>
<pad name="14" x="11" y="8" drill="0.8" diameter="1.524"/>
<pad name="15" x="11" y="10" drill="0.8" diameter="1.524"/>
<pad name="16" x="11" y="12" drill="0.8" diameter="1.524"/>
<pad name="17" x="11" y="14" drill="0.8" diameter="1.524"/>
<pad name="18" x="11" y="16" drill="0.8" diameter="1.524"/>
<pad name="19" x="11" y="18" drill="0.8" diameter="1.524"/>
<pad name="20" x="11" y="20" drill="0.8" diameter="1.524"/>
<text x="-8.89" y="2.54" size="0.4064" layer="25">&gt;Name</text>
<text x="-8.89" y="1.27" size="0.4064" layer="27">&gt;Value</text>
</package>
<package name="XBEE-SILK">
<wire x1="-5" y1="27.6" x2="5" y2="27.6" width="0.2032" layer="51"/>
<wire x1="-12.25" y1="21.25" x2="-5" y2="27.6" width="0.2032" layer="51"/>
<wire x1="12.25" y1="21.25" x2="5" y2="27.6" width="0.2032" layer="51"/>
<wire x1="9.75" y1="21.25" x2="12.25" y2="21.25" width="0.2032" layer="21"/>
<wire x1="12.25" y1="21.25" x2="12.25" y2="0.75" width="0.2032" layer="21"/>
<wire x1="12.25" y1="0.75" x2="9.75" y2="0.75" width="0.2032" layer="21"/>
<wire x1="9.75" y1="21.25" x2="9.75" y2="0.75" width="0.2032" layer="21"/>
<wire x1="-9.75" y1="21.25" x2="-12.25" y2="21.25" width="0.2032" layer="21"/>
<wire x1="-12.25" y1="21.25" x2="-12.25" y2="0.75" width="0.2032" layer="21"/>
<wire x1="-12.25" y1="0.75" x2="-9.75" y2="0.75" width="0.2032" layer="21"/>
<wire x1="-9.75" y1="21.25" x2="-9.75" y2="0.75" width="0.2032" layer="21"/>
<wire x1="-12.25" y1="0.75" x2="-12.25" y2="0" width="0.2032" layer="21"/>
<wire x1="12.25" y1="0.75" x2="12.25" y2="0" width="0.2032" layer="21"/>
<wire x1="-12.25" y1="0" x2="12.25" y2="0" width="0.2032" layer="21"/>
<wire x1="12.25" y1="0" x2="12.25" y2="-6.25" width="0.2032" layer="51"/>
<wire x1="-12.25" y1="0" x2="-12.25" y2="-6.25" width="0.2032" layer="51"/>
<wire x1="-12.25" y1="-6.25" x2="12.25" y2="-6.25" width="0.2032" layer="51"/>
<wire x1="-5" y1="27.6" x2="-5.7" y2="27" width="0.2032" layer="21"/>
<wire x1="-5" y1="27.6" x2="5" y2="27.6" width="0.2032" layer="21"/>
<wire x1="5" y1="27.6" x2="5.7" y2="27" width="0.2032" layer="21"/>
<pad name="10" x="-11" y="2" drill="0.8" diameter="1.524"/>
<pad name="9" x="-11" y="4" drill="0.8" diameter="1.524"/>
<pad name="8" x="-11" y="6" drill="0.8" diameter="1.524"/>
<pad name="7" x="-11" y="8" drill="0.8" diameter="1.524"/>
<pad name="6" x="-11" y="10" drill="0.8" diameter="1.524"/>
<pad name="5" x="-11" y="12" drill="0.8" diameter="1.524"/>
<pad name="4" x="-11" y="14" drill="0.8" diameter="1.524"/>
<pad name="3" x="-11" y="16" drill="0.8" diameter="1.524"/>
<pad name="2" x="-11" y="18" drill="0.8" diameter="1.524"/>
<pad name="1" x="-11" y="20" drill="0.8" diameter="1.524"/>
<pad name="11" x="11" y="2" drill="0.8" diameter="1.524"/>
<pad name="12" x="11" y="4" drill="0.8" diameter="1.524"/>
<pad name="13" x="11" y="6" drill="0.8" diameter="1.524"/>
<pad name="14" x="11" y="8" drill="0.8" diameter="1.524"/>
<pad name="15" x="11" y="10" drill="0.8" diameter="1.524"/>
<pad name="16" x="11" y="12" drill="0.8" diameter="1.524"/>
<pad name="17" x="11" y="14" drill="0.8" diameter="1.524"/>
<pad name="18" x="11" y="16" drill="0.8" diameter="1.524"/>
<pad name="19" x="11" y="18" drill="0.8" diameter="1.524"/>
<pad name="20" x="11" y="20" drill="0.8" diameter="1.524"/>
<text x="-8.89" y="2.54" size="0.4064" layer="25">&gt;Name</text>
<text x="-8.89" y="1.27" size="0.4064" layer="27">&gt;Value</text>
</package>
<package name="XBEE-SMD">
<wire x1="-5" y1="27.6" x2="5" y2="27.6" width="0.2032" layer="21"/>
<wire x1="-12.25" y1="21.25" x2="-5" y2="27.6" width="0.2032" layer="21"/>
<wire x1="12.25" y1="21.25" x2="5" y2="27.6" width="0.2032" layer="21"/>
<wire x1="-12.25" y1="0.75" x2="-12.25" y2="0" width="0.2032" layer="21"/>
<wire x1="12.25" y1="0.75" x2="12.25" y2="0" width="0.2032" layer="21"/>
<wire x1="-12.25" y1="0" x2="12.25" y2="0" width="0.2032" layer="21"/>
<wire x1="12.25" y1="0" x2="12.25" y2="-6.25" width="0.2032" layer="51"/>
<wire x1="-12.25" y1="0" x2="-12.25" y2="-6.25" width="0.2032" layer="51"/>
<wire x1="-12.25" y1="-6.25" x2="12.25" y2="-6.25" width="0.2032" layer="51"/>
<wire x1="-12.25" y1="0.75" x2="-12.25" y2="21.25" width="0.2032" layer="51"/>
<wire x1="-9.75" y1="21.25" x2="-9.75" y2="0.75" width="0.2032" layer="51"/>
<wire x1="-12.25" y1="0.75" x2="-9.75" y2="0.75" width="0.2032" layer="51"/>
<wire x1="-12.25" y1="21.25" x2="-9.75" y2="21.25" width="0.2032" layer="51"/>
<wire x1="-12.25" y1="0.75" x2="-12.25" y2="1.3" width="0.2032" layer="21"/>
<wire x1="-12.25" y1="0.75" x2="-9.75" y2="0.75" width="0.2032" layer="21"/>
<wire x1="-9.75" y1="0.75" x2="-9.75" y2="1.3" width="0.2032" layer="21"/>
<wire x1="-9.75" y1="20.6" x2="-9.75" y2="21.25" width="0.2032" layer="21"/>
<wire x1="-9.75" y1="21.25" x2="-12.25" y2="21.25" width="0.2032" layer="21"/>
<wire x1="-12.25" y1="21.25" x2="-12.25" y2="20.6" width="0.2032" layer="21"/>
<wire x1="9.75" y1="0.75" x2="9.75" y2="21.25" width="0.2032" layer="51"/>
<wire x1="12.25" y1="21.25" x2="12.25" y2="0.75" width="0.2032" layer="51"/>
<wire x1="9.75" y1="0.75" x2="12.25" y2="0.75" width="0.2032" layer="51"/>
<wire x1="9.75" y1="21.25" x2="12.25" y2="21.25" width="0.2032" layer="51"/>
<wire x1="9.75" y1="0.75" x2="9.75" y2="1.3" width="0.2032" layer="21"/>
<wire x1="9.75" y1="0.75" x2="12.25" y2="0.75" width="0.2032" layer="21"/>
<wire x1="12.25" y1="0.75" x2="12.25" y2="1.3" width="0.2032" layer="21"/>
<wire x1="12.25" y1="20.6" x2="12.25" y2="21.25" width="0.2032" layer="21"/>
<wire x1="12.25" y1="21.25" x2="9.75" y2="21.25" width="0.2032" layer="21"/>
<wire x1="9.75" y1="21.25" x2="9.75" y2="20.6" width="0.2032" layer="21"/>
<smd name="10" x="-9.5" y="2" dx="0.85" dy="1.7" layer="1" rot="R90"/>
<smd name="9" x="-12.5" y="4" dx="0.85" dy="1.7" layer="1" rot="R90"/>
<smd name="8" x="-9.5" y="6" dx="0.85" dy="1.7" layer="1" rot="R90"/>
<smd name="7" x="-12.5" y="8" dx="0.85" dy="1.7" layer="1" rot="R90"/>
<smd name="6" x="-9.5" y="10" dx="0.85" dy="1.7" layer="1" rot="R90"/>
<smd name="5" x="-12.5" y="12" dx="0.85" dy="1.7" layer="1" rot="R90"/>
<smd name="4" x="-9.5" y="14" dx="0.85" dy="1.7" layer="1" rot="R90"/>
<smd name="3" x="-12.5" y="16" dx="0.85" dy="1.7" layer="1" rot="R90"/>
<smd name="2" x="-9.5" y="18" dx="0.85" dy="1.7" layer="1" rot="R90"/>
<smd name="1" x="-12.5" y="20" dx="0.85" dy="1.7" layer="1" rot="R90"/>
<smd name="11" x="12.5" y="2" dx="0.85" dy="1.7" layer="1" rot="R90"/>
<smd name="12" x="9.5" y="4" dx="0.85" dy="1.7" layer="1" rot="R90"/>
<smd name="13" x="12.5" y="6" dx="0.85" dy="1.7" layer="1" rot="R90"/>
<smd name="14" x="9.5" y="8" dx="0.85" dy="1.7" layer="1" rot="R90"/>
<smd name="15" x="12.5" y="10" dx="0.85" dy="1.7" layer="1" rot="R90"/>
<smd name="16" x="9.5" y="12" dx="0.85" dy="1.7" layer="1" rot="R90"/>
<smd name="17" x="12.5" y="14" dx="0.85" dy="1.7" layer="1" rot="R90"/>
<smd name="18" x="9.5" y="16" dx="0.85" dy="1.7" layer="1" rot="R90"/>
<smd name="19" x="12.5" y="18" dx="0.85" dy="1.7" layer="1" rot="R90"/>
<smd name="20" x="9.5" y="20" dx="0.85" dy="1.7" layer="1" rot="R90"/>
<text x="-8.89" y="2.54" size="0.4064" layer="25">&gt;Name</text>
<text x="-8.89" y="1.27" size="0.4064" layer="27">&gt;Value</text>
</package>
<package name="XBEE-1_LOCK">
<wire x1="-5" y1="27.6" x2="5" y2="27.6" width="0.2032" layer="51"/>
<wire x1="-12.25" y1="21.25" x2="-5" y2="27.6" width="0.2032" layer="51"/>
<wire x1="12.25" y1="21.25" x2="5" y2="27.6" width="0.2032" layer="51"/>
<wire x1="9.75" y1="21.25" x2="12.25" y2="21.25" width="0.2032" layer="21"/>
<wire x1="12.25" y1="21.25" x2="12.25" y2="0.75" width="0.2032" layer="21"/>
<wire x1="12.25" y1="0.75" x2="9.75" y2="0.75" width="0.2032" layer="21"/>
<wire x1="9.75" y1="21.25" x2="9.75" y2="0.75" width="0.2032" layer="21"/>
<wire x1="-9.75" y1="21.25" x2="-12.25" y2="21.25" width="0.2032" layer="21"/>
<wire x1="-12.25" y1="21.25" x2="-12.25" y2="0.75" width="0.2032" layer="21"/>
<wire x1="-12.25" y1="0.75" x2="-9.75" y2="0.75" width="0.2032" layer="21"/>
<wire x1="-9.75" y1="21.25" x2="-9.75" y2="0.75" width="0.2032" layer="21"/>
<wire x1="-12.25" y1="0.75" x2="-12.25" y2="0" width="0.2032" layer="51"/>
<wire x1="12.25" y1="0.75" x2="12.25" y2="0" width="0.2032" layer="51"/>
<wire x1="-12.25" y1="0" x2="12.25" y2="0" width="0.2032" layer="51"/>
<wire x1="12.25" y1="0" x2="12.25" y2="-6.25" width="0.2032" layer="51"/>
<wire x1="-12.25" y1="0" x2="-12.25" y2="-6.25" width="0.2032" layer="51"/>
<wire x1="-12.25" y1="-6.25" x2="12.25" y2="-6.25" width="0.2032" layer="51"/>
<pad name="10" x="-10.8222" y="2" drill="0.7366" diameter="1.524"/>
<pad name="9" x="-11.1778" y="4" drill="0.7366" diameter="1.524"/>
<pad name="8" x="-10.8222" y="6" drill="0.7366" diameter="1.524"/>
<pad name="7" x="-11.1778" y="8" drill="0.7366" diameter="1.524"/>
<pad name="6" x="-10.8222" y="10" drill="0.7366" diameter="1.524"/>
<pad name="5" x="-11.1778" y="12" drill="0.7366" diameter="1.524"/>
<pad name="4" x="-10.8222" y="14" drill="0.7366" diameter="1.524"/>
<pad name="3" x="-11.1778" y="16" drill="0.7366" diameter="1.524"/>
<pad name="2" x="-10.8222" y="18" drill="0.7366" diameter="1.524"/>
<pad name="1" x="-11.1778" y="20" drill="0.7366" diameter="1.524"/>
<pad name="11" x="11.1778" y="2" drill="0.7366" diameter="1.524"/>
<pad name="12" x="10.8222" y="4" drill="0.7366" diameter="1.524"/>
<pad name="13" x="11.1778" y="6" drill="0.7366" diameter="1.524"/>
<pad name="14" x="10.8222" y="8" drill="0.7366" diameter="1.524"/>
<pad name="15" x="11.1778" y="10" drill="0.7366" diameter="1.524"/>
<pad name="16" x="10.8222" y="12" drill="0.7366" diameter="1.524"/>
<pad name="17" x="11.1778" y="14" drill="0.7366" diameter="1.524"/>
<pad name="18" x="10.8222" y="16" drill="0.7366" diameter="1.524"/>
<pad name="19" x="11.1778" y="18" drill="0.7366" diameter="1.524"/>
<pad name="20" x="10.8222" y="20" drill="0.7366" diameter="1.524"/>
<text x="-8.89" y="2.54" size="0.4064" layer="25">&gt;Name</text>
<text x="-8.89" y="1.27" size="0.4064" layer="27">&gt;Value</text>
<rectangle x1="-11.0998" y1="1.7272" x2="-10.8966" y2="2.2352" layer="51"/>
<rectangle x1="-11.0998" y1="3.7338" x2="-10.8966" y2="4.2418" layer="51"/>
<rectangle x1="-11.0998" y1="5.715" x2="-10.8966" y2="6.223" layer="51"/>
<rectangle x1="-11.0998" y1="7.7216" x2="-10.8966" y2="8.2296" layer="51"/>
<rectangle x1="-11.0998" y1="9.7282" x2="-10.8966" y2="10.2362" layer="51"/>
<rectangle x1="-11.0998" y1="11.7602" x2="-10.8966" y2="12.2682" layer="51"/>
<rectangle x1="-11.0998" y1="13.7414" x2="-10.8966" y2="14.2494" layer="51"/>
<rectangle x1="-11.0998" y1="15.7226" x2="-10.8966" y2="16.2306" layer="51"/>
<rectangle x1="-11.0998" y1="17.7292" x2="-10.8966" y2="18.2372" layer="51"/>
<rectangle x1="-11.0998" y1="19.7358" x2="-10.8966" y2="20.2438" layer="51"/>
<rectangle x1="10.8966" y1="1.7272" x2="11.0998" y2="2.2352" layer="51"/>
<rectangle x1="10.8966" y1="3.7338" x2="11.0998" y2="4.2418" layer="51"/>
<rectangle x1="10.8966" y1="5.715" x2="11.0998" y2="6.223" layer="51"/>
<rectangle x1="10.8966" y1="7.7216" x2="11.0998" y2="8.2296" layer="51"/>
<rectangle x1="10.8966" y1="9.7282" x2="11.0998" y2="10.2362" layer="51"/>
<rectangle x1="10.8966" y1="11.7602" x2="11.0998" y2="12.2682" layer="51"/>
<rectangle x1="10.8966" y1="13.7414" x2="11.0998" y2="14.2494" layer="51"/>
<rectangle x1="10.8966" y1="15.7226" x2="11.0998" y2="16.2306" layer="51"/>
<rectangle x1="10.8966" y1="17.7292" x2="11.0998" y2="18.2372" layer="51"/>
<rectangle x1="10.8966" y1="19.7358" x2="11.0998" y2="20.2438" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="XBEE-1">
<wire x1="-15.24" y1="12.7" x2="15.24" y2="12.7" width="0.254" layer="94"/>
<wire x1="15.24" y1="12.7" x2="15.24" y2="-15.24" width="0.254" layer="94"/>
<wire x1="15.24" y1="-15.24" x2="-15.24" y2="-15.24" width="0.254" layer="94"/>
<wire x1="-15.24" y1="-15.24" x2="-15.24" y2="12.7" width="0.254" layer="94"/>
<text x="-15.24" y="13.462" size="1.6764" layer="95">&gt;Name</text>
<text x="-15.24" y="-17.78" size="1.6764" layer="96">&gt;Value</text>
<pin name="VDD" x="-20.32" y="10.16" length="middle" direction="pwr"/>
<pin name="DOUT" x="-20.32" y="7.62" length="middle" direction="out"/>
<pin name="DIN" x="-20.32" y="5.08" length="middle" direction="in"/>
<pin name="DIO12" x="-20.32" y="2.54" length="middle"/>
<pin name="RESET" x="-20.32" y="0" length="middle" direction="in" function="dot"/>
<pin name="RSSI" x="-20.32" y="-2.54" length="middle"/>
<pin name="DIO11" x="-20.32" y="-5.08" length="middle"/>
<pin name="RES@8" x="-20.32" y="-7.62" length="middle"/>
<pin name="DTR" x="-20.32" y="-10.16" length="middle" function="dot"/>
<pin name="GND" x="-20.32" y="-12.7" length="middle" direction="pwr"/>
<pin name="DIO4" x="20.32" y="-12.7" length="middle" rot="R180"/>
<pin name="CTS" x="20.32" y="-10.16" length="middle" direction="out" function="dot" rot="R180"/>
<pin name="DIO9" x="20.32" y="-7.62" length="middle" rot="R180"/>
<pin name="RES@14" x="20.32" y="-5.08" length="middle" rot="R180"/>
<pin name="DIO5" x="20.32" y="-2.54" length="middle" rot="R180"/>
<pin name="RTS" x="20.32" y="0" length="middle" direction="in" function="dot" rot="R180"/>
<pin name="DIO3" x="20.32" y="2.54" length="middle" rot="R180"/>
<pin name="DIO2" x="20.32" y="5.08" length="middle" rot="R180"/>
<pin name="DIO1" x="20.32" y="7.62" length="middle" rot="R180"/>
<pin name="DIO0" x="20.32" y="10.16" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="XBEE-1">
<description>Xbee module footprints&lt;br&gt;
SMT header is CONN-09042.</description>
<gates>
<gate name="G$1" symbol="XBEE-1" x="0" y="0"/>
</gates>
<devices>
<device name="B1" package="XBEE-1">
<connects>
<connect gate="G$1" pin="CTS" pad="12"/>
<connect gate="G$1" pin="DIN" pad="3"/>
<connect gate="G$1" pin="DIO0" pad="20"/>
<connect gate="G$1" pin="DIO1" pad="19"/>
<connect gate="G$1" pin="DIO11" pad="7"/>
<connect gate="G$1" pin="DIO12" pad="4"/>
<connect gate="G$1" pin="DIO2" pad="18"/>
<connect gate="G$1" pin="DIO3" pad="17"/>
<connect gate="G$1" pin="DIO4" pad="11"/>
<connect gate="G$1" pin="DIO5" pad="15"/>
<connect gate="G$1" pin="DIO9" pad="13"/>
<connect gate="G$1" pin="DOUT" pad="2"/>
<connect gate="G$1" pin="DTR" pad="9"/>
<connect gate="G$1" pin="GND" pad="10"/>
<connect gate="G$1" pin="RES@14" pad="14"/>
<connect gate="G$1" pin="RES@8" pad="8"/>
<connect gate="G$1" pin="RESET" pad="5"/>
<connect gate="G$1" pin="RSSI" pad="6"/>
<connect gate="G$1" pin="RTS" pad="16"/>
<connect gate="G$1" pin="VDD" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="B2" package="XBEE-SILK">
<connects>
<connect gate="G$1" pin="CTS" pad="12"/>
<connect gate="G$1" pin="DIN" pad="3"/>
<connect gate="G$1" pin="DIO0" pad="20"/>
<connect gate="G$1" pin="DIO1" pad="19"/>
<connect gate="G$1" pin="DIO11" pad="7"/>
<connect gate="G$1" pin="DIO12" pad="4"/>
<connect gate="G$1" pin="DIO2" pad="18"/>
<connect gate="G$1" pin="DIO3" pad="17"/>
<connect gate="G$1" pin="DIO4" pad="11"/>
<connect gate="G$1" pin="DIO5" pad="15"/>
<connect gate="G$1" pin="DIO9" pad="13"/>
<connect gate="G$1" pin="DOUT" pad="2"/>
<connect gate="G$1" pin="DTR" pad="9"/>
<connect gate="G$1" pin="GND" pad="10"/>
<connect gate="G$1" pin="RES@14" pad="14"/>
<connect gate="G$1" pin="RES@8" pad="8"/>
<connect gate="G$1" pin="RESET" pad="5"/>
<connect gate="G$1" pin="RSSI" pad="6"/>
<connect gate="G$1" pin="RTS" pad="16"/>
<connect gate="G$1" pin="VDD" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="B3" package="XBEE-SMD">
<connects>
<connect gate="G$1" pin="CTS" pad="12"/>
<connect gate="G$1" pin="DIN" pad="3"/>
<connect gate="G$1" pin="DIO0" pad="20"/>
<connect gate="G$1" pin="DIO1" pad="19"/>
<connect gate="G$1" pin="DIO11" pad="7"/>
<connect gate="G$1" pin="DIO12" pad="4"/>
<connect gate="G$1" pin="DIO2" pad="18"/>
<connect gate="G$1" pin="DIO3" pad="17"/>
<connect gate="G$1" pin="DIO4" pad="11"/>
<connect gate="G$1" pin="DIO5" pad="15"/>
<connect gate="G$1" pin="DIO9" pad="13"/>
<connect gate="G$1" pin="DOUT" pad="2"/>
<connect gate="G$1" pin="DTR" pad="9"/>
<connect gate="G$1" pin="GND" pad="10"/>
<connect gate="G$1" pin="RES@14" pad="14"/>
<connect gate="G$1" pin="RES@8" pad="8"/>
<connect gate="G$1" pin="RESET" pad="5"/>
<connect gate="G$1" pin="RSSI" pad="6"/>
<connect gate="G$1" pin="RTS" pad="16"/>
<connect gate="G$1" pin="VDD" pad="1"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CONN-09042"/>
</technology>
</technologies>
</device>
<device name="XBEE-1_LOCK" package="XBEE-1_LOCK">
<connects>
<connect gate="G$1" pin="CTS" pad="12"/>
<connect gate="G$1" pin="DIN" pad="3"/>
<connect gate="G$1" pin="DIO0" pad="20"/>
<connect gate="G$1" pin="DIO1" pad="19"/>
<connect gate="G$1" pin="DIO11" pad="7"/>
<connect gate="G$1" pin="DIO12" pad="4"/>
<connect gate="G$1" pin="DIO2" pad="18"/>
<connect gate="G$1" pin="DIO3" pad="17"/>
<connect gate="G$1" pin="DIO4" pad="11"/>
<connect gate="G$1" pin="DIO5" pad="15"/>
<connect gate="G$1" pin="DIO9" pad="13"/>
<connect gate="G$1" pin="DOUT" pad="2"/>
<connect gate="G$1" pin="DTR" pad="9"/>
<connect gate="G$1" pin="GND" pad="10"/>
<connect gate="G$1" pin="RES@14" pad="14"/>
<connect gate="G$1" pin="RES@8" pad="8"/>
<connect gate="G$1" pin="RESET" pad="5"/>
<connect gate="G$1" pin="RSSI" pad="6"/>
<connect gate="G$1" pin="RTS" pad="16"/>
<connect gate="G$1" pin="VDD" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="adafruit">
<packages>
<package name="1X03">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-3.175" y1="1.27" x2="-1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="0.635" x2="-3.81" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-0.635" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.27" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="0.635" x2="3.81" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-0.635" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="1.27" y2="-0.635" width="0.1524" layer="21"/>
<pad name="1" x="-2.54" y="0" drill="1.016" rot="R90"/>
<pad name="2" x="0" y="0" drill="1.016" rot="R90"/>
<pad name="3" x="2.54" y="0" drill="1.016" rot="R90"/>
<text x="-3.8862" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.81" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
<rectangle x1="-2.794" y1="-0.254" x2="-2.286" y2="0.254" layer="51"/>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
</package>
<package name="1X03-CLEANBIG">
<pad name="1" x="-2.54" y="0" drill="1.016" diameter="1.6764" rot="R90"/>
<pad name="2" x="0" y="0" drill="1.016" diameter="1.6764" rot="R90"/>
<pad name="3" x="2.54" y="0" drill="1.016" diameter="1.6764" rot="R90"/>
<text x="-3.8862" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.81" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
<rectangle x1="-2.794" y1="-0.254" x2="-2.286" y2="0.254" layer="51"/>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
</package>
<package name="SOT23-W">
<description>&lt;b&gt;SOT23&lt;/b&gt; - Wave soldering</description>
<wire x1="1.5724" y1="0.6604" x2="1.5724" y2="-0.6604" width="0.1524" layer="51"/>
<wire x1="1.5724" y1="-0.6604" x2="-1.5724" y2="-0.6604" width="0.1524" layer="51"/>
<wire x1="-1.5724" y1="-0.6604" x2="-1.5724" y2="0.6604" width="0.1524" layer="51"/>
<wire x1="-1.5724" y1="0.6604" x2="1.5724" y2="0.6604" width="0.1524" layer="51"/>
<wire x1="-1.5724" y1="-0.3984" x2="-1.5724" y2="0.6604" width="0.1524" layer="21"/>
<wire x1="1.5724" y1="0.6604" x2="1.5724" y2="-0.3984" width="0.1524" layer="21"/>
<wire x1="0.2954" y1="-0.6604" x2="-0.3094" y2="-0.6604" width="0.1524" layer="21"/>
<smd name="3" x="0" y="1.3" dx="2.8" dy="1.4" layer="1"/>
<smd name="2" x="1.1" y="-1.3" dx="1.2" dy="1.4" layer="1"/>
<smd name="1" x="-1.1" y="-1.3" dx="1.2" dy="1.4" layer="1"/>
<text x="2.032" y="0.254" size="0.4064" layer="25">&gt;NAME</text>
<text x="2.032" y="-0.508" size="0.4064" layer="27">&gt;VALUE</text>
<rectangle x1="-0.2286" y1="0.7112" x2="0.2286" y2="1.2954" layer="51"/>
<rectangle x1="0.7112" y1="-1.2954" x2="1.1684" y2="-0.7112" layer="51"/>
<rectangle x1="-1.1684" y1="-1.2954" x2="-0.7112" y2="-0.7112" layer="51"/>
</package>
<package name="SOT23">
<description>&lt;b&gt;SOT-23&lt;/b&gt;</description>
<wire x1="1.4224" y1="0.6604" x2="1.4224" y2="-0.6604" width="0.1524" layer="51"/>
<wire x1="1.4224" y1="-0.6604" x2="-1.4224" y2="-0.6604" width="0.1524" layer="51"/>
<wire x1="-1.4224" y1="-0.6604" x2="-1.4224" y2="0.6604" width="0.1524" layer="51"/>
<wire x1="-1.4224" y1="0.6604" x2="1.4224" y2="0.6604" width="0.1524" layer="51"/>
<smd name="3" x="0" y="1.1" dx="1" dy="1.4" layer="1"/>
<smd name="2" x="0.95" y="-1.1" dx="1" dy="1.4" layer="1"/>
<smd name="1" x="-0.95" y="-1.1" dx="1" dy="1.4" layer="1"/>
<text x="-1.905" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.2286" y1="0.7112" x2="0.2286" y2="1.2954" layer="51"/>
<rectangle x1="0.7112" y1="-1.2954" x2="1.1684" y2="-0.7112" layer="51"/>
<rectangle x1="-1.1684" y1="-1.2954" x2="-0.7112" y2="-0.7112" layer="51"/>
</package>
<package name="TO220V">
<description>&lt;b&gt;TO 200 vertical&lt;/b&gt;</description>
<wire x1="5.08" y1="-1.143" x2="4.953" y2="-4.064" width="0.127" layer="21"/>
<wire x1="4.699" y1="-4.318" x2="4.953" y2="-4.064" width="0.127" layer="21"/>
<wire x1="4.699" y1="-4.318" x2="-4.699" y2="-4.318" width="0.127" layer="21"/>
<wire x1="-4.953" y1="-4.064" x2="-4.699" y2="-4.318" width="0.127" layer="21"/>
<wire x1="-4.953" y1="-4.064" x2="-5.08" y2="-1.143" width="0.127" layer="21"/>
<circle x="-4.4958" y="-3.7084" radius="0.254" width="0.127" layer="21"/>
<pad name="1" x="-2.54" y="-2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="0" y="-2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="2.54" y="-2.54" drill="1.016" shape="long" rot="R90"/>
<text x="-5.08" y="-6.0452" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-7.62" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-3.175" y="-3.175" size="1.27" layer="51" ratio="10">1</text>
<text x="-0.635" y="-3.175" size="1.27" layer="51" ratio="10">2</text>
<text x="1.905" y="-3.175" size="1.27" layer="51" ratio="10">3</text>
<rectangle x1="-5.334" y1="-0.762" x2="5.334" y2="0" layer="21"/>
<rectangle x1="-5.334" y1="-1.27" x2="-3.429" y2="-0.762" layer="21"/>
<rectangle x1="-1.651" y1="-1.27" x2="-0.889" y2="-0.762" layer="21"/>
<rectangle x1="-3.429" y1="-1.27" x2="-1.651" y2="-0.762" layer="51"/>
<rectangle x1="0.889" y1="-1.27" x2="1.651" y2="-0.762" layer="21"/>
<rectangle x1="3.429" y1="-1.27" x2="5.334" y2="-0.762" layer="21"/>
<rectangle x1="-0.889" y1="-1.27" x2="0.889" y2="-0.762" layer="51"/>
<rectangle x1="1.651" y1="-1.27" x2="3.429" y2="-0.762" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="PINHD3">
<wire x1="-6.35" y1="-5.08" x2="1.27" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-5.08" x2="1.27" y2="5.08" width="0.4064" layer="94"/>
<wire x1="1.27" y1="5.08" x2="-6.35" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="5.08" x2="-6.35" y2="-5.08" width="0.4064" layer="94"/>
<text x="-6.35" y="5.715" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-7.62" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="2" x="-2.54" y="0" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="3" x="-2.54" y="-2.54" visible="pad" length="short" direction="pas" function="dot"/>
</symbol>
<symbol name="MOSFET-N">
<wire x1="0.762" y1="0.762" x2="0.762" y2="0" width="0.254" layer="94"/>
<wire x1="0.762" y1="0" x2="0.762" y2="-0.762" width="0.254" layer="94"/>
<wire x1="0.762" y1="3.175" x2="0.762" y2="2.54" width="0.254" layer="94"/>
<wire x1="0.762" y1="2.54" x2="0.762" y2="1.905" width="0.254" layer="94"/>
<wire x1="0.762" y1="0" x2="2.54" y2="0" width="0.1524" layer="94"/>
<wire x1="2.54" y1="0" x2="2.54" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="0.762" y1="-1.905" x2="0.762" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0.762" y1="-2.54" x2="0.762" y2="-3.175" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="0" y2="-2.54" width="0.254" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="0.762" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="3.81" y1="2.54" x2="3.81" y2="0.508" width="0.1524" layer="94"/>
<wire x1="3.81" y1="0.508" x2="3.81" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="3.81" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="0.762" y1="2.54" x2="3.81" y2="2.54" width="0.1524" layer="94"/>
<wire x1="4.572" y1="0.762" x2="4.318" y2="0.508" width="0.1524" layer="94"/>
<wire x1="4.318" y1="0.508" x2="3.81" y2="0.508" width="0.1524" layer="94"/>
<wire x1="3.81" y1="0.508" x2="3.302" y2="0.508" width="0.1524" layer="94"/>
<wire x1="3.302" y1="0.508" x2="3.048" y2="0.254" width="0.1524" layer="94"/>
<circle x="2.54" y="-2.54" radius="0.3592" width="0" layer="94"/>
<circle x="2.54" y="2.54" radius="0.3592" width="0" layer="94"/>
<text x="5.08" y="0.635" size="1.27" layer="95">&gt;NAME</text>
<text x="5.08" y="-1.27" size="1.27" layer="96">&gt;VALUE</text>
<text x="3.175" y="3.175" size="0.8128" layer="93">D</text>
<text x="3.175" y="-3.81" size="0.8128" layer="93">S</text>
<text x="-1.27" y="-1.905" size="0.8128" layer="93">G</text>
<pin name="G" x="-2.54" y="-2.54" visible="pad" length="short"/>
<pin name="S" x="2.54" y="-5.08" visible="pad" length="short" rot="R90"/>
<pin name="D" x="2.54" y="5.08" visible="pad" length="short" rot="R270"/>
<polygon width="0.1524" layer="94">
<vertex x="3.81" y="0.508"/>
<vertex x="3.302" y="-0.254"/>
<vertex x="4.318" y="-0.254"/>
</polygon>
<polygon width="0.1524" layer="94">
<vertex x="1.016" y="0"/>
<vertex x="2.032" y="0.762"/>
<vertex x="2.032" y="-0.762"/>
</polygon>
</symbol>
</symbols>
<devicesets>
<deviceset name="PINHD-1X3" prefix="JP" uservalue="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="A" symbol="PINHD3" x="0" y="0"/>
</gates>
<devices>
<device name="" package="1X03">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="CB" package="1X03-CLEANBIG">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="MOSFET-N" prefix="Q" uservalue="yes">
<description>&lt;b&gt;N-Channel Mosfet&lt;/b&gt;
&lt;ul&gt;
&lt;li&gt;2N7002E - 60V 260mA SOT23 [Digikey: 2N7002ET1GOSTR-ND] - &lt;b&gt;REEL&lt;/b&gt;&lt;/li&gt;
&lt;li&gt;BSH103 - 30V 850mA SOT23 [Digikey: 568-5013-1-ND]&lt;/li&gt;
&lt;/ul&gt;</description>
<gates>
<gate name="G$1" symbol="MOSFET-N" x="-2.54" y="0"/>
</gates>
<devices>
<device name="WAVE" package="SOT23-W">
<connects>
<connect gate="G$1" pin="D" pad="3"/>
<connect gate="G$1" pin="G" pad="1"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="REFLOW" package="SOT23">
<connects>
<connect gate="G$1" pin="D" pad="3"/>
<connect gate="G$1" pin="G" pad="1"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="GDS_TO220V" package="TO220V">
<connects>
<connect gate="G$1" pin="D" pad="2"/>
<connect gate="G$1" pin="G" pad="1"/>
<connect gate="G$1" pin="S" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun-Connectors">
<description>&lt;h3&gt;SparkFun Electronics' preferred foot prints&lt;/h3&gt;
In this library you'll find connectors and sockets- basically anything that can be plugged into or onto.&lt;br&gt;&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is the end user's responsibility to ensure correctness and suitablity for a given componet or application. If you enjoy using this library, please buy one of our products at www.sparkfun.com.
&lt;br&gt;&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/ 
&lt;br&gt;&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="1X02">
<wire x1="-0.635" y1="1.27" x2="0.635" y2="1.27" width="0.2032" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.27" y2="0.635" width="0.2032" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.905" y2="1.27" width="0.2032" layer="21"/>
<wire x1="1.905" y1="1.27" x2="3.175" y2="1.27" width="0.2032" layer="21"/>
<wire x1="3.175" y1="1.27" x2="3.81" y2="0.635" width="0.2032" layer="21"/>
<wire x1="3.81" y1="-0.635" x2="3.175" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="1.905" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="-1.27" y2="0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="-0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.81" y1="0.635" x2="3.81" y2="-0.635" width="0.2032" layer="21"/>
<pad name="1" x="0" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="2" x="2.54" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<text x="-1.3462" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
</package>
<package name="MOLEX-1X2">
<wire x1="-1.27" y1="3.048" x2="-1.27" y2="-2.54" width="0.127" layer="21"/>
<wire x1="3.81" y1="3.048" x2="3.81" y2="-2.54" width="0.127" layer="21"/>
<wire x1="3.81" y1="3.048" x2="-1.27" y2="3.048" width="0.127" layer="21"/>
<wire x1="3.81" y1="-2.54" x2="2.54" y2="-2.54" width="0.127" layer="21"/>
<wire x1="2.54" y1="-2.54" x2="0" y2="-2.54" width="0.127" layer="21"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="-2.54" width="0.127" layer="21"/>
<wire x1="0" y1="-2.54" x2="0" y2="-1.27" width="0.127" layer="21"/>
<wire x1="0" y1="-1.27" x2="2.54" y2="-1.27" width="0.127" layer="21"/>
<wire x1="2.54" y1="-1.27" x2="2.54" y2="-2.54" width="0.127" layer="21"/>
<pad name="1" x="0" y="0" drill="1.016" diameter="1.8796" shape="square"/>
<pad name="2" x="2.54" y="0" drill="1.016" diameter="1.8796"/>
</package>
<package name="SCREWTERMINAL-3.5MM-2">
<circle x="2" y="3" radius="0.2828" width="0.127" layer="51"/>
<wire x1="-1.75" y1="3.4" x2="5.25" y2="3.4" width="0.2032" layer="21"/>
<wire x1="5.25" y1="3.4" x2="5.25" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="5.25" y1="-2.8" x2="5.25" y2="-3.6" width="0.2032" layer="21"/>
<wire x1="5.25" y1="-3.6" x2="-1.75" y2="-3.6" width="0.2032" layer="21"/>
<wire x1="-1.75" y1="-3.6" x2="-1.75" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="-1.75" y1="-2.8" x2="-1.75" y2="3.4" width="0.2032" layer="21"/>
<wire x1="5.25" y1="-2.8" x2="-1.75" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="-1.75" y1="-1.35" x2="-2.25" y2="-1.35" width="0.2032" layer="51"/>
<wire x1="-2.25" y1="-1.35" x2="-2.25" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="-2.25" y1="-2.35" x2="-1.75" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="5.25" y1="3.15" x2="5.75" y2="3.15" width="0.2032" layer="51"/>
<wire x1="5.75" y1="3.15" x2="5.75" y2="2.15" width="0.2032" layer="51"/>
<wire x1="5.75" y1="2.15" x2="5.25" y2="2.15" width="0.2032" layer="51"/>
<pad name="1" x="0" y="0" drill="1.2" diameter="2.032" shape="square"/>
<pad name="2" x="3.5" y="0" drill="1.2" diameter="2.032"/>
<text x="-1.27" y="2.54" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.27" y="1.27" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="JST-2-SMD">
<description>2mm SMD side-entry connector. tDocu layer indicates the actual physical plastic housing. +/- indicate SparkFun standard batteries and wiring.</description>
<wire x1="-4" y1="-1" x2="-4" y2="-4.5" width="0.2032" layer="21"/>
<wire x1="-4" y1="-4.5" x2="-3.2" y2="-4.5" width="0.2032" layer="21"/>
<wire x1="-3.2" y1="-4.5" x2="-3.2" y2="-2" width="0.2032" layer="21"/>
<wire x1="-3.2" y1="-2" x2="-2" y2="-2" width="0.2032" layer="21"/>
<wire x1="2" y1="-2" x2="3.2" y2="-2" width="0.2032" layer="21"/>
<wire x1="3.2" y1="-2" x2="3.2" y2="-4.5" width="0.2032" layer="21"/>
<wire x1="3.2" y1="-4.5" x2="4" y2="-4.5" width="0.2032" layer="21"/>
<wire x1="4" y1="-4.5" x2="4" y2="-1" width="0.2032" layer="21"/>
<wire x1="2" y1="3" x2="-2" y2="3" width="0.2032" layer="21"/>
<smd name="1" x="-1" y="-3.7" dx="1" dy="4.6" layer="1"/>
<smd name="2" x="1" y="-3.7" dx="1" dy="4.6" layer="1"/>
<smd name="NC1" x="-3.4" y="1.5" dx="3.4" dy="1.6" layer="1" rot="R90"/>
<smd name="NC2" x="3.4" y="1.5" dx="3.4" dy="1.6" layer="1" rot="R90"/>
<text x="-1.27" y="1.27" size="0.4064" layer="25">&gt;Name</text>
<text x="-1.27" y="0" size="0.4064" layer="27">&gt;Value</text>
</package>
<package name="1X02_BIG">
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="-1.27" width="0.127" layer="21"/>
<wire x1="-1.27" y1="-1.27" x2="5.08" y2="-1.27" width="0.127" layer="21"/>
<wire x1="5.08" y1="-1.27" x2="5.08" y2="1.27" width="0.127" layer="21"/>
<wire x1="5.08" y1="1.27" x2="-1.27" y2="1.27" width="0.127" layer="21"/>
<pad name="P$1" x="0" y="0" drill="1.0668"/>
<pad name="P$2" x="3.81" y="0" drill="1.0668"/>
</package>
<package name="JST-2-SMD-VERT">
<wire x1="-4.1" y1="2.97" x2="4.2" y2="2.97" width="0.2032" layer="51"/>
<wire x1="4.2" y1="2.97" x2="4.2" y2="-2.13" width="0.2032" layer="51"/>
<wire x1="4.2" y1="-2.13" x2="-4.1" y2="-2.13" width="0.2032" layer="51"/>
<wire x1="-4.1" y1="-2.13" x2="-4.1" y2="2.97" width="0.2032" layer="51"/>
<wire x1="-4.1" y1="3" x2="4.2" y2="3" width="0.2032" layer="21"/>
<wire x1="4.2" y1="3" x2="4.2" y2="2.3" width="0.2032" layer="21"/>
<wire x1="-4.1" y1="3" x2="-4.1" y2="2.3" width="0.2032" layer="21"/>
<wire x1="2" y1="-2.1" x2="4.2" y2="-2.1" width="0.2032" layer="21"/>
<wire x1="4.2" y1="-2.1" x2="4.2" y2="-1.7" width="0.2032" layer="21"/>
<wire x1="-2" y1="-2.1" x2="-4.1" y2="-2.1" width="0.2032" layer="21"/>
<wire x1="-4.1" y1="-2.1" x2="-4.1" y2="-1.8" width="0.2032" layer="21"/>
<smd name="P$1" x="-3.4" y="0.27" dx="3" dy="1.6" layer="1" rot="R90"/>
<smd name="P$2" x="3.4" y="0.27" dx="3" dy="1.6" layer="1" rot="R90"/>
<smd name="VCC" x="-1" y="-2" dx="1" dy="5.5" layer="1"/>
<smd name="GND" x="1" y="-2" dx="1" dy="5.5" layer="1"/>
<text x="2.54" y="-5.08" size="1.27" layer="25">&gt;Name</text>
<text x="2.24" y="3.48" size="1.27" layer="27">&gt;Value</text>
</package>
<package name="R_SW_TH">
<wire x1="-1.651" y1="19.2532" x2="-1.651" y2="-1.3716" width="0.2032" layer="21"/>
<wire x1="-1.651" y1="-1.3716" x2="-1.651" y2="-2.2352" width="0.2032" layer="21"/>
<wire x1="-1.651" y1="19.2532" x2="13.589" y2="19.2532" width="0.2032" layer="21"/>
<wire x1="13.589" y1="19.2532" x2="13.589" y2="-2.2352" width="0.2032" layer="21"/>
<wire x1="13.589" y1="-2.2352" x2="-1.651" y2="-2.2352" width="0.2032" layer="21"/>
<pad name="P$1" x="0" y="0" drill="1.6002"/>
<pad name="P$2" x="0" y="16.9926" drill="1.6002"/>
<pad name="P$3" x="12.0904" y="15.494" drill="1.6002"/>
<pad name="P$4" x="12.0904" y="8.4582" drill="1.6002"/>
</package>
<package name="SCREWTERMINAL-5MM-2">
<wire x1="-3.1" y1="4.2" x2="8.1" y2="4.2" width="0.2032" layer="21"/>
<wire x1="8.1" y1="4.2" x2="8.1" y2="-2.3" width="0.2032" layer="21"/>
<wire x1="8.1" y1="-2.3" x2="8.1" y2="-3.3" width="0.2032" layer="21"/>
<wire x1="8.1" y1="-3.3" x2="-3.1" y2="-3.3" width="0.2032" layer="21"/>
<wire x1="-3.1" y1="-3.3" x2="-3.1" y2="-2.3" width="0.2032" layer="21"/>
<wire x1="-3.1" y1="-2.3" x2="-3.1" y2="4.2" width="0.2032" layer="21"/>
<wire x1="8.1" y1="-2.3" x2="-3.1" y2="-2.3" width="0.2032" layer="21"/>
<wire x1="-3.1" y1="-1.35" x2="-3.7" y2="-1.35" width="0.2032" layer="51"/>
<wire x1="-3.7" y1="-1.35" x2="-3.7" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="-3.7" y1="-2.35" x2="-3.1" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="8.1" y1="4" x2="8.7" y2="4" width="0.2032" layer="51"/>
<wire x1="8.7" y1="4" x2="8.7" y2="3" width="0.2032" layer="51"/>
<wire x1="8.7" y1="3" x2="8.1" y2="3" width="0.2032" layer="51"/>
<circle x="2.5" y="3.7" radius="0.2828" width="0.127" layer="51"/>
<pad name="1" x="0" y="0" drill="1.3" diameter="2.032" shape="square"/>
<pad name="2" x="5" y="0" drill="1.3" diameter="2.032"/>
<text x="-1.27" y="2.54" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.27" y="1.27" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="1X02_LOCK">
<wire x1="-0.635" y1="1.27" x2="0.635" y2="1.27" width="0.2032" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.27" y2="0.635" width="0.2032" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.905" y2="1.27" width="0.2032" layer="21"/>
<wire x1="1.905" y1="1.27" x2="3.175" y2="1.27" width="0.2032" layer="21"/>
<wire x1="3.175" y1="1.27" x2="3.81" y2="0.635" width="0.2032" layer="21"/>
<wire x1="3.81" y1="-0.635" x2="3.175" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="1.905" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="-1.27" y2="0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="-0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.81" y1="0.635" x2="3.81" y2="-0.635" width="0.2032" layer="21"/>
<pad name="1" x="-0.1778" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="2" x="2.7178" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<text x="-1.3462" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.2921" y1="-0.2921" x2="0.2921" y2="0.2921" layer="51"/>
<rectangle x1="2.2479" y1="-0.2921" x2="2.8321" y2="0.2921" layer="51"/>
</package>
<package name="MOLEX-1X2_LOCK">
<wire x1="-1.27" y1="3.048" x2="-1.27" y2="-2.54" width="0.127" layer="21"/>
<wire x1="3.81" y1="3.048" x2="3.81" y2="-2.54" width="0.127" layer="21"/>
<wire x1="3.81" y1="3.048" x2="-1.27" y2="3.048" width="0.127" layer="21"/>
<wire x1="3.81" y1="-2.54" x2="2.54" y2="-2.54" width="0.127" layer="21"/>
<wire x1="2.54" y1="-2.54" x2="0" y2="-2.54" width="0.127" layer="21"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="-2.54" width="0.127" layer="21"/>
<wire x1="0" y1="-2.54" x2="0" y2="-1.27" width="0.127" layer="21"/>
<wire x1="0" y1="-1.27" x2="2.54" y2="-1.27" width="0.127" layer="21"/>
<wire x1="2.54" y1="-1.27" x2="2.54" y2="-2.54" width="0.127" layer="21"/>
<pad name="1" x="-0.127" y="0" drill="1.016" diameter="1.8796" shape="square"/>
<pad name="2" x="2.667" y="0" drill="1.016" diameter="1.8796"/>
<rectangle x1="-0.2921" y1="-0.2921" x2="0.2921" y2="0.2921" layer="51"/>
<rectangle x1="2.2479" y1="-0.2921" x2="2.8321" y2="0.2921" layer="51"/>
</package>
<package name="1X02_LOCK_LONGPADS">
<description>This footprint was designed to help hold the alignment of a through-hole component (i.e.  6-pin header) while soldering it into place.  
You may notice that each hole has been shifted either up or down by 0.005 of an inch from it's more standard position (which is a perfectly straight line).  
This slight alteration caused the pins (the squares in the middle) to touch the edges of the holes.  Because they are alternating, it causes a "brace" 
to hold the component in place.  0.005 has proven to be the perfect amount of "off-center" position when using our standard breakaway headers.
Although looks a little odd when you look at the bare footprint, once you have a header in there, the alteration is very hard to notice.  Also,
if you push a header all the way into place, it is covered up entirely on the bottom side.  This idea of altering the position of holes to aid alignment 
will be further integrated into the Sparkfun Library for other footprints.  It can help hold any component with 3 or more connection pins.</description>
<wire x1="1.651" y1="0" x2="0.889" y2="0" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="0" x2="-1.016" y2="0" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="0.9906" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="0.9906" x2="-0.9906" y2="1.27" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="-0.9906" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-0.9906" x2="-0.9906" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.81" y1="0" x2="3.556" y2="0" width="0.2032" layer="21"/>
<wire x1="3.81" y1="0" x2="3.81" y2="-0.9906" width="0.2032" layer="21"/>
<wire x1="3.81" y1="-0.9906" x2="3.5306" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.81" y1="0" x2="3.81" y2="0.9906" width="0.2032" layer="21"/>
<wire x1="3.81" y1="0.9906" x2="3.5306" y2="1.27" width="0.2032" layer="21"/>
<pad name="1" x="-0.127" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="2.667" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-1.27" y="1.778" size="1.27" layer="25" font="vector">&gt;NAME</text>
<text x="-1.27" y="-3.302" size="1.27" layer="27" font="vector">&gt;VALUE</text>
<rectangle x1="-0.2921" y1="-0.2921" x2="0.2921" y2="0.2921" layer="51"/>
<rectangle x1="2.2479" y1="-0.2921" x2="2.8321" y2="0.2921" layer="51"/>
</package>
<package name="SCREWTERMINAL-3.5MM-2_LOCK">
<wire x1="-1.75" y1="3.4" x2="5.25" y2="3.4" width="0.2032" layer="21"/>
<wire x1="5.25" y1="3.4" x2="5.25" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="5.25" y1="-2.8" x2="5.25" y2="-3.6" width="0.2032" layer="21"/>
<wire x1="5.25" y1="-3.6" x2="-1.75" y2="-3.6" width="0.2032" layer="21"/>
<wire x1="-1.75" y1="-3.6" x2="-1.75" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="-1.75" y1="-2.8" x2="-1.75" y2="3.4" width="0.2032" layer="21"/>
<wire x1="5.25" y1="-2.8" x2="-1.75" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="-1.75" y1="-1.35" x2="-2.15" y2="-1.35" width="0.2032" layer="51"/>
<wire x1="-2.15" y1="-1.35" x2="-2.15" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="-2.15" y1="-2.35" x2="-1.75" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="5.25" y1="3.15" x2="5.65" y2="3.15" width="0.2032" layer="51"/>
<wire x1="5.65" y1="3.15" x2="5.65" y2="2.15" width="0.2032" layer="51"/>
<wire x1="5.65" y1="2.15" x2="5.25" y2="2.15" width="0.2032" layer="51"/>
<circle x="2" y="3" radius="0.2828" width="0.127" layer="51"/>
<circle x="0" y="0" radius="0.4318" width="0.0254" layer="51"/>
<circle x="3.5" y="0" radius="0.4318" width="0.0254" layer="51"/>
<pad name="1" x="-0.1778" y="0" drill="1.2" diameter="2.032" shape="square"/>
<pad name="2" x="3.6778" y="0" drill="1.2" diameter="2.032"/>
<text x="-1.27" y="2.54" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.27" y="1.27" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="1X02_LONGPADS">
<pad name="1" x="0" y="0" drill="1.1176" diameter="1.8796" shape="long" rot="R90"/>
<pad name="2" x="2.54" y="0" drill="1.1176" diameter="1.8796" shape="long" rot="R90"/>
</package>
<package name="1X02_NO_SILK">
<pad name="1" x="0" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="2" x="2.54" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<text x="-1.3462" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
</package>
<package name="JST-2-PTH">
<pad name="1" x="-1" y="0" drill="0.7" diameter="1.6"/>
<pad name="2" x="1" y="0" drill="0.7" diameter="1.6"/>
<text x="-1.27" y="5.27" size="0.4064" layer="25">&gt;Name</text>
<text x="-1.27" y="4" size="0.4064" layer="27">&gt;Value</text>
<text x="0.6" y="0.7" size="1.27" layer="51">+</text>
<text x="-1.4" y="0.7" size="1.27" layer="51">-</text>
<wire x1="-2.95" y1="-1.6" x2="-2.95" y2="6" width="0.2032" layer="21"/>
<wire x1="-2.95" y1="6" x2="2.95" y2="6" width="0.2032" layer="21"/>
<wire x1="2.95" y1="6" x2="2.95" y2="-1.6" width="0.2032" layer="21"/>
<wire x1="-2.95" y1="-1.6" x2="-2.3" y2="-1.6" width="0.2032" layer="21"/>
<wire x1="2.95" y1="-1.6" x2="2.3" y2="-1.6" width="0.2032" layer="21"/>
<wire x1="-2.3" y1="-1.6" x2="-2.3" y2="0" width="0.2032" layer="21"/>
<wire x1="2.3" y1="-1.6" x2="2.3" y2="0" width="0.2032" layer="21"/>
</package>
<package name="1X02_XTRA_BIG">
<wire x1="-5.08" y1="2.54" x2="-5.08" y2="-2.54" width="0.127" layer="21"/>
<wire x1="-5.08" y1="-2.54" x2="5.08" y2="-2.54" width="0.127" layer="21"/>
<wire x1="5.08" y1="-2.54" x2="5.08" y2="2.54" width="0.127" layer="21"/>
<wire x1="5.08" y1="2.54" x2="-5.08" y2="2.54" width="0.127" layer="21"/>
<pad name="1" x="-2.54" y="0" drill="2.0574" diameter="3.556"/>
<pad name="2" x="2.54" y="0" drill="2.0574" diameter="3.556"/>
</package>
<package name="1X02_PP_HOLES_ONLY">
<circle x="0" y="0" radius="0.635" width="0.127" layer="51"/>
<circle x="2.54" y="0" radius="0.635" width="0.127" layer="51"/>
<pad name="1" x="0" y="0" drill="0.889" diameter="0.8128" rot="R90"/>
<pad name="2" x="2.54" y="0" drill="0.889" diameter="0.8128" rot="R90"/>
<hole x="0" y="0" drill="1.4732"/>
<hole x="2.54" y="0" drill="1.4732"/>
</package>
<package name="SCREWTERMINAL-3.5MM-2-NS">
<wire x1="-1.75" y1="3.4" x2="5.25" y2="3.4" width="0.2032" layer="51"/>
<wire x1="5.25" y1="3.4" x2="5.25" y2="-2.8" width="0.2032" layer="51"/>
<wire x1="5.25" y1="-2.8" x2="5.25" y2="-3.6" width="0.2032" layer="51"/>
<wire x1="5.25" y1="-3.6" x2="-1.75" y2="-3.6" width="0.2032" layer="51"/>
<wire x1="-1.75" y1="-3.6" x2="-1.75" y2="-2.8" width="0.2032" layer="51"/>
<wire x1="-1.75" y1="-2.8" x2="-1.75" y2="3.4" width="0.2032" layer="51"/>
<wire x1="5.25" y1="-2.8" x2="-1.75" y2="-2.8" width="0.2032" layer="51"/>
<wire x1="-1.75" y1="-1.35" x2="-2.15" y2="-1.35" width="0.2032" layer="51"/>
<wire x1="-2.15" y1="-1.35" x2="-2.15" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="-2.15" y1="-2.35" x2="-1.75" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="5.25" y1="3.15" x2="5.65" y2="3.15" width="0.2032" layer="51"/>
<wire x1="5.65" y1="3.15" x2="5.65" y2="2.15" width="0.2032" layer="51"/>
<wire x1="5.65" y1="2.15" x2="5.25" y2="2.15" width="0.2032" layer="51"/>
<circle x="2" y="3" radius="0.2828" width="0.127" layer="51"/>
<pad name="1" x="0" y="0" drill="1.2" diameter="2.032" shape="square"/>
<pad name="2" x="3.5" y="0" drill="1.2" diameter="2.032"/>
<text x="-1.27" y="2.54" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.27" y="1.27" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="JST-2-PTH-NS">
<wire x1="-2" y1="0" x2="-2" y2="-1.8" width="0.2032" layer="51"/>
<wire x1="-2" y1="-1.8" x2="-3" y2="-1.8" width="0.2032" layer="51"/>
<wire x1="-3" y1="-1.8" x2="-3" y2="6" width="0.2032" layer="51"/>
<wire x1="-3" y1="6" x2="3" y2="6" width="0.2032" layer="51"/>
<wire x1="3" y1="6" x2="3" y2="-1.8" width="0.2032" layer="51"/>
<wire x1="3" y1="-1.8" x2="2" y2="-1.8" width="0.2032" layer="51"/>
<wire x1="2" y1="-1.8" x2="2" y2="0" width="0.2032" layer="51"/>
<pad name="1" x="-1" y="0" drill="0.7" diameter="1.6"/>
<pad name="2" x="1" y="0" drill="0.7" diameter="1.6"/>
<text x="-1.27" y="5.27" size="0.4064" layer="25">&gt;Name</text>
<text x="-1.27" y="4" size="0.4064" layer="27">&gt;Value</text>
<text x="0.6" y="0.7" size="1.27" layer="51">+</text>
<text x="-1.4" y="0.7" size="1.27" layer="51">-</text>
</package>
<package name="JST-2-PTH-KIT">
<description>&lt;H3&gt;JST-2-PTH-KIT&lt;/h3&gt;
2-Pin JST, through-hole connector&lt;br&gt;
&lt;br&gt;
&lt;b&gt;Warning:&lt;/b&gt; This is the KIT version of this package. This package has a smaller diameter top stop mask, which doesn't cover the diameter of the pad. This means only the bottom side of the pads' copper will be exposed. You'll only be able to solder to the bottom side.</description>
<wire x1="-2" y1="0" x2="-2" y2="-1.8" width="0.2032" layer="51"/>
<wire x1="-2" y1="-1.8" x2="-3" y2="-1.8" width="0.2032" layer="51"/>
<wire x1="-3" y1="-1.8" x2="-3" y2="6" width="0.2032" layer="51"/>
<wire x1="-3" y1="6" x2="3" y2="6" width="0.2032" layer="51"/>
<wire x1="3" y1="6" x2="3" y2="-1.8" width="0.2032" layer="51"/>
<wire x1="3" y1="-1.8" x2="2" y2="-1.8" width="0.2032" layer="51"/>
<wire x1="2" y1="-1.8" x2="2" y2="0" width="0.2032" layer="51"/>
<pad name="1" x="-1" y="0" drill="0.7" diameter="1.4478" stop="no"/>
<pad name="2" x="1" y="0" drill="0.7" diameter="1.4478" stop="no"/>
<text x="-1.27" y="5.27" size="0.4064" layer="25">&gt;Name</text>
<text x="-1.27" y="4" size="0.4064" layer="27">&gt;Value</text>
<text x="0.6" y="0.7" size="1.27" layer="51">+</text>
<text x="-1.4" y="0.7" size="1.27" layer="51">-</text>
<polygon width="0.127" layer="30">
<vertex x="-0.9975" y="-0.6604" curve="-90.025935"/>
<vertex x="-1.6604" y="0" curve="-90.017354"/>
<vertex x="-1" y="0.6604" curve="-90"/>
<vertex x="-0.3396" y="0" curve="-90.078137"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="-1" y="-0.2865" curve="-90.08005"/>
<vertex x="-1.2865" y="0" curve="-90.040011"/>
<vertex x="-1" y="0.2865" curve="-90"/>
<vertex x="-0.7135" y="0" curve="-90"/>
</polygon>
<polygon width="0.127" layer="30">
<vertex x="1.0025" y="-0.6604" curve="-90.025935"/>
<vertex x="0.3396" y="0" curve="-90.017354"/>
<vertex x="1" y="0.6604" curve="-90"/>
<vertex x="1.6604" y="0" curve="-90.078137"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="1" y="-0.2865" curve="-90.08005"/>
<vertex x="0.7135" y="0" curve="-90.040011"/>
<vertex x="1" y="0.2865" curve="-90"/>
<vertex x="1.2865" y="0" curve="-90"/>
</polygon>
</package>
<package name="SPRINGTERMINAL-2.54MM-2">
<wire x1="-4.2" y1="7.88" x2="-4.2" y2="-2.8" width="0.254" layer="21"/>
<wire x1="-4.2" y1="-2.8" x2="-4.2" y2="-4.72" width="0.254" layer="51"/>
<wire x1="-4.2" y1="-4.72" x2="3.44" y2="-4.72" width="0.254" layer="51"/>
<wire x1="3.44" y1="-4.72" x2="3.44" y2="-2.8" width="0.254" layer="51"/>
<wire x1="3.44" y1="7.88" x2="-4.2" y2="7.88" width="0.254" layer="21"/>
<wire x1="0" y1="0" x2="0" y2="5.08" width="0.254" layer="1"/>
<wire x1="0" y1="0" x2="0" y2="5.08" width="0.254" layer="16"/>
<wire x1="2.54" y1="0" x2="2.54" y2="5.08" width="0.254" layer="16"/>
<wire x1="2.54" y1="0" x2="2.54" y2="5.08" width="0.254" layer="1"/>
<wire x1="-4.2" y1="-2.8" x2="3.44" y2="-2.8" width="0.254" layer="21"/>
<wire x1="3.44" y1="4" x2="3.44" y2="1" width="0.254" layer="21"/>
<wire x1="3.44" y1="7.88" x2="3.44" y2="6" width="0.254" layer="21"/>
<wire x1="3.44" y1="-0.9" x2="3.44" y2="-2.8" width="0.254" layer="21"/>
<pad name="1" x="0" y="0" drill="1.1" diameter="1.9"/>
<pad name="P$2" x="0" y="5.08" drill="1.1" diameter="1.9"/>
<pad name="P$3" x="2.54" y="5.08" drill="1.1" diameter="1.9"/>
<pad name="2" x="2.54" y="0" drill="1.1" diameter="1.9"/>
</package>
<package name="1X02_2.54_SCREWTERM">
<pad name="P2" x="0" y="0" drill="1.016" shape="square"/>
<pad name="P1" x="2.54" y="0" drill="1.016" shape="square"/>
<wire x1="-1.5" y1="3.25" x2="4" y2="3.25" width="0.2032" layer="21"/>
<wire x1="4" y1="3.25" x2="4" y2="2.5" width="0.2032" layer="21"/>
<wire x1="4" y1="2.5" x2="4" y2="-3.25" width="0.2032" layer="21"/>
<wire x1="4" y1="-3.25" x2="-1.5" y2="-3.25" width="0.2032" layer="21"/>
<wire x1="-1.5" y1="-3.25" x2="-1.5" y2="2.5" width="0.2032" layer="21"/>
<wire x1="-1.5" y1="2.5" x2="-1.5" y2="3.25" width="0.2032" layer="21"/>
<wire x1="-1.5" y1="2.5" x2="4" y2="2.5" width="0.2032" layer="21"/>
</package>
<package name="JST-2-PTH-VERT">
<wire x1="-2.95" y1="-2.25" x2="-2.95" y2="2.25" width="0.2032" layer="21"/>
<wire x1="-2.95" y1="2.25" x2="2.95" y2="2.25" width="0.2032" layer="21"/>
<wire x1="2.95" y1="2.25" x2="2.95" y2="-2.25" width="0.2032" layer="21"/>
<wire x1="2.95" y1="-2.25" x2="1" y2="-2.25" width="0.2032" layer="21"/>
<wire x1="-1" y1="-2.25" x2="-2.95" y2="-2.25" width="0.2032" layer="21"/>
<wire x1="-1" y1="-1.75" x2="1" y2="-1.75" width="0.2032" layer="21"/>
<wire x1="1" y1="-1.75" x2="1" y2="-2.25" width="0.2032" layer="21"/>
<wire x1="-1" y1="-1.75" x2="-1" y2="-2.25" width="0.2032" layer="21"/>
<pad name="1" x="-1" y="-0.55" drill="0.7" diameter="1.6"/>
<pad name="2" x="1" y="-0.55" drill="0.7" diameter="1.6"/>
<text x="-1.984" y="3" size="0.4064" layer="25">&gt;Name</text>
<text x="2.016" y="3" size="0.4064" layer="27">&gt;Value</text>
<text x="0.616" y="0.75" size="1.27" layer="51">+</text>
<text x="-1.384" y="0.75" size="1.27" layer="51">-</text>
</package>
<package name="1X02_POKEHOME">
<description>2 pin poke-home connector

part number 2062-2P from STA</description>
<wire x1="-7" y1="-4" x2="-7" y2="2" width="0.2032" layer="21"/>
<wire x1="-7" y1="2" x2="-7" y2="4" width="0.2032" layer="21"/>
<wire x1="4.7" y1="4" x2="4.7" y2="-4" width="0.2032" layer="21"/>
<wire x1="4.7" y1="-4" x2="-7" y2="-4" width="0.2032" layer="21"/>
<smd name="P2" x="5.25" y="-2" dx="3.5" dy="2" layer="1"/>
<smd name="P1" x="5.25" y="2" dx="3.5" dy="2" layer="1"/>
<smd name="P4" x="-4" y="-2" dx="6" dy="2" layer="1"/>
<smd name="P3" x="-4" y="2" dx="6" dy="2" layer="1"/>
<wire x1="-7" y1="4" x2="4.7" y2="4" width="0.2032" layer="21"/>
<text x="0.635" y="-3.175" size="0.4064" layer="25">&gt;NAME</text>
</package>
<package name="1X04">
<wire x1="6.985" y1="1.27" x2="8.255" y2="1.27" width="0.2032" layer="21"/>
<wire x1="8.255" y1="1.27" x2="8.89" y2="0.635" width="0.2032" layer="21"/>
<wire x1="8.89" y1="-0.635" x2="8.255" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.81" y1="0.635" x2="4.445" y2="1.27" width="0.2032" layer="21"/>
<wire x1="4.445" y1="1.27" x2="5.715" y2="1.27" width="0.2032" layer="21"/>
<wire x1="5.715" y1="1.27" x2="6.35" y2="0.635" width="0.2032" layer="21"/>
<wire x1="6.35" y1="-0.635" x2="5.715" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="5.715" y1="-1.27" x2="4.445" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="3.81" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="6.985" y1="1.27" x2="6.35" y2="0.635" width="0.2032" layer="21"/>
<wire x1="6.35" y1="-0.635" x2="6.985" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="8.255" y1="-1.27" x2="6.985" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0.635" y2="1.27" width="0.2032" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.27" y2="0.635" width="0.2032" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.905" y2="1.27" width="0.2032" layer="21"/>
<wire x1="1.905" y1="1.27" x2="3.175" y2="1.27" width="0.2032" layer="21"/>
<wire x1="3.175" y1="1.27" x2="3.81" y2="0.635" width="0.2032" layer="21"/>
<wire x1="3.81" y1="-0.635" x2="3.175" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="1.905" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="-1.27" y2="0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="-0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="8.89" y1="0.635" x2="8.89" y2="-0.635" width="0.2032" layer="21"/>
<pad name="1" x="0" y="0" drill="1.016" diameter="1.8796" shape="square" rot="R90"/>
<pad name="2" x="2.54" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="3" x="5.08" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="4" x="7.62" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<text x="-1.3462" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="7.366" y1="-0.254" x2="7.874" y2="0.254" layer="51"/>
<rectangle x1="4.826" y1="-0.254" x2="5.334" y2="0.254" layer="51"/>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
</package>
<package name="MOLEX-1X4">
<wire x1="-1.27" y1="3.048" x2="-1.27" y2="-2.54" width="0.127" layer="21"/>
<wire x1="8.89" y1="3.048" x2="8.89" y2="-2.54" width="0.127" layer="21"/>
<wire x1="8.89" y1="3.048" x2="-1.27" y2="3.048" width="0.127" layer="21"/>
<wire x1="8.89" y1="-2.54" x2="7.62" y2="-2.54" width="0.127" layer="21"/>
<wire x1="7.62" y1="-2.54" x2="0" y2="-2.54" width="0.127" layer="21"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="-2.54" width="0.127" layer="21"/>
<wire x1="0" y1="-2.54" x2="0" y2="-1.27" width="0.127" layer="21"/>
<wire x1="0" y1="-1.27" x2="7.62" y2="-1.27" width="0.127" layer="21"/>
<wire x1="7.62" y1="-1.27" x2="7.62" y2="-2.54" width="0.127" layer="21"/>
<pad name="1" x="0" y="0" drill="1.016" diameter="1.8796" shape="square"/>
<pad name="2" x="2.54" y="0" drill="1.016" diameter="1.8796"/>
<pad name="3" x="5.08" y="0" drill="1.016" diameter="1.8796"/>
<pad name="4" x="7.62" y="0" drill="1.016" diameter="1.8796"/>
</package>
<package name="SCREWTERMINAL-3.5MM-4">
<wire x1="-1.75" y1="3.4" x2="12.25" y2="3.4" width="0.2032" layer="21"/>
<wire x1="12.25" y1="3.4" x2="12.25" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="12.25" y1="-2.8" x2="12.25" y2="-3.6" width="0.2032" layer="21"/>
<wire x1="12.25" y1="-3.6" x2="-1.75" y2="-3.6" width="0.2032" layer="21"/>
<wire x1="-1.75" y1="-3.6" x2="-1.75" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="-1.75" y1="-2.8" x2="-1.75" y2="3.4" width="0.2032" layer="21"/>
<wire x1="12.25" y1="-2.8" x2="-1.75" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="-1.75" y1="-1.35" x2="-2.25" y2="-1.35" width="0.2032" layer="51"/>
<wire x1="-2.25" y1="-1.35" x2="-2.25" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="-2.25" y1="-2.35" x2="-1.75" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="12.25" y1="3.15" x2="12.75" y2="3.15" width="0.2032" layer="51"/>
<wire x1="12.75" y1="3.15" x2="12.75" y2="2.15" width="0.2032" layer="51"/>
<wire x1="12.75" y1="2.15" x2="12.25" y2="2.15" width="0.2032" layer="51"/>
<circle x="0" y="0" radius="0.425" width="0.001" layer="51"/>
<circle x="3.5" y="0" radius="0.425" width="0.001" layer="51"/>
<circle x="7" y="0" radius="0.425" width="0.001" layer="51"/>
<circle x="10.5" y="0" radius="0.425" width="0.001" layer="51"/>
<pad name="1" x="0" y="0" drill="1.2" diameter="2.032" shape="square"/>
<pad name="2" x="3.5" y="0" drill="1.2" diameter="2.032"/>
<pad name="3" x="7" y="0" drill="1.2" diameter="2.032"/>
<pad name="4" x="10.5" y="0" drill="1.2" diameter="2.032"/>
<text x="-1.27" y="2.54" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.27" y="1.27" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="1X04-1.27MM">
<wire x1="-0.381" y1="-0.889" x2="0.381" y2="-0.889" width="0.127" layer="21"/>
<wire x1="0.381" y1="-0.889" x2="0.635" y2="-0.635" width="0.127" layer="21"/>
<wire x1="0.635" y1="-0.635" x2="0.889" y2="-0.889" width="0.127" layer="21"/>
<wire x1="0.889" y1="-0.889" x2="1.651" y2="-0.889" width="0.127" layer="21"/>
<wire x1="1.651" y1="-0.889" x2="1.905" y2="-0.635" width="0.127" layer="21"/>
<wire x1="1.905" y1="-0.635" x2="2.159" y2="-0.889" width="0.127" layer="21"/>
<wire x1="2.159" y1="-0.889" x2="2.921" y2="-0.889" width="0.127" layer="21"/>
<wire x1="2.921" y1="-0.889" x2="3.175" y2="-0.635" width="0.127" layer="21"/>
<wire x1="3.175" y1="-0.635" x2="3.429" y2="-0.889" width="0.127" layer="21"/>
<wire x1="3.429" y1="-0.889" x2="4.191" y2="-0.889" width="0.127" layer="21"/>
<wire x1="4.191" y1="0.889" x2="3.429" y2="0.889" width="0.127" layer="21"/>
<wire x1="3.429" y1="0.889" x2="3.175" y2="0.635" width="0.127" layer="21"/>
<wire x1="3.175" y1="0.635" x2="2.921" y2="0.889" width="0.127" layer="21"/>
<wire x1="2.921" y1="0.889" x2="2.159" y2="0.889" width="0.127" layer="21"/>
<wire x1="2.159" y1="0.889" x2="1.905" y2="0.635" width="0.127" layer="21"/>
<wire x1="1.905" y1="0.635" x2="1.651" y2="0.889" width="0.127" layer="21"/>
<wire x1="1.651" y1="0.889" x2="0.889" y2="0.889" width="0.127" layer="21"/>
<wire x1="0.889" y1="0.889" x2="0.635" y2="0.635" width="0.127" layer="21"/>
<wire x1="0.635" y1="0.635" x2="0.381" y2="0.889" width="0.127" layer="21"/>
<wire x1="0.381" y1="0.889" x2="-0.381" y2="0.889" width="0.127" layer="21"/>
<wire x1="-0.381" y1="0.889" x2="-0.889" y2="0.381" width="0.127" layer="21"/>
<wire x1="-0.889" y1="-0.381" x2="-0.381" y2="-0.889" width="0.127" layer="21"/>
<wire x1="-0.889" y1="0.381" x2="-0.889" y2="-0.381" width="0.127" layer="21"/>
<wire x1="4.191" y1="0.889" x2="4.699" y2="0.381" width="0.127" layer="21"/>
<wire x1="4.699" y1="0.381" x2="4.699" y2="-0.381" width="0.127" layer="21"/>
<wire x1="4.699" y1="-0.381" x2="4.191" y2="-0.889" width="0.127" layer="21"/>
<pad name="4" x="3.81" y="0" drill="0.508" diameter="1"/>
<pad name="3" x="2.54" y="0" drill="0.508" diameter="1"/>
<pad name="2" x="1.27" y="0" drill="0.508" diameter="1"/>
<pad name="1" x="0" y="0" drill="0.508" diameter="1"/>
<text x="-0.508" y="1.27" size="0.4064" layer="25">&gt;NAME</text>
<text x="-0.508" y="-1.651" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="1X04_LOCK">
<wire x1="6.985" y1="1.27" x2="8.255" y2="1.27" width="0.2032" layer="21"/>
<wire x1="8.255" y1="1.27" x2="8.89" y2="0.635" width="0.2032" layer="21"/>
<wire x1="8.89" y1="-0.635" x2="8.255" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.81" y1="0.635" x2="4.445" y2="1.27" width="0.2032" layer="21"/>
<wire x1="4.445" y1="1.27" x2="5.715" y2="1.27" width="0.2032" layer="21"/>
<wire x1="5.715" y1="1.27" x2="6.35" y2="0.635" width="0.2032" layer="21"/>
<wire x1="6.35" y1="-0.635" x2="5.715" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="5.715" y1="-1.27" x2="4.445" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="3.81" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="6.985" y1="1.27" x2="6.35" y2="0.635" width="0.2032" layer="21"/>
<wire x1="6.35" y1="-0.635" x2="6.985" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="8.255" y1="-1.27" x2="6.985" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0.635" y2="1.27" width="0.2032" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.27" y2="0.635" width="0.2032" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.905" y2="1.27" width="0.2032" layer="21"/>
<wire x1="1.905" y1="1.27" x2="3.175" y2="1.27" width="0.2032" layer="21"/>
<wire x1="3.175" y1="1.27" x2="3.81" y2="0.635" width="0.2032" layer="21"/>
<wire x1="3.81" y1="-0.635" x2="3.175" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="1.905" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="-1.27" y2="0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="-0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="8.89" y1="0.635" x2="8.89" y2="-0.635" width="0.2032" layer="21"/>
<pad name="1" x="0" y="0.127" drill="1.016" diameter="1.8796" shape="square" rot="R90"/>
<pad name="2" x="2.54" y="-0.127" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="3" x="5.08" y="0.127" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="4" x="7.62" y="-0.127" drill="1.016" diameter="1.8796" rot="R90"/>
<text x="-1.3462" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="7.366" y1="-0.254" x2="7.874" y2="0.254" layer="51"/>
<rectangle x1="4.826" y1="-0.254" x2="5.334" y2="0.254" layer="51"/>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
</package>
<package name="1X04_LOCK_LONGPADS">
<description>This footprint was designed to help hold the alignment of a through-hole component (i.e.  6-pin header) while soldering it into place.  
You may notice that each hole has been shifted either up or down by 0.005 of an inch from it's more standard position (which is a perfectly straight line).  
This slight alteration caused the pins (the squares in the middle) to touch the edges of the holes.  Because they are alternating, it causes a "brace" 
to hold the component in place.  0.005 has proven to be the perfect amount of "off-center" position when using our standard breakaway headers.
Although looks a little odd when you look at the bare footprint, once you have a header in there, the alteration is very hard to notice.  Also,
if you push a header all the way into place, it is covered up entirely on the bottom side.  This idea of altering the position of holes to aid alignment 
will be further integrated into the Sparkfun Library for other footprints.  It can help hold any component with 3 or more connection pins.</description>
<wire x1="1.524" y1="-0.127" x2="1.016" y2="-0.127" width="0.2032" layer="21"/>
<wire x1="4.064" y1="-0.127" x2="3.556" y2="-0.127" width="0.2032" layer="21"/>
<wire x1="6.604" y1="-0.127" x2="6.096" y2="-0.127" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-0.127" x2="-1.016" y2="-0.127" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-0.127" x2="-1.27" y2="0.8636" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="0.8636" x2="-0.9906" y2="1.143" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-0.127" x2="-1.27" y2="-1.1176" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-1.1176" x2="-0.9906" y2="-1.397" width="0.2032" layer="21"/>
<wire x1="8.89" y1="-0.127" x2="8.636" y2="-0.127" width="0.2032" layer="21"/>
<wire x1="8.89" y1="-0.127" x2="8.89" y2="-1.1176" width="0.2032" layer="21"/>
<wire x1="8.89" y1="-1.1176" x2="8.6106" y2="-1.397" width="0.2032" layer="21"/>
<wire x1="8.89" y1="-0.127" x2="8.89" y2="0.8636" width="0.2032" layer="21"/>
<wire x1="8.89" y1="0.8636" x2="8.6106" y2="1.143" width="0.2032" layer="21"/>
<pad name="1" x="0" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="2.54" y="-0.254" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="5.08" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="7.62" y="-0.254" drill="1.016" shape="long" rot="R90"/>
<text x="-1.27" y="1.778" size="1.27" layer="25" font="vector">&gt;NAME</text>
<text x="-1.27" y="-3.302" size="1.27" layer="27" font="vector">&gt;VALUE</text>
<rectangle x1="-0.2921" y1="-0.4191" x2="0.2921" y2="0.1651" layer="51"/>
<rectangle x1="2.2479" y1="-0.4191" x2="2.8321" y2="0.1651" layer="51"/>
<rectangle x1="4.7879" y1="-0.4191" x2="5.3721" y2="0.1651" layer="51"/>
<rectangle x1="7.3279" y1="-0.4191" x2="7.9121" y2="0.1651" layer="51" rot="R90"/>
</package>
<package name="MOLEX-1X4_LOCK">
<wire x1="-1.27" y1="3.048" x2="-1.27" y2="-2.54" width="0.127" layer="21"/>
<wire x1="8.89" y1="3.048" x2="8.89" y2="-2.54" width="0.127" layer="21"/>
<wire x1="8.89" y1="3.048" x2="-1.27" y2="3.048" width="0.127" layer="21"/>
<wire x1="8.89" y1="-2.54" x2="7.62" y2="-2.54" width="0.127" layer="21"/>
<wire x1="7.62" y1="-2.54" x2="0" y2="-2.54" width="0.127" layer="21"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="-2.54" width="0.127" layer="21"/>
<wire x1="0" y1="-2.54" x2="0" y2="-1.27" width="0.127" layer="21"/>
<wire x1="0" y1="-1.27" x2="7.62" y2="-1.27" width="0.127" layer="21"/>
<wire x1="7.62" y1="-1.27" x2="7.62" y2="-2.54" width="0.127" layer="21"/>
<pad name="1" x="0" y="0.127" drill="1.016" diameter="1.8796" shape="square"/>
<pad name="2" x="2.54" y="-0.127" drill="1.016" diameter="1.8796"/>
<pad name="3" x="5.08" y="0.127" drill="1.016" diameter="1.8796"/>
<pad name="4" x="7.62" y="-0.127" drill="1.016" diameter="1.8796"/>
</package>
<package name="1X04-SMD">
<wire x1="5.08" y1="1.25" x2="-5.08" y2="1.25" width="0.127" layer="51"/>
<wire x1="-5.08" y1="1.25" x2="-5.08" y2="-1.25" width="0.127" layer="51"/>
<wire x1="-5.08" y1="-1.25" x2="-3.81" y2="-1.25" width="0.127" layer="51"/>
<wire x1="-3.81" y1="-1.25" x2="-1.27" y2="-1.25" width="0.127" layer="51"/>
<wire x1="-1.27" y1="-1.25" x2="1.27" y2="-1.25" width="0.127" layer="51"/>
<wire x1="1.27" y1="-1.25" x2="3.81" y2="-1.25" width="0.127" layer="51"/>
<wire x1="3.81" y1="-1.25" x2="5.08" y2="-1.25" width="0.127" layer="51"/>
<wire x1="5.08" y1="-1.25" x2="5.08" y2="1.25" width="0.127" layer="51"/>
<wire x1="3.81" y1="-1.25" x2="3.81" y2="-7.25" width="0.127" layer="51"/>
<wire x1="1.27" y1="-1.25" x2="1.27" y2="-7.25" width="0.127" layer="51"/>
<wire x1="-1.27" y1="-1.25" x2="-1.27" y2="-7.25" width="0.127" layer="51"/>
<wire x1="-3.81" y1="-1.25" x2="-3.81" y2="-7.25" width="0.127" layer="51"/>
<smd name="4" x="3.81" y="5" dx="3" dy="1" layer="1" rot="R90"/>
<smd name="3" x="1.27" y="5" dx="3" dy="1" layer="1" rot="R90"/>
<smd name="2" x="-1.27" y="5" dx="3" dy="1" layer="1" rot="R90"/>
<smd name="1" x="-3.81" y="5" dx="3" dy="1" layer="1" rot="R90"/>
<hole x="-2.54" y="0" drill="1.4"/>
<hole x="2.54" y="0" drill="1.4"/>
</package>
<package name="1X04_LONGPADS">
<wire x1="-1.27" y1="0.635" x2="-1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="8.89" y1="0.635" x2="8.89" y2="-0.635" width="0.2032" layer="21"/>
<pad name="1" x="0" y="0" drill="1.1176" diameter="1.8796" shape="long" rot="R90"/>
<pad name="2" x="2.54" y="0" drill="1.1176" diameter="1.8796" shape="long" rot="R90"/>
<pad name="3" x="5.08" y="0" drill="1.1176" diameter="1.8796" shape="long" rot="R90"/>
<pad name="4" x="7.62" y="0" drill="1.1176" diameter="1.8796" shape="long" rot="R90"/>
<text x="-1.3462" y="2.4638" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-3.81" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="7.366" y1="-0.254" x2="7.874" y2="0.254" layer="51"/>
<rectangle x1="4.826" y1="-0.254" x2="5.334" y2="0.254" layer="51"/>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
</package>
<package name="1X04_NO_SILK">
<pad name="1" x="0" y="0" drill="1.016" diameter="1.8796" shape="square" rot="R90"/>
<pad name="2" x="2.54" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="3" x="5.08" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="4" x="7.62" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<text x="-1.3462" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="7.366" y1="-0.254" x2="7.874" y2="0.254" layer="51"/>
<rectangle x1="4.826" y1="-0.254" x2="5.334" y2="0.254" layer="51"/>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
</package>
<package name="JST-4-PTH">
<pad name="1" x="-3" y="0" drill="0.7" diameter="1.6"/>
<pad name="2" x="-1" y="0" drill="0.7" diameter="1.6"/>
<pad name="3" x="1" y="0" drill="0.7" diameter="1.6"/>
<pad name="4" x="3" y="0" drill="0.7" diameter="1.6"/>
<text x="-2.27" y="5.27" size="0.4064" layer="25">&gt;Name</text>
<text x="-2.27" y="4" size="0.4064" layer="27">&gt;Value</text>
<text x="-3.4" y="0.7" size="1.27" layer="51">+</text>
<text x="-1.4" y="0.7" size="1.27" layer="51">-</text>
<text x="0.7" y="0.9" size="0.8" layer="51">S</text>
<text x="2.7" y="0.9" size="0.8" layer="51">S</text>
<wire x1="-4.95" y1="-1.6" x2="-4.95" y2="6" width="0.2032" layer="21"/>
<wire x1="-4.95" y1="6" x2="4.95" y2="6" width="0.2032" layer="21"/>
<wire x1="4.95" y1="6" x2="4.95" y2="-1.6" width="0.2032" layer="21"/>
<wire x1="-4.95" y1="-1.6" x2="-4.3" y2="-1.6" width="0.2032" layer="21"/>
<wire x1="4.95" y1="-1.6" x2="4.3" y2="-1.6" width="0.2032" layer="21"/>
<wire x1="-4.3" y1="-1.6" x2="-4.3" y2="0" width="0.2032" layer="21"/>
<wire x1="4.3" y1="-1.6" x2="4.3" y2="0" width="0.2032" layer="21"/>
</package>
<package name="SCREWTERMINAL-3.5MM-4_LOCK">
<wire x1="-2.3" y1="3.4" x2="12.8" y2="3.4" width="0.2032" layer="21"/>
<wire x1="12.8" y1="3.4" x2="12.8" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="12.8" y1="-2.8" x2="12.8" y2="-3.6" width="0.2032" layer="21"/>
<wire x1="12.8" y1="-3.6" x2="-2.3" y2="-3.6" width="0.2032" layer="21"/>
<wire x1="-2.3" y1="-3.6" x2="-2.3" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="-2.3" y1="-2.8" x2="-2.3" y2="3.4" width="0.2032" layer="21"/>
<wire x1="12.8" y1="-2.8" x2="-2.3" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="-2.3" y1="-1.35" x2="-2.7" y2="-1.35" width="0.2032" layer="51"/>
<wire x1="-2.7" y1="-1.35" x2="-2.7" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="-2.7" y1="-2.35" x2="-2.3" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="12.8" y1="3.15" x2="13.2" y2="3.15" width="0.2032" layer="51"/>
<wire x1="13.2" y1="3.15" x2="13.2" y2="2.15" width="0.2032" layer="51"/>
<wire x1="13.2" y1="2.15" x2="12.8" y2="2.15" width="0.2032" layer="51"/>
<circle x="0" y="0" radius="0.425" width="0.001" layer="51"/>
<circle x="3.5" y="0" radius="0.425" width="0.001" layer="51"/>
<circle x="7" y="0" radius="0.425" width="0.001" layer="51"/>
<circle x="10.5" y="0" radius="0.425" width="0.001" layer="51"/>
<pad name="1" x="-0.1778" y="0" drill="1.2" diameter="2.032" shape="square"/>
<pad name="2" x="3.6778" y="0" drill="1.2" diameter="2.032"/>
<pad name="3" x="6.8222" y="0" drill="1.2" diameter="2.032"/>
<pad name="4" x="10.6778" y="0" drill="1.2" diameter="2.032"/>
<text x="-1.27" y="2.54" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.27" y="1.27" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="1X04-1MM-RA">
<wire x1="-1.5" y1="-4.6" x2="1.5" y2="-4.6" width="0.254" layer="21"/>
<wire x1="-3" y1="-2" x2="-3" y2="-0.35" width="0.254" layer="21"/>
<wire x1="2.25" y1="-0.35" x2="3" y2="-0.35" width="0.254" layer="21"/>
<wire x1="3" y1="-0.35" x2="3" y2="-2" width="0.254" layer="21"/>
<wire x1="-3" y1="-0.35" x2="-2.25" y2="-0.35" width="0.254" layer="21"/>
<circle x="-2.5" y="0.3" radius="0.1414" width="0.4" layer="21"/>
<smd name="NC2" x="-2.8" y="-3.675" dx="1.2" dy="2" layer="1"/>
<smd name="NC1" x="2.8" y="-3.675" dx="1.2" dy="2" layer="1"/>
<smd name="1" x="-1.5" y="0" dx="0.6" dy="1.35" layer="1"/>
<smd name="2" x="-0.5" y="0" dx="0.6" dy="1.35" layer="1"/>
<smd name="3" x="0.5" y="0" dx="0.6" dy="1.35" layer="1"/>
<smd name="4" x="1.5" y="0" dx="0.6" dy="1.35" layer="1"/>
<text x="-1.73" y="1.73" size="0.4064" layer="25" rot="R180">&gt;NAME</text>
<text x="3.46" y="1.73" size="0.4064" layer="27" rot="R180">&gt;VALUE</text>
</package>
<package name="1X04_SMD_STRAIGHT_COMBO">
<wire x1="7.62" y1="1.27" x2="7.62" y2="-1.27" width="0.4064" layer="1"/>
<wire x1="5.08" y1="1.27" x2="5.08" y2="-1.27" width="0.4064" layer="1"/>
<wire x1="2.54" y1="1.27" x2="2.54" y2="-1.27" width="0.4064" layer="1"/>
<wire x1="0" y1="1.27" x2="0" y2="-1.27" width="0.4064" layer="1"/>
<wire x1="-1.37" y1="-1.25" x2="-1.37" y2="1.25" width="0.1778" layer="21"/>
<wire x1="8.99" y1="1.25" x2="8.99" y2="-1.25" width="0.1778" layer="21"/>
<wire x1="-0.73" y1="-1.25" x2="-1.37" y2="-1.25" width="0.1778" layer="21"/>
<wire x1="8.99" y1="-1.25" x2="8.32" y2="-1.25" width="0.1778" layer="21"/>
<wire x1="8.32" y1="1.25" x2="8.99" y2="1.25" width="0.1778" layer="21"/>
<wire x1="-1.37" y1="1.25" x2="-0.73" y2="1.25" width="0.1778" layer="21"/>
<wire x1="5.869" y1="-1.29" x2="6.831" y2="-1.29" width="0.1778" layer="21"/>
<wire x1="5.869" y1="1.25" x2="6.831" y2="1.25" width="0.1778" layer="21"/>
<wire x1="3.329" y1="-1.29" x2="4.291" y2="-1.29" width="0.1778" layer="21"/>
<wire x1="3.329" y1="1.25" x2="4.291" y2="1.25" width="0.1778" layer="21"/>
<wire x1="0.789" y1="-1.29" x2="1.751" y2="-1.29" width="0.1778" layer="21"/>
<wire x1="0.789" y1="1.25" x2="1.751" y2="1.25" width="0.1778" layer="21"/>
<smd name="3" x="5.08" y="-1.65" dx="2" dy="1" layer="1" rot="R270"/>
<smd name="1" x="0" y="-1.65" dx="2" dy="1" layer="1" rot="R270"/>
<smd name="4" x="7.62" y="1.65" dx="2" dy="1" layer="1" rot="R270"/>
<smd name="2" x="2.54" y="1.65" dx="2" dy="1" layer="1" rot="R270"/>
<smd name="1-2" x="0" y="1.65" dx="2" dy="1" layer="1" rot="R90"/>
<smd name="2-2" x="2.54" y="-1.65" dx="2" dy="1" layer="1" rot="R90"/>
<smd name="3-2" x="5.08" y="1.65" dx="2" dy="1" layer="1" rot="R90"/>
<smd name="4-2" x="7.62" y="-1.65" dx="2" dy="1" layer="1" rot="R90"/>
<text x="0" y="2.921" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="-4.191" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="1X04-SMD_LONG">
<wire x1="5.08" y1="1.25" x2="-5.08" y2="1.25" width="0.127" layer="51"/>
<wire x1="-5.08" y1="1.25" x2="-5.08" y2="-1.25" width="0.127" layer="51"/>
<wire x1="-5.08" y1="-1.25" x2="-3.81" y2="-1.25" width="0.127" layer="51"/>
<wire x1="-3.81" y1="-1.25" x2="-1.27" y2="-1.25" width="0.127" layer="51"/>
<wire x1="-1.27" y1="-1.25" x2="1.27" y2="-1.25" width="0.127" layer="51"/>
<wire x1="1.27" y1="-1.25" x2="3.81" y2="-1.25" width="0.127" layer="51"/>
<wire x1="3.81" y1="-1.25" x2="5.08" y2="-1.25" width="0.127" layer="51"/>
<wire x1="5.08" y1="-1.25" x2="5.08" y2="1.25" width="0.127" layer="51"/>
<wire x1="3.81" y1="-1.25" x2="3.81" y2="-7.25" width="0.127" layer="51"/>
<wire x1="1.27" y1="-1.25" x2="1.27" y2="-7.25" width="0.127" layer="51"/>
<wire x1="-1.27" y1="-1.25" x2="-1.27" y2="-7.25" width="0.127" layer="51"/>
<wire x1="-3.81" y1="-1.25" x2="-3.81" y2="-7.25" width="0.127" layer="51"/>
<smd name="4" x="3.81" y="5.5" dx="4" dy="1" layer="1" rot="R90"/>
<smd name="3" x="1.27" y="5.5" dx="4" dy="1" layer="1" rot="R90"/>
<smd name="2" x="-1.27" y="5.5" dx="4" dy="1" layer="1" rot="R90"/>
<smd name="1" x="-3.81" y="5.5" dx="4" dy="1" layer="1" rot="R90"/>
<hole x="-2.54" y="0" drill="1.4"/>
<hole x="2.54" y="0" drill="1.4"/>
</package>
<package name="JST-4-PTH-VERT">
<wire x1="-4.95" y1="-2.25" x2="-4.95" y2="2.25" width="0.2032" layer="21"/>
<wire x1="-4.95" y1="2.25" x2="4.95" y2="2.25" width="0.2032" layer="21"/>
<wire x1="4.95" y1="-2.25" x2="1" y2="-2.25" width="0.2032" layer="21"/>
<wire x1="-1" y1="-2.25" x2="-4.95" y2="-2.25" width="0.2032" layer="21"/>
<wire x1="-1" y1="-1.75" x2="1" y2="-1.75" width="0.2032" layer="21"/>
<wire x1="1" y1="-1.75" x2="1" y2="-2.25" width="0.2032" layer="21"/>
<wire x1="-1" y1="-1.75" x2="-1" y2="-2.25" width="0.2032" layer="21"/>
<wire x1="4.95" y1="2.25" x2="4.95" y2="-2.25" width="0.2032" layer="21"/>
<pad name="1" x="-3" y="-0.55" drill="0.7" diameter="1.6"/>
<pad name="2" x="-1" y="-0.55" drill="0.7" diameter="1.6"/>
<pad name="3" x="1" y="-0.55" drill="0.7" diameter="1.6"/>
<pad name="4" x="3" y="-0.55" drill="0.7" diameter="1.6"/>
<text x="-3" y="3" size="0.4064" layer="25">&gt;Name</text>
<text x="1" y="3" size="0.4064" layer="27">&gt;Value</text>
<text x="-1.4" y="0.75" size="1.27" layer="51">+</text>
<text x="0.6" y="0.75" size="1.27" layer="51">-</text>
<text x="2.7" y="0.95" size="0.8" layer="51">Y</text>
<text x="-3.3" y="0.95" size="0.8" layer="51">B</text>
</package>
<package name="1X04_SMD_RA_FEMALE">
<wire x1="-5.205" y1="4.25" x2="-5.205" y2="-4.25" width="0.1778" layer="21"/>
<wire x1="5.205" y1="4.25" x2="-5.205" y2="4.25" width="0.1778" layer="21"/>
<wire x1="5.205" y1="-4.25" x2="5.205" y2="4.25" width="0.1778" layer="21"/>
<wire x1="-5.205" y1="-4.25" x2="5.205" y2="-4.25" width="0.1778" layer="21"/>
<rectangle x1="-1.59" y1="6.8" x2="-0.95" y2="7.65" layer="51"/>
<rectangle x1="0.95" y1="6.8" x2="1.59" y2="7.65" layer="51"/>
<rectangle x1="-4.13" y1="6.8" x2="-3.49" y2="7.65" layer="51"/>
<smd name="3" x="1.27" y="7.225" dx="1.25" dy="3" layer="1" rot="R180"/>
<smd name="2" x="-1.27" y="7.225" dx="1.25" dy="3" layer="1" rot="R180"/>
<smd name="1" x="-3.81" y="7.225" dx="1.25" dy="3" layer="1" rot="R180"/>
<text x="-4.425" y="2.775" size="1" layer="27">&gt;Value</text>
<text x="-4.225" y="-3.395" size="1" layer="25">&gt;Name</text>
<rectangle x1="3.49" y1="6.8" x2="4.13" y2="7.65" layer="51"/>
<smd name="4" x="3.81" y="7.225" dx="1.25" dy="3" layer="1" rot="R180"/>
</package>
<package name="1X04-1.5MM_JST">
<pad name="4" x="4.5" y="0" drill="0.7"/>
<pad name="3" x="3" y="0" drill="0.7"/>
<pad name="2" x="1.5" y="0" drill="0.7"/>
<pad name="1" x="0" y="0" drill="0.7"/>
<text x="-0.508" y="1.27" size="0.4064" layer="25">&gt;NAME</text>
<text x="-0.508" y="-1.651" size="0.4064" layer="27">&gt;VALUE</text>
<wire x1="-1.5" y1="2.2" x2="6" y2="2.2" width="0.3048" layer="21"/>
<wire x1="6" y1="2.2" x2="6" y2="-1.5" width="0.3048" layer="21"/>
<wire x1="6" y1="-1.5" x2="4.5" y2="-1.5" width="0.3048" layer="21"/>
<wire x1="4.5" y1="-1.5" x2="4.5" y2="-1" width="0.3048" layer="21"/>
<wire x1="4.5" y1="-1" x2="0" y2="-1" width="0.3048" layer="21"/>
<wire x1="0" y1="-1" x2="0" y2="-1.5" width="0.3048" layer="21"/>
<wire x1="0" y1="-1.5" x2="-1.5" y2="-1.5" width="0.3048" layer="21"/>
<wire x1="-1.5" y1="-1.5" x2="-1.5" y2="2.2" width="0.3048" layer="21"/>
</package>
<package name="1X04_NO_SILK_ALL_ROUND">
<pad name="1" x="0" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="2" x="2.54" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="3" x="5.08" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="4" x="7.62" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<text x="-1.3462" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="7.366" y1="-0.254" x2="7.874" y2="0.254" layer="51"/>
<rectangle x1="4.826" y1="-0.254" x2="5.334" y2="0.254" layer="51"/>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="M02">
<wire x1="3.81" y1="-2.54" x2="-2.54" y2="-2.54" width="0.4064" layer="94"/>
<wire x1="1.27" y1="2.54" x2="2.54" y2="2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="5.08" x2="-2.54" y2="-2.54" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-2.54" x2="3.81" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-2.54" y1="5.08" x2="3.81" y2="5.08" width="0.4064" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
<text x="-2.54" y="5.842" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
<symbol name="M04">
<wire x1="1.27" y1="-5.08" x2="-5.08" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="2.54" x2="0" y2="2.54" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="0" x2="0" y2="0" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="-2.54" x2="0" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="-5.08" y1="7.62" x2="-5.08" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-5.08" x2="1.27" y2="7.62" width="0.4064" layer="94"/>
<wire x1="-5.08" y1="7.62" x2="1.27" y2="7.62" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="5.08" x2="0" y2="5.08" width="0.6096" layer="94"/>
<text x="-5.08" y="-7.62" size="1.778" layer="96">&gt;VALUE</text>
<text x="-5.08" y="8.382" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="5.08" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="5.08" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="3" x="5.08" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="4" x="5.08" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="M02" prefix="J" uservalue="yes">
<description>Standard 2-pin 0.1" header. Use with &lt;br&gt;
- straight break away headers ( PRT-00116)&lt;br&gt;
- right angle break away headers (PRT-00553)&lt;br&gt;
- swiss pins (PRT-00743)&lt;br&gt;
- machine pins (PRT-00117)&lt;br&gt;
- female headers (PRT-00115)&lt;br&gt;&lt;br&gt;

 Molex polarized connector foot print use with: PRT-08233 with associated crimp pins and housings.&lt;br&gt;&lt;br&gt;

2.54_SCREWTERM for use with  PRT-10571.&lt;br&gt;&lt;br&gt;

3.5mm Screw Terminal footprints for  PRT-08084&lt;br&gt;&lt;br&gt;

5mm Screw Terminal footprints for use with PRT-08432</description>
<gates>
<gate name="G$1" symbol="M02" x="-2.54" y="0"/>
</gates>
<devices>
<device name="PTH" package="1X02">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="POLAR" package="MOLEX-1X2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3.5MM" package="SCREWTERMINAL-3.5MM-2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CONN-08399" constant="no"/>
</technology>
</technologies>
</device>
<device name="-JST-2MM-SMT" package="JST-2-SMD">
<connects>
<connect gate="G$1" pin="1" pad="2"/>
<connect gate="G$1" pin="2" pad="1"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CONN-11443"/>
</technology>
</technologies>
</device>
<device name="PTH2" package="1X02_BIG">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="4UCON-15767" package="JST-2-SMD-VERT">
<connects>
<connect gate="G$1" pin="1" pad="GND"/>
<connect gate="G$1" pin="2" pad="VCC"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="ROCKER" package="R_SW_TH">
<connects>
<connect gate="G$1" pin="1" pad="P$3"/>
<connect gate="G$1" pin="2" pad="P$4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="5MM" package="SCREWTERMINAL-5MM-2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="STOREFRONT_ID" value="PRT-08432" constant="no"/>
</technology>
</technologies>
</device>
<device name="LOCK" package="1X02_LOCK">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="POLAR_LOCK" package="MOLEX-1X2_LOCK">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="LOCK_LONGPADS" package="1X02_LOCK_LONGPADS">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3.5MM_LOCK" package="SCREWTERMINAL-3.5MM-2_LOCK">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CONN-08399" constant="no"/>
</technology>
</technologies>
</device>
<device name="PTH3" package="1X02_LONGPADS">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="1X02_NO_SILK" package="1X02_NO_SILK">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="JST-PTH-2" package="JST-2-PTH">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CONN-09863" constant="no"/>
<attribute name="SKU" value="PRT-09914" constant="no"/>
</technology>
</technologies>
</device>
<device name="PTH4" package="1X02_XTRA_BIG">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="POGO_PIN_HOLES_ONLY" package="1X02_PP_HOLES_ONLY">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3.5MM-NO_SILK" package="SCREWTERMINAL-3.5MM-2-NS">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CONN-08399" constant="no"/>
</technology>
</technologies>
</device>
<device name="-JST-2-PTH-NO_SILK" package="JST-2-PTH-NS">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="JST-PTH-2-KIT" package="JST-2-PTH-KIT">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SPRING-2.54-RA" package="SPRINGTERMINAL-2.54MM-2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2.54MM_SCREWTERM" package="1X02_2.54_SCREWTERM">
<connects>
<connect gate="G$1" pin="1" pad="P1"/>
<connect gate="G$1" pin="2" pad="P2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="JST-PTH-VERT" package="JST-2-PTH-VERT">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMALL_POKEHOME" package="1X02_POKEHOME">
<connects>
<connect gate="G$1" pin="1" pad="P1 P3"/>
<connect gate="G$1" pin="2" pad="P2 P4"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CONN-13512"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="M04" prefix="J" uservalue="yes">
<description>&lt;b&gt;Header 4&lt;/b&gt;
Standard 4-pin 0.1" header. Use with straight break away headers (SKU : PRT-00116), right angle break away headers (PRT-00553), swiss pins (PRT-00743), machine pins (PRT-00117), and female headers (PRT-00115). Molex polarized connector foot print use with SKU : PRT-08231 with associated crimp pins and housings. 1MM SMD Version SKU: PRT-10208</description>
<gates>
<gate name="G$1" symbol="M04" x="-2.54" y="0"/>
</gates>
<devices>
<device name="PTH" package="1X04">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CONN-09696" constant="no"/>
</technology>
</technologies>
</device>
<device name="POLAR" package="MOLEX-1X4">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SCREW" package="SCREWTERMINAL-3.5MM-4">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="Combine 2x8399" constant="no"/>
</technology>
</technologies>
</device>
<device name="1.27MM" package="1X04-1.27MM">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="LOCK" package="1X04_LOCK">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CONN-09696" constant="no"/>
</technology>
</technologies>
</device>
<device name="LOCK_LONGPADS" package="1X04_LOCK_LONGPADS">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CONN-09696" constant="no"/>
</technology>
</technologies>
</device>
<device name="POLAR_LOCK" package="MOLEX-1X4_LOCK">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMD" package="1X04-SMD">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="LONGPADS" package="1X04_LONGPADS">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CONN-09696" constant="no"/>
</technology>
</technologies>
</device>
<device name="1X04_NO_SILK" package="1X04_NO_SILK">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CONN-09696" constant="no"/>
</technology>
</technologies>
</device>
<device name="JST-PTH" package="JST-4-PTH">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="SKU" value="PRT-09916" constant="no"/>
</technology>
</technologies>
</device>
<device name="SCREW_LOCK" package="SCREWTERMINAL-3.5MM-4_LOCK">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMD2" package="1X04-1MM-RA">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMD_STRAIGHT_COMBO" package="1X04_SMD_STRAIGHT_COMBO">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CONN-08511"/>
<attribute name="VALUE" value="1X04_SMD_STRAIGHT_COMBO"/>
</technology>
</technologies>
</device>
<device name="SMD_LONG" package="1X04-SMD_LONG">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="JST-PTH-VERT" package="JST-4-PTH-VERT">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CONN-13251"/>
</technology>
</technologies>
</device>
<device name="SMD_RA_FEMALE" package="1X04_SMD_RA_FEMALE">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="JST" package="1X04-1.5MM_JST">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CONN-12477"/>
</technology>
</technologies>
</device>
<device name="NO_SILK_ALL_ROUND" package="1X04_NO_SILK_ALL_ROUND">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CONN-09696" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="linear">
<description>&lt;b&gt;Linear Devices&lt;/b&gt;&lt;p&gt;
Operational amplifiers,  comparators, voltage regulators, ADCs, DACs, etc.&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="TO92">
<description>&lt;b&gt;TO-92&lt;/b&gt;</description>
<wire x1="-2.095" y1="-1.651" x2="-0.7869" y2="2.5484" width="0.1524" layer="21" curve="-111.097684"/>
<wire x1="0.7869" y1="2.5484" x2="2.095" y2="-1.651" width="0.1524" layer="21" curve="-111.097684"/>
<wire x1="-2.095" y1="-1.651" x2="2.095" y2="-1.651" width="0.1524" layer="21"/>
<wire x1="-2.254" y1="-0.254" x2="-0.286" y2="-0.254" width="0.1524" layer="51"/>
<wire x1="-2.655" y1="-0.254" x2="-2.254" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="-0.286" y1="-0.254" x2="0.286" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="2.254" y1="-0.254" x2="2.655" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="0.286" y1="-0.254" x2="2.254" y2="-0.254" width="0.1524" layer="51"/>
<wire x1="-0.7864" y1="2.5484" x2="0.7864" y2="2.5484" width="0.1524" layer="51" curve="-34.298964"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="0" y="1.905" drill="0.8128" shape="octagon"/>
<pad name="3" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="2.413" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="2.921" y="-1.27" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="TO220H">
<description>&lt;b&gt;TO-220&lt;/b&gt;</description>
<wire x1="-5.207" y1="-7.62" x2="5.207" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="5.207" y1="8.255" x2="-5.207" y2="8.255" width="0.1524" layer="21"/>
<wire x1="5.207" y1="-7.62" x2="5.207" y2="4.826" width="0.1524" layer="21"/>
<wire x1="5.207" y1="4.826" x2="4.318" y2="4.826" width="0.1524" layer="21"/>
<wire x1="4.318" y1="4.826" x2="4.318" y2="6.35" width="0.1524" layer="21"/>
<wire x1="4.318" y1="6.35" x2="5.207" y2="6.35" width="0.1524" layer="21"/>
<wire x1="5.207" y1="6.35" x2="5.207" y2="8.255" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="-7.62" x2="-5.207" y2="4.826" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="4.826" x2="-4.318" y2="4.826" width="0.1524" layer="21"/>
<wire x1="-4.318" y1="4.826" x2="-4.318" y2="6.35" width="0.1524" layer="21"/>
<wire x1="-4.318" y1="6.35" x2="-5.207" y2="6.35" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="6.35" x2="-5.207" y2="8.255" width="0.1524" layer="21"/>
<wire x1="-4.572" y1="-6.985" x2="4.572" y2="-6.985" width="0.0508" layer="21"/>
<wire x1="4.572" y1="1.27" x2="4.572" y2="-6.985" width="0.0508" layer="21"/>
<wire x1="4.572" y1="1.27" x2="-4.572" y2="1.27" width="0.0508" layer="21"/>
<wire x1="-4.572" y1="-6.985" x2="-4.572" y2="1.27" width="0.0508" layer="21"/>
<circle x="0" y="4.826" radius="1.8034" width="0.1524" layer="21"/>
<circle x="0" y="4.826" radius="2.54" width="0" layer="43"/>
<circle x="0" y="4.826" radius="2.54" width="0" layer="42"/>
<pad name="1" x="-2.54" y="-10.16" drill="1.1176" shape="long" rot="R90"/>
<pad name="2" x="0" y="-10.16" drill="1.1176" shape="long" rot="R90"/>
<pad name="3" x="2.54" y="-10.16" drill="1.1176" shape="long" rot="R90"/>
<text x="-5.461" y="-10.922" size="1.778" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="7.366" y="-11.049" size="1.778" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
<rectangle x1="2.159" y1="-11.049" x2="2.921" y2="-10.414" layer="21"/>
<rectangle x1="-0.381" y1="-11.049" x2="0.381" y2="-10.414" layer="21"/>
<rectangle x1="-2.921" y1="-11.049" x2="-2.159" y2="-10.414" layer="21"/>
<rectangle x1="-3.175" y1="-10.414" x2="-1.905" y2="-7.62" layer="21"/>
<rectangle x1="-0.635" y1="-10.414" x2="0.635" y2="-7.62" layer="21"/>
<rectangle x1="1.905" y1="-10.414" x2="3.175" y2="-7.62" layer="21"/>
<hole x="0" y="4.826" drill="3.302"/>
</package>
<package name="SOT223">
<description>&lt;b&gt;Small Outline Transistor&lt;/b&gt;</description>
<wire x1="3.2766" y1="1.778" x2="3.2766" y2="-1.778" width="0.2032" layer="21"/>
<wire x1="3.2766" y1="-1.778" x2="-3.2766" y2="-1.778" width="0.2032" layer="21"/>
<wire x1="-3.2766" y1="-1.778" x2="-3.2766" y2="1.778" width="0.2032" layer="21"/>
<wire x1="-3.2766" y1="1.778" x2="3.2766" y2="1.778" width="0.2032" layer="21"/>
<smd name="1" x="-2.3114" y="-3.0988" dx="1.2192" dy="2.2352" layer="1"/>
<smd name="2" x="0" y="-3.0988" dx="1.2192" dy="2.2352" layer="1"/>
<smd name="3" x="2.3114" y="-3.0988" dx="1.2192" dy="2.2352" layer="1"/>
<smd name="4" x="0" y="3.099" dx="3.6" dy="2.2" layer="1"/>
<text x="1.0208" y="-4.318" size="0.8128" layer="21" ratio="12">3</text>
<text x="1.905" y="2.54" size="0.8128" layer="21" ratio="12">4</text>
<text x="-3.4526" y="-4.318" size="0.8128" layer="21" ratio="12">1</text>
<text x="-1.2906" y="-4.3274" size="0.8128" layer="21" ratio="12">2</text>
<text x="-2.54" y="0.0508" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-1.3208" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.6002" y1="1.8034" x2="1.6002" y2="3.6576" layer="51"/>
<rectangle x1="-0.4318" y1="-3.6576" x2="0.4318" y2="-1.8034" layer="51"/>
<rectangle x1="-2.7432" y1="-3.6576" x2="-1.8796" y2="-1.8034" layer="51"/>
<rectangle x1="1.8796" y1="-3.6576" x2="2.7432" y2="-1.8034" layer="51"/>
<rectangle x1="-1.6002" y1="1.8034" x2="1.6002" y2="3.6576" layer="51"/>
<rectangle x1="-0.4318" y1="-3.6576" x2="0.4318" y2="-1.8034" layer="51"/>
<rectangle x1="-2.7432" y1="-3.6576" x2="-1.8796" y2="-1.8034" layer="51"/>
<rectangle x1="1.8796" y1="-3.6576" x2="2.7432" y2="-1.8034" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="317">
<wire x1="-7.62" y1="-2.54" x2="7.62" y2="-2.54" width="0.4064" layer="94"/>
<wire x1="7.62" y1="-2.54" x2="7.62" y2="5.08" width="0.4064" layer="94"/>
<wire x1="7.62" y1="5.08" x2="-7.62" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-7.62" y1="5.08" x2="-7.62" y2="-2.54" width="0.4064" layer="94"/>
<text x="-7.62" y="8.255" size="1.778" layer="95">&gt;NAME</text>
<text x="-7.62" y="5.715" size="1.778" layer="96">&gt;VALUE</text>
<text x="-2.032" y="-1.524" size="1.524" layer="95">ADJ</text>
<pin name="VI" x="-10.16" y="2.54" length="short" direction="in"/>
<pin name="ADJ" x="0" y="-5.08" visible="pad" length="short" direction="in" rot="R90"/>
<pin name="VO" x="10.16" y="2.54" length="short" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="*317" prefix="IC">
<description>Positive &lt;b&gt;VOLTAGE REGULATOR&lt;/b&gt;</description>
<gates>
<gate name="A1" symbol="317" x="0" y="-2.54"/>
</gates>
<devices>
<device name="LZ" package="TO92">
<connects>
<connect gate="A1" pin="ADJ" pad="1"/>
<connect gate="A1" pin="VI" pad="3"/>
<connect gate="A1" pin="VO" pad="2"/>
</connects>
<technologies>
<technology name="LM"/>
</technologies>
</device>
<device name="T" package="TO220H">
<connects>
<connect gate="A1" pin="ADJ" pad="1"/>
<connect gate="A1" pin="VI" pad="3"/>
<connect gate="A1" pin="VO" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="EMP" package="SOT223">
<connects>
<connect gate="A1" pin="ADJ" pad="1"/>
<connect gate="A1" pin="VI" pad="3"/>
<connect gate="A1" pin="VO" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="+12V">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<wire x1="1.27" y1="-0.635" x2="0" y2="1.27" width="0.254" layer="94"/>
<wire x1="0" y1="1.27" x2="-1.27" y2="-0.635" width="0.254" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="+12V" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="+3V3">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="+3V3" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="+5V">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="+5V" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="V+">
<wire x1="0.889" y1="-1.27" x2="0" y2="0.127" width="0.254" layer="94"/>
<wire x1="0" y1="0.127" x2="-0.889" y2="-1.27" width="0.254" layer="94"/>
<wire x1="-0.889" y1="-1.27" x2="0.889" y2="-1.27" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="V+" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="GND">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="+12V" prefix="P+">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="+12V" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="+3V3" prefix="+3V3">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="+3V3" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="+5V" prefix="P+">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="+5V" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="V+" prefix="P+">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="V+" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="GND" prefix="GND">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U$1" library="SparkFun-Boards" deviceset="ARDUINO_PRO_MINI" device=""/>
<part name="U$2" library="SparkFun-RF" deviceset="XBEE-1" device="B1"/>
<part name="JP1_L_MTR" library="adafruit" deviceset="PINHD-1X3" device="" value="N/A"/>
<part name="JP2_R_MTR" library="adafruit" deviceset="PINHD-1X3" device="" value="N/A"/>
<part name="JP3_ARM" library="adafruit" deviceset="PINHD-1X3" device="" value="N/A"/>
<part name="BATT_POWER" library="SparkFun-Connectors" deviceset="M02" device="PTH" value="N/A"/>
<part name="LED_STRIP" library="SparkFun-Connectors" deviceset="M04" device="LOCK" value="N/A"/>
<part name="Q1" library="adafruit" deviceset="MOSFET-N" device="REFLOW" value="N/A"/>
<part name="Q2" library="adafruit" deviceset="MOSFET-N" device="REFLOW" value="N/A"/>
<part name="Q3" library="adafruit" deviceset="MOSFET-N" device="REFLOW" value="N/A"/>
<part name="IC1" library="linear" deviceset="*317" device="EMP"/>
<part name="U$3" library="SparkFun-Boards" deviceset="LOGIC_LEVEL_CONVERTER" device=""/>
<part name="P+1" library="supply1" deviceset="+12V" device=""/>
<part name="+3V1" library="supply1" deviceset="+3V3" device=""/>
<part name="P+2" library="supply1" deviceset="+5V" device=""/>
<part name="P+3" library="supply1" deviceset="V+" device=""/>
<part name="GND1" library="supply1" deviceset="GND" device=""/>
<part name="GND2" library="supply1" deviceset="GND" device=""/>
<part name="P+4" library="supply1" deviceset="V+" device=""/>
<part name="P+5" library="supply1" deviceset="+12V" device=""/>
<part name="P+6" library="supply1" deviceset="V+" device=""/>
<part name="GND3" library="supply1" deviceset="GND" device=""/>
<part name="GND4" library="supply1" deviceset="GND" device=""/>
<part name="+3V2" library="supply1" deviceset="+3V3" device=""/>
<part name="GND5" library="supply1" deviceset="GND" device=""/>
<part name="GND6" library="supply1" deviceset="GND" device=""/>
<part name="GND7" library="supply1" deviceset="GND" device=""/>
<part name="GND8" library="supply1" deviceset="GND" device=""/>
<part name="P+7" library="supply1" deviceset="+5V" device=""/>
<part name="+3V3" library="supply1" deviceset="+3V3" device=""/>
<part name="GND9" library="supply1" deviceset="GND" device=""/>
<part name="GND10" library="supply1" deviceset="GND" device=""/>
<part name="JP4_AUX1" library="adafruit" deviceset="PINHD-1X3" device="" value="N/A"/>
<part name="JP5_AUX2" library="adafruit" deviceset="PINHD-1X3" device="" value="N/A"/>
<part name="ENCODER_INT" library="SparkFun-Connectors" deviceset="M04" device="LOCK" value="N/A"/>
<part name="P+8" library="supply1" deviceset="+5V" device=""/>
<part name="GND11" library="supply1" deviceset="GND" device=""/>
<part name="ENCODER_POLL" library="SparkFun-Connectors" deviceset="M04" device="LOCK" value="N/A"/>
<part name="P+9" library="supply1" deviceset="+5V" device=""/>
<part name="GND12" library="supply1" deviceset="GND" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="66.04" y="27.94" size="1.778" layer="91">MOTORS</text>
</plain>
<instances>
<instance part="U$1" gate="G$1" x="33.02" y="93.98"/>
<instance part="U$2" gate="G$1" x="111.76" y="96.52"/>
<instance part="JP1_L_MTR" gate="A" x="71.12" y="15.24"/>
<instance part="JP2_R_MTR" gate="A" x="91.44" y="15.24"/>
<instance part="JP3_ARM" gate="A" x="109.22" y="15.24"/>
<instance part="BATT_POWER" gate="G$1" x="154.94" y="106.68"/>
<instance part="LED_STRIP" gate="G$1" x="157.48" y="81.28"/>
<instance part="Q1" gate="G$1" x="208.28" y="104.14"/>
<instance part="Q2" gate="G$1" x="208.28" y="78.74"/>
<instance part="Q3" gate="G$1" x="208.28" y="55.88"/>
<instance part="IC1" gate="A1" x="20.32" y="15.24"/>
<instance part="U$3" gate="G$1" x="53.34" y="30.48"/>
<instance part="P+1" gate="1" x="175.26" y="114.3"/>
<instance part="+3V1" gate="G$1" x="35.56" y="25.4"/>
<instance part="P+2" gate="1" x="71.12" y="114.3"/>
<instance part="P+3" gate="1" x="53.34" y="25.4"/>
<instance part="GND1" gate="1" x="175.26" y="101.6"/>
<instance part="GND2" gate="1" x="63.5" y="109.22"/>
<instance part="P+4" gate="1" x="55.88" y="114.3"/>
<instance part="P+5" gate="1" x="170.18" y="93.98"/>
<instance part="P+6" gate="1" x="5.08" y="25.4"/>
<instance part="GND3" gate="1" x="20.32" y="5.08"/>
<instance part="GND4" gate="1" x="55.88" y="2.54"/>
<instance part="+3V2" gate="G$1" x="81.28" y="114.3"/>
<instance part="GND5" gate="1" x="81.28" y="76.2"/>
<instance part="GND6" gate="1" x="210.82" y="93.98"/>
<instance part="GND7" gate="1" x="210.82" y="68.58"/>
<instance part="GND8" gate="1" x="210.82" y="45.72"/>
<instance part="P+7" gate="1" x="86.36" y="63.5"/>
<instance part="+3V3" gate="G$1" x="5.08" y="63.5"/>
<instance part="GND9" gate="1" x="86.36" y="43.18"/>
<instance part="GND10" gate="1" x="5.08" y="43.18"/>
<instance part="JP4_AUX1" gate="A" x="127" y="15.24"/>
<instance part="JP5_AUX2" gate="A" x="144.78" y="15.24"/>
<instance part="ENCODER_INT" gate="G$1" x="157.48" y="58.42"/>
<instance part="P+8" gate="1" x="175.26" y="71.12"/>
<instance part="GND11" gate="1" x="175.26" y="50.8"/>
<instance part="ENCODER_POLL" gate="G$1" x="121.92" y="58.42"/>
<instance part="P+9" gate="1" x="139.7" y="71.12"/>
<instance part="GND12" gate="1" x="139.7" y="50.8"/>
</instances>
<busses>
</busses>
<nets>
<net name="V+" class="0">
<segment>
<pinref part="P+4" gate="1" pin="V+"/>
<wire x1="55.88" y1="111.76" x2="55.88" y2="109.22" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="RAW"/>
<wire x1="55.88" y1="109.22" x2="45.72" y2="109.22" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="P+6" gate="1" pin="V+"/>
<wire x1="5.08" y1="22.86" x2="5.08" y2="17.78" width="0.1524" layer="91"/>
<pinref part="IC1" gate="A1" pin="VI"/>
<wire x1="5.08" y1="17.78" x2="10.16" y2="17.78" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="P+3" gate="1" pin="V+"/>
<wire x1="53.34" y1="22.86" x2="53.34" y2="15.24" width="0.1524" layer="91"/>
<pinref part="JP1_L_MTR" gate="A" pin="2"/>
<wire x1="53.34" y1="15.24" x2="68.58" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="GND1" gate="1" pin="GND"/>
<wire x1="175.26" y1="104.14" x2="175.26" y2="106.68" width="0.1524" layer="91"/>
<pinref part="BATT_POWER" gate="G$1" pin="1"/>
<wire x1="175.26" y1="106.68" x2="162.56" y2="106.68" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC1" gate="A1" pin="ADJ"/>
<pinref part="GND3" gate="1" pin="GND"/>
<wire x1="20.32" y1="10.16" x2="20.32" y2="7.62" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="JP1_L_MTR" gate="A" pin="3"/>
<wire x1="68.58" y1="12.7" x2="55.88" y2="12.7" width="0.1524" layer="91"/>
<wire x1="55.88" y1="12.7" x2="55.88" y2="7.62" width="0.1524" layer="91"/>
<pinref part="GND4" gate="1" pin="GND"/>
<wire x1="55.88" y1="7.62" x2="55.88" y2="5.08" width="0.1524" layer="91"/>
<pinref part="JP3_ARM" gate="A" pin="3"/>
<wire x1="106.68" y1="12.7" x2="96.52" y2="12.7" width="0.1524" layer="91"/>
<wire x1="96.52" y1="12.7" x2="96.52" y2="7.62" width="0.1524" layer="91"/>
<wire x1="96.52" y1="7.62" x2="76.2" y2="7.62" width="0.1524" layer="91"/>
<junction x="55.88" y="7.62"/>
<pinref part="JP2_R_MTR" gate="A" pin="3"/>
<wire x1="76.2" y1="7.62" x2="55.88" y2="7.62" width="0.1524" layer="91"/>
<wire x1="88.9" y1="12.7" x2="76.2" y2="12.7" width="0.1524" layer="91"/>
<wire x1="76.2" y1="12.7" x2="76.2" y2="7.62" width="0.1524" layer="91"/>
<junction x="76.2" y="7.62"/>
<pinref part="JP4_AUX1" gate="A" pin="3"/>
<wire x1="124.46" y1="12.7" x2="114.3" y2="12.7" width="0.1524" layer="91"/>
<wire x1="114.3" y1="12.7" x2="114.3" y2="7.62" width="0.1524" layer="91"/>
<wire x1="114.3" y1="7.62" x2="96.52" y2="7.62" width="0.1524" layer="91"/>
<pinref part="JP5_AUX2" gate="A" pin="3"/>
<wire x1="142.24" y1="12.7" x2="132.08" y2="12.7" width="0.1524" layer="91"/>
<wire x1="132.08" y1="12.7" x2="132.08" y2="7.62" width="0.1524" layer="91"/>
<wire x1="132.08" y1="7.62" x2="114.3" y2="7.62" width="0.1524" layer="91"/>
<junction x="96.52" y="7.62"/>
<junction x="114.3" y="7.62"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="GND"/>
<pinref part="GND5" gate="1" pin="GND"/>
<wire x1="91.44" y1="83.82" x2="81.28" y2="83.82" width="0.1524" layer="91"/>
<wire x1="81.28" y1="83.82" x2="81.28" y2="78.74" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="Q1" gate="G$1" pin="S"/>
<wire x1="210.82" y1="99.06" x2="210.82" y2="96.52" width="0.1524" layer="91"/>
<pinref part="GND6" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="Q3" gate="G$1" pin="S"/>
<pinref part="GND8" gate="1" pin="GND"/>
<wire x1="210.82" y1="50.8" x2="210.82" y2="48.26" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="Q2" gate="G$1" pin="S"/>
<pinref part="GND7" gate="1" pin="GND"/>
<wire x1="210.82" y1="73.66" x2="210.82" y2="71.12" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="GND@2"/>
<wire x1="60.96" y1="53.34" x2="86.36" y2="53.34" width="0.1524" layer="91"/>
<wire x1="86.36" y1="53.34" x2="86.36" y2="45.72" width="0.1524" layer="91"/>
<pinref part="GND9" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="GND"/>
<wire x1="22.86" y1="53.34" x2="5.08" y2="53.34" width="0.1524" layer="91"/>
<wire x1="5.08" y1="53.34" x2="5.08" y2="45.72" width="0.1524" layer="91"/>
<pinref part="GND10" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="ENCODER_INT" gate="G$1" pin="1"/>
<pinref part="GND11" gate="1" pin="GND"/>
<wire x1="162.56" y1="55.88" x2="175.26" y2="55.88" width="0.1524" layer="91"/>
<wire x1="175.26" y1="55.88" x2="175.26" y2="53.34" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="GND@2"/>
<wire x1="45.72" y1="106.68" x2="58.42" y2="106.68" width="0.1524" layer="91"/>
<wire x1="58.42" y1="106.68" x2="58.42" y2="114.3" width="0.1524" layer="91"/>
<wire x1="58.42" y1="114.3" x2="63.5" y2="114.3" width="0.1524" layer="91"/>
<wire x1="63.5" y1="114.3" x2="63.5" y2="111.76" width="0.1524" layer="91"/>
<pinref part="GND2" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="ENCODER_POLL" gate="G$1" pin="1"/>
<pinref part="GND12" gate="1" pin="GND"/>
<wire x1="127" y1="55.88" x2="139.7" y2="55.88" width="0.1524" layer="91"/>
<wire x1="139.7" y1="55.88" x2="139.7" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="+5V" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="VCC"/>
<wire x1="45.72" y1="101.6" x2="71.12" y2="101.6" width="0.1524" layer="91"/>
<wire x1="71.12" y1="101.6" x2="71.12" y2="111.76" width="0.1524" layer="91"/>
<pinref part="P+2" gate="1" pin="+5V"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="HV"/>
<wire x1="60.96" y1="55.88" x2="86.36" y2="55.88" width="0.1524" layer="91"/>
<wire x1="86.36" y1="55.88" x2="86.36" y2="60.96" width="0.1524" layer="91"/>
<pinref part="P+7" gate="1" pin="+5V"/>
</segment>
<segment>
<pinref part="ENCODER_INT" gate="G$1" pin="4"/>
<pinref part="P+8" gate="1" pin="+5V"/>
<wire x1="162.56" y1="63.5" x2="175.26" y2="63.5" width="0.1524" layer="91"/>
<wire x1="175.26" y1="63.5" x2="175.26" y2="68.58" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="P+9" gate="1" pin="+5V"/>
<wire x1="139.7" y1="68.58" x2="139.7" y2="63.5" width="0.1524" layer="91"/>
<pinref part="ENCODER_POLL" gate="G$1" pin="4"/>
<wire x1="139.7" y1="63.5" x2="127" y2="63.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="+12V" class="0">
<segment>
<pinref part="P+1" gate="1" pin="+12V"/>
<wire x1="175.26" y1="111.76" x2="175.26" y2="109.22" width="0.1524" layer="91"/>
<pinref part="BATT_POWER" gate="G$1" pin="2"/>
<wire x1="175.26" y1="109.22" x2="162.56" y2="109.22" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="P+5" gate="1" pin="+12V"/>
<wire x1="170.18" y1="91.44" x2="170.18" y2="86.36" width="0.1524" layer="91"/>
<pinref part="LED_STRIP" gate="G$1" pin="4"/>
<wire x1="170.18" y1="86.36" x2="162.56" y2="86.36" width="0.1524" layer="91"/>
</segment>
</net>
<net name="LED_PWR_1" class="0">
<segment>
<pinref part="Q1" gate="G$1" pin="D"/>
<wire x1="210.82" y1="109.22" x2="210.82" y2="111.76" width="0.1524" layer="91"/>
<wire x1="210.82" y1="111.76" x2="226.06" y2="111.76" width="0.1524" layer="91"/>
<label x="213.36" y="111.76" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="LED_STRIP" gate="G$1" pin="1"/>
<wire x1="162.56" y1="78.74" x2="177.8" y2="78.74" width="0.1524" layer="91"/>
<label x="165.1" y="78.74" size="1.778" layer="95"/>
</segment>
</net>
<net name="LED_PWR_2" class="0">
<segment>
<pinref part="LED_STRIP" gate="G$1" pin="2"/>
<wire x1="162.56" y1="81.28" x2="177.8" y2="81.28" width="0.1524" layer="91"/>
<label x="165.1" y="81.28" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="Q2" gate="G$1" pin="D"/>
<wire x1="210.82" y1="83.82" x2="210.82" y2="86.36" width="0.1524" layer="91"/>
<wire x1="210.82" y1="86.36" x2="226.06" y2="86.36" width="0.1524" layer="91"/>
<label x="213.36" y="86.36" size="1.778" layer="95"/>
</segment>
</net>
<net name="LED_PWR_3" class="0">
<segment>
<pinref part="Q3" gate="G$1" pin="D"/>
<wire x1="210.82" y1="60.96" x2="210.82" y2="63.5" width="0.1524" layer="91"/>
<wire x1="210.82" y1="63.5" x2="226.06" y2="63.5" width="0.1524" layer="91"/>
<label x="213.36" y="63.5" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="LED_STRIP" gate="G$1" pin="3"/>
<wire x1="162.56" y1="83.82" x2="177.8" y2="83.82" width="0.1524" layer="91"/>
<label x="165.1" y="83.82" size="1.778" layer="95"/>
</segment>
</net>
<net name="+3V3" class="0">
<segment>
<pinref part="+3V1" gate="G$1" pin="+3V3"/>
<wire x1="35.56" y1="22.86" x2="35.56" y2="17.78" width="0.1524" layer="91"/>
<pinref part="IC1" gate="A1" pin="VO"/>
<wire x1="35.56" y1="17.78" x2="30.48" y2="17.78" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="+3V2" gate="G$1" pin="+3V3"/>
<wire x1="81.28" y1="111.76" x2="81.28" y2="106.68" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="VDD"/>
<wire x1="81.28" y1="106.68" x2="91.44" y2="106.68" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="LV"/>
<wire x1="22.86" y1="55.88" x2="5.08" y2="55.88" width="0.1524" layer="91"/>
<wire x1="5.08" y1="55.88" x2="5.08" y2="60.96" width="0.1524" layer="91"/>
<pinref part="+3V3" gate="G$1" pin="+3V3"/>
</segment>
</net>
<net name="L_MTR" class="0">
<segment>
<pinref part="JP1_L_MTR" gate="A" pin="1"/>
<wire x1="68.58" y1="17.78" x2="55.88" y2="17.78" width="0.1524" layer="91"/>
<label x="55.88" y="17.78" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="*5"/>
<wire x1="22.86" y1="91.44" x2="10.16" y2="91.44" width="0.1524" layer="91"/>
<label x="10.16" y="91.44" size="1.778" layer="95"/>
</segment>
</net>
<net name="R_MTR" class="0">
<segment>
<pinref part="JP2_R_MTR" gate="A" pin="1"/>
<wire x1="88.9" y1="17.78" x2="76.2" y2="17.78" width="0.1524" layer="91"/>
<label x="76.2" y="17.78" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="*6"/>
<wire x1="22.86" y1="88.9" x2="10.16" y2="88.9" width="0.1524" layer="91"/>
<label x="10.16" y="88.9" size="1.778" layer="95"/>
</segment>
</net>
<net name="ARM" class="0">
<segment>
<pinref part="JP3_ARM" gate="A" pin="1"/>
<wire x1="106.68" y1="17.78" x2="96.52" y2="17.78" width="0.1524" layer="91"/>
<label x="96.52" y="17.78" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="*9"/>
<wire x1="22.86" y1="81.28" x2="10.16" y2="81.28" width="0.1524" layer="91"/>
<label x="10.16" y="81.28" size="1.778" layer="95"/>
</segment>
</net>
<net name="ATXI_H" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="TXO"/>
<wire x1="22.86" y1="109.22" x2="10.16" y2="109.22" width="0.1524" layer="91"/>
<label x="10.16" y="109.22" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="HV_RXI_1"/>
<wire x1="60.96" y1="58.42" x2="78.74" y2="58.42" width="0.1524" layer="91"/>
<label x="66.04" y="58.42" size="1.778" layer="95"/>
</segment>
</net>
<net name="ARXO_H" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="RXI"/>
<wire x1="22.86" y1="106.68" x2="10.16" y2="106.68" width="0.1524" layer="91"/>
<label x="10.16" y="106.68" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="HV_TXO_1"/>
<wire x1="60.96" y1="60.96" x2="78.74" y2="60.96" width="0.1524" layer="91"/>
<label x="66.04" y="60.96" size="1.778" layer="95"/>
</segment>
</net>
<net name="ARXO_L" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="DOUT"/>
<wire x1="91.44" y1="104.14" x2="81.28" y2="104.14" width="0.1524" layer="91"/>
<label x="81.28" y="104.14" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="LV_TXI_1"/>
<wire x1="22.86" y1="60.96" x2="10.16" y2="60.96" width="0.1524" layer="91"/>
<label x="10.16" y="60.96" size="1.778" layer="95"/>
</segment>
</net>
<net name="ATXI_L" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="DIN"/>
<wire x1="91.44" y1="101.6" x2="81.28" y2="101.6" width="0.1524" layer="91"/>
<label x="81.28" y="101.6" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="LV_RXO_1"/>
<wire x1="22.86" y1="58.42" x2="10.16" y2="58.42" width="0.1524" layer="91"/>
<label x="10.16" y="58.42" size="1.778" layer="95"/>
</segment>
</net>
<net name="LED_SIG_1" class="0">
<segment>
<pinref part="Q1" gate="G$1" pin="G"/>
<wire x1="205.74" y1="101.6" x2="190.5" y2="101.6" width="0.1524" layer="91"/>
<label x="190.5" y="101.6" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="A0"/>
<wire x1="45.72" y1="91.44" x2="60.96" y2="91.44" width="0.1524" layer="91"/>
<label x="48.26" y="91.44" size="1.778" layer="95"/>
</segment>
</net>
<net name="LED_SIG_2" class="0">
<segment>
<pinref part="Q2" gate="G$1" pin="G"/>
<wire x1="205.74" y1="76.2" x2="190.5" y2="76.2" width="0.1524" layer="91"/>
<label x="190.5" y="76.2" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="A1"/>
<wire x1="45.72" y1="93.98" x2="60.96" y2="93.98" width="0.1524" layer="91"/>
<label x="48.26" y="93.98" size="1.778" layer="95"/>
</segment>
</net>
<net name="LED_SIG_3" class="0">
<segment>
<pinref part="Q3" gate="G$1" pin="G"/>
<wire x1="205.74" y1="53.34" x2="190.5" y2="53.34" width="0.1524" layer="91"/>
<label x="190.5" y="53.34" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="A2"/>
<wire x1="45.72" y1="96.52" x2="60.96" y2="96.52" width="0.1524" layer="91"/>
<label x="48.26" y="96.52" size="1.778" layer="95"/>
</segment>
</net>
<net name="AUX1" class="0">
<segment>
<pinref part="JP4_AUX1" gate="A" pin="1"/>
<wire x1="124.46" y1="17.78" x2="114.3" y2="17.78" width="0.1524" layer="91"/>
<label x="114.3" y="17.78" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="*10"/>
<wire x1="45.72" y1="81.28" x2="60.96" y2="81.28" width="0.1524" layer="91"/>
<label x="48.26" y="81.28" size="1.778" layer="95"/>
</segment>
</net>
<net name="AUX2" class="0">
<segment>
<pinref part="JP5_AUX2" gate="A" pin="1"/>
<wire x1="142.24" y1="17.78" x2="132.08" y2="17.78" width="0.1524" layer="91"/>
<label x="132.08" y="17.78" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="*11"/>
<wire x1="45.72" y1="83.82" x2="60.96" y2="83.82" width="0.1524" layer="91"/>
<label x="48.26" y="83.82" size="1.778" layer="95"/>
</segment>
</net>
<net name="ENC_A" class="0">
<segment>
<pinref part="ENCODER_INT" gate="G$1" pin="3"/>
<wire x1="162.56" y1="60.96" x2="177.8" y2="60.96" width="0.1524" layer="91"/>
<label x="165.1" y="60.96" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="2"/>
<wire x1="22.86" y1="99.06" x2="10.16" y2="99.06" width="0.1524" layer="91"/>
<label x="10.16" y="99.06" size="1.778" layer="95"/>
</segment>
</net>
<net name="ENC_B" class="0">
<segment>
<pinref part="ENCODER_INT" gate="G$1" pin="2"/>
<wire x1="162.56" y1="58.42" x2="177.8" y2="58.42" width="0.1524" layer="91"/>
<label x="165.1" y="58.42" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="*3"/>
<wire x1="22.86" y1="96.52" x2="10.16" y2="96.52" width="0.1524" layer="91"/>
<label x="10.16" y="96.52" size="1.778" layer="95"/>
</segment>
</net>
<net name="ON_BOARD_LED" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="13"/>
<wire x1="45.72" y1="88.9" x2="60.96" y2="88.9" width="0.1524" layer="91"/>
<label x="48.26" y="88.9" size="1.778" layer="95"/>
</segment>
</net>
<net name="ENC_P_A" class="0">
<segment>
<pinref part="ENCODER_POLL" gate="G$1" pin="3"/>
<wire x1="127" y1="60.96" x2="139.7" y2="60.96" width="0.1524" layer="91"/>
<label x="129.54" y="60.96" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="7"/>
<wire x1="22.86" y1="86.36" x2="10.16" y2="86.36" width="0.1524" layer="91"/>
<label x="10.16" y="86.36" size="1.778" layer="95"/>
</segment>
</net>
<net name="ENC_P_B" class="0">
<segment>
<pinref part="ENCODER_POLL" gate="G$1" pin="2"/>
<wire x1="127" y1="58.42" x2="139.7" y2="58.42" width="0.1524" layer="91"/>
<label x="129.54" y="58.42" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="8"/>
<wire x1="22.86" y1="83.82" x2="10.16" y2="83.82" width="0.1524" layer="91"/>
<label x="10.16" y="83.82" size="1.778" layer="95"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>

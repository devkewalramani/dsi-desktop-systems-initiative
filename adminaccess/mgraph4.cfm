<title>Migration Analysis </title>

<cfquery name="bar" datasource="DSI">
SELECT tot
FROM teamtwo
WHERE midate Between #parsedatetime(bdate)# AND #parsedatetime(edate)#
</cfquery>

<cfset gbar1=0>
<cfset gbar2=0>
<cfset gbar3=0>
<cfset gbar4=0>
<cfset gbar5=0>
<cfset gbar6=0>
<cfset gbar7=0>
<cfset gbar8=0>
<cfset gbar9=0>
<cfset gbar10=0>
<cfset gbar11=0>
<cfset gbar12=0>
<cfset gbar13=0>
<cfset gbar14=0>
<cfset gbar15=0>
<cfset gbar16=0>


<cfloop query="bar">
<cfif (#tot# gte 0) AND (#tot# lte 30)>
<cfset gbar1=gbar1+1>
<cfelseif (#tot# gte 31) AND (#tot# lte 60)>
<cfset gbar2=gbar2+1>
<cfelseif (#tot# gte 61) AND (#tot# lte 90)>
<cfset gbar3=gbar3+1>
<cfelseif (#tot# gte 91) AND (#tot# lte 120)>
<cfset gbar4=gbar4+1>
<cfelseif (#tot# gte 121) AND (#tot# lte 150)>
<cfset gbar5=gbar5+1>
<cfelseif (#tot# gte 151) AND (#tot# lte 180)>
<cfset gbar6=gbar6+1>
<cfelseif (#tot# gte 181) AND (#tot# lte 210)>
<cfset gbar7=gbar7+1>
<cfelseif (#tot# gte 211) AND (#tot# lte 240)>
<cfset gbar8=gbar8+1>
<cfelseif (#tot# gte 241) AND (#tot# lte 270)>
<cfset gbar9=gbar9+1>
<cfelseif (#tot# gte 271) AND (#tot# lte 300)>
<cfset gbar10=gbar10+1>
<cfelseif (#tot# gte 301) AND (#tot# lte 330)>
<cfset gbar11=gbar11+1>
<cfelseif (#tot# gte 331) AND (#tot# lte 360)>
<cfset gbar12=gbar12+1>
<cfelseif (#tot# gte 361) AND (#tot# lte 390)>
<cfset gbar13=gbar13+1>
<cfelseif (#tot# gte 391) AND (#tot# lte 420)>
<cfset gbar14=gbar14+1>
<cfelseif (#tot# gte 421) AND (#tot# lte 450)>
<cfset gbar15=gbar15+1>
<cfelseif (#tot# gte 451) AND (#tot# lte 480)>
<cfset gbar16=gbar16+1>
</cfif>
</cfloop>

<!--set bar vars-->
<cfset gbar1a=gbar1*2>
<cfset gbar2a=gbar2*2>
<cfset gbar3a=gbar3*2>
<cfset gbar4a=gbar4*2>
<cfset gbar5a=gbar5*2>
<cfset gbar6a=gbar6*2>
<cfset gbar7a=gbar7*2>
<cfset gbar8a=gbar8*2>
<cfset gbar9a=gbar9*2>
<cfset gbar10a=gbar10*2>
<cfset gbar11a=gbar11*2>
<cfset gbar12a=gbar12*2>
<cfset gbar13a=gbar13*2>
<cfset gbar14a=gbar14*2>
<cfset gbar15a=gbar15*2>
<cfset gbar16a=gbar16*2>

<!--total migration calc-->
<cfset totalnum=gbar1+gbar2+gbar3+gbar4+gbar5+gbar6+gbar7+gbar8+gbar9+gbar10+gbar11+gbar12+gbar13+gbar14+gbar15+gbar16>


<cfxml variable="mgraph">
<cfoutput>
<svg width="100%" height="100%" viewBox="0 -175 600 600" style="overflow:visible;enable-background:new 0 0 600 500" xml:space="preserve">
<!--Draw Main Box-->
<g id="Border" stroke-width="2" stroke="##000000" fill="##FFFFFF" >
<rect x="-25" y="-100" width="570" height="520" />
</g>
<!--label axis-->
<g id="ylabel" font-family="Times New Roman" font-style="Bold" font-size="14" >
<text x="-250" y="0" transform="rotate(-90)">Number of Devices</text>
</g>

<g id="xlabel" font-family="Times New Roman" font-style="Bold" font-size="14" >
<text x="180" y="407" >Time Period at 30min Intervals</text>
</g>

<!--Draw Axis-->
<g id="Lines" stroke-width="1" stroke="##000000" >
<line x1="25" y1="380" x2="525" y2="380"/>
<line x1="25" y1="380" x2="25" y2="-80"/>
</g>
<!--Heading-->
<g id="Heading" font-family="Times New Roman" font-style="Bold" font-size="24" >
<text x="185" y="-135" >Migration Analysis</text>
</g>
 <!--SubHeading-->
<g id="Heading2" font-family="Arial" font-size="16" >
<text x="100" y="-115" >Total Migrated From #bdate# to #edate# -</text>
</g>
<!--Sub Heading2-->
<g id="Heading2" fill="red" font-family="Arial" font-size="16" >
<text x="420" y="-115" > #totalnum#</text>
</g>

<!--Y Axis Labels-->
 <g id="YLabels" font-family="Times New Roman" font-size="12">
  <text x="10" y="380" >0</text>
  <text x="10" y="360" >10</text>
  <text x="10" y="340" >20</text>
  <text x="10" y="320" >30</text>
  <text x="10" y="300" >40</text>
  <text x="10" y="280" >50</text>
  <text x="10" y="260" >60</text>
  <text x="10" y="240" >70</text>
  <text x="10" y="220" >80</text>
  <text x="10" y="200" >90</text>
  <text x="5" y="180" >100</text>
  <text x="5" y="160" >110</text>
  <text x="5" y="140" >120</text>
  <text x="5" y="120" >130</text>
  <text x="5" y="100" >140</text>
  <text x="5" y="80" >150</text>
  <text x="5" y="60" >160</text>
  <text x="5" y="40" >170</text>
  <text x="5" y="20" >180</text>
  <text x="5" y="0" >190</text>
  <text x="5" y="-20" >200</text>
  <text x="5" y="-40" >210</text>
  <text x="5" y="-60" >220</text>
  <text x="5" y="-80" >230</text>
  

 </g>
 
 <!--Y Axis lines-->
 <g id="YLines">
 <line x1="25" y1="360" x2="525" y2="360"/>
 <line x1="25" y1="340" x2="525" y2="340"/>
  <line x1="25" y1="320" x2="525" y2="320"/>
  <line x1="25" y1="300" x2="525" y2="300"/>
  <line x1="25" y1="280" x2="525" y2="280"/>
  <line x1="25" y1="260" x2="525" y2="260"/>
  <line x1="25" y1="240" x2="525" y2="240"/>
  <line x1="25" y1="220" x2="525" y2="220"/>
  <line x1="25" y1="200" x2="525" y2="200"/>
  <line x1="25" y1="180" x2="525" y2="180"/>
  <line x1="25" y1="160" x2="525" y2="160"/>
  <line x1="25" y1="140" x2="525" y2="140"/>
  <line x1="25" y1="120" x2="525" y2="120"/>
  <line x1="25" y1="100" x2="525" y2="100"/>
  <line x1="25" y1="80" x2="525" y2="80"/>
  <line x1="25" y1="60" x2="525" y2="60"/>
  <line x1="25" y1="40" x2="525" y2="40"/>
  <line x1="25" y1="20" x2="525" y2="20"/>
  <line x1="25" y1="0" x2="525" y2="0"/>
  <line x1="25" y1="-20" x2="525" y2="-20"/>
  <line x1="25" y1="-40" x2="525" y2="-40"/>
  <line x1="25" y1="-60" x2="525" y2="-60"/>
  <line x1="25" y1="-80" x2="525" y2="-80"/>
  
  
 </g>
 
 <!--x Axis Labels-->
 <g id="XLabels" font-family="Times New Roman" font-size="9" >
  <text x="50" y="390" >1/2 hr</text>
  <text x="80" y="390" >1 hr</text>
  <text x="110" y="390" >1.5 hr</text>
  <text x="140" y="390" >2 hr</text>
  <text x="170" y="390" >2.5 hr</text>
  <text x="200" y="390" >3 hr</text>
  <text x="230" y="390" >3.5 hr</text>
  <text x="260" y="390" >4 hr</text>
  <text x="290" y="390" >4.5 hr</text>
  <text x="320" y="390" >5 hr</text>
  <text x="350" y="390" >5.5 hr</text>
  <text x="380" y="390" >6 hr</text>
  <text x="410" y="390" >6.5 hr</text>
  <text x="440" y="390" >7 hr</text>
  <text x="470" y="390" >7.5 hr</text>
  <text x="500" y="390" >8 hr</text>
 </g>
 
 <!-- Draw Bars -->
 <g fill="RED" transform="matrix(1 0 0 -1 0 760)">
  <rect x="50" y="380" width="15" height="#gbar1a#" />
  <rect x="80" y="380" width="15" height="#gbar2a#" />
  <rect x="110" y="380" width="15" height="#gbar3a#" />
  <rect x="140" y="380" width="15" height="#gbar4a#" />
  <rect x="170" y="380" width="15" height="#gbar5a#" />
  <rect x="200" y="380" width="15" height="#gbar6a#" />
  <rect x="230" y="380" width="15" height="#gbar7a#" />
  <rect x="260" y="380" width="15" height="#gbar8a#" />
  <rect x="290" y="380" width="15" height="#gbar9a#" />
  <rect x="320" y="380" width="15" height="#gbar10a#" />
  <rect x="350" y="380" width="15" height="#gbar11a#" />
  <rect x="380" y="380" width="15" height="#gbar12a#" />
  <rect x="410" y="380" width="15" height="#gbar13a#" />
  <rect x="440" y="380" width="15" height="#gbar14a#" />
  <rect x="470" y="380" width="15" height="#gbar15a#" />
  <rect x="500" y="380" width="15" height="#gbar16a#" />
 </g>
 <!-- Label Bars -->
 <cfset t1=375-#gbar1a#>
 <cfset t2=375-#gbar2a#>
 <cfset t3=375-#gbar3a#>
 <cfset t4=375-#gbar4a#>
 <cfset t5=375-#gbar5a#>
 <cfset t6=375-#gbar6a#>
 <cfset t7=375-#gbar7a#>
 <cfset t8=375-#gbar8a#>
 <cfset t9=375-#gbar9a#>
 <cfset t10=375-#gbar10a#>
 <cfset t11=375-#gbar11a#>
 <cfset t12=375-#gbar12a#>
 <cfset t13=375-#gbar13a#>
 <cfset t14=375-#gbar14a#>
 <cfset t15=375-#gbar15a#>
 <cfset t16=375-#gbar16a#>

 
 
 <g fill="Black" font-family="Arial" font-size="10">
  <text x="52" y="#t1#" >#gbar1#</text>
  <text x="82" y="#t2#" >#gbar2#</text>
  <text x="112" y="#t3#" >#gbar3#</text>
  <text x="142" y="#t4#" >#gbar4#</text>
  <text x="172" y="#t5#" >#gbar5#</text>
  <text x="202" y="#t6#" >#gbar6#</text>
  <text x="232" y="#t7#" >#gbar7#</text>
  <text x="262" y="#t8#" >#gbar8#</text>
  <text x="292" y="#t9#" >#gbar9#</text>
  <text x="322" y="#t10#" >#gbar10#</text>
  <text x="352" y="#t11#" >#gbar11#</text>
  <text x="382" y="#t12#" >#gbar12#</text>
  <text x="412" y="#t13#" >#gbar13#</text>
  <text x="442" y="#t14#" >#gbar14#</text>
  <text x="472" y="#t15#" >#gbar15#</text>
  <text x="502" y="#t16#" >#gbar16#</text>
 </g>
</svg>
</cfoutput>
</cfxml>
<cfset xml = #ToString(mgraph)#>
<cffile action="write" file="#getDirectoryFromPath(getTemplatePath())#mgraph.svg" output="#xml#">
<cflocation url="mgraph.svg">

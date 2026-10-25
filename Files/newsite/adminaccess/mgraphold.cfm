<title>Team 2 Summary Graph</title>

<cfquery name="bar" datasource="newdsi">
SELECT tot
FROM teamtwo
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
<cfset gbar1a=gbar1*7.5>
<cfset gbar2a=gbar2*7.5>
<cfset gbar3a=gbar3*7.5>
<cfset gbar4a=gbar4*7.5>
<cfset gbar5a=gbar5*7.5>
<cfset gbar6a=gbar6*7.5>
<cfset gbar7a=gbar7*7.5>
<cfset gbar8a=gbar8*7.5>
<cfset gbar9a=gbar9*7.5>
<cfset gbar10a=gbar10*7.5>
<cfset gbar11a=gbar11*7.5>
<cfset gbar12a=gbar12*7.5>
<cfset gbar13a=gbar13*7.5>
<cfset gbar14a=gbar14*7.5>
<cfset gbar15a=gbar15*7.5>
<cfset gbar16a=gbar16*7.5>

<!--total migration calc-->
<cfset totalnum=gbar1+gbar2+gbar3+gbar4+gbar5+gbar6+gbar7+gbar8+gbar9+gbar10+gbar11+gbar12+gbar13+gbar14+gbar15+gbar16>


<cfxml variable="mgraph">
<cfoutput>
<svg width="100%" height="100%" viewBox=".058 0.058 400 400" style="overflow:visible;enable-background:new 0.058 0.058 201 401" xml:space="preserve">
	<style type="text/css">
	<![CDATA[
		.st0{font-family:'Myriad-Roman';}
		.st1{fill:##E3E5E5;}
		.st2{fill:##4A3997;}
		.st3{fill:none;stroke:##000000;stroke-width:0.5}
		.st4{fill:##eeeeee;stroke:##000000;stroke-width:0.5}
		.st5{font-size:9;}
		.st6{fill:##FFFFFF;}
		.st7{fill:##FFFFFF;stroke:##000000;stroke-width:0.5;}
		.st8{opacity:0.4;fill:none;stroke:##000000;stroke-width:0.5;}
		.st9{letter-spacing:0;}
		.st10{fill:##FFFFFF;stroke:##000000;stroke-width:0.5}
		.st11{fill:##38A85F;}
		.st12{font-size:10;}
		.st13{font-size:13;}
		.st14{fill:none;stroke:##000000;stroke-width:0.5;}
		.st15{fill:##44268E;}
		.st16{text-anchor:end;}
		.st17{fill:##FF5A00;}
		.st18{font-size:7;}
	]]>
	</style>
	<!--Outer Border -->
	<g id="Border1" class="st10">
	<rect x="5" y="10" width="318" height="325" rx="2"/>
	</g>
	
	<!-- Body Rectangle -->
	<g id="Body Border" class="st4">
	<rect x="10" y="35" width="308" height="255" rx="2"/>
	</g>
	
	<!-- Top Border -->
	<g id="Top Rectangle" class="st7">
	<rect x="10" y="14" width="308" height="17" rx="2"/>
	</g>
	
	<!-- Legend Border -->
	<g id="Bottom Rectangle" class="st4">
	<rect x="10" y="300" width="308" height="30" rx="2"/>
	</g>

	
	<g id="White Body Stripes" class="st6" transform="translate(11,-15)">
	<rect x="0" y="65" width="306" height="15"/>
	<rect x="0" y="95" width="306" height="15"/>
	<rect x="0" y="125" width="306" height="15"/>
	<rect x="0" y="155" width="306" height="15"/>
	<rect x="0" y="185" width="306" height="15"/>
	<rect x="0" y="215" width="306" height="15"/>
	<rect x="0" y="245" width="306" height="15"/>
	<rect x="0" y="275" width="306" height="15"/>
	</g>

	<!-- Period Bars -->
	<g id="Berry Bars" class="st15" transform="translate(92,52)">
	<rect x="0" y="0" width="#gbar1a#" height="10"/>
	<rect x="0" y="15" width="#gbar2a#" height="10"/>
	<rect x="0" y="30" width="#gbar3a#" height="10"/>
	<rect x="0" y="45" width="#gbar4a#" height="10"/>
	<rect x="0" y="60" width="#gbar5a#" height="10"/>
	<rect x="0" y="75" width="#gbar6a#" height="10"/>
	<rect x="0" y="90" width="#gbar7a#" height="10"/>
	<rect x="0" y="105" width="#gbar8a#" height="10"/>
	<rect x="0" y="120" width="#gbar9a#" height="10"/>
	<rect x="0" y="135" width="#gbar10a#" height="10"/>
	<rect x="0" y="150" width="#gbar11a#" height="10"/>
	<rect x="0" y="165" width="#gbar12a#" height="10"/>
	<rect x="0" y="180" width="#gbar13a#" height="10"/>
	<rect x="0" y="195" width="#gbar14a#" height="10"/>
	<rect x="0" y="210" width="#gbar15a#" height="10"/>
	<rect x="0" y="225" width="#gbar16a#" height="10"/>
	</g>

		<!-- Vertical Graph Lines -->
	<g id="Vertical Lines" class="st8" transform="translate(117,35)">
	<line x1="-44" y1="16" x2="-44" y2="255"/>
	<line x1="-10" y1="16" x2="-10" y2="255"/>
	<line x1="5" y1="16" x2="5" y2="255"/>
	<line x1="20" y1="16" x2="20" y2="255"/>
	<line x1="35" y1="16" x2="35" y2="255"/>
	<line x1="50" y1="16" x2="50" y2="255"/>
	<line x1="65" y1="16" x2="65" y2="255"/>
	<line x1="80" y1="16" x2="80" y2="255"/>
	<line x1="95" y1="16" x2="95" y2="255"/>
	<line x1="110" y1="16" x2="110" y2="255"/>
	<line x1="125" y1="16" x2="125" y2="255"/>
	<line x1="140" y1="16" x2="140" y2="255"/>
	<line x1="155" y1="16" x2="155" y2="255"/>
	<line x1="170" y1="16" x2="170" y2="255"/>
	<line x1="185" y1="16" x2="185" y2="255"/>
	</g>
	
	<!-- Thick line Seperators-->
	<g id="Heavy Lines" class="st3" transform="translate(107,30)">
	<line x1="-15" y1="5" x2="-15" y2="260"/>
	<line x1="-97" y1="21" x2="210" y2="21"/>
	</g>
<!-- Text -->

	<g id="Heading" class="st2 st0 st13" transform="translate(15,27)">
	<text>
	<tspan x="85" y="0">Total Migration Times</tspan>
	</text>
	</g>
	<!-- Legend Text -->
	<g id="Legend" class="st5 st0" transform="translate(15,310)">
	<text>Total Migrations to Date: #totalnum# </text>
	<text x="0" y="15">As of Today</text>
	</g>
	<!-- Graph Numbers -->
	<g id="Graph Numbers" class="st0 st18 st9 st17" transform="translate(105,45)">
	<text>
	<tspan x="0" y="0">2</tspan>
	<tspan x="15" y="0">4</tspan>
	<tspan x="30" y="0">6</tspan>
	<tspan x="45" y="0">8</tspan>
	<tspan x="60" y="0">10</tspan>
	<tspan x="75" y="0">12</tspan>
	<tspan x="90" y="0">14</tspan>
	<tspan x="105" y="0">16</tspan>
	<tspan x="120" y="0">18</tspan>
	<tspan x="135" y="0">20</tspan>
	<tspan x="150" y="0">22</tspan>
	<tspan x="165" y="0">24</tspan>
	<tspan x="180" y="0">26</tspan>
	<tspan x="195" y="0">28</tspan>
	</text>
	</g>

	<!-- Period -->
	<g id="Time Period" class="st12 st0" transform="translate(15,80)">
	<text>
	<tspan x="0" y="-20">30 Mins</tspan>
	<tspan x="0" y="-5">1 Hr</tspan>
	<tspan x="0" y="10">1.5 Hr</tspan>
	<tspan x="0" y="25">2 Hr</tspan>
	<tspan x="0" y="40">2.5 Hr</tspan>
	<tspan x="0" y="55">3 Hr</tspan>
	<tspan x="0" y="70">3.5 Hr</tspan>
	<tspan x="0" y="85">4 Hr</tspan>
	<tspan x="0" y="100">4.5 Hr</tspan>
	<tspan x="0" y="115">5 Hr</tspan>
	<tspan x="0" y="130">5.5 Hr</tspan>
	<tspan x="0" y="145">6 Hr</tspan>
	<tspan x="0" y="160">6.5 Hr</tspan>
	<tspan x="0" y="175">7 Hr</tspan>
	<tspan x="0" y="190">7.5 Hr</tspan>
	<tspan x="0" y="205">8 Hr</tspan>
	</text>
	</g>
	<!-- Totals -->
	<g id="Time Totals" class="st11 st0 st12 st16" transform="translate(94,80)">
	<text>
	<tspan x="0" y="-20">#gbar1#</tspan>
	<tspan x="0" y="-5">#gbar2#</tspan>
	<tspan x="0" y="10">#gbar3#</tspan>
	<tspan x="0" y="25">#gbar4#</tspan>
	<tspan x="0" y="40">#gbar5#</tspan>
	<tspan x="0" y="55">#gbar6#</tspan>
	<tspan x="0" y="70">#gbar7#</tspan>
	<tspan x="0" y="85">#gbar8#</tspan>
	<tspan x="0" y="100">#gbar9#</tspan>
	<tspan x="0" y="115">#gbar10#</tspan>
	<tspan x="0" y="130">#gbar11#</tspan>
	<tspan x="0" y="145">#gbar12#</tspan>
	<tspan x="0" y="160">#gbar13#</tspan>
	<tspan x="0" y="175">#gbar14#</tspan>
	<tspan x="0" y="190">#gbar15#</tspan>
	<tspan x="0" y="205">#gbar16#</tspan>
	</text>
	</g>
</svg>
</cfoutput>
</cfxml>
<cfset xml = #ToString(mgraph)#>
<cffile action="write" file="#getDirectoryFromPath(getTemplatePath())#mgraph.svg" output="#xml#">
<cflocation url="mgraph.svg">

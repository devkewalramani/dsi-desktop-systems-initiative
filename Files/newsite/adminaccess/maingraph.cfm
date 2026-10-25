<cfquery name="group" datasource="newdsi">
SELECT *
FROM grouptotal
ORDER BY ID ASC 
</cfquery>
<title> </title>

<!--set bar vars-->
<!--group names and totals-->
<cfset v1=120>
<cfset v2=3>
<cfset v3=108>
<cfset v4=203>
<!--temp date-->
<cfset d1=DateFormat('1/1/2004','short')>
<cfset d2=DateFormat(Now(),'short')>

<cfset jan=215>
<cfset feb=245>
<cfset mar=275>
<cfset apr=305>
<cfset may=335>
<cfset jun=365>
<cfset jul=395>
<cfset aug=425>
<cfset sep=455>
<cfset oct=485>
<cfset nov=515>
<cfset dec=545>


<cfset today=now()>
<cfset mo=1>

<cfxml variable="maingraph">
<cfoutput>
<svg width="100%" height="100%" viewBox="25 -25 500 500" style="overflow:visible;enable-background:new 25 -25 500 500">
	<style type="text/css">
	<![CDATA[
		.st0{font-family:'Verdana';}
		.st1{letter-spacing:-0.019;}
		.st2{fill:##146798;}
		.st3{fill:##146A29;}
		.st4{opacity:0.10;}
		.st5{fill:none;stroke:##6D6D6D;stroke-width:0.5;}
		.st6{fill:none;stroke:##6D6D6D;stroke-width:0.5;}
		.st7{fill:none;stroke:##6D6D6D;stroke-width:0.5;}
		.st8{fill:none;stroke:##6D6D6D;stroke-width:0.5;}
		.st9{fill:##EFEEEE;}
		.st10{fill:none;stroke:##000000;stroke-width:0.5;}
		.st11{fill:##631E1D;}
		.st12{fill:white;stroke:##000000;stroke-width:0.5;}
		.st13{font-family:'Arial-BoldMT';}
		.st14{fill:##FFFF99;}
		.st15{letter-spacing:0.187;}
		.st16{fill:##FFFF99;stroke:black;stroke-width:0.5;}
		.st17{fill:none;stroke:##6D6D6D;stroke-width:0.5;}
		.st18{fill:none;stroke:##6D6D6D;stroke-width:0.5;}
		.st19{fill:##FFFFFF;}
		.st20{fill:##631E1D;}
		.st21{fill:##640D81;stroke:##080808;stroke-width:0.5;}
		.st22{fill:##631E1D;}
		.st23{fill:##FFFFFF;stroke:##000000;stroke-width:0.5;}
		.st24{letter-spacing:0.5;}
		.st25{letter-spacing:13;}
		.st26{font-family:'ArialMT';}
		.st27{letter-spacing:-0.5;}
		.st28{font-size:7;}
		.st29{font-size:10;}
		.st30{font-size:20;}
		.st31{fill:##080808;}
		.st32{fill:##136925;stroke:##080808;stroke-width:0.5;}
		.st33{fill:##007ADF;stroke:##080808;}
		.st34{fill:none;stroke:##6D6D6D;stroke-width:0.5;}
		.st35{fill:none;stroke:##6D6D6D;stroke-width:0.5;}
		.st36{fill:##DDDDDD;stroke:##000000;stroke-width:0.5;}
		.st37{fill:##C67D7D;}
		.st38{fill:##CCCCFF;}
		.st39{fill:##C67D7D;stroke:black;stroke-width:0.5;}
		.st40{fill:##CCCCFF;stroke:black;stroke-width:0.5;}
		.st41{text-anchor:end;}	
		.st42{text-anchor:middle;}	
		.st43{font-size:12;}
		.st44{fill:white;}
		.st45{font-size:6.5;letter-spacing:-0.5;text-anchor:middle;}
		.st46{font-size:10;fill:##631E1D;text-anchor:middle;}
		.st47{font-size:10;}
		.st48{font-size:10;}
		.st49{font-size:8;}
	]]>
	</style>

<!-- Graph Section -->

	<g id="Graph">
		<rect x="0" y="0" width="570" height="450"  class="st10"/>
		<rect x="10" y="5" width="551" height="40"  class="st23"/>
		<rect x="10" y="50" width="551" height="310"  class="st12"/>
		<rect x="10" y="365" width="551" height="80"  class="st12"/>
		
			
		<g id="horizontal lines" >
   		<line x1="10" y1="70" x2="560" y2="70" style="stroke: black; stroke-width:1;"/>
		<line x1="10" y1="85" x2="560" y2="85" style="stroke: black; stroke-width:1;"/>
		<!--Functions-->
		<line x1="10" y1="105" x2="560" y2="105"/>
		<line x1="10" y1="125" x2="560" y2="125"/>
		<line x1="10" y1="145" x2="560" y2="145"/>
		<line x1="10" y1="165" x2="560" y2="165"/>
		<line x1="10" y1="185" x2="560" y2="185"/>
		<line x1="10" y1="205" x2="560" y2="205"/>
		<line x1="10" y1="225" x2="560" y2="225"/>
		<line x1="10" y1="245" x2="560" y2="245"/>
		<line x1="10" y1="265" x2="560" y2="265"/>
		<line x1="10" y1="285" x2="560" y2="285"/>
		<line x1="10" y1="305" x2="560" y2="305"/>
		<line x1="10" y1="325" x2="560" y2="325"/>
		<line x1="10" y1="345" x2="560" y2="345" style="stroke: black; stroke-width:0.5;" />
		<line x1="10" y1="347" x2="560" y2="347" style="stroke: black; stroke-width:0.5;"/>
		
		
		
		
		<!--
		<line x1="10" y1="300" x2="540" y2="300"/>
		<line x1="10" y1="315" x2="540" y2="315"/>
		-->
		<!--legend lines-->
		<line x1="60" y1="390" x2="320" y2="390"/>
		<line x1="60" y1="415" x2="320" y2="415"/>
		<!--<line x1="60" y1="415" x2="560" y2="415"/>-->
		</g>
		
		<g>
		
	
		<text x="205" y="80" class="st0 st29 ">JAN</text>
		<text x="235" y="80" class="st0 st29 ">FEB</text>
		<text x="265" y="80" class="st0 st29 ">MAR</text>
		<text x="295" y="80" class="st0 st29 ">APR</text>		
		<text x="325" y="80" class="st0 st29 ">MAY</text>		
		<text x="355" y="80" class="st0 st29 ">JUN</text>		
		<text x="385" y="80" class="st0 st29 ">JUL</text>		
		<text x="415" y="80" class="st0 st29 ">AUG</text>		
		<text x="445" y="80" class="st0 st29 ">SEP</text>   		
		<text x="475" y="80" class="st0 st29 ">OCT</text>		
		<text x="505" y="80" class="st0 st29 ">NOV</text>		
		<text x="535" y="80" class="st0 st29 ">DEC</text>
		
		
		<line x1="60" y1="365" x2="60" y2="444"/>
		<line x1="300" y1="365" x2="300" y2="444"/>
		<line x1="320" y1="365" x2="320" y2="444"/>
		</g>
		
		<g id=" Vertical transparent bars" class="st4">
		<rect x="110" y="85" width="30" height="275"/>
		<rect x="170" y="85" width="30" height="275"/>
		</g>
		
		
		<g id="Legend boxes" transform="translate(305, 347)">
		<!-- <rect x="0" y="0" width="10" height="10" class="st16"/> -->
		<rect x="0" y="31" width="10" height="10" class="st16"/>
		<rect x="0" y="56" width="10" height="10" class="st40"/>
		</g>
		
				
<!-- Text Section -->

		<!-- Head -->
		<text x="135" y="26" class="st11 st13 st30">DSI Customer Device Migrations</text>
		
		<!-- Sub Head -->
		<text x="235" y="40" class="st22 st0 st29 st1">As of #dateformat(today,'mmmm d, yyyy')#</text>

<!--Early adopter constant-->
<g>
		<text x="14" y="100" class="st29">Early Adopters</text>
 		<text x="0" y="-17" class="st20 st28 st24 st41" transform="translate(137, 117)">141</text>
</g>
<g>

		<text x="0" y="#-17#" class="st3 st28 st24 st41" transform="translate(167, 117)">141</text>
</g>
<g>
		<text x="0" y="-17" class="st2 st28 st41" transform="translate(196, 117)">100%</text>
</g>


<cfloop query="group">
<g>
		<text x="14" y="#v1#" class="st29">#group.grp#</text>
 		<text x="0" y="#v2#" class="st20 st28 st24 st41" transform="translate(137, 117)">#group.tot#</text>
</g>
<cfquery name="done" datasource="newdsi">
select count(*) as count
from master
where grp='#group.grp#' and actualdate Between #parsedatetime(d1)# and #parsedatetime(d2)#
</cfquery>

<g>

		<text x="0" y="#v2#" class="st3 st28 st24 st41" transform="translate(167, 117)">#done.count#</text>
</g>
<cfif #group.tot# neq 0>
<cfset percdone=(#done.count#/#group.tot#)*100>
<cfelseif #group.tot# eq 0>
<cfset percdone=0>
</cfif>
<g>
		<text x="0" y="#v2#" class="st2 st28 st41" transform="translate(196, 117)">#NumberFormat(percdone,'99')#%</text>
</g>

<!--<g id="Yellow Paths" class="st14">
		<rect x="260" y="105" width="0" height="15"/>
</g>
<g id="Blue Paths" class="st38">
		<rect x="320" y="106" width="30" height="20"/>
</g>-->

<cfif dateformat(now(),'mmm') eq 'jan'>
<cfset cwidth=dateformat(now(),'d')>
<cfelseif dateformat(now(),'mmm') eq 'feb'>
<cfset cwidth=dateformat(now(),'d')+30>
<cfelseif dateformat(now(),'mmm') eq 'mar'>
<cfset cwidth=dateformat(now(),'d')+60>
<cfelseif dateformat(now(),'mmm') eq 'apr'>
<cfset cwidth=dateformat(now(),'d')+90>
<cfelseif dateformat(now(),'mmm') eq 'may'>
<cfset cwidth=dateformat(now(),'d')+120>
<cfelseif dateformat(now(),'mmm') eq 'jun'>
<cfset cwidth=dateformat(now(),'d')+150>
<cfelseif dateformat(now(),'mmm') eq 'jul'>
<cfset cwidth=dateformat(now(),'d')+180>
<cfelseif dateformat(now(),'mmm') eq 'aug'>
<cfset cwidth=dateformat(now(),'d')+210>
<cfelseif dateformat(now(),'mmm') eq 'sep'>
<cfset cwidth=dateformat(now(),'d')+240>
<cfelseif dateformat(now(),'mmm') eq 'oct'>
<cfset cwidth=dateformat(now(),'d')+270>
<cfelseif dateformat(now(),'mmm') eq 'nov'>
<cfset cwidth=dateformat(now(),'d')+300>
<cfelseif dateformat(now(),'mmm') eq 'dec'>
<cfset cwidth=dateformat(now(),'d')+330>
</cfif>

<cfif #group.breaks# eq 0>
<!--blue-->
<g>
		<rect x="#group.m1#" y="#v3#" width="#group.e1#" height="13"  class="st38"/>
</g>
<!--yellow-->
<cfif #dateformat(group.mosch1,'m/d/yyyy')# lte dateformat(now(),'m/d/yyyy') AND #group.mosch1# neq "">

</cfif>
<cfelseif #group.breaks# eq 1>
<g>
		<rect x="#group.m1#" y="#v3#" width="#group.e1#" height="13"   class="st38"/>
</g>
<g>
		<rect x="#group.m2#" y="#v3#" width="#group.e2#" height="13"  class="st38"/>
</g>
<cfelseif #group.breaks# eq 2>
<g>
		<rect x="#group.m1#" y="#v3#" width="#group.e1#" height="13"  class="st38"/>
</g>
<g>
		<rect x="#group.m2#" y="#v3#" width="#group.e2#" height="13"  class="st38"/>
</g>
<g>
		<rect x="#group.m3#" y="#v3#" width="#group.e3#" height="13"  class="st38"/>
</g>
<cfelseif #group.breaks# eq 3>
<g>
		<rect x="#group.m1#" y="#v3#" width="#group.e1#" height="13"  class="st38"/>
</g>
<g>
		<rect x="#group.m2#" y="#v3#" width="#group.e2#" height="13"  class="st38"/>
</g>
<g>
		<rect x="#group.m3#" y="#v3#" width="#group.e3#" height="13"  class="st38"/>
</g>
<g>
		<rect x="#group.m4#" y="#v3#" width="#group.e4#" height="13"  class="st38"/>
</g>
</cfif>
<g>
<rect x="201" y="#v3#" width="#cwidth#" height="13"  class="st14"/>
</g>





<!--
<text x="235" y="100" class="st0 st29 ">FEB</text>
		<text x="265" y="100" class="st0 st29 ">MAR</text>
		<text x="295" y="100" class="st0 st29 ">APR</text>		
		<text x="325" y="100" class="st0 st29 ">MAY</text>		
		<text x="355" y="100" class="st0 st29 ">JUN</text>		
		<text x="385" y="100" class="st0 st29 ">JUL</text>		
		<text x="415" y="100" class="st0 st29 ">AUG</text>		
		<text x="445" y="100" class="st0 st29 ">SEP</text>   		
		<text x="475" y="100" class="st0 st29 ">OCT</text>		
		<text x="505" y="100" class="st0 st29 ">NOV</text>		
		<text x="535" y="100" class="st0 st29 ">DEC</text>
-->

<g>
<rect x="201" y="#v3#" width="#cwidth#" height="13"  class="st14"/>
</g>

<cfset v1=v1+20>
<cfset v2=v2+20>
<cfset v3=v3+20>

</cfloop>


<g>
<rect x="200" y="108" width="120" height="13"  class="st44"/>
<rect x="350" y="108" width="210" height="13"  class="st44"/>
<rect x="320" y="128" width="240" height="13"  class="st44"/>
<rect x="200" y="148" width="60" height="13"  class="st44"/>
<rect x="380" y="148" width="180" height="13"  class="st44"/>
<rect x="200" y="168" width="90" height="13"  class="st44"/>
<rect x="320" y="168" width="30" height="13"  class="st44"/>
<rect x="380" y="168" width="180" height="13"  class="st44"/>
<rect x="200" y="188" width="180" height="13"  class="st44"/>
<rect x="410" y="188" width="150" height="13"  class="st44"/>
<rect x="200" y="208" width="120" height="13"  class="st44"/>
<rect x="380" y="208" width="120" height="13"  class="st44"/>
<rect x="530" y="208" width="30" height="13"  class="st44"/>
<rect x="230" y="228" width="30" height="13"  class="st44"/>
<rect x="290" y="228" width="30" height="13"  class="st44"/>
<rect x="200" y="248" width="120" height="13"  class="st44"/>
<rect x="350" y="248" width="60" height="13"  class="st44"/>
<rect x="470" y="248" width="90" height="13"  class="st44"/>
<rect x="200" y="268" width="120" height="13"  class="st44"/>
<rect x="440" y="268" width="120" height="13"  class="st44"/>
<rect x="200" y="288" width="270" height="13"  class="st44"/>
<rect x="500" y="288" width="60" height="13"  class="st44"/>
<rect x="200" y="308" width="240" height="13"  class="st44"/>
<rect x="500" y="308" width="60" height="13"  class="st44"/>
<rect x="200" y="328" width="360" height="13"  class="st44"/>
</g>
		
		


<cfloop query="group">

<cfquery name="group2" datasource="newdsi">
select *
from groupmonth
where grp='#group.grp#'
</cfquery>

<!--Audit-->
<cfif #group.grp# eq 'Audit'>
<cfset mo1='5/1/2004'>
<cfset end=#dateformat(mo1,'m/d/yyyy')#+#daysinmonth(mo1)#-1>
<cfset mo2=dateformat(now(),'m/d/yyyy')>
<cfset #end#=#dateformat(end,'m/d/yyyy')#>
<cfif #dateformat(mo2,'m/d/yyyy')# gte #dateformat(mo1,'m/d/yyyy')# and #dateformat(mo2,'m/d/yyyy')# lte #dateformat(end,'m/d/yyyy')#>
<cfquery name="num" datasource="newdsi">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(mo2)# and grp='#group.grp#'
</cfquery>
<g>
<text x="#may#" y="#120#" class="st0 st45 ">#num.count# / #group2.may#</text>
</g>
<cfelseif #dateformat(mo2,'m/d/yyyy')# gte #dateformat(end,'m/d/yyyy')# >
<cfquery name="num" datasource="newdsi">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(end)# and grp='#group.grp#'
</cfquery>
<g>
<text x="#may#" y="#120#" class="st0 st45 ">#num.count# / #group2.may#</text>
</g>
<cfelse>
<g>
<text x="#may#" y="#120#" class="st0 st45 ">0 / #group2.may#</text>
</g>
</cfif>
</cfif>

<!--Automation-->
<cfif #group.grp# eq 'Automation'>
<cfset mo1='1/1/2004'>
<cfset end=#dateformat(mo1,'m/d/yyyy')#+#daysinmonth(mo1)#-1>
<cfset mo2=dateformat(now(),'m/d/yyyy')>
<cfset #end#=#dateformat(end,'m/d/yyyy')#>
<cfif #dateformat(mo2,'m/d/yyyy')# gte #dateformat(mo1,'m/d/yyyy')# and #dateformat(mo2,'m/d/yyyy')# lte #dateformat(end,'m/d/yyyy')#>
<cfquery name="num" datasource="newdsi">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(mo2)# and grp='#group.grp#' 
</cfquery>
<g>
<text x="#jan#" y="#140#" class="st0 st45 ">#num.count# / #group2.jan#</text>
</g>
<cfelseif #dateformat(mo2,'m/d/yyyy')# gte #dateformat(end,'m/d/yyyy')# >
<cfquery name="num" datasource="newdsi">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(end)# and grp='#group.grp#'
</cfquery>
<g>
<text x="#jan#" y="#140#" class="st0 st45 ">#num.count# / #group2.jan#</text>
</g>
<cfelse>
<g>
<text x="#jan#" y="#140#" class="st0 st45 ">0 / #group2.jan#</text>
</g>
</cfif>

<cfset mo1='2/1/2004'>
<cfset end=#dateformat(mo1,'m/d/yyyy')#+#daysinmonth(mo1)#-1>
<cfset mo2=dateformat(now(),'m/d/yyyy')>
<cfset #end#=#dateformat(end,'m/d/yyyy')#>
<cfif #dateformat(mo2,'m/d/yyyy')# gte #dateformat(mo1,'m/d/yyyy')# and #dateformat(mo2,'m/d/yyyy')# lte #dateformat(end,'m/d/yyyy')#>
<cfquery name="num" datasource="newdsi">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(mo2)# and grp='#group.grp#' 
</cfquery>
<g>
<text x="#feb#" y="#140#" class="st0 st45 ">#num.count# / #group2.feb#</text>
</g>
<cfelseif #dateformat(mo2,'m/d/yyyy')# gte #dateformat(end,'m/d/yyyy')# >
<cfquery name="num" datasource="newdsi">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(end)# and grp='#group.grp#'
</cfquery>
<g>
<text x="#feb#" y="#140#" class="st0 st45 ">#num.count# / #group2.feb#</text>
</g>
<cfelse>
<g>
<text x="#feb#" y="#140#" class="st0 st45 ">0 / #group2.feb#</text>
</g>
</cfif>

<cfset mo1='3/1/2004'>
<cfset end=#dateformat(mo1,'m/d/yyyy')#+#daysinmonth(mo1)#-1>
<cfset mo2=dateformat(now(),'m/d/yyyy')>
<cfset #end#=#dateformat(end,'m/d/yyyy')#>
<cfif #dateformat(mo2,'m/d/yyyy')# gte #dateformat(mo1,'m/d/yyyy')# and #dateformat(mo2,'m/d/yyyy')# lte #dateformat(end,'m/d/yyyy')#>
<cfquery name="num" datasource="newdsi">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(mo2)# and grp='#group.grp#' 
</cfquery>
<g>
<text x="#mar#" y="#140#" class="st0 st45 ">#num.count# / #group2.mar#</text>
</g>
<cfelseif #dateformat(mo2,'m/d/yyyy')# gte #dateformat(end,'m/d/yyyy')# >
<cfquery name="num" datasource="newdsi">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(end)# and grp='#group.grp#'
</cfquery>
<g>
<text x="#mar#" y="#140#" class="st0 st45 ">#num.count# / #group2.mar#</text>
</g>
<cfelse>
<g>
<text x="#mar#" y="#140#" class="st0 st45 ">0 / #group2.mar#</text>
</g>
</cfif>

<cfset mo1='4/1/2004'>
<cfset end=#dateformat(mo1,'m/d/yyyy')#+#daysinmonth(mo1)#-1>
<cfset mo2=dateformat(now(),'m/d/yyyy')>
<cfset #end#=#dateformat(end,'m/d/yyyy')#>
<cfif #dateformat(mo2,'m/d/yyyy')# gte #dateformat(mo1,'m/d/yyyy')# and #dateformat(mo2,'m/d/yyyy')# lte #dateformat(end,'m/d/yyyy')#>
<cfquery name="num" datasource="newdsi">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(mo2)# and grp='#group.grp#'
</cfquery>
<g>
<text x="#apr#" y="#140#" class="st0 st45 ">#num.count# / #group2.apr#</text>
</g>
<cfelseif #dateformat(mo2,'m/d/yyyy')# gte #dateformat(end,'m/d/yyyy')# >
<cfquery name="num" datasource="newdsi">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(end)# and grp='#group.grp#'
</cfquery>
<g>
<text x="#apr#" y="#140#" class="st0 st45 ">#num.count# / #group2.apr#</text>
</g>
<cfelse>
<g>
<text x="#apr#" y="#140#" class="st0 st45 ">0 / #group2.apr#</text>
</g>
</cfif>
</cfif>

<!--Bank Sup-->
<cfif #group.grp# eq 'Bank Sup'>
<cfset mo1='3/1/2004'>
<cfset end=#dateformat(mo1,'m/d/yyyy')#+#daysinmonth(mo1)#-1>
<cfset mo2=dateformat(now(),'m/d/yyyy')>
<cfset #end#=#dateformat(end,'m/d/yyyy')#>
<cfif #dateformat(mo2,'m/d/yyyy')# gte #dateformat(mo1,'m/d/yyyy')# and #dateformat(mo2,'m/d/yyyy')# lte #dateformat(end,'m/d/yyyy')#>
<cfquery name="num" datasource="newdsi">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(mo2)# and grp='#group.grp#'
</cfquery>
<g>
<text x="#mar#" y="#160#" class="st0 st45 ">#num.count# / #group2.mar#</text>
</g>
<cfelseif #dateformat(mo2,'m/d/yyyy')# gte #dateformat(end,'m/d/yyyy')# >
<cfquery name="num" datasource="newdsi">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(end)# and grp='#group.grp#'
</cfquery>
<g>
<text x="#mar#" y="#160#" class="st0 st45 ">#num.count# / #group2.mar#</text>
</g>
<cfelse>
<g>
<text x="#mar#" y="#160#" class="st0 st45 ">0 / #group2.mar#</text>
</g>
</cfif>
<cfset mo1='4/1/2004'>
<cfset end=#dateformat(mo1,'m/d/yyyy')#+#daysinmonth(mo1)#-1>
<cfset mo2=dateformat(now(),'m/d/yyyy')>
<cfset #end#=#dateformat(end,'m/d/yyyy')#>
<cfif #dateformat(mo2,'m/d/yyyy')# gte #dateformat(mo1,'m/d/yyyy')# and #dateformat(mo2,'m/d/yyyy')# lte #dateformat(end,'m/d/yyyy')#>
<cfquery name="num" datasource="newdsi">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(mo2)# and grp='#group.grp#'
</cfquery>
<g>
<text x="#apr#" y="#160#" class="st0 st45 ">#num.count# / #group2.apr#</text>
</g>
<cfelseif #dateformat(mo2,'m/d/yyyy')# gte #dateformat(end,'m/d/yyyy')# >
<cfquery name="num" datasource="newdsi">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(end)# and grp='#group.grp#'
</cfquery>
<g>
<text x="#apr#" y="#160#" class="st0 st45 ">#num.count# / #group2.apr#</text>
</g>
<cfelse>
<g>
<text x="#apr#" y="#160#" class="st0 st45 ">0 / #group2.apr#</text>
</g>
</cfif>
<cfset mo1='5/1/2004'>
<cfset end=#dateformat(mo1,'m/d/yyyy')#+#daysinmonth(mo1)#-1>
<cfset mo2=dateformat(now(),'m/d/yyyy')>
<cfset #end#=#dateformat(end,'m/d/yyyy')#>
<cfif #dateformat(mo2,'m/d/yyyy')# gte #dateformat(mo1,'m/d/yyyy')# and #dateformat(mo2,'m/d/yyyy')# lte #dateformat(end,'m/d/yyyy')#>
<cfquery name="num" datasource="newdsi">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(mo2)# and grp='#group.grp#'
</cfquery>
<g>
<text x="#may#" y="#160#" class="st0 st45 ">#num.count# / #group2.may#</text>
</g>
<cfelseif #dateformat(mo2,'m/d/yyyy')# gte #dateformat(end,'m/d/yyyy')# >
<cfquery name="num" datasource="newdsi">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(end)# and grp='#group.grp#'
</cfquery>
<g>
<text x="#may#" y="#160#" class="st0 st45 ">#num.count# / #group2.may#</text>
</g>
<cfelse>
<g>
<text x="#may#" y="#160#" class="st0 st45 ">0 / #group2.may#</text>
</g>
</cfif>
<cfset mo1='6/1/2004'>
<cfset end=#dateformat(mo1,'m/d/yyyy')#+#daysinmonth(mo1)#-1>
<cfset mo2=dateformat(now(),'m/d/yyyy')>
<cfset #end#=#dateformat(end,'m/d/yyyy')#>
<cfif #dateformat(mo2,'m/d/yyyy')# gte #dateformat(mo1,'m/d/yyyy')# and #dateformat(mo2,'m/d/yyyy')# lte #dateformat(end,'m/d/yyyy')#>
<cfquery name="num" datasource="newdsi">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(mo2)# and grp='#group.grp#'
</cfquery>
<g>
<text x="#jun#" y="#160#" class="st0 st45 ">#num.count# / #group2.jun#</text>
</g>
<cfelseif #dateformat(mo2,'m/d/yyyy')# gte #dateformat(end,'m/d/yyyy')# >
<cfquery name="num" datasource="newdsi">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(end)# and grp='#group.grp#'
</cfquery>
<g>
<text x="#jun#" y="#160#" class="st0 st45 ">#num.count# / #group2.jun#</text>
</g>
<cfelse>
<g>
<text x="#jun#" y="#160#" class="st0 st45 ">0 / #group2.jun#</text>
</g>
</cfif>
</cfif>
<!--Corporate-->
<cfif #group.grp# eq 'Corporate'>
<cfset mo1='4/1/2004'>
<cfset end=#dateformat(mo1,'m/d/yyyy')#+#daysinmonth(mo1)#-1>
<cfset mo2=dateformat(now(),'m/d/yyyy')>
<cfset #end#=#dateformat(end,'m/d/yyyy')#>
<cfif #dateformat(mo2,'m/d/yyyy')# gte #dateformat(mo1,'m/d/yyyy')# and #dateformat(mo2,'m/d/yyyy')# lte #dateformat(end,'m/d/yyyy')#>
<cfquery name="num" datasource="newdsi">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(mo2)# and grp='#group.grp#'
</cfquery>
<g>
<text x="#apr#" y="#180#" class="st0 st45 ">#num.count# / #group2.apr#</text>
</g>
<cfelseif #dateformat(mo2,'m/d/yyyy')# gte #dateformat(end,'m/d/yyyy')# >
<cfquery name="num" datasource="newdsi">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(end)# and grp='#group.grp#'
</cfquery>
<g>
<text x="#apr#" y="#180#" class="st0 st45 ">#num.count# / #group2.apr#</text>
</g>
<cfelse>
<g>
<text x="#apr#" y="#180#" class="st0 st45 ">0 / #group2.apr#</text>
</g>
</cfif>
<cfset mo1='6/1/2004'>
<cfset end=#dateformat(mo1,'m/d/yyyy')#+#daysinmonth(mo1)#-1>
<cfset mo2=dateformat(now(),'m/d/yyyy')>
<cfset #end#=#dateformat(end,'m/d/yyyy')#>
<cfif #dateformat(mo2,'m/d/yyyy')# gte #dateformat(mo1,'m/d/yyyy')# and #dateformat(mo2,'m/d/yyyy')# lte #dateformat(end,'m/d/yyyy')#>
<cfquery name="num" datasource="newdsi">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(mo2)# and grp='#group.grp#'
</cfquery>
<g>
<text x="#jun#" y="#180#" class="st0 st45 ">#num.count# / #group2.jun#</text>
</g>
<cfelseif #dateformat(mo2,'m/d/yyyy')# gte #dateformat(end,'m/d/yyyy')# >
<cfquery name="num" datasource="newdsi">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(end)# and grp='#group.grp#'
</cfquery>
<g>
<text x="#jun#" y="#180#" class="st0 st45 ">#num.count# / #group2.jun#</text>
</g>
<cfelse>
<g>
<text x="#jun#" y="#180#" class="st0 st45 ">0 / #group2.jun#</text>
</g>
</cfif>
</cfif>
<!--Emerging Markets-->
<cfif #group.grp# eq 'Emerging Markets'>
<cfset mo1='7/1/2004'>
<cfset end=#dateformat(mo1,'m/d/yyyy')#+#daysinmonth(mo1)#-1>
<cfset mo2=dateformat(now(),'m/d/yyyy')>
<cfset #end#=#dateformat(end,'m/d/yyyy')#>
<cfif #dateformat(mo2,'m/d/yyyy')# gte #dateformat(mo1,'m/d/yyyy')# and #dateformat(mo2,'m/d/yyyy')# lte #dateformat(end,'m/d/yyyy')#>
<cfquery name="num" datasource="newdsi">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(mo2)# and grp='#group.grp#'
</cfquery>
<g>
<text x="#jul#" y="#200#" class="st0 st45 ">#num.count# / #group2.jul#</text>
</g>
<cfelseif #dateformat(mo2,'m/d/yyyy')# gte #dateformat(end,'m/d/yyyy')# >
<cfquery name="num" datasource="newdsi">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(end)# and grp='#group.grp#'
</cfquery>
<g>
<text x="#jul#" y="#200#" class="st0 st45 ">#num.count# / #group2.jul#</text>
</g>
<cfelse>
<g>
<text x="#jul#" y="#200#" class="st0 st45 ">0 / #group2.jul#</text>
</g>
</cfif>
</cfif>
<!--Exec Offices-->
<cfif #group.grp# eq 'Exec Offices'>
<cfset mo1='5/1/2004'>
<cfset end=#dateformat(mo1,'m/d/yyyy')#+#daysinmonth(mo1)#-1>
<cfset mo2=dateformat(now(),'m/d/yyyy')>
<cfset #end#=#dateformat(end,'m/d/yyyy')#>
<cfif #dateformat(mo2,'m/d/yyyy')# gte #dateformat(mo1,'m/d/yyyy')# and #dateformat(mo2,'m/d/yyyy')# lte #dateformat(end,'m/d/yyyy')#>
<cfquery name="num" datasource="newdsi">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(mo2)# and grp='#group.grp#'
</cfquery>
<g>
<text x="#may#" y="#220#" class="st0 st45 ">#num.count# / #group2.may#</text>
</g>
<cfelseif #dateformat(mo2,'m/d/yyyy')# gte #dateformat(end,'m/d/yyyy')# >
<cfquery name="num" datasource="newdsi">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(end)# and grp='#group.grp#'
</cfquery>
<g>
<text x="#may#" y="#220#" class="st0 st45 ">#num.count# / #group2.may#</text>
</g>
<cfelse>
<g>
<text x="#may#" y="#220#" class="st0 st45 ">0 / #group2.may#</text>
</g>
</cfif>
<cfset mo1='6/1/2004'>
<cfset end=#dateformat(mo1,'m/d/yyyy')#+#daysinmonth(mo1)#-1>
<cfset mo2=dateformat(now(),'m/d/yyyy')>
<cfset #end#=#dateformat(end,'m/d/yyyy')#>
<cfif #dateformat(mo2,'m/d/yyyy')# gte #dateformat(mo1,'m/d/yyyy')# and #dateformat(mo2,'m/d/yyyy')# lte #dateformat(end,'m/d/yyyy')#>
<cfquery name="num" datasource="newdsi">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(mo2)# and grp='#group.grp#'
</cfquery>
<g>
<text x="#jun#" y="#220#" class="st0 st45 ">#num.count# / #group2.jun#</text>
</g>
<cfelseif #dateformat(mo2,'m/d/yyyy')# gte #dateformat(end,'m/d/yyyy')# >
<cfquery name="num" datasource="newdsi">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(end)# and grp='#group.grp#'
</cfquery>
<g>
<text x="#jun#" y="#220#" class="st0 st45 ">#num.count# / #group2.jun#</text>
</g>
<cfelse>
<g>
<text x="#jun#" y="#220#" class="st0 st45 ">0 / #group2.jun#</text>
</g>
</cfif>
<cfset mo1='11/1/2004'>
<cfset end=#dateformat(mo1,'m/d/yyyy')#+#daysinmonth(mo1)#-1>
<cfset mo2=dateformat(now(),'m/d/yyyy')>
<cfset #end#=#dateformat(end,'m/d/yyyy')#>

<cfif #dateformat(mo2,'m/d/yyyy')# gte #dateformat(mo1,'m/d/yyyy')# and #dateformat(mo2,'m/d/yyyy')# lte #dateformat(end,'m/d/yyyy')#>
<cfquery name="num" datasource="newdsi">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(mo2)# and grp='#group.grp#'
</cfquery>
<g>
<text x="#nov#" y="#220#" class="st0 st45 ">#num.count# / #group2.nov#</text>
</g>
<cfelseif #dateformat(mo2,'m/d/yyyy')# gte #dateformat(end,'m/d/yyyy')# >
<cfquery name="num" datasource="newdsi">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(end)# and grp='#group.grp#'
</cfquery>
<g>
<text x="#nov#" y="#220#" class="st0 st45 ">#num.count# / #group2.nov#</text>
</g>
<cfelse>
<g>
<text x="#nov#" y="#220#" class="st0 st45 ">0 / #group2.nov#</text>
</g>
</cfif>
</cfif>
<!--Financial Services-->
<cfif #group.grp# eq 'Financial Services'>
<cfset mo1='1/1/2004'>
<cfset end=#dateformat(mo1,'m/d/yyyy')#+#daysinmonth(mo1)#-1>
<cfset mo2=dateformat(now(),'m/d/yyyy')>
<cfset #end#=#dateformat(end,'m/d/yyyy')#>
<cfif #dateformat(mo2,'m/d/yyyy')# gte #dateformat(mo1,'m/d/yyyy')# and #dateformat(mo2,'m/d/yyyy')# lte #dateformat(end,'m/d/yyyy')#>
<cfquery name="num" datasource="newdsi">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(mo2)# and grp='#group.grp#'
</cfquery>
<g>
<text x="#jan#" y="#240#" class="st0 st45 ">#num.count# / #group2.jan#</text>
</g>
<cfelseif #dateformat(mo2,'m/d/yyyy')# gte #dateformat(end,'m/d/yyyy')# >
<cfquery name="num" datasource="newdsi">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(end)# and grp='#group.grp#'
</cfquery>
<g>
<text x="#jan#" y="#240#" class="st0 st45 ">#num.count# / #group2.jan#</text>
</g>
<cfelse>
<g>
<text x="#jan#" y="#240#" class="st0 st45 ">0 / #group2.jan#</text>
</g>
</cfif>
<cfset mo1='3/1/2004'>
<cfset end=#dateformat(mo1,'m/d/yyyy')#+#daysinmonth(mo1)#-1>
<cfset mo2=dateformat(now(),'m/d/yyyy')>
<cfset #end#=#dateformat(end,'m/d/yyyy')#>
<cfif #dateformat(mo2,'m/d/yyyy')# gte #dateformat(mo1,'m/d/yyyy')# and #dateformat(mo2,'m/d/yyyy')# lte #dateformat(end,'m/d/yyyy')#>
<cfquery name="num" datasource="newdsi">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(mo2)# and grp='#group.grp#'
</cfquery>
<g>
<text x="#mar#" y="#240#" class="st0 st45 ">#num.count# / #group2.mar#</text>
</g>
<cfelseif #dateformat(mo2,'m/d/yyyy')# gte #dateformat(end,'m/d/yyyy')# >
<cfquery name="num" datasource="newdsi">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(end)# and grp='#group.grp#'
</cfquery>
<g>
<text x="#mar#" y="#240#" class="st0 st45 ">#num.count# / #group2.mar#</text>
</g>
<cfelse>
<g>
<text x="#mar#" y="#240#" class="st0 st45 ">0 / #group2.mar#</text>
</g>
</cfif>
<cfset mo1='5/1/2004'>
<cfset end=#dateformat(mo1,'m/d/yyyy')#+#daysinmonth(mo1)#-1>
<cfset mo2=dateformat(now(),'m/d/yyyy')>
<cfset #end#=#dateformat(end,'m/d/yyyy')#>
<cfif #dateformat(mo2,'m/d/yyyy')# gte #dateformat(mo1,'m/d/yyyy')# and #dateformat(mo2,'m/d/yyyy')# lte #dateformat(end,'m/d/yyyy')#>
<cfquery name="num" datasource="newdsi">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(mo2)# and grp='#group.grp#'
</cfquery>
<g>
<text x="#may#" y="#240#" class="st0 st45 ">#num.count# / #group2.may#</text>
</g>
<cfelseif #dateformat(mo2,'m/d/yyyy')# gte #dateformat(end,'m/d/yyyy')# >
<cfquery name="num" datasource="newdsi">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(end)# and grp='#group.grp#'
</cfquery>
<g>
<text x="#may#" y="#240#" class="st0 st45 ">#num.count# / #group2.may#</text>
</g>
<cfelse>
<g>
<text x="#may#" y="#240#" class="st0 st45 ">0 / #group2.may#</text>
</g>
</cfif>
<cfset mo1='6/1/2004'>
<cfset end=#dateformat(mo1,'m/d/yyyy')#+#daysinmonth(mo1)#-1>
<cfset mo2=dateformat(now(),'m/d/yyyy')>
<cfset #end#=#dateformat(end,'m/d/yyyy')#>
<cfif #dateformat(mo2,'m/d/yyyy')# gte #dateformat(mo1,'m/d/yyyy')# and #dateformat(mo2,'m/d/yyyy')# lte #dateformat(end,'m/d/yyyy')#>
<cfquery name="num" datasource="newdsi">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(mo2)# and grp='#group.grp#'
</cfquery>
<g>
<text x="#jun#" y="#240#" class="st0 st45 ">#num.count# / #group2.jun#</text>
</g>
<cfelseif #dateformat(mo2,'m/d/yyyy')# gte #dateformat(end,'m/d/yyyy')# >
<cfquery name="num" datasource="newdsi">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(end)# and grp='#group.grp#'
</cfquery>
<g>
<text x="#jun#" y="#240#" class="st0 st45 ">#num.count# / #group2.jun#</text>
</g>
<cfelse>
<g>
<text x="#jun#" y="#240#" class="st0 st45 ">0 / #group2.jun#</text>
</g>
</cfif>
<cfset mo1='7/1/2004'>
<cfset end=#dateformat(mo1,'m/d/yyyy')#+#daysinmonth(mo1)#-1>
<cfset mo2=dateformat(now(),'m/d/yyyy')>
<cfset #end#=#dateformat(end,'m/d/yyyy')#>
<cfif #dateformat(mo2,'m/d/yyyy')# gte #dateformat(mo1,'m/d/yyyy')# and #dateformat(mo2,'m/d/yyyy')# lte #dateformat(end,'m/d/yyyy')#>
<cfquery name="num" datasource="newdsi">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(mo2)# and grp='#group.grp#'
</cfquery>
<g>
<text x="#jul#" y="#240#" class="st0 st45 ">#num.count# / #group2.jul#</text>
</g>
<cfelseif #dateformat(mo2,'m/d/yyyy')# gte #dateformat(end,'m/d/yyyy')# >
<cfquery name="num" datasource="newdsi">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(end)# and grp='#group.grp#'
</cfquery>
<g>
<text x="#jul#" y="#240#" class="st0 st45 ">#num.count# / #group2.jul#</text>
</g>
<cfelse>
<g>
<text x="#jul#" y="#240#" class="st0 st45 ">0 / #group2.jul#</text>
</g>
</cfif>
<cfset mo1='8/1/2004'>
<cfset end=#dateformat(mo1,'m/d/yyyy')#+#daysinmonth(mo1)#-1>
<cfset mo2=dateformat(now(),'m/d/yyyy')>
<cfset #end#=#dateformat(end,'m/d/yyyy')#>
<cfif #dateformat(mo2,'m/d/yyyy')# gte #dateformat(mo1,'m/d/yyyy')# and #dateformat(mo2,'m/d/yyyy')# lte #dateformat(end,'m/d/yyyy')#>
<cfquery name="num" datasource="newdsi">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(mo2)# and grp='#group.grp#'
</cfquery>
<g>
<text x="#aug#" y="#240#" class="st0 st45 ">#num.count# / #group2.aug#</text>
</g>
<cfelseif #dateformat(mo2,'m/d/yyyy')# gte #dateformat(end,'m/d/yyyy')# >
<cfquery name="num" datasource="newdsi">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(end)# and grp='#group.grp#'
</cfquery>
<g>
<text x="#aug#" y="#240#" class="st0 st45 ">#num.count# / #group2.aug#</text>
</g>
<cfelse>
<g>
<text x="#aug#" y="#240#" class="st0 st45 ">0 / #group2.aug#</text>
</g>
</cfif>
<cfset mo1='9/1/2004'>
<cfset end=#dateformat(mo1,'m/d/yyyy')#+#daysinmonth(mo1)#-1>
<cfset mo2=dateformat(now(),'m/d/yyyy')>
<cfset #end#=#dateformat(end,'m/d/yyyy')#>
<cfif #dateformat(mo2,'m/d/yyyy')# gte #dateformat(mo1,'m/d/yyyy')# and #dateformat(mo2,'m/d/yyyy')# lte #dateformat(end,'m/d/yyyy')#>
<cfquery name="num" datasource="newdsi">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(mo2)# and grp='#group.grp#' 
</cfquery>
<g>
<text x="#sep#" y="#240#" class="st0 st45 ">#num.count# / #group2.sep#</text>
</g>
<cfelseif #dateformat(mo2,'m/d/yyyy')# gte #dateformat(end,'m/d/yyyy')# >
<cfquery name="num" datasource="newdsi">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(end)# and grp='#group.grp#'
</cfquery>
<g>
<text x="#sep#" y="#240#" class="st0 st45 ">#num.count# / #group2.sep#</text>
</g>
<cfelse>
<g>
<text x="#sep#" y="#240#" class="st0 st45 ">0 / #group2.sep#</text>
</g>
</cfif>
<cfset mo1='10/1/2004'>
<cfset end=#dateformat(mo1,'m/d/yyyy')#+#daysinmonth(mo1)#-1>
<cfset mo2=dateformat(now(),'m/d/yyyy')>
<cfset #end#=#dateformat(end,'m/d/yyyy')#>
<cfif #dateformat(mo2,'m/d/yyyy')# gte #dateformat(mo1,'m/d/yyyy')# and #dateformat(mo2,'m/d/yyyy')# lte #dateformat(end,'m/d/yyyy')#>
<cfquery name="num" datasource="newdsi">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(mo2)# and grp='#group.grp#'
</cfquery>
<g>
<text x="#oct#" y="#240#" class="st0 st45 ">#num.count# / #group2.oct#</text>
</g>
<cfelseif #dateformat(mo2,'m/d/yyyy')# gte #dateformat(end,'m/d/yyyy')# >
<cfquery name="num" datasource="newdsi">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(end)# and grp='#group.grp#'
</cfquery>
<g>
<text x="#oct#" y="#240#" class="st0 st45 ">#num.count# / #group2.oct#</text>
</g>
<cfelse>
<g>
<text x="#oct#" y="#240#" class="st0 st45 ">0 / #group2.oct#</text>
</g>
</cfif>
<cfset mo1='11/1/2004'>
<cfset end=#dateformat(mo1,'m/d/yyyy')#+#daysinmonth(mo1)#-1>
<cfset mo2=dateformat(now(),'m/d/yyyy')>
<cfset #end#=#dateformat(end,'m/d/yyyy')#>
<cfif #dateformat(mo2,'m/d/yyyy')# gte #dateformat(mo1,'m/d/yyyy')# and #dateformat(mo2,'m/d/yyyy')# lte #dateformat(end,'m/d/yyyy')#>
<cfquery name="num" datasource="newdsi">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(mo2)# and grp='#group.grp#'
</cfquery>
<g>
<text x="#nov#" y="#240#" class="st0 st45 ">#num.count# / #group2.nov#</text>
</g>
<cfelseif #dateformat(mo2,'m/d/yyyy')# gte #dateformat(end,'m/d/yyyy')# >
<cfquery name="num" datasource="newdsi">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(end)# and grp='#group.grp#'
</cfquery>
<g>
<text x="#nov#" y="#240#" class="st0 st45 ">#num.count# / #group2.nov#</text>
</g>
<cfelse>
<g>
<text x="#nov#" y="#240#" class="st0 st45 ">0 / #group2.nov#</text>
</g>
</cfif>
<cfset mo1='12/1/2004'>
<cfset end=#dateformat(mo1,'m/d/yyyy')#+#daysinmonth(mo1)#-1>
<cfset mo2=dateformat(now(),'m/d/yyyy')>
<cfset #end#=#dateformat(end,'m/d/yyyy')#>
<cfif #dateformat(mo2,'m/d/yyyy')# gte #dateformat(mo1,'m/d/yyyy')# and #dateformat(mo2,'m/d/yyyy')# lte #dateformat(end,'m/d/yyyy')#>
<cfquery name="num" datasource="newdsi">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(mo2)# and grp='#group.grp#' 
</cfquery>
<g>
<text x="#dec#" y="#240#" class="st0 st45 ">#num.count# / #group2.dec#</text>
</g>
<cfelseif #dateformat(mo2,'m/d/yyyy')# gte #dateformat(end,'m/d/yyyy')# >
<cfquery name="num" datasource="newdsi">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(end)# and grp='#group.grp#'
</cfquery>
<g>
<text x="#dec#" y="#240#" class="st0 st45 ">#num.count# / #group2.dec#</text>
</g>
<cfelse>
<g>
<text x="#dec#" y="#240#" class="st0 st45 ">0 / #group2.dec#</text>
</g>
</cfif>
</cfif>
<!--Legal-->
<cfif #group.grp# eq 'Legal'>
<cfset mo1='5/1/2004'>
<cfset end=#dateformat(mo1,'m/d/yyyy')#+#daysinmonth(mo1)#-1>
<cfset mo2=dateformat(now(),'m/d/yyyy')>
<cfset #end#=#dateformat(end,'m/d/yyyy')#>
<cfif #dateformat(mo2,'m/d/yyyy')# gte #dateformat(mo1,'m/d/yyyy')# and #dateformat(mo2,'m/d/yyyy')# lte #dateformat(end,'m/d/yyyy')#>
<cfquery name="num" datasource="newdsi">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(mo2)# and grp='#group.grp#'
</cfquery>
<g>
<text x="#may#" y="#260#" class="st0 st45 ">#num.count# / #group2.may#</text>
</g>
<cfelseif #dateformat(mo2,'m/d/yyyy')# gte #dateformat(end,'m/d/yyyy')# >
<cfquery name="num" datasource="newdsi">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(end)# and grp='#group.grp#'
</cfquery>
<g>
<text x="#may#" y="#260#" class="st0 st45 ">#num.count# / #group2.may#</text>
</g>
<cfelse>
<g>
<text x="#may#" y="#260#" class="st0 st45 ">0 / #group2.may#</text>
</g>
</cfif>
<cfset mo1='8/1/2004'>
<cfset end=#dateformat(mo1,'m/d/yyyy')#+#daysinmonth(mo1)#-1>
<cfset mo2=dateformat(now(),'m/d/yyyy')>
<cfset #end#=#dateformat(end,'m/d/yyyy')#>
<cfif #dateformat(mo2,'m/d/yyyy')# gte #dateformat(mo1,'m/d/yyyy')# and #dateformat(mo2,'m/d/yyyy')# lte #dateformat(end,'m/d/yyyy')#>
<cfquery name="num" datasource="newdsi">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(mo2)# and grp='#group.grp#' 
</cfquery>
<g>
<text x="#aug#" y="#260#" class="st0 st45 ">#num.count# / #group2.aug#</text>
</g>
<cfelseif #dateformat(mo2,'m/d/yyyy')# gte #dateformat(end,'m/d/yyyy')# >
<cfquery name="num" datasource="newdsi">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(end)# and grp='#group.grp#'
</cfquery>
<g>
<text x="#aug#" y="#260#" class="st0 st45 ">#num.count# / #group2.aug#</text>
</g>
<cfelse>
<g>
<text x="#aug#" y="#260#" class="st0 st45 ">0 / #group2.aug#</text>
</g>
</cfif>
<cfset mo1='9/1/2004'>
<cfset end=#dateformat(mo1,'m/d/yyyy')#+#daysinmonth(mo1)#-1>
<cfset mo2=dateformat(now(),'m/d/yyyy')>
<cfset #end#=#dateformat(end,'m/d/yyyy')#>
<cfif #dateformat(mo2,'m/d/yyyy')# gte #dateformat(mo1,'m/d/yyyy')# and #dateformat(mo2,'m/d/yyyy')# lte #dateformat(end,'m/d/yyyy')#>
<cfquery name="num" datasource="newdsi">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(mo2)# and grp='#group.grp#'
</cfquery>
<g>
<text x="#sep#" y="#260#" class="st0 st45 ">#num.count# / #group2.sep#</text>
</g>
<cfelseif #dateformat(mo2,'m/d/yyyy')# gte #dateformat(end,'m/d/yyyy')# >
<cfquery name="num" datasource="newdsi">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(end)# and grp='#group.grp#'
</cfquery>
<g>
<text x="#sep#" y="#260#" class="st0 st45 ">#num.count# / #group2.sep#</text>
</g>
<cfelse>
<g>
<text x="#sep#" y="#260#" class="st0 st45 ">0 / #group2.sep#</text>
</g>
</cfif>
</cfif>
<!--Markets-->
<cfif #group.grp# eq 'Markets'>
<cfset mo1='5/1/2004'>
<cfset end=#dateformat(mo1,'m/d/yyyy')#+#daysinmonth(mo1)#-1>
<cfset mo2=dateformat(now(),'m/d/yyyy')>
<cfset #end#=#dateformat(end,'m/d/yyyy')#>
<cfif #dateformat(mo2,'m/d/yyyy')# gte #dateformat(mo1,'m/d/yyyy')# and #dateformat(mo2,'m/d/yyyy')# lte #dateformat(end,'m/d/yyyy')#>
<cfquery name="num" datasource="newdsi">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(mo2)# and grp='#group.grp#'
</cfquery>
<g>
<text x="#may#" y="#280#" class="st0 st45 ">#num.count# / #group2.may#</text>
</g>
<cfelseif #dateformat(mo2,'m/d/yyyy')# gte #dateformat(end,'m/d/yyyy')# >
<cfquery name="num" datasource="newdsi">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(end)# and grp='#group.grp#'
</cfquery>
<g>
<text x="#may#" y="#280#" class="st0 st45 ">#num.count# / #group2.may#</text>
</g>
<cfelse>
<g>
<text x="#may#" y="#280#" class="st0 st45 ">0 / #group2.may#</text>
</g>
</cfif>
<cfset mo1='6/1/2004'>
<cfset end=#dateformat(mo1,'m/d/yyyy')#+#daysinmonth(mo1)#-1>
<cfset mo2=dateformat(now(),'m/d/yyyy')>
<cfset #end#=#dateformat(end,'m/d/yyyy')#>
<cfif #dateformat(mo2,'m/d/yyyy')# gte #dateformat(mo1,'m/d/yyyy')# and #dateformat(mo2,'m/d/yyyy')# lte #dateformat(end,'m/d/yyyy')#>
<cfquery name="num" datasource="newdsi">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(mo2)# and grp='#group.grp#'
</cfquery>
<g>
<text x="#jun#" y="#280#" class="st0 st45 ">#num.count# / #group2.jun#</text>
</g>
<cfelseif #dateformat(mo2,'m/d/yyyy')# gte #dateformat(end,'m/d/yyyy')# >
<cfquery name="num" datasource="newdsi">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(end)# and grp='#group.grp#'
</cfquery>
<g>
<text x="#jun#" y="#280#" class="st0 st45 ">#num.count# / #group2.jun#</text>
</g>
<cfelse>
<g>
<text x="#jun#" y="#280#" class="st0 st45 ">0 / #group2.jun#</text>
</g>
</cfif>
<cfset mo1='7/1/2004'>
<cfset end=#dateformat(mo1,'m/d/yyyy')#+#daysinmonth(mo1)#-1>
<cfset mo2=dateformat(now(),'m/d/yyyy')>
<cfset #end#=#dateformat(end,'m/d/yyyy')#>
<cfif #dateformat(mo2,'m/d/yyyy')# gte #dateformat(mo1,'m/d/yyyy')# and #dateformat(mo2,'m/d/yyyy')# lte #dateformat(end,'m/d/yyyy')#>
<cfquery name="num" datasource="newdsi">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(mo2)# and grp='#group.grp#'
</cfquery>
<g>
<text x="#jul#" y="#280#" class="st0 st45 ">#num.count# / #group2.jul#</text>
</g>
<cfelseif #dateformat(mo2,'m/d/yyyy')# gte #dateformat(end,'m/d/yyyy')# >
<cfquery name="num" datasource="newdsi">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(end)# and grp='#group.grp#'
</cfquery>
<g>
<text x="#jul#" y="#280#" class="st0 st45 ">#num.count# / #group2.jul#</text>
</g>
<cfelse>
<g>
<text x="#jul#" y="#280#" class="st0 st45 ">0 / #group2.jul#</text>
</g>
</cfif>
<cfset mo1='8/1/2004'>
<cfset end=#dateformat(mo1,'m/d/yyyy')#+#daysinmonth(mo1)#-1>
<cfset mo2=dateformat(now(),'m/d/yyyy')>
<cfset #end#=#dateformat(end,'m/d/yyyy')#>
<cfif #dateformat(mo2,'m/d/yyyy')# gte #dateformat(mo1,'m/d/yyyy')# and #dateformat(mo2,'m/d/yyyy')# lte #dateformat(end,'m/d/yyyy')#>
<cfquery name="num" datasource="newdsi">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(mo2)# and grp='#group.grp#'
</cfquery>
<g>
<text x="#aug#" y="#280#" class="st0 st45 ">#num.count# / #group2.aug#</text>
</g>
<cfelseif #dateformat(mo2,'m/d/yyyy')# gte #dateformat(end,'m/d/yyyy')# >
<cfquery name="num" datasource="newdsi">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(end)# and grp='#group.grp#'
</cfquery>
<g>
<text x="#aug#" y="#280#" class="st0 st45 ">#num.count# / #group2.aug#</text>
</g>
<cfelse>
<g>
<text x="#aug#" y="#280#" class="st0 st45 ">0 / #group2.aug#</text>
</g>
</cfif>
</cfif>
<!--OEB-->
<cfif #group.grp# eq 'OEB'>
<cfset mo1='10/1/2004'>
<cfset end=#dateformat(mo1,'m/d/yyyy')#+#daysinmonth(mo1)#-1>
<cfset mo2=dateformat(now(),'m/d/yyyy')>
<cfset #end#=#dateformat(end,'m/d/yyyy')#>
<cfif #dateformat(mo2,'m/d/yyyy')# gte #dateformat(mo1,'m/d/yyyy')# and #dateformat(mo2,'m/d/yyyy')# lte #dateformat(end,'m/d/yyyy')#>
<cfquery name="num" datasource="newdsi">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(mo2)# and grp='#group.grp#' 
</cfquery>
<g>
<text x="#oct#" y="#300#" class="st0 st45 ">#num.count# / #group2.oct#</text>
</g>
<cfelseif #dateformat(mo2,'m/d/yyyy')# gte #dateformat(end,'m/d/yyyy')# >
<cfquery name="num" datasource="newdsi">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(end)# and grp='#group.grp#'
</cfquery>
<g>
<text x="#oct#" y="#300#" class="st0 st45 ">#num.count# / #group2.oct#</text>
</g>
<cfelse>
<g>
<text x="#oct#" y="#300#" class="st0 st45 ">0 / #group2.oct#</text>
</g>
</cfif>
</cfif>
<!--Research-->
<cfif #group.grp# eq 'Research'>
<cfset mo1='9/1/2004'>
<cfset end=#dateformat(mo1,'m/d/yyyy')#+#daysinmonth(mo1)#-1>
<cfset mo2=dateformat(now(),'m/d/yyyy')>
<cfset #end#=#dateformat(end,'m/d/yyyy')#>
<cfif #dateformat(mo2,'m/d/yyyy')# gte #dateformat(mo1,'m/d/yyyy')# and #dateformat(mo2,'m/d/yyyy')# lte #dateformat(end,'m/d/yyyy')#>
<cfquery name="num" datasource="newdsi">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(mo2)# and grp='#group.grp#'
</cfquery>
<g>
<text x="#sep#" y="#320#" class="st0 st45 ">#num.count# / #group2.sep#</text>
</g>
<cfelseif #dateformat(mo2,'m/d/yyyy')# gte #dateformat(end,'m/d/yyyy')# >
<cfquery name="num" datasource="newdsi">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(end)# and grp='#group.grp#'
</cfquery>
<g>
<text x="#sep#" y="#320#" class="st0 st45 ">#num.count# / #group2.sep#</text>
</g>
<cfelse>
<g>
<text x="#sep#" y="#320#" class="st0 st45 ">0 / #group2.sep#</text>
</g>
</cfif>
<cfset mo1='10/1/2004'>
<cfset end=#dateformat(mo1,'m/d/yyyy')#+#daysinmonth(mo1)#-1>
<cfset mo2=dateformat(now(),'m/d/yyyy')>
<cfset #end#=#dateformat(end,'m/d/yyyy')#>
<cfif #dateformat(mo2,'m/d/yyyy')# gte #dateformat(mo1,'m/d/yyyy')# and #dateformat(mo2,'m/d/yyyy')# lte #dateformat(end,'m/d/yyyy')#>
<cfquery name="num" datasource="newdsi">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(mo2)# and grp='#group.grp#'
</cfquery>
<g>
<text x="#oct#" y="#320#" class="st0 st45 ">#num.count# / #group2.oct#</text>
</g>
<cfelseif #dateformat(mo2,'m/d/yyyy')# gte #dateformat(end,'m/d/yyyy')# >
<cfquery name="num" datasource="newdsi">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(end)# and grp='#group.grp#'
</cfquery>
<g>
<text x="#oct#" y="#320#" class="st0 st45 ">#num.count# / #group2.mar#</text>
</g>
<cfelse>
<g>
<text x="#oct#" y="#320#" class="st0 st45 ">0 / #group2.oct#</text>
</g>
</cfif>
</cfif>
<!--10th floor-->

</cfloop>

<!--totals-->
<cfquery name="est" datasource="newdsi">
SELECT sum(tot) as esttot
FROM grouptotal
</cfquery>

<cfquery name="totdone" datasource="newdsi">
select count(*) as totnum
from master
where actualdate Between #parsedatetime(d1)# and #parsedatetime(d2)#
</cfquery>

<cfquery name="estsum" datasource="newdsi">
Select SUM(jan) as tot1, SUM(feb) as tot2, SUM(mar) as tot3, SUM(apr) as tot4, SUM(may) as tot5, SUM(jun) as tot6, SUM(jul) as tot7, SUM(aug) as tot8, SUM(sep) as tot9, SUM(oct) as tot10, SUM(nov) as tot11, SUM(dec) as tot12
from groupmonth
</cfquery>

<cfoutput>
<cfset bdate=dateformat('1/1/2004','m/d/yyyy')>
<cfset edate=dateformat(bdate,'m/d/yyyy')+#daysinmonth(bdate)#-1>

<cfset x1=216>
<cfset tot=ArrayNew(1)>

<cfset tot[1]=#estsum.tot1#>
<cfset tot[2]=#estsum.tot2#>
<cfset tot[3]=#estsum.tot3#>
<cfset tot[4]=#estsum.tot4#>
<cfset tot[5]=#estsum.tot5#>
<cfset tot[6]=#estsum.tot6#>
<cfset tot[7]=#estsum.tot7#>
<cfset tot[8]=#estsum.tot8#>
<cfset tot[9]=#estsum.tot9#>
<cfset tot[10]=#estsum.tot10#>
<cfset tot[11]=#estsum.tot11#>
<cfset tot[12]=#estsum.tot12#>



<cfloop index="i" from="1" to="12" step="1">
<cfset bdate=#dateformat(bdate,'m/d/yyyy')#>
<cfset edate=#dateformat(edate,'m/d/yyyy')#>
<cfif #dateformat(now(),'m/d/yyyy')# gte #dateformat(bdate,'m/d/yyyy')# and #dateformat(now(),'m/d/yyyy')#lte  #dateformat(edate,'m/d/yyyy')#>
<cfquery name="tot1" datasource="newdsi">
select count(*) as count
from master
where actualdate Between #parsedatetime(bdate)# and #parsedatetime(d2)#
</cfquery>
<g class="st0 st45 st11">
<text x="#x1#" y="357">#tot1.count# / #tot[i]#</text>
</g>
<cfelseif #dateformat(now(),'m/d/yyyy')# gte #dateformat(edate,'m/d/yyyy')#>
<cfquery name="tot1" datasource="newdsi">
select count(*) as count
from master
where actualdate Between #parsedatetime(bdate)# and #parsedatetime(edate)#
</cfquery>
<g class="st0 st45 st11">
<text x="#x1#" y="357">#tot1.count# / #tot[i]#</text>
</g>
<cfelse>
<g class="st0 st45 st11">
<text x="#x1#" y="357">0 / #tot[i]#</text>
</g>
</cfif>
<cfset bdate=#dateformat(bdate,'m/d/yyyy')#+#daysinmonth(bdate)#>
<cfset edate=#dateformat(edate,'m/d/yyyy')#+#daysinmonth(bdate)#-1>
<cfset #x1#=#x1#+30>
</cfloop>
<cfset totdone=#totdone.totnum#+141>
<cfset esttot=#est.esttot#+141>
<cfset pdone=(#totdone#/#esttot#)*100>

<g>
<text x="14" y="357" class="st47 st11">Totals</text>
<text x="0" y="240" class="st20 st28 st24 st41" transform="translate(137, 117)">#NumberFormat(esttot,'99')#</text>
<text x="0" y="240" class="st3 st28 st24 st41" transform="translate(167, 117)">#NumberFormat(totdone,'99')#</text>
<text x="0" y="240" class="st2 st28 st41" transform="translate(196, 117)">#NumberFormat(pdone,'99')#%</text>
</g>
</cfoutput>

		
		<!-- Graph Head -->
		<text x="315" y="68" class="st0 st29 st15">Monthly Schedule</text>
		<text x="14" y="68" class="st0 st29 st15">Group</text>
		<text x="112" y="68" class="st0 st29 st15">*Est</text>
		<text x="142" y="68" class="st0 st29 st15">Done</text>
		<text x="180" y="68" class="st0 st29 st15">%</text>
		
		<!-- Legend Lable -->
		<text x="19" y="375" class="st22 st13 st28">Legend:</text>
		
		<g id="Legend Body labels" class="st26 st28 st24" transform="translate(65, 355)">
		<text x="0" y="76">*Note this estimate may change</text>
		<text x="0" y="28">Current position in the year</text>
		<text x="0" y="52">Estimated time frame to Migrate Group</text>
		</g>
<!-- Calculate Variance Information -->
<cfif dateformat(now(),'dddd') eq 'Monday'>
<cfset bdate=dateformat(now(),'m/d/yyyy')-7>
<cfset edate=dateformat(now(),'m/d/yyyy')-3>
<cfelseif dateformat(now(),'dddd') eq 'Tuesday'>
<cfset bdate=dateformat(now(),'m/d/yyyy')-8>
<cfset edate=dateformat(now(),'m/d/yyyy')-4>
<cfelseif dateformat(now(),'dddd') eq 'Wednesday'>
<cfset bdate=dateformat(now(),'m/d/yyyy')-9>
<cfset edate=dateformat(now(),'m/d/yyyy')-5>
<cfelseif dateformat(now(),'dddd') eq 'Thursday'>
<cfset bdate=dateformat(now(),'m/d/yyyy')-10>
<cfset edate=dateformat(now(),'m/d/yyyy')-6>
<cfelseif dateformat(now(),'dddd') eq 'Friday'>
<cfset bdate=dateformat(now(),'m/d/yyyy')-11>
<cfset edate=dateformat(now(),'m/d/yyyy')-7>
<cfelseif dateformat(now(),'dddd') eq 'Saturday'>
<cfset bdate=dateformat(now(),'m/d/yyyy')-12>
<cfset edate=dateformat(now(),'m/d/yyyy')-8>
<cfelseif dateformat(now(),'dddd') eq 'Sunday'>
<cfset bdate=dateformat(now(),'m/d/yyyy')-13>
<cfset edate=dateformat(now(),'m/d/yyyy')-9>
</cfif>

<cfset #bdate#=#dateformat(bdate,'m/d/yyyy')#>
<cfset #edate#=#dateformat(edate,'m/d/yyyy')#>

<cfset bdate2=dateformat('2/1/2004','m/d/yyyy')>
<cfset #bdate2#=#dateformat(bdate2,'m/d/yyyy')#>


<cfquery name="report" datasource="newdsi">
SELECT count(*) as mi
FROM master
WHERE actualdate Between #parsedatetime(bdate)# AND #parsedatetime(edate)#
</cfquery>

<cfquery name="report1" datasource="newdsi">
SELECT count(*) as sch
FROM scheduled
WHERE sdate Between #parsedatetime(bdate)# AND #parsedatetime(edate)#
</cfquery>

<cfquery name="report2" datasource="newdsi">
SELECT count(*) as mitot
FROM master
WHERE actualdate Between #parsedatetime(bdate2)# AND #parsedatetime(edate)#
</cfquery>

<cfquery name="report3" datasource="newdsi">
SELECT count(*) as schtot
FROM scheduled
WHERE sdate Between #parsedatetime(bdate2)# AND #parsedatetime(edate)#
</cfquery>

<cfoutput>
<cfset variance=#report.mi#-#report1.sch#>

<g id="variance" class="st20 st48" transform="translate(382, 360)">
		<text x="-35" y="35">Variance for the week of #dateformat(bdate,'mmmm d, yyyy')#</text>
</g>
<g id="variance" class="st20 st48" transform="translate(382, 360)">		
		<text x="-40" y="55">Scheduled</text>
		<text x="-20" y="65">#report1.sch#</text>
		
		<text x="40" y="55">Migrated</text>
		<text x="55" y="65">#report.mi#</text>
		
		<text x="110" y="55">Variance</text>
		<text x="125" y="65">#variance#</text>
</g>
<cfset resch=17>
<cfset totalscheduled=(125+77+179+#report3.schtot#)-1>
<cfset totalmigrated=1+179+#report2.mitot#>
<cfset adj=#totalscheduled#-#totalmigrated#>
<cfset totalvariance=#resch#-#adj#>

<!--
<g id="variance" class="st20 st49" transform="translate(382, 360)">		
		<text x="-50" y="63">Total</text>
		<text x="-60" y="70">Scheduled</text>
		<text x="-50" y="80">#totalscheduled#</text>
		
		<text x="8" y="63">Total</text>
		<text x="0" y="70">Migrated</text>
		<text x="8" y="80">#totalmigrated#</text>
		
		<text x="50" y="63">Rescheduled</text>
		<text x="60" y="70">Variance</text>
		<text x="70" y="80">#resch#</text>
		
		<text x="125" y="63">Adjusted</text>
		<text x="125" y="70">Variance</text>
		<text x="135" y="80">#totalvariance#</text>
</g>-->

</cfoutput>

<!-- End -->


 
		
		
		

		
<!--
		<g id="J column" class="st26 st28 st27 st41" transform="translate(217, 117)">
		<text x="0" y="0"></text>
		
		<text x="2" y="15">37</text>
		<text x="-7" y="9">37</text>
		
		<text x="0" y="30"></text>
		<text x="0" y="45"></text>
		<text x="0" y="60"></text>
		<text x="0" y="75"></text>
		
		<text x="0" y="90">4</text>
		<text x="-10" y="85">4</text>
		
		<text x="0" y="105"></text>
		<text x="0" y="120"></text>
		<text x="0" y="135"></text>
		<text x="0" y="150"></text>
		<text x="0" y="165"></text>
		<text x="0" y="180"></text>
		<text x="0" y="195"></text> 
		
		</g>

		<g id="F column" class="st26 st28 st27 st41" transform="translate(237, 117)">
		<text x="0" y="0"></text>
		
		<text x="2" y="15">147</text>
		<text x="-6" y="9">95</text>
		
		<text x="0" y="30"></text>
		<text x="0" y="45"></text>
		<text x="0" y="60"></text>
		<text x="0" y="75"></text>
		<text x="0" y="90"></text>
		<text x="0" y="105"></text>
		<text x="0" y="120"></text>
		<text x="0" y="135"></text>
		<text x="0" y="150"></text>
		<text x="0" y="165"></text>
		<text x="0" y="180"></text>
		<text x="0" y="195"></text> 
		
		</g>

		<g id="M column" class="st26 st28 st27 st41" transform="translate(257, 117)">
		<text x="0" y="0"></text>
		
		<text x="2" y="15">483</text>
		<text x="-10" y="9">0</text>
		
		<text x="2" y="30">136</text>
		<text x="-10" y="24">0</text>
		
		<text x="0" y="45"></text>
		<text x="0" y="60"></text>
		<text x="0" y="75"></text>
		<text x="0" y="90"></text>
		<text x="0" y="105"></text>
		<text x="0" y="120"></text>
		<text x="0" y="135"></text>
		<text x="0" y="150"></text>
		<text x="0" y="165"></text>
		<text x="0" y="180"></text>
		<text x="0" y="195"></text> 
		
		</g>

		<g id="A column" class="st26 st28 st27 st41" transform="translate(277, 117)">
		<text x="0" y="0"></text>
		<text x="0" y="15"></text>
		
		<text x="1" y="30">198</text>
		<text x="-10" y="24">0</text>
		
		<text x="1" y="45">175</text>
		<text x="-10" y="39">0</text>
		
		<text x="0" y="60"></text>
		<text x="0" y="75"></text>
		<text x="0" y="90"></text>
		
		<text x="2" y="105">60</text>
		<text x="-10" y="99">0</text>
		
		<text x="0" y="120"></text>
		<text x="0" y="135"></text>
		<text x="0" y="150"></text>
		<text x="0" y="165"></text>
		<text x="0" y="180"></text>
		<text x="0" y="195"></text> 
		
		</g>

		<g id="M column" class="st26 st28 st27 st41" transform="translate(297, 117)">
		<text x="0" y="0"></text>
		<text x="0" y="15"></text>
		
		<text x="1" y="30">184</text>
		<text x="-10" y="24">0</text>
		
		<text x="0" y="45"></text>
		<text x="0" y="60"></text>
		
		<text x="2" y="75">20</text>
		<text x="-10" y="69">0</text>
		
		<text x="0" y="90"></text>
		<text x="0" y="105"></text>
		
		<text x="1" y="120">160</text>
		<text x="-10" y="114">0</text>
		
		<text x="0" y="135"></text>
		<text x="0" y="150"></text>
		<text x="0" y="165"></text>
		<text x="0" y="180"></text>
		<text x="0" y="195"></text> 
		
		</g>

		<g id="J column" class="st26 st28 st27 st41" transform="translate(317, 117)">
		<text x="0" y="0"></text>
		<text x="0" y="15"></text>
		
		<text x="1" y="30">158</text>
		<text x="-10" y="24">0</text>
		
		<text x="2" y="45">22</text>
		<text x="-10" y="39">0</text>
		
		<text x="0" y="60"></text>
		
		<text x="1" y="75">192</text>
		<text x="-10" y="69">0</text>
		
		<text x="1" y="90">91</text>
		<text x="-10" y="86">0</text>
		
		<text x="0" y="105"></text>
		
		<text x="1" y="120">160</text>
		<text x="-10" y="116">0</text>
		
		<text x="0" y="135"></text>
		<text x="0" y="150"></text>
		<text x="0" y="165"></text>
		<text x="0" y="180"></text>
		<text x="0" y="195"></text> 
		
		</g>

		<g id="J column" class="st26 st28 st27 st41" transform="translate(337, 117)">
		<text x="2" y="0">45</text>
		<text x="-10" y="-6">0</text>
		
		<text x="0" y="15"></text>
		<text x="0" y="30"></text>
		<text x="0" y="45"></text>
		<text x="0" y="60"></text>
		<text x="0" y="75"></text>
		
		<text x="2" y="90">91</text>
		<text x="-10" y="84">0</text>
		
		<text x="0" y="105"></text>
		
		<text x="1" y="120">170</text>
		<text x="-10" y="114">0</text>
		
		<text x="0" y="135"></text>
		<text x="0" y="150"></text>
		<text x="0" y="165"></text>
		<text x="0" y="180"></text>
		<text x="0" y="195"></text>
		
		</g>

		<g id="A column" class="st26 st28 st27 st41" transform="translate(357, 117)">
		<text x="0" y="0"></text>
		<text x="0" y="15"></text>
		<text x="0" y="30"></text>
		<text x="0" y="45"></text>
		
		<text x="2" y="60">66</text>
		<text x="-10" y="54">0</text>
		
		<text x="0" y="75"></text>
		
		<text x="2" y="90">60</text>
		<text x="-10" y="84">0</text>
		
		<text x="1" y="105">114</text>
		<text x="-10" y="99">0</text>
		
		<text x="0" y="120"></text>
		<text x="0" y="135"></text>
		<text x="0" y="150"></text>
		<text x="0" y="165"></text>
		<text x="0" y="180"></text>
		<text x="0" y="195"></text> 
		
		
		
		</g>

		<g id="S column" class="st26 st28 st27 st41" transform="translate(377, 117)">
		<text x="0" y="0"></text>
		<text x="0" y="15"></text>
		<text x="0" y="30"></text>
		<text x="0" y="45"></text>
		<text x="0" y="60"></text>
		<text x="0" y="75"></text>
		
		<text x="2" y="90">60</text>
		<text x="-10" y="84">0</text>
		
		<text x="2" y="105">29</text>
		<text x="-10" y="99">0</text>
		
		<text x="0" y="120"></text>
			
		<text x="1" y="135">44</text>
		<text x="-10" y="129">0</text>
		
		<text x="1" y="150">264</text>
		<text x="-10" y="144">0</text>
		
		<text x="0" y="165"></text>
		<text x="0" y="180"></text>
		<text x="0" y="195"></text> 
		</g>

		<g id="O column" class="st26 st28 st27 st41" transform="translate(397, 117)">
		<text x="0" y="0"></text>
		<text x="0" y="15"></text>
		<text x="0" y="30"></text>
		<text x="0" y="45"></text>
		<text x="0" y="60"></text>
		<text x="0" y="75"></text>
		
		<text x="2" y="90">60</text>
		<text x="-10" y="84">0</text>
		
		<text x="0" y="105"></text>
		<text x="0" y="120"></text>
		<text x="0" y="135"></text>
		
		<text x="1" y="150">135</text>
		<text x="-10" y="144">0</text>
		
		
		<text x="0" y="165"></text>
		<text x="0" y="180"></text>
		<text x="0" y="195"></text>
		
		</g>

		<g id="N column" class="st26 st28 st27 st41" transform="translate(417, 117)">
		<text x="0" y="0"></text>
		<text x="0" y="15"></text>
		<text x="0" y="30"></text>
		<text x="0" y="45"></text>
		<text x="0" y="60"></text>
		
		<text x="2" y="75">18</text>
		<text x="-10" y="69">0</text>
		
		<text x="1" y="90">128</text>
		<text x="-10" y="84">0</text>
		
		<text x="0" y="105"></text>
		<text x="0" y="120"></text>
		<text x="0" y="135"></text>
		<text x="0" y="150"></text>
		<text x="0" y="165"></text>
		<text x="0" y="180"></text>
		<text x="0" y="195"></text> 
				
		</g>

		<g id="D column" class="st26 st28 st27 st41" transform="translate(437, 117)">
		<text x="0" y="0"></text>
		<text x="0" y="15"></text>
		<text x="0" y="30"></text>
		<text x="0" y="45"></text>
		<text x="0" y="60"></text>
		<text x="0" y="75"></text>
		
		<text x="2" y="90">8</text>
		<text x="-10" y="84">0</text>
		
		<text x="0" y="105"></text>
		<text x="0" y="120"></text>
		<text x="0" y="135"></text>
		<text x="0" y="150"></text>
		<text x="0" y="165"></text>
		<text x="0" y="180"></text>
		<text x="0" y="195"></text> 
		
		</g>
		-->
       <g id="vertical lines">
		<line x1="110" y1="105" x2="110" y2="270"/>
		<line x1="110" y1="50" x2="110" y2="360" style="stroke-width: 1; stroke: black; "/>
		<line x1="140" y1="50" x2="140" y2="360" style="stroke-width: 1; stroke: black; "/>
		<line x1="170" y1="50" x2="170" y2="360" style="stroke-width: 1; stroke: black; "/>
		<line x1="200" y1="50" x2="200" y2="360" style="stroke-width: 1; stroke: black; "/>
		
		<line x1="230" y1="70" x2="230" y2="360"/>		
   		<line x1="260" y1="70" x2="260" y2="360"/>		
		<line x1="290" y1="70" x2="290" y2="360"/>		
		<line x1="320" y1="70" x2="320" y2="360"/>		
		<line x1="350" y1="70" x2="350" y2="360"/>	
		<line x1="380" y1="70" x2="380" y2="360"/>		
		<line x1="410" y1="70" x2="410" y2="360"/>		
		<line x1="440" y1="70" x2="440" y2="360"/>		
   		<line x1="470" y1="70" x2="470" y2="360"/>		
		<line x1="500" y1="70" x2="500" y2="360"/>		
		<line x1="530" y1="70" x2="530" y2="360"/>
		<line x1="560" y1="70" x2="560" y2="360"/>
 
	   
	   
		
		<!--Diagonal Lines
		<line x1="340" y1="105" x2="320" y2="120"/>
		<line x1="220" y1="120" x2="200" y2="135"/>
		<line x1="240" y1="120" x2="220" y2="135"/>
		<line x1="260" y1="120" x2="240" y2="135"/>
		
		<line x1="260" y1="135" x2="240" y2="150"/>
		<line x1="280" y1="135" x2="260" y2="150"/>
		<line x1="300" y1="135" x2="280" y2="150"/>
		<line x1="320" y1="135" x2="300" y2="150"/>
		
		<line x1="280" y1="150" x2="260" y2="165"/>
		<line x1="320" y1="150" x2="300" y2="165"/>
		
		<line x1="360" y1="165" x2="340" y2="180"/>
		
		<line x1="320" y1="180" x2="300" y2="195"/>
		<line x1="300" y1="180" x2="280" y2="195"/>
		<line x1="420" y1="180" x2="400" y2="195"/>
		
		<line x1="220" y1="195" x2="200" y2="210"/>
		<line x1="320" y1="195" x2="300" y2="210"/>
		<line x1="340" y1="195" x2="320" y2="210"/>
		<line x1="360" y1="195" x2="340" y2="210"/>
		<line x1="380" y1="195" x2="360" y2="210"/>
		<line x1="400" y1="195" x2="380" y2="210"/>
		<line x1="420" y1="195" x2="400" y2="210"/>
		<line x1="440" y1="195" x2="420" y2="210"/>
		
		<line x1="280" y1="210" x2="260" y2="225"/>
		<line x1="360" y1="210" x2="340" y2="225"/>
		<line x1="380" y1="210" x2="360" y2="225"/>
		
		<line x1="300" y1="225" x2="280" y2="240"/>
		<line x1="320" y1="225" x2="300" y2="240"/>
		<line x1="340" y1="225" x2="320" y2="240"/>
		
		<line x1="380" y1="240" x2="360" y2="255"/>
		
		<line x1="380" y1="255" x2="360" y2="270"/>
		<line x1="400" y1="255" x2="380" y2="270"/>
		-->
        </g>
	</g>
</svg>

</cfoutput>
</cfxml>
<cfset xml = #ToString(maingraph)#>
<cffile action="write" file="#getDirectoryFromPath(getTemplatePath())#maingraph.svg" output="#xml#">
<cflocation url="maingraph.svg">

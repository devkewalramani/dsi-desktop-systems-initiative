<cfquery name="techs1" datasource="newdsi">
SELECT Tech, Count(*) AS count
FROM teamone
WHERE edate Between #parsedatetime(form.bdate)# AND #parsedatetime(form.edate)# AND type='#Form.type#' 
GROUP BY Tech
</cfquery>
<!-- Set All Graph Incremental VARS --> 
<cfset srow=1>
<cfset xb1=100>
<cfset xl1=120>
<cfset xname=110>
           
<cfxml variable="techs1">
<cfoutput>
<svg width="100%" height="100%" viewBox="0 0 600 500" style="overflow:visible;enable-background:new 0 0 600 500" xml:space="preserve">
<!--Draw Main Box-->
<g id="Border" stroke-width="2" stroke="##000000" fill="##FFFFFF" >
<rect x="-25" y="50" width="550" height="370" />
</g>

<!--label axis-->
<g id="ylabel" font-family="Times New Roman" font-style="Bold" font-size="14" >
<text x="-275" y="0" transform="rotate(-90)">Number of Devices</text>
</g>

<g id="xlabel" font-family="Times New Roman" font-style="Bold" font-size="14" >
<text x="250" y="407" >Tech</text>
</g>


<!--Draw Axis-->
<g id="Lines" stroke-width="1" stroke="##000000" >
<line x1="25" y1="380" x2="525" y2="380"/>
<line x1="25" y1="380" x2="25" y2="80"/>
</g>
<!--Heading-->
<g id="Heading" font-family="Times New Roman" font-style="Bold" font-size="24" >
<text x="75" y="25" >Team 1 Technician Productivity Report</text>
</g>
 <!--SubHeading-->
<g id="Heading2" font-family="Arial" font-size="16" >
<text x="175" y="45" >#form.bdate# to #form.edate#</text>
</g>

<!--Y Axis Labels-->
 <g id="YLabels" font-family="Times New Roman" font-size="12">
  <text x="15" y="380" >0</text>
  <text x="15" y="360" >2</text>
  <text x="10" y="340" >4</text>
  <text x="10" y="320" >6</text>
  <text x="10" y="300" >8</text>
  <text x="10" y="280" >10</text>
  <text x="10" y="260" >12</text>
  <text x="10" y="240" >14</text>
  <text x="10" y="220" >16</text>
  <text x="10" y="200" >18</text>
  <text x="10" y="180" >20</text>
  <text x="10" y="160" >22</text>
  <text x="10" y="140" >24</text>
  <text x="10" y="120" >26</text>
  <text x="10" y="100" >28</text>
   <text x="10" y="80" >30</text>
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
 </g>
 

 
<cfloop query="techs1" startrow="#srow#">

 <!--x Axis Labels-->
 <g id="XLabels" font-family="Times New Roman" font-size="9" >
  <text x="#xname#" y="390" >#tech#</text>
 </g>
 
 <!-- Draw Bars -->
<cfset count1=#count#*10> 
 <g fill="RED" stroke-width="1" stroke="##000000" transform="matrix(1 0 0 -1 0 760)">
  <rect x="#xb1#" y="380" width="50" height="#count1#" />
 </g>
 
 <!-- Label Bars -->
 <cfset t1=375-#count1#>
 <g fill="Black" font-family="Arial" font-size="10">
  <text x="#xl1#" y="#t1#" >#count#</text>
 </g>
 
<!--Increment all VARS -->
<cfset srow=#srow#+1>
<cfset xb1=#xb1#+100>
<cfset xl1=#xl1#+100>
<cfset xname=#xname#+100>

</cfloop>

</svg>
</cfoutput>
</cfxml>
<cfset xml = #ToString(techs1)#>
<cffile action="write" file="#getDirectoryFromPath(getTemplatePath())#techs1.svg" output="#xml#">
<cflocation url="techs1.svg">
<cfquery name="avgminmax" datasource="newdsi">
SELECT (Sum([teamone].[hdd])+Sum([teamone].[sysprep])+Sum([teamone].[joinrb]) +Sum([teamone].[policy])+Sum([teamone].[mapk]) +Sum([teamone].[otherapps]) +Sum([teamone].[context])+Sum([teamone].[rr])) / Count(*) AS totavg, Min([teamone].[hdd])+Min([teamone].[sysprep])+ Min([teamone].[joinrb]) +Min([teamone].[policy])+Min([teamone].[mapk]) +Min([teamone].[otherapps]) +Min([teamone].[context])+Min([teamone].[rr]) AS totmin, Max([teamone].[hdd])+Max([teamone].[sysprep])+ Max([teamone].[joinrb]) +Max([teamone].[policy])+Max([teamone].[mapk]) +Max([teamone].[otherapps]) +Max([teamone].[context])+Max([teamone].[rr]) AS totmax
FROM teamone
WHERE edate Between #parsedatetime(form.bdate)# AND #parsedatetime(form.edate)# AND type='#Form.type#'
</cfquery>

<cfoutput query="avgminmax">           
<cfxml variable="avgminmax1">
<svg width="100%" height="100%" viewBox="0 0 600 500" style="overflow:visible;enable-background:new 0 0 600 500" xml:space="preserve">
<!--Draw Main Box-->
<g id="Border" stroke-width="2" stroke="##000000" fill="##FFFFFF" >
<rect x="-25" y="50" width="550" height="350" />
</g>

<!--label axis-->
<g id="ylabel" font-family="Times New Roman" font-style="Bold" font-size="14" >
<text x="-250" y="0" transform="rotate(-90)">Minutes</text>
</g>
<!--Draw Axis-->
<g id="Lines" stroke-width="1" stroke="##000000" >
<line x1="25" y1="380" x2="525" y2="380"/>
<line x1="25" y1="380" x2="25" y2="80"/>
</g>
<!--Heading-->
<g id="Heading" font-family="Times New Roman" font-style="Bold" font-size="24" >
<text x="100" y="25" >Team 1 Prep Time Analysis</text>
</g>
 <!--SubHeading-->
<g id="Heading2" font-family="Arial" font-size="16" >
<text x="160" y="45" >#form.bdate# to #form.edate#</text>
</g>

<!--Y Axis Labels-->
 <g id="YLabels" font-family="Times New Roman" font-size="12">
  <text x="15" y="380" >0</text>
  <text x="15" y="360" >5</text>
  <text x="10" y="340" >10</text>
  <text x="10" y="320" >15</text>
  <text x="10" y="300" >20</text>
  <text x="10" y="280" >25</text>
  <text x="10" y="260" >30</text>
  <text x="10" y="240" >35</text>
  <text x="10" y="220" >40</text>
  <text x="10" y="200" >45</text>
  <text x="10" y="180" >50</text>
  <text x="10" y="160" >55</text>
  <text x="10" y="140" >60</text>
  <text x="10" y="120" >65</text>
  <text x="10" y="100" >70</text>
   <text x="10" y="80" >75</text>
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
 
 <!--x Axis Labels-->
 <g id="XLabels" font-family="Times New Roman" font-size="9" >
  <text x="50" y="390" >Total Average</text>

  <text x="235" y="390" >Total Min</text>
 
  <text x="415" y="390" >Total Max</text>
 
 </g>
 
 <!-- Draw Bars -->

 <cfset bar1=#NumberFormat(totavg,'999')#*4>
 <cfset bar2=#NumberFormat(totmin,'999')#*4>
 <cfset bar3=#NumberFormat(totmax,'999')#*4>
 
 <g fill="RED" stroke-width="1" stroke="##000000" transform="matrix(1 0 0 -1 0 760)">
  <rect x="50" y="380" width="50" height="#bar1#" />
  
  <rect x="230" y="380" width="50" height="#bar2#" />
  
  <rect x="410" y="380" width="50" height="#bar3#" />
 
 </g>
 <!-- Label Bars -->
 
 <cfset t1=375-#bar1#>
 <cfset t2=375-#bar2#>
 <cfset t3=375-#bar3#>
 
 <g fill="Black" font-family="Arial" font-size="10">
  <text x="70" y="#t1#" >#NumberFormat(totavg,'999')#</text>
 
  <text x="250" y="#t2#" >#NumberFormat(totmin,'999')#</text>
  
  <text x="430" y="#t3#" >#NumberFormat(totmax,'999')#</text>
 
 </g>
</svg>
</cfxml>
</cfoutput>
<cfset xml = #ToString(avgminmax1)#>
<cffile action="write" file="#getDirectoryFromPath(getTemplatePath())#avgminmax1.svg" output="#xml#">
<cflocation url="avgminmax1.svg">
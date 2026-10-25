<cfquery name="avgminmax" datasource="DSI">
SELECT (Sum(teamtwo.preextract)+Sum(teamtwo.addtogroup)+Sum(teamtwo.extraction)+Sum(teamtwo.swaphw)+Sum(teamtwo.firstboot)+Sum(teamtwo.injection)+Sum(teamtwo.smsclient)+Sum(teamtwo.groupremoval)+Sum(teamtwo.userlogin)+Sum(teamtwo.postmi)+Sum(teamtwo.userverifi)+Sum(teamtwo.other))/Count(*) AS totavg, (Min(teamtwo.preextract)+Min(teamtwo.addtogroup)+Min(teamtwo.extraction)+Min(teamtwo.swaphw)+Min(teamtwo.firstboot)+Min(teamtwo.injection)+Min(teamtwo.smsclient)+Min(teamtwo.groupremoval)+Min(teamtwo.userlogin)+Min(teamtwo.postmi)+Min(teamtwo.userverifi)+Min(teamtwo.other)) AS totmin, (Max(teamtwo.preextract)+Max(teamtwo.addtogroup)+Max(teamtwo.extraction)+Max(teamtwo.swaphw)+Max(teamtwo.firstboot)+Max(teamtwo.injection)+Max(teamtwo.smsclient)+Max(teamtwo.groupremoval)+Max(teamtwo.userlogin)+Max(teamtwo.postmi)+Max(teamtwo.userverifi)+Max(teamtwo.other)) AS totmax
FROM teamtwo
WHERE midate Between #parsedatetime(form.bdate)# AND #parsedatetime(form.edate)# AND type='#Form.type#'
</cfquery>

<cfoutput query="avgminmax">           
<cfxml variable="avgminmax2">
<svg width="100%" height="100%" viewBox="0 -175 600 600" style="overflow:visible;enable-background:new 0 0 600 500" xml:space="preserve">
<!--Draw Main Box-->
<g id="Border" stroke-width="2" stroke="##000000" fill="##FFFFFF" >
<rect x="-25" y="-100" width="570" height="500" />
</g>
<!--label axis-->
<g id="ylabel" font-family="Times New Roman" font-style="Bold" font-size="14" >
<text x="-250" y="0" transform="rotate(-90)">Minutes in 30min Intervals</text>
</g>


<!--Draw Axis-->
<g id="Lines" stroke-width="1" stroke="##000000" >
<line x1="25" y1="380" x2="525" y2="380"/>
<line x1="25" y1="380" x2="25" y2="-80"/>
</g>
<!--Heading-->
<g id="Heading" font-family="Times New Roman" font-style="Bold" font-size="24" >
<text x="100" y="-125" >Team 2 Migration Time Analysis</text>
</g>
 <!--SubHeading-->
<g id="Heading2" font-family="Arial" font-size="16" >
<text x="185" y="-110" >#form.bdate# to #form.edate#</text>
</g>

<!--Y Axis Labels-->
 <g id="YLabels" font-family="Times New Roman" font-size="10">
  <text x="15" y="380" >0</text>
  <text x="10" y="360" >30</text>
  <text x="10" y="340" >60</text>
  <text x="10" y="320" >90</text>
  <text x="7" y="300" >120</text>
  <text x="7" y="280" >150</text>
  <text x="7" y="260" >180</text>
  <text x="7" y="240" >210</text>
  <text x="7" y="220" >240</text>
  <text x="7" y="200" >270</text>
  <text x="7" y="180" >300</text>
  <text x="7" y="160" >330</text>
  <text x="7" y="140" >360</text>
  <text x="7" y="120" >390</text>
  <text x="7" y="100" >420</text>
   <text x="7" y="80" >450</text>
   <text x="7" y="60" >480</text>
   <text x="7" y="40" >510</text>
   <text x="7" y="20" >540</text>
   <text x="7" y="0" >570</text>
   <text x="7" y="-20" >600</text>
   <text x="7" y="-40" >630</text>
   <text x="7" y="-60" >650</text>
   <text x="7" y="-80" >680</text>   
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
  <text x="50" y="390" >Total Average</text>

  <text x="235" y="390" >Total Min</text>
 
  <text x="415" y="390" >Total Max</text>
 
 </g>
 
 <!-- Draw Bars -->

 <cfset bar1=#NumberFormat(totavg,'999')#/1.5>
 <cfset bar2=#NumberFormat(totmin,'999')#/1.5>
 <cfset bar3=#NumberFormat(totmax,'999')#/1.5>
 
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
<cfset xml = #ToString(avgminmax2)#>
<cffile action="write" file="#getDirectoryFromPath(getTemplatePath())#avgminmax2.svg" output="#xml#">
<cflocation url="avgminmax2.svg">
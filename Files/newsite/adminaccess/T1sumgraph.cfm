<cfquery name="task" datasource="newdsi">
SELECT [teamone].[tech],Avg([teamone].[hdd]) AS [hdd],Avg([teamone].[sysprep]) AS[sysprep], Avg([teamone].[joinrb]) AS [joinrb],Avg([teamone].[policy]) AS [policy],Avg([teamone].[mapk]) AS [mapk],Avg([teamone].[otherapps]) AS [otherapps],Avg([teamone].[context]) AS [context],Avg([teamone].[rr]) AS [rr]
FROM teamone
WHERE edate Between #parsedatetime(form.bdate)# AND #parsedatetime(form.edate)# AND type='#Form.type#'
GROUP BY [teamone].[tech]
</cfquery>

<!-- Set All Graph Incremental VARS --> 
<cfset srow=1>

<cfset xb1=30>
<cfset xb2=45>
<cfset xb3=60>
<cfset xb4=75>
<cfset xb5=90>
<cfset xb6=105>
<cfset xb7=120>
<cfset xb8=135>


<cfset xl1=31>
<cfset xl2=46>
<cfset xl3=61>
<cfset xl4=76>
<cfset xl5=91>
<cfset xl6=106>
<cfset xl7=121>
<cfset xl8=136>


<cfset xname=105>
<!-- done with VARS -->

<cfxml variable="task">
<cfoutput>
<svg width="100%" height="100%" viewBox="0 0 600 500" style="overflow:visible;enable-background:new 0 0 600 500" xml:space="preserve">
<!--Draw Main Box-->
<g id="Border" stroke-width="2" stroke="##000000" fill="##FFFFFF" >
<rect x="-25" y="50" width="550" height="370" />
</g>

<!--label axis-->
<g id="ylabel" font-family="Times New Roman" font-style="Bold" font-size="14" >
<text x="-250" y="0" transform="rotate(-90)">Minutes</text>
</g>

<g id="xlabel" font-family="Times New Roman" font-style="Bold" font-size="14" >
<text x="250" y="407" >Tech</text>
</g>
<!--Draw legend Box-->
<g id="legend" stroke-width="2" stroke="##000000" fill="##FFFFFF" >
<rect x="-25" y="430" width="550" height="50" />
</g>
<!--Draw Axis-->
<g id="Lines" stroke-width="1" stroke="##000000" >
<line x1="25" y1="380" x2="525" y2="380"/>
<line x1="25" y1="380" x2="25" y2="80"/>
</g>
<!--Heading-->
<g id="Heading" font-family="Times New Roman" font-style="Bold" font-size="24" >
<text x="20" y="25" >Team 1 Average completion time of each step by Tech</text>
</g>
 <!--SubHeading-->
<g id="Heading2" font-family="Arial" font-size="16" >
<text x="150" y="45" >#form.type# For #form.bdate# to #form.edate#</text>
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
 
 <!--legend labels-->
 
 <g stroke-width="1" stroke="##000000">
  <g fill="##FF0000"> 
  <rect x="-15" y="440" width="10" height="10" />
  </g>
  <g fill="##0084FF">
  <rect x="85" y="440" width="10" height="10" />
  </g>
  <g fill="##88FF8E">
  <rect x="185" y="440" width="10" height="10" />
  </g>
  <g fill="##FFFF00">
  <rect x="285" y="440" width="10" height="10" />
  </g>
  <g fill="##00FFFF">
  <rect x="-15" y="460" width="10" height="10" />
  </g>
  <g fill="##FF00FF">
  <rect x="85" y="460" width="10" height="10" />
  </g>
  <g fill="##FF9900">
  <rect x="185" y="460" width="10" height="10" />
  </g>
  <g fill="##DD9B9B">
 <rect x="285" y="460" width="10" height="10" />
  </g>
 </g>
 <!--legend text-->
<g font-family="Times New Roman" font-style="Bold" font-size="12">
<text x="-3" y="450">Insert HDD</text>
<text x="97" y="450">Sysprep</text>
<text x="197" y="450">Join RB</text>
<text x="297" y="450">Add to Admin Group</text>
<text x="-3" y="470">Map K/batinstall</text>
<text x="97" y="470">Other Apps</text>
<text x="197" y="470">Change Context</text>
<text x="297" y="470">Rapid Restore</text>
 </g>
 

<cfloop query="task" startrow="#srow#" >
 <!--x Axis Labels-->
 <g id="XLabels" font-family="Times New Roman" font-size="9" >
  <text x="#xname#" y="390" >#tech#</text>
 </g>
 
 <!-- Set Bar Vars and Draw Bars -->
<cfset ghdd=#NumberFormat(hdd,'999')#*4>
<cfset gsysprep=#NumberFormat(sysprep,'999')#*4>
<cfset gjoinrb=#NumberFormat(joinrb,'999')#*4>
<cfset gpolicy=#NumberFormat(policy,'999')#*4>
<cfset gmapk=#NumberFormat(mapk,'999')#*4>
<cfset gotherapps=#NumberFormat(otherapps,'999')#*4>
<cfset gcontext=#NumberFormat(context,'999')#*4>
<cfset grr=#NumberFormat(rr,'999')#*4>

 <g stroke-width="1" stroke="##000000" transform="matrix(1 0 0 -1 0 760)">
  <g fill="##FF0000"> 
  <rect x="#xb1#" y="380" width="15" height="#NumberFormat(ghdd,'999')#" />
  </g>
  <g fill="##0084FF">
  <rect x="#xb2#" y="380" width="15" height="#NumberFormat(gsysprep,'999')#" />
  </g>
  <g fill="##88FF8E">
  <rect x="#xb3#" y="380" width="15" height="#NumberFormat(gjoinrb,'999')#" />
  </g>
  <g fill="##FFFF00">
  <rect x="#xb4#" y="380" width="15" height="#NumberFormat(gpolicy,'999')#" />
  </g>
  <g fill="##00FFFF">
  <rect x="#xb5#" y="380" width="15" height="#NumberFormat(gmapk,'999')#" />
  </g>
  <g fill="##FF00FF">
  <rect x="#xb6#" y="380" width="15" height="#NumberFormat(gotherapps,'999')#" />
  </g>
  <g fill="##FF9900">
  <rect x="#xb7#" y="380" width="15" height="#NumberFormat(gcontext,'999')#" />
  </g>
  <g fill="##DD9B9B">
  <rect x="#xb8#" y="380" width="15" height="#NumberFormat(grr,'999')#" />
  </g>
 </g>
 <!-- Set Label Vars and Print Label Bars -->
 <cfset t1=375-#NumberFormat(ghdd,'999')#>
 <cfset t2=375-#NumberFormat(gsysprep,'999')#>
 <cfset t3=375-#NumberFormat(gjoinrb,'999')#>
 <cfset t4=375-#NumberFormat(gpolicy,'999')#>
 <cfset t5=375-#NumberFormat(gmapk,'999')#>
 <cfset t6=375-#NumberFormat(gotherapps,'999')#>
 <cfset t7=375-#NumberFormat(gcontext,'999')#>
 <cfset t8=375-#NumberFormat(grr,'999')#>
 
 <g fill="Black" font-family="Arial" font-size="7">
  <text x="#xl1#" y="#t1#" >#NumberFormat(hdd,'999')#</text>
  <text x="#xl2#" y="#t2#" >#NumberFormat(sysprep,'999')#</text>
  <text x="#xl3#" y="#t3#" >#NumberFormat(joinrb,'999')#</text>
  <text x="#xl4#" y="#t4#" >#NumberFormat(policy,'999')#</text>
  <text x="#xl5#" y="#t5#" >#NumberFormat(mapk,'999')#</text>
  <text x="#xl6#" y="#t6#" >#NumberFormat(otherapps,'999')#</text>
  <text x="#xl7#" y="#t7#" >#NumberFormat(context,'999')#</text>
  <text x="#xl8#" y="#t8#" >#NumberFormat(rr,'999')#</text>
 </g>
 <!--Increment all VARS -->
<cfset srow=#srow#+1>

<cfset xb1=#xb1#+135>
<cfset xb2=#xb1#+15>
<cfset xb3=#xb2#+15>
<cfset xb4=#xb3#+15>
<cfset xb5=#xb4#+15>
<cfset xb6=#xb5#+15>
<cfset xb7=#xb6#+15>
<cfset xb8=#xb7#+15>
<cfset xb9=#xb8#+15>
<cfset xb10=#xb9#+15>

<cfset xl1=#xl1#+135>
<cfset xl2=#xl1#+15>
<cfset xl3=#xl2#+15>
<cfset xl4=#xl3#+15>
<cfset xl5=#xl4#+15>
<cfset xl6=#xl5#+15>
<cfset xl7=#xl6#+15>
<cfset xl8=#xl7#+15>
<cfset xl9=#xl8#+15>
<cfset xl10=#xl9#+15>

<cfset xname=#xname#+135>
<!--end of Increment -->
</cfloop>
</svg>
</cfoutput>
</cfxml>
<cfset xml = #ToString(task)#>
<cffile action="write" file="#getDirectoryFromPath(getTemplatePath())#task.svg" output="#xml#">
<cflocation url="task.svg">
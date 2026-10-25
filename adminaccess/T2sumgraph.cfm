<cfquery name="task" datasource="DSI">
SELECT DISTINCTROW teamtwo.tech, Avg(teamtwo.preextract) AS [preextract], Avg(teamtwo.extraction) AS [extraction], Avg(teamtwo.swaphw) AS [swaphw], Avg(teamtwo.firstboot) AS [firstboot], Avg(teamtwo.injection) AS [injection], Avg(teamtwo.smsclient) AS [smsclient], Avg(teamtwo.userlogin) AS [userlogin], Avg(teamtwo.postmi) AS [postmi], Avg(teamtwo.userverifi) AS [userverifi],Avg(teamtwo.other) AS [other]
FROM teamtwo
WHERE midate Between #parsedatetime(form.bdate)# AND #parsedatetime(form.edate)# AND type='#Form.type#'
GROUP BY [teamtwo].[tech]
</cfquery>

<!-- Set All Graph Incremental VARS --> 
<cfset srow=1>

<cfset xb1=30>
<cfset xb2=40>
<cfset xb3=50>
<cfset xb4=60>
<cfset xb5=70>
<cfset xb6=80>
<cfset xb7=90>
<cfset xb8=100>
<cfset xb9=110>
<cfset xb10=120>
<cfset xb11=130>
<cfset xb12=140>

<cfset xl1=30>
<cfset xl2=40>
<cfset xl3=50>
<cfset xl4=60>
<cfset xl5=70>
<cfset xl6=80>
<cfset xl7=90>
<cfset xl8=100>
<cfset xl9=110>
<cfset xl10=120>
<cfset xl11=130>
<cfset xl12=140>

<cfset xname=75>
<!-- done with VARS -->

<cfxml variable="task">
<cfoutput>
<svg width="100%" height="100%" viewBox="100 -20 600 500" style="overflow:auto;enable-background:new 125 0 600 500" xml:space="preserve">
<!--Draw Main Box-->
<g id="Border" stroke-width="2" stroke="##000000" fill="##FFFFFF" >
<rect x="-25" y="50" width="825" height="370" />
</g>

<!--label axis-->
<g id="ylabel" font-family="Times New Roman" font-style="Bold" font-size="14" >
<text x="-250" y="0" transform="rotate(-90)">Minutes</text>
</g>

<g id="xlabel" font-family="Times New Roman" font-style="Bold" font-size="14" >
<text x="350" y="407" >Tech</text>
</g>

<!--Draw legend Box-->
<g id="legend" stroke-width="2" stroke="##000000" fill="##FFFFFF" >
<rect x="-25" y="425" width="825" height="40" />
</g>

<!--Draw Axis-->
<g id="Lines" stroke-width="1" stroke="##000000" >
<line x1="25" y1="380" x2="775" y2="380"/>
<line x1="25" y1="380" x2="25" y2="80"/>
</g>
<!--Heading-->
<g id="Heading" font-family="Times New Roman" font-style="Bold" font-size="24" >
<text x="125" y="0" >Team 2 Average completion time of each step by Tech</text>
</g>
 <!--SubHeading-->
<g id="Heading2" font-family="Arial" font-size="16" >
<text x="250" y="20" >#form.type# For #form.bdate# to #form.edate#</text>
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
 <line x1="25" y1="360" x2="775" y2="360"/>
 <line x1="25" y1="340" x2="775" y2="340"/>
  <line x1="25" y1="320" x2="775" y2="320"/>
  <line x1="25" y1="300" x2="775" y2="300"/>
  <line x1="25" y1="280" x2="775" y2="280"/>
  <line x1="25" y1="260" x2="775" y2="260"/>
  <line x1="25" y1="240" x2="775" y2="240"/>
  <line x1="25" y1="220" x2="775" y2="220"/>
  <line x1="25" y1="200" x2="775" y2="200"/>
  <line x1="25" y1="180" x2="775" y2="180"/>
  <line x1="25" y1="160" x2="775" y2="160"/>
  <line x1="25" y1="140" x2="775" y2="140"/>
  <line x1="25" y1="120" x2="775" y2="120"/>
  <line x1="25" y1="100" x2="775" y2="100"/>
  <line x1="25" y1="80" x2="775" y2="80"/>
 </g>
 
 
 
 <!--legend labels-->
 
 <g stroke-width="1" stroke="##000000">
 <g fill="##FF0000"> 
 <rect x="-15" y="430" width="10" height="10" />
  </g>
  <g fill="##88FF8E">
 <rect x="85" y="430" width="10" height="10" />
  </g>
  <g fill="##FFFF00">
 <rect x="185" y="430" width="10" height="10" />
  </g>
  <g fill="##00FFFF">
  <rect x="285" y="430" width="10" height="10" />
  </g>
  <g fill="##FF00FF">
 <rect x="385" y="430" width="10" height="10" />
  </g>
  <g fill="##FF9900">
  <rect x="485" y="430" width="10" height="10" />
  </g>
  <g fill="##6699CC">
  <rect x="585" y="430" width="10" height="10" />
  </g>
  <g fill="##00FAC8">
 <rect x="-15" y="450" width="10" height="10" />
  </g>
  <g fill="##6699CC">
  <rect x="85" y="450" width="10" height="10" />
  </g>
  <g fill="##00FAC8">
  <rect x="185" y="450" width="10" height="10" />
  </g>
 </g>
 
 <!--legend text-->
<g font-family="Times New Roman" font-style="Bold" font-size="12">
<text x="-3" y="440">Pre Extraction</text>
<text x="97" y="440">Extraction</text>
<text x="197" y="440">Swap HW</text>
<text x="297" y="440">1st boot</text>
<text x="397" y="440">Injection</text>
<text x="497" y="440">SMS Client</text>
<text x="597" y="440">User Login</text>
<text x="-3" y="460">Post Migration</text>
<text x="97" y="460">User verifi</text>
<text x="197" y="460">Other</text>
 </g>

<cfloop query="task" startrow="#srow#" >
 <!--x Axis Labels-->
 <g id="XLabels" font-family="Times New Roman" font-size="9" >
  <text x="#xname#" y="390" >#tech#</text>
 </g>
 
 <!-- Set Bar Vars and Draw Bars -->
<cfset gpreextract=#NumberFormat(preextract,'999')#*4>

<cfset gextraction=#NumberFormat(extraction,'999')#*4>
<cfset gswaphw=#NumberFormat(swaphw,'999')#*4>
<cfset gfirstboot=#NumberFormat(firstboot,'999')#*4>
<cfset ginjection=#NumberFormat(injection,'999')#*4>
<cfset gsmsclient=#NumberFormat(smsclient,'999')#*4>

<cfset guserlogin=#NumberFormat(userlogin,'999')#*4>
<cfset gpostmi=#NumberFormat(postmi,'999')#*4>
<cfset guserverifi=#NumberFormat(userverifi,'999')#*4>
<cfset gother=#NumberFormat(other,'999')#*4>

 <g stroke-width="1" stroke="##000000" transform="matrix(1 0 0 -1 0 760)">
  <g fill="##FF0000"> 
  <rect x="#xb1#" y="380" width="5" height="#NumberFormat(gpreextract,'999')#" />
  </g>
  <g fill="##88FF8E">
  <rect x="#xb2#" y="380" width="5" height="#NumberFormat(gextraction,'999')#" />
  </g>
  <g fill="##FFFF00">
  <rect x="#xb3#" y="380" width="5" height="#NumberFormat(gswaphw,'999')#" />
  </g>
  <g fill="##00FFFF">
  <rect x="#xb4#" y="380" width="5" height="#NumberFormat(gfirstboot,'999')#" />
  </g>
  <g fill="##FF00FF">
  <rect x="#xb5#" y="380" width="5" height="#NumberFormat(ginjection,'999')#" />
  </g>
  <g fill="##FF9900">
  <rect x="#xb6#" y="380" width="5" height="#NumberFormat(gsmsclient,'999')#" />
  </g>
  <g fill="##6699CC">
  <rect x="#xb7#" y="380" width="5" height="#NumberFormat(guserlogin,'999')#" />
  </g>
  <g fill="##00FAC8">
  <rect x="#xb8#" y="380" width="5" height="#NumberFormat(gpostmi,'999')#" />
  </g>
  <g fill="##6699CC">
  <rect x="#xb9#" y="380" width="5" height="#NumberFormat(guserverifi,'999')#" />
  </g>
  <g fill="##00FAC8">
  <rect x="#xb10#" y="380" width="5" height="#NumberFormat(gother,'999')#" />
  </g>
 </g>
 <!-- Set Label Vars and Print Label Bars -->
 <cfset t1=375-#NumberFormat(gpreextract,'999')#>

 <cfset t3=375-#NumberFormat(gextraction,'999')#>
 <cfset t4=375-#NumberFormat(gswaphw,'999')#>
 <cfset t5=375-#NumberFormat(gfirstboot,'999')#>
 <cfset t6=375-#NumberFormat(ginjection,'999')#>
 <cfset t7=375-#NumberFormat(gsmsclient,'999')#>

 <cfset t9=375-#NumberFormat(guserlogin,'999')#>
 <cfset t10=375-#NumberFormat(gpostmi,'999')#>
 <cfset t11=375-#NumberFormat(guserverifi,'999')#>
<cfset t12=375-#NumberFormat(gother,'999')#>
 
 <g fill="Black" font-family="Arial" font-size="7">
  <text x="#xl1#" y="#t1#" >#NumberFormat(preextract,'999')#</text>
 
  <text x="#xl2#" y="#t3#" >#NumberFormat(extraction,'999')#</text>
  <text x="#xl3#" y="#t4#" >#NumberFormat(swaphw,'999')#</text>
  <text x="#xl4#" y="#t5#" >#NumberFormat(firstboot,'999')#</text>
  <text x="#xl5#" y="#t6#" >#NumberFormat(injection,'999')#</text>
  <text x="#xl6#" y="#t7#" >#NumberFormat(smsclient,'999')#</text>
  
  <text x="#xl7#" y="#t9#" >#NumberFormat(userlogin,'999')#</text>
  <text x="#xl8#" y="#t10#" >#NumberFormat(postmi,'999')#</text>
  <text x="#xl9#" y="#t11#" >#NumberFormat(userverifi,'999')#</text>
  <text x="#xl10#" y="#t12#" >#NumberFormat(other,'999')#</text>
 </g>
 <!--Increment all VARS -->
<cfset srow=#srow#+1>

<cfset xb1=#xb1#+125>
<cfset xb2=#xb1#+10>
<cfset xb3=#xb2#+10>
<cfset xb4=#xb3#+10>
<cfset xb5=#xb4#+10>
<cfset xb6=#xb5#+10>
<cfset xb7=#xb6#+10>
<cfset xb8=#xb7#+10>
<cfset xb9=#xb8#+10>
<cfset xb10=#xb9#+10>
<cfset xb11=#xb10#+10>
<cfset xb12=#xb10#+10>

<cfset xl1=#xl1#+125>
<cfset xl2=#xl1#+10>
<cfset xl3=#xl2#+10>
<cfset xl4=#xl3#+10>
<cfset xl5=#xl4#+10>
<cfset xl6=#xl5#+10>
<cfset xl7=#xl6#+10>
<cfset xl8=#xl7#+10>
<cfset xl9=#xl8#+10>
<cfset xl10=#xl9#+10>
<cfset xl11=#xl10#+10>
<cfset xl12=#xl11#+10>

<cfset xname=#xname#+125>
<!--end of Increment -->
</cfloop>
</svg>
</cfoutput>
</cfxml>
<cfset xml = #ToString(task)#>
<cffile action="write" file="#getDirectoryFromPath(getTemplatePath())#task.svg" output="#xml#">
<cflocation url="task.svg">
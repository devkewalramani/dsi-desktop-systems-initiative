<html>
<head>
<title>DSI Main Reports</title>
<style type="text/css">
<!--
.style1 {
	font-size: 24px;
	font-weight: bold;
}
.style2 {font-size: 12px}
.style4 {
	font-size: 12px;
	font-weight: bold;
	font-style: italic;
}
.style8 {font-size: 12px; font-weight: bold; color: #990066;}
-->
</style>
</head>

<body>
<cfset d1=DateFormat('1/1/2004','short')>
<cfset d2=DateFormat(Now(),'short')>
<table width="44%"  border="0" cellspacing="0" cellpadding="0">
 <tr>
<td>
<cfquery name="pie2" datasource="newdsi">
Select Count(*) as count
From master
Where actualdate Between #parsedatetime(d1)# and #parsedatetime(d2)# AND grp='#form.grp#'
</cfquery>

<cfquery name="group" datasource="newdsi">
Select *
From grouptotal
Where grp='#form.grp#'
</cfquery>

<cfoutput>
<cfset atotal=#group.tot#>
</cfoutput>

<cfoutput>
<p align="center" class="style1">Percentage of #form.grp#<br>
Devices Migrated</p><div align="right">
	  <span class="style8">* Early adopter migrations are excluded
      </span></div>
</cfoutput>
<!--Pie Code--> 
<cfoutput query="pie2">
<cfset #atotal#=#atotal#-#count#>
<cfchart format="flash" show3d="yes" showlegend="yes" labelformat="percent" pieslicestyle="sliced" font="arial" chartheight="500" chartwidth="650" showborder="yes">
<cfchartseries type="pie" colorlist="##0099cc,##990066">
<cfchartdata item="Migrated Devices" value="#count#">
<cfchartdata item="Remaining Devices" value="#atotal#">
</cfchartseries>
</cfchart>
<div align="right"><br>
<span class="style4">As of #Dateformat(Now(),'m/d/yyyy')#
</span></div>
</cfoutput>
<div align="right" class="style2">&nbsp;</div></td>
</tr>
</table>
</body>
</html>

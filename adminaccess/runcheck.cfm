<cfquery name="main" datasource="newdsi">
SELECT *
FROM master
order by func,lname asc
</cfquery>


<cfset missing=0>
<cfset templname1=" ">
<cfset tempfname1=" ">
<cfset templname2=" ">
<cfset tempfname2=" ">

<style type="text/css">
<!--
.style2 {color: #FF0000; font-weight: bold; }
.style3 {
	color: #0000FF;
	font-weight: bold;
}
-->
</style>

<table width="100%" border="1" cellpadding="0" cellspacing="0" bordercolor="##000000">
<tr>
<th colspan="3" scope="col" ><div align="center"><strong>In DSI</strong></div></th>
<th colspan="3" scope="col"><div align="center" class="style2">Missing In DSI</div></th>

</tr>

<cfoutput query="main">

<cfquery name="cid" datasource="check">
SELECT *
FROM datacheck
WHERE noteslname='#main.lname#' and notesfname='#main.fname#'
order by func,lname asc
</cfquery>

<cfif '#cid.noteslname#' eq '#main.lname#' AND '#cid.notesfname#' eq '#main.fname#'>
<cfset templname1='#main.lname#'>
<cfset tempfname1='#main.fname#'>

<cfelseif '#cid.noteslname#' neq '#main.lname#' AND '#cid.notesfname#' neq '#main.fname#'>
<cfset templname2='#main.lname#'>
<cfset tempfname2='#main.fname#'>

<cfset #missing#=#missing#+1>
</cfif>



<tr>
<td width="10%"><strong>#main.func#</strong></td>
<td width="10%"><strong>#templname1#</strong></td>
<td width="10%"><strong>#tempfname1#</strong></td>

<td width="10%"><span class="style2">#main.func#</span></td>
<td width="10%"><span class="style2">#templname2#</span></td>
<td width="10%"><span class="style2">#tempfname2#</span></td>


</tr>

</cfoutput>
</table>
<br>
<cfoutput>Total Missing: #missing#</cfoutput>
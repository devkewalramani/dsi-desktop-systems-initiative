
<cfquery name="cid" datasource="DSI">
SELECT *
FROM cid
WHERE func='Service'
</cfquery>

<cfset missing=0>

<cfoutput>

<cfloop query="cid" startrow="1" endrow="160">

<cfquery name="main" datasource="DSI">
SELECT DISTINCT lname, fname
FROM master
WHERE func='Service' and lname='#cid.lname#' and fname='#cid.fname#'
</cfquery>

<table width="600" border="1" cellpadding="0" cellspacing="0" bordercolor="##000000">

<cfif '#cid.lname#' eq '#main.lname#' AND '#cid.fname#' eq '#main.fname#'>
<tr>
<td width="200" scope="col">#cid.lname#</td>
<td width="200" scope="col">#cid.fname#</td>
<td width="200" scope="col">is already in the table</td>
</tr>
<cfelseif '#cid.lname#' neq '#main.lname#' AND '#cid.fname#' neq '#main.fname#'>
<cfquery name="addmissing" datasource="DSI">
INSERT INTO master (grp,func,lname,fname,ph,logon,loc) VALUES ('#cid.grp#','#cid.func#','#cid.lname#','#cid.fname#','#cid.ph#','#cid.logon#','#cid.loc#')
</cfquery>
<tr>
<td width="200" scope="col">#cid.lname#</td>
<td width="200" scope="col">#cid.fname#</td>
<td width="200" scope="col">ADDED</td>
</tr>
<cfset #missing#=#missing#+1>

</cfif>
</table>
</cfloop>
<br>
Total Added: #missing#
</cfoutput>

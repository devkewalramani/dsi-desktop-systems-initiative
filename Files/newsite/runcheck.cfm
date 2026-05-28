<cfquery name="main" datasource="newdsi">
SELECT *
FROM master
where logon is not null and func='Markets'
order by lname asc
</cfquery>
<hr>
B1 ID check
<hr>
<table width="100%" border="1">
<tr>
<th scope="col"><div align="left">Lname</div></th>
<th scope="col"><div align="left">Fname</div></th>
<th scope="col"><div align="left">NDS Logon</div></th>
<th scope="col"><div align="left">DSI Logon</div></th>
</tr>
<cfoutput query="main">

<cfquery name="nds" datasource="nds">
SELECT *
FROM ndscheck
WHERE lname='#main.lname#' and fname='#main.fname#'
order by lname asc
</cfquery>

<cfif #nds.logon# neq #main.logon# and #nds.lname# neq "" and #main.logon# neq "">
<tr>
<td><div align="left">#nds.lname#</div></td>
<td><div align="left">#nds.fname#</div></td>
<td><div align="left">#nds.logon#</div></td>
<td><div align="left">#main.logon#</div></td>
</tr>
</cfif>
</cfoutput>
</table>


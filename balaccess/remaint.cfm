<title>Remaining</title>
<style type="text/css">
<!--
.style1 {
	color: #560808;
	font-weight: bold;
}
-->
</style>
<body>
<cfquery name="migrations" datasource="DSI">
SELECT *
FROM master
Where func='#url.func#' and dispo <> 'Decommision' and dispo <> 'Exception'
ORDER by lname ASC
</cfquery>
<cfoutput>
  <p align="center" class="style1">FRB NY DSI Project<br>
    #url.func#  <br>
	Remaining Customers to be Scheduled for Training</p>
  <hr align="left" width="100%" size="3" noshade color="##660033" class="style1">
</cfoutput>
<table width="100%"  border="1" cellpadding="0" cellspacing="0" bordercolor="#000000">
<tr align="left" valign="top" bgcolor="#009999" class="style1">
    <th width="15%" scope="col">Name&nbsp;</th>
	<th width="8%" scope="col">Training Date</th>
    <th width="9%" scope="col">Session&nbsp;</th>
    <th width="8%" scope="col">Location&nbsp;</th>
    <th width="6%" scope="col">Floor&nbsp;</th>
    <th width="7%" scope="col">Office&nbsp;</th>
    <th width="7%" scope="col">Phone&nbsp;</th>
    <th width="14%" scope="col">Machine Type&nbsp;</th>
    <th width="11%" scope="col">Status&nbsp;</th>  
  </tr>
<cfoutput query="migrations">
<cfif #dateformat(tdate,'m/d/yyyy')# gte dateformat(now(),'m/d/yyyy') OR #dateformat(tdate,'m/d/yyyy')# eq "">
   <tr align="left" valign="top"  bgcolor="##FFFFFF">
    <td width="15%" scope="col">#lname#, #fname#&nbsp;</td>
	<td width="8%" scope="col">#dateformat(tdate,'m/d')#&nbsp;</td>
    <td width="9%" scope="col">#tsession#&nbsp;</td>
    <td width="8%" scope="col">#loc#&nbsp;</td>
    <td width="6%" scope="col">#flr#&nbsp;</td>
    <td width="7%" scope="col">#office#&nbsp;</td>
    <td width="7%" scope="col">#ph#&nbsp;</td>
    <td width="14%" scope="col">#mtype#&nbsp;</td>
    <td width="11%" scope="col">#status#&nbsp;</td>  
  </tr>
</cfif>
</cfoutput>
</table>
</body>
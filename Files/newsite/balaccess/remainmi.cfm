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
<cfset todate=dateformat(now(),'m/d/yyyy')>
<cfset #todate#=#dateformat(todate,'m/d/yyyy')#>

<cfquery name="migrations" datasource="newdsi">
SELECT *
FROM master
Where func='#url.func#' and actualdate > #parsedatetime(todate)# and actualdate is not null
ORDER by lname ASC
</cfquery>
<cfoutput>
  <p align="center" class="style1">FRB NY DSI Project<br>
    #url.func#  <br>
	Remaining Customers to be Migrated</p>
  <hr align="left" width="100%" size="3" noshade color="##660033" class="style1">
</cfoutput>
<table width="100%"  border="1" cellpadding="0" cellspacing="0" bordercolor="#cccccc">
<tr align="left" valign="top" bgcolor="#eeeeee" class="style1">
    <th width="15%" scope="col">Name&nbsp;</th>
    <th width="8%" scope="col">Migration Date</th>
    <th width="9%" scope="col">Migration Time&nbsp;</th>
    <th width="8%" scope="col">Location&nbsp;</th>
    <th width="6%" scope="col">Floor&nbsp;</th>
    <th width="7%" scope="col">Office&nbsp;</th>
    <th width="7%" scope="col">Phone&nbsp;</th>
    <th width="14%" scope="col">Machine Type&nbsp;</th>
    <th width="11%" scope="col">Status&nbsp;</th>  
  </tr>
<cfoutput query="migrations">
    <tr align="left" valign="top"  bgcolor="##FFFFFF">
	<td width="15%" scope="col">#lname#, #fname#&nbsp;</td>
    <td width="8%" scope="col">#dateformat(actualdate,'m/d')#&nbsp;</td>
    <td width="9%" scope="col">#timeformat(stime,'h:mm tt')#&nbsp;</td>
    <td width="8%" scope="col">#loc#&nbsp;</td>
    <td width="6%" scope="col">#flr#&nbsp;</td>
    <td width="7%" scope="col">#office#&nbsp;</td>
    <td width="7%" scope="col">#ph#&nbsp;</td>
    <td width="14%" scope="col">#mtype#&nbsp;</td>
    <td width="11%" scope="col">#status#&nbsp;</td>  
  </tr>
</cfoutput>
</table>
</body>
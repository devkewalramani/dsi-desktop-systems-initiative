<title>BAL Worksheet</title>
<style type="text/css">
<!--
.style1 {
	color: #560808;
	font-weight: bold;
}
.style4 {font-size: 12px}
.style6 {font-size: 12px; color: #000000; }
-->
</style>
<body>
<cfquery name="migrations" datasource="DSI">
SELECT *
FROM master
Where func='#url.func#'
ORDER by lname ASC
</cfquery>
<cfoutput>
  <p align="center" class="style1">FRB NY DSI Project<br>
    #url.func#  <br>
	BAL Worksheet <br>
  </p>
</cfoutput>
<table width="800"  border="1" cellpadding="0" cellspacing="0" bordercolor="#000000">
<tr align="left" valign="top" bgcolor="#009999" class="style1">
    <th  scope="col"><span class="style4">Name&nbsp;</span></th>
	<th  scope="col"><span class="style4">Logon&nbsp;</span></th>
	<th  scope="col"><span class="style4">Context&nbsp;</span></th>
	<th  scope="col"><span class="style4">Location&nbsp;</span></th>
    <th  scope="col"><span class="style4">Floor&nbsp;</span></th>
    <th  scope="col"><span class="style4">Office&nbsp;</span></th>
    <th  scope="col"><span class="style4">Phone&nbsp;</span></th>
	<th  scope="col"><span class="style4">Work Hours&nbsp;</span></th>
	<th  scope="col"><p class="style4">Black<br>
    Berry&nbsp;</p>    </th>
	<th  scope="col"><span class="style4">Machine Type&nbsp;</span></th>
	<th  scope="col"><span class="style4">Disposition&nbsp;</span></th>
	<th  scope="col"><span class="style4">Item Desc&nbsp;</span></th>
	<th  scope="col"><span class="style4">Serial&nbsp;</span></th>
	<th  scope="col"><span class="style4">Replacement Model&nbsp;</span></th>
	<th  scope="col"><span class="style4">Status&nbsp;</span></th>
	<th  scope="col"><span class="style4">Orientation Date&nbsp;</span></th>
	<th  scope="col"><span class="style4">Session&nbsp;</span></th>
	<th  scope="col"><span class="style4">XP Training Date&nbsp;</span></th>
	<th  scope="col"><span class="style4">Session&nbsp;</span></th>
    <th scope="col"><span class="style4">Migration Date</span></th>
	<th scope="col"><span class="style4">Rescheduled Date</span></th>
    <th  scope="col"><span class="style4">Migration Time&nbsp;</span></th> 
  </tr>
<cfoutput query="migrations">
  <tr align="left" valign="top">
    <td height="62"><span class="style6">#lname#, #fname#&nbsp;</span></td>
	<td><span class="style6">#logon#&nbsp;</span></td>
	<td><span class="style6">#context#&nbsp;</span></td>
	<td><span class="style6">#loc#&nbsp;</span></td>
    <td><span class="style6">#flr#&nbsp;</span></td>
    <td><span class="style6">#office#&nbsp;</span></td>
    <td><span class="style6">#ph#&nbsp;</span></td>
	<td><span class="style6">#wrkhrs#&nbsp;</span></td>
	<td><span class="style6">#blkberry#&nbsp;</span></td>
	<td><span class="style6">#mtype#&nbsp;</span></td>
	<td><span class="style6">#dispo#&nbsp;</span></td>
	<td><span class="style6">#itemdesc#&nbsp;</span></td>
	<td><span class="style6">#serial#&nbsp;</span></td>
	<td><span class="style6">#replacemodel#&nbsp;</span></td>
	<td><span class="style6">#status#&nbsp;</span></td>
	<td><span class="style6">#dateformat(odate,'m/d/yyyy')#&nbsp;</span></td>
	<td><span class="style6">#osession#&nbsp;</span></td>
	<td><span class="style6">#dateformat(tdate,'m/d/yyyy')#&nbsp;</span></td>
	<td><span class="style6">#tsession#&nbsp;</span></td>
    <td><span class="style6">#dateformat(midate,'m/d/yyyy')#&nbsp;</span></td>
	<td><span class="style6">#dateformat(actualdate,'m/d/yyyy')#&nbsp;</span></td>
    <td><span class="style6">#timeformat(stime,'h:mm tt')#&nbsp;</span></td> 
  </tr>
</cfoutput>
</table>

</body>
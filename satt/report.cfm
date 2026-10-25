<style type="text/css">
<!--
.style3 {font-size: 12px}
-->
</style>
<body>
<cfquery name="migrations" datasource="DSI">
SELECT *
FROM master
WHERE odate Between #parsedatetime(form.bdate)# AND #parsedatetime(form.edate)# and odate <> null
Order BY func ASC
</cfquery>
<style type="text/css">
<!--
.style1 {font-weight: bold}
-->
</style>

<cfoutput>
  <p align="center"><span class="style3">FRB NY DSI Project<br>
    SATT Orientation Schedule <br>
  From #form.bdate# to #form.edate#</span></p>
  <hr align="left" width="100%" size="3" noshade color="##660033">
</cfoutput>
<table width="100%"  border="1" cellpadding="0" cellspacing="0" bordercolor="#000000" bgcolor="#000000">
<tr align="left" valign="bottom" bgcolor="#009999">
    <th scope="col"><strong>Function</strong></th>
    <th scope="col"><strong>Name</strong></th>
	<th  scope="col">Location</th>
	<th  scope="col"><strong>Date</strong></th> 
	<th  scope="col"><strong>Session</strong></th> 
	<th  scope="col"><strong>Phone</strong></th>  
	<th scope="col"><strong>Training BU</strong></th>
  </tr>
<cfoutput query="migrations">
  <tr align="left" valign="top" bgcolor=###IIF(migrations.currentrow MOD 2,DE ('FFFFFF'),DE ('dddddd'))#>
   <td  scope="col">#func#</td>
  <td  scope="col">#fname# #lname#</td>
  <td  scope="col">#loc#</td>
  <td  scope="col">#dateformat(odate,'m/d')#</td>
  <td  scope="col">#osession#</td>
  <td  scope="col">#ph#</td>
  <td scope="col">#tbu#</td>
  </tr>
</cfoutput>
</table>
</body>

<style type="text/css">
<!--
.style2 {
	font-size: 12px;
	font-weight: bold;
}
.style3 {font-size: 12px}
-->
</style>
<link href="../scripts/font.css" rel="stylesheet" type="text/css">

<body>
<cfquery name="migrations" datasource="newdsi">
SELECT *
FROM master
WHERE actualdate Between #parsedatetime(form.bdate)# AND #parsedatetime(form.edate)#
Order BY actualdate,stime ASC
</cfquery>



<style type="text/css">
<!--
.style1 {font-weight: bold}
-->
</style>

<cfoutput>
  <p align="center"><span class="burgundy"><strong>FRB NY DSI Project<br>
    Migration Schedule <br>
  From #form.bdate# to #form.edate#</strong></span></p>
  <hr align="left" width="100%" size="3" noshade color="##660033">
</cfoutput>
<table width="100%"  border="1" cellpadding="0" cellspacing="0" bordercolor="#999999" bgcolor="#999999">
<tr align="left" valign="bottom" bgcolor="#CCCCCC" class="burgundy">
    <th scope="col"><span class="style2"></span></th>
    <th scope="col"><span class="style2">Lname</span></th>
    <th scope="col"><span class="style2">Fname</span></th>
	<th scope="col"><span class="style2">Logon<br> 
    ID</span></th>
    <th scope="col"><span class="style2">Context</span></th>
    <th scope="col"><span class="style2">Floor</span></th>
    <th  scope="col"><span class="style2">Phone</span></th>  
	<th  scope="col"><span class="style2">Machine Type</span></th> 
	<th  scope="col">Disposition</th>
	<th  scope="col"><span class="style2">Status</span></th> 
	<th  scope="col"><span class="style2">Blk <br>
    Berry</span></th> 
	<th  scope="col"><span class="style2">Date</span></th> 
	<th  scope="col"><span class="style2">Time</span></th> 
	<th  scope="col"><span class="style2">Location of <br>
    H: drive</span></th> 
	<th  scope="col"><span class="style2">comment</span></th> 
  </tr>
<cfoutput query="migrations">
<cfif #logon# neq "">
<cfquery name="hdrive" datasource="newdsi">
Select *
From hdrive
Where logon='#logon#'
</cfquery>
  <tr align="left" valign="top" bgcolor=###IIF(migrations.currentrow MOD 2,DE ('FFFFFF'),DE ('eeeeee'))#>
  <td  scope="col"><span class="style3">#id#</span></td>
  <td  scope="col"><span class="style3">#lname#</span></td>
  <td  scope="col"><span class="style3">#fname#</span></td>
  <td  scope="col"><span class="style3">#logon#</span></td>
  <td  scope="col"><span class="style3">#context#</span></td>
  <td  scope="col"><span class="style3">#flr#</span></td>
  <td  scope="col"><span class="style3">#ph#</span></td>
  <td  scope="col"><span class="style3">#mtype#&nbsp;</span></td>
  <td scope="col">#dispo#</td>
  <td scope="col"><span class="style3">#status#&nbsp;</span></td> 
   <td  scope="col"><span class="style3">#blkberry#</span></td>
  <td scope="col"><span class="style3">#dateformat(actualdate,'m/d')#&nbsp;</span></td>
  <td scope="col"><span class="style3">#timeformat(stime,'h:mm tt')#&nbsp;</span></td> 
  <td  scope="col"><span class="style3">#hdrive.hdvol#\#hdrive.hdpath#</span></td>
 <td  scope="col"><span class="style3">#comment#</span></td>
  </tr>
  <cfelseif #logon# eq "">
  <tr align="left" valign="top" bgcolor=###IIF(migrations.currentrow MOD 2,DE ('FFFFFF'),DE ('eeeeee'))#>
  <td  scope="col"><span class="style3">#id#</span></td>
  <td  scope="col"><span class="style3">#lname#</span></td>
  <td  scope="col"><span class="style3">#fname#</span></td>
  <td  scope="col"><span class="style3">#logon#</span></td>
  <td  scope="col"><span class="style3">#context#</span></td>
  <td  scope="col"><span class="style3">#flr#</span></td>
  <td  scope="col"><span class="style3">#ph#</span></td>
  <td  scope="col"><span class="style3">#mtype#&nbsp;</span></td>
  <td scope="col">#dispo#</td>
  <td scope="col"><span class="style3">#status#&nbsp;</span></td> 
   <td  scope="col"><span class="style3">#blkberry#</span></td>
  <td scope="col"><span class="style3">#dateformat(actualdate,'m/d')#&nbsp;</span></td>
  <td scope="col"><span class="style3">#timeformat(stime,'h:mm tt')#&nbsp;</span></td> 
  <td  scope="col"><span class="style3"></span></td>
 <td  scope="col"><span class="style3">#comment#</span></td>
  </tr>
  </cfif>
</cfoutput>
</table>
</body>

<cfquery name="migrations" datasource="DSI">
SELECT *
FROM master
WHERE actualdate Between #parsedatetime(form.bdate)# AND #parsedatetime(form.edate)#
Order BY actualdate,stime ASC
</cfquery>
<cfoutput>
  <p align="center"><span class="style1">FRB NY DSI Project<br>
    End to End Migration<br>
    Assignment Sheet<br>
  Week of #form.bdate#</span></p>
  <hr align="left" width="100%" size="3" noshade color="##660033">
</cfoutput>
<strong>MONDAY</strong><br>
<table width="100%"  border="0" cellpadding="1" cellspacing="1" bgcolor="#000000">
<tr align="left" valign="top" bgcolor="#009999">
    <th width="8%" scope="col">Date</th>
    <th width="9%" scope="col">Time&nbsp;</th>
	<th width="8%" scope="col">Tech&nbsp;</th>
    <th width="6%" scope="col">Floater&nbsp;</th>
    <th width="15%" scope="col">Name&nbsp;</th>
    <th width="8%" scope="col">Function&nbsp;</th>
    <th width="8%" scope="col">Location&nbsp;</th>
    <th width="6%" scope="col">Floor&nbsp;</th>
    <th width="7%" scope="col">Office&nbsp;</th>
    <th width="7%" scope="col">Phone&nbsp;</th>
    <th width="14%" scope="col">Machine Type&nbsp;</th>
    <th width="11%" scope="col">Status&nbsp;</th>  
  </tr>
<cfoutput query="migrations">
<cfif #dateformat(actualdate,'dddd')# eq 'Monday'>
  <tr align="left" valign="top" bgcolor="##FFFFFF">
    <td width="8%" scope="col">#dateformat(actualdate,'m/d')#&nbsp;</td>
    <td width="9%" scope="col">#timeformat(stime,'h:mm tt')#&nbsp;</td>
    <td width="8%" scope="col">#tech#&nbsp;</td>
    <td width="6%" scope="col">#floater#&nbsp;</td>
    <td width="15%" scope="col">#lname#, #fname#&nbsp;</td>
    <td width="8%" scope="col">#func#&nbsp;</td>
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

<strong>TUESDAY</strong><br>
<table width="100%"  border="0" cellpadding="1" cellspacing="1" bgcolor="#000000">
<tr align="left" valign="top" bgcolor="#009999">
    <th width="8%" scope="col">Date</th>
    <th width="9%" scope="col">Time&nbsp;</th>
	<th width="8%" scope="col">Tech&nbsp;</th>
    <th width="6%" scope="col">Floater&nbsp;</th>
    <th width="15%" scope="col">Name&nbsp;</th>
    <th width="8%" scope="col">Function&nbsp;</th>
    <th width="8%" scope="col">Location&nbsp;</th>
    <th width="6%" scope="col">Floor&nbsp;</th>
    <th width="7%" scope="col">Office&nbsp;</th>
    <th width="7%" scope="col">Phone&nbsp;</th>
    <th width="14%" scope="col">Machine Type&nbsp;</th>
    <th width="11%" scope="col">Status&nbsp;</th>  
  </tr>
<cfoutput query="migrations">
<cfif #dateformat(actualdate,'dddd')# eq 'Tuesday'>
  <tr align="left" valign="top" bgcolor="##FFFFFF">
    <td width="8%" scope="col">#dateformat(actualdate,'m/d')#&nbsp;</td>
    <td width="9%" scope="col">#timeformat(stime,'h:mm tt')#&nbsp;</td>
    <td width="8%" scope="col">#tech#&nbsp;</td>
    <td width="6%" scope="col">#floater#&nbsp;</td>
    <td width="15%" scope="col">#lname#, #fname#&nbsp;</td>
    <td width="8%" scope="col">#func#&nbsp;</td>
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

<strong>WEDNESDAY</strong><br>
<table width="100%"  border="0" cellpadding="1" cellspacing="1" bgcolor="#000000">
<tr align="left" valign="top" bgcolor="#009999">
    <th width="8%" scope="col">Date</th>
    <th width="9%" scope="col">Time&nbsp;</th>
	<th width="8%" scope="col">Tech&nbsp;</th>
    <th width="6%" scope="col">Floater&nbsp;</th>
    <th width="15%" scope="col">Name&nbsp;</th>
    <th width="8%" scope="col">Function&nbsp;</th>
    <th width="8%" scope="col">Location&nbsp;</th>
    <th width="6%" scope="col">Floor&nbsp;</th>
    <th width="7%" scope="col">Office&nbsp;</th>
    <th width="7%" scope="col">Phone&nbsp;</th>
    <th width="14%" scope="col">Machine Type&nbsp;</th>
    <th width="11%" scope="col">Status&nbsp;</th>  
  </tr>
<cfoutput query="migrations">
<cfif #dateformat(actualdate,'dddd')# eq 'Wednesday'>
  <tr align="left" valign="top" bgcolor="##FFFFFF">
    <td width="8%" scope="col">#dateformat(actualdate,'m/d')#&nbsp;</td>
    <td width="9%" scope="col">#timeformat(stime,'h:mm tt')#&nbsp;</td>
    <td width="8%" scope="col">#tech#&nbsp;</td>
    <td width="6%" scope="col">#floater#&nbsp;</td>
    <td width="15%" scope="col">#lname#, #fname#&nbsp;</td>
    <td width="8%" scope="col">#func#&nbsp;</td>
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

<strong>THURSDAY</strong><br>
<table width="100%"  border="0" cellpadding="1" cellspacing="1" bgcolor="#000000">
<tr align="left" valign="top" bgcolor="#009999">
    <th width="8%" scope="col">Date</th>
    <th width="9%" scope="col">Time&nbsp;</th>
	<th width="8%" scope="col">Tech&nbsp;</th>
    <th width="6%" scope="col">Floater&nbsp;</th>
    <th width="15%" scope="col">Name&nbsp;</th>
    <th width="8%" scope="col">Function&nbsp;</th>
    <th width="8%" scope="col">Location&nbsp;</th>
    <th width="6%" scope="col">Floor&nbsp;</th>
    <th width="7%" scope="col">Office&nbsp;</th>
    <th width="7%" scope="col">Phone&nbsp;</th>
    <th width="14%" scope="col">Machine Type&nbsp;</th>
    <th width="11%" scope="col">Status&nbsp;</th>  
  </tr>
<cfoutput query="migrations">
<cfif #dateformat(actualdate,'dddd')# eq 'Thursday'>
  <tr align="left" valign="top" bgcolor="##FFFFFF">
    <td width="8%" scope="col">#dateformat(actualdate,'m/d')#&nbsp;</td>
    <td width="9%" scope="col">#timeformat(stime,'h:mm tt')#&nbsp;</td>
    <td width="8%" scope="col">#tech#&nbsp;</td>
    <td width="6%" scope="col">#floater#&nbsp;</td>
    <td width="15%" scope="col">#lname#, #fname#&nbsp;</td>
    <td width="8%" scope="col">#func#&nbsp;</td>
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

<strong>FRIDAY</strong><br>
<table width="100%"  border="0" cellpadding="1" cellspacing="1" bgcolor="#000000">
<tr align="left" valign="top" bgcolor="#009999">
    <th width="8%" scope="col">Date</th>
    <th width="9%" scope="col">Time&nbsp;</th>
	<th width="8%" scope="col">Tech&nbsp;</th>
    <th width="6%" scope="col">Floater&nbsp;</th>
    <th width="15%" scope="col">Name&nbsp;</th>
    <th width="8%" scope="col">Function&nbsp;</th>
    <th width="8%" scope="col">Location&nbsp;</th>
    <th width="6%" scope="col">Floor&nbsp;</th>
    <th width="7%" scope="col">Office&nbsp;</th>
    <th width="7%" scope="col">Phone&nbsp;</th>
    <th width="14%" scope="col">Machine Type&nbsp;</th>
    <th width="11%" scope="col">Status&nbsp;</th>  
  </tr>
<cfoutput query="migrations">
<cfif #dateformat(actualdate,'dddd')# eq 'Friday'>
  <tr align="left" valign="top" bgcolor="##FFFFFF">
    <td width="8%" scope="col">#dateformat(actualdate,'m/d')#&nbsp;</td>
    <td width="9%" scope="col">#timeformat(stime,'h:mm tt')#&nbsp;</td>
    <td width="8%" scope="col">#tech#&nbsp;</td>
    <td width="6%" scope="col">#floater#&nbsp;</td>
    <td width="15%" scope="col">#lname#, #fname#&nbsp;</td>
    <td width="8%" scope="col">#func#&nbsp;</td>
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

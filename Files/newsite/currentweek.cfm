<link href="./scripts/font.css" rel="stylesheet" type="text/css">

<cfif dateformat(now(),'dddd') eq 'Monday'>
<cfset bdate=dateformat(now(),'m/d/yyyy')>
<cfset edate=dateformat(now(),'m/d/yyyy')+4>
<cfelseif dateformat(now(),'dddd') eq 'Tuesday'>
<cfset bdate=dateformat(now(),'m/d/yyyy')-1>
<cfset edate=dateformat(now(),'m/d/yyyy')+3>
<cfelseif dateformat(now(),'dddd') eq 'Wednesday'>
<cfset bdate=dateformat(now(),'m/d/yyyy')-2>
<cfset edate=dateformat(now(),'m/d/yyyy')+2>
<cfelseif dateformat(now(),'dddd') eq 'Thursday'>
<cfset bdate=dateformat(now(),'m/d/yyyy')-3>
<cfset edate=dateformat(now(),'m/d/yyyy')+1>
<cfelseif dateformat(now(),'dddd') eq 'Friday'>
<cfset bdate=dateformat(now(),'m/d/yyyy')-4>
<cfset edate=dateformat(now(),'m/d/yyyy')>
<cfelseif dateformat(now(),'dddd') eq 'Saturday'>
<cfset bdate=dateformat(now(),'m/d/yyyy')-5>
<cfset edate=dateformat(now(),'m/d/yyyy')-1>
<cfelseif dateformat(now(),'dddd') eq 'Sunday'>
<cfset bdate=dateformat(now(),'m/d/yyyy')-6>
<cfset edate=dateformat(now(),'m/d/yyyy')-2>
</cfif>
<cfoutput>
<cfset #bdate#=#dateformat(bdate,'m/d/yyyy')#>
<cfset #edate#=#dateformat(edate,'m/d/yyyy')#>
</cfoutput>
<cfquery name="migrations" datasource="newdsi">
SELECT *
FROM master
WHERE actualdate Between #parsedatetime(bdate)# AND #parsedatetime(edate)#
Order BY actualdate,stime ASC
</cfquery>

<cfquery name="nacs" datasource="newdsi">
Select *
from nacsschedule
where weekof=#parsedatetime(bdate)#
</cfquery>

<cfoutput>
  <p align="center"><span class="burgundy"><strong>FRB NY DSI Project<br>
    End to End Migration<br>
    Assignment Sheet<br>
Week of #bdate#</strong></span></p>
  <hr align="left" width="100%" size="3" noshade color="##660033">
</cfoutput>

<strong class="burgundy">MONDAY - NACS Tech Assigned Today: <cfoutput>#nacs.mon#</cfoutput></strong><br>
<table width="100%"  border="1" cellpadding="0" cellspacing="0" bordercolor="#999999" bgcolor="#999999">
<tr align="left" valign="top" bgcolor="#CCCCCC" class="burgundy">
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
    <th width="11%" scope="col">Comment</th>
</tr>
<cfoutput query="migrations">
<cfif #dateformat(actualdate,'dddd')# eq 'Monday' AND #status# neq 'new'>
  <tr align="left" valign="top" bgcolor=###IIF(migrations.currentrow MOD 2,DE ('FFFFFF'),DE ('eeeeee'))#>
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
    <td width="11%" scope="col">#comment#&nbsp;</td>
  </tr>
<cfelseif #dateformat(actualdate,'dddd')# eq 'Monday' AND #status# eq 'new'>
<tr align="left" valign="top" bgcolor=###IIF(migrations.currentrow MOD 2,DE ('FFFFFF'),DE ('eeeeee'))#>
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
    <td width="14%" scope="col">#replacemodel#&nbsp;</td>
    <td width="11%" scope="col">#status#&nbsp;</td>  
    <td width="11%" scope="col">#comment#&nbsp;</td>
</tr>  
</cfif>
</cfoutput>
</table>

<br><strong class="burgundy">TUESDAY - NACS Tech Assigned Today: <cfoutput>#nacs.tues#</cfoutput></strong><br>
<table width="100%"  border="1" cellpadding="0" cellspacing="0" bordercolor="#999999" bgcolor="#999999">
<tr align="left" valign="top" bgcolor="#CCCCCC" class="burgundy">
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
	<th width="11%" scope="col">Comment</th>
  </tr>
<cfoutput query="migrations">
<cfif #dateformat(actualdate,'dddd')# eq 'Tuesday' AND #status# neq 'new'>
  <tr align="left" valign="top" bgcolor=###IIF(migrations.currentrow MOD 2,DE ('FFFFFF'),DE ('eeeeee'))#>
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
	 <td width="11%" scope="col">#comment#&nbsp;</td>
  </tr>
<cfelseif #dateformat(actualdate,'dddd')# eq 'Tuesday' AND #status# eq 'new'>
<tr align="left" valign="top" bgcolor=###IIF(migrations.currentrow MOD 2,DE ('FFFFFF'),DE ('eeeeee'))#>
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
    <td width="14%" scope="col">#replacemodel#&nbsp;</td>
    <td width="11%" scope="col">#status#&nbsp;</td>  
	 <td width="11%" scope="col">#comment#&nbsp;</td>
  </tr>  
</cfif>
</cfoutput>
</table>

<br><strong class="burgundy">WEDNESDAY - NACS Tech Assigned Today: <cfoutput>#nacs.wed#</cfoutput></strong><br>
<table width="100%"  border="1" cellpadding="0" cellspacing="0" bordercolor="#999999" bgcolor="#999999">
<tr align="left" valign="top" bgcolor="#CCCCCC" class="burgundy">
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
	<th width="11%" scope="col">Comment</th>
  </tr>
<cfoutput query="migrations">
<cfif #dateformat(actualdate,'dddd')# eq 'Wednesday' AND #status# neq 'new'>
  <tr align="left" valign="top" bgcolor=###IIF(migrations.currentrow MOD 2,DE ('FFFFFF'),DE ('eeeeee'))#>
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
	 <td width="11%" scope="col">#comment#&nbsp;</td>
  </tr>
<cfelseif #dateformat(actualdate,'dddd')# eq 'Wednesday' AND #status# eq 'new'>
<tr align="left" valign="top" bgcolor=###IIF(migrations.currentrow MOD 2,DE ('FFFFFF'),DE ('eeeeee'))#>
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
    <td width="14%" scope="col">#replacemodel#&nbsp;</td>
    <td width="11%" scope="col">#status#&nbsp;</td>
	 <td width="11%" scope="col">#comment#&nbsp;</td>  
  </tr>  
</cfif>
</cfoutput>
</table>

<br><strong class="burgundy">THURSDAY - NACS Tech Assigned Today: <cfoutput>#nacs.thur#</cfoutput></strong><br>
<table width="100%"  border="1" cellpadding="0" cellspacing="0" bordercolor="#999999" bgcolor="#999999">
<tr align="left" valign="top" bgcolor="#CCCCCC" class="burgundy">
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
	<th width="11%" scope="col">Comment</th>
  </tr>
<cfoutput query="migrations">
<cfif #dateformat(actualdate,'dddd')# eq 'Thursday' AND #status# neq 'new'>
  <tr align="left" valign="top" bgcolor=###IIF(migrations.currentrow MOD 2,DE ('FFFFFF'),DE ('eeeeee'))#>
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
	 <td width="11%" scope="col">#comment#&nbsp;</td> 
  </tr>
<cfelseif #dateformat(actualdate,'dddd')# eq 'Thursday' AND #status# eq 'new'>
<tr align="left" valign="top" bgcolor=###IIF(migrations.currentrow MOD 2,DE ('FFFFFF'),DE ('eeeeee'))#>
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
    <td width="14%" scope="col">#replacemodel#&nbsp;</td>
    <td width="11%" scope="col">#status#&nbsp;</td>
	 <td width="11%" scope="col">#comment#&nbsp;</td> 
  </tr>  
</cfif>
</cfoutput>
</table>

<br><strong class="burgundy">FRIDAY - NACS Tech Assigned Today: <cfoutput>#nacs.fri#</cfoutput></strong><br>
<table width="100%"  border="1" cellpadding="0" cellspacing="0" bordercolor="#999999" bgcolor="#999999">
<tr align="left" valign="top" bgcolor="#CCCCCC" class="burgundy">
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
	<th width="11%" scope="col">Comment</th> 
  </tr>
<cfoutput query="migrations">
<cfif #dateformat(actualdate,'dddd')# eq 'Friday' AND #status# neq 'new'>
  <tr align="left" valign="top" bgcolor=###IIF(migrations.currentrow MOD 2,DE ('FFFFFF'),DE ('eeeeee'))#>
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
	 <td width="11%" scope="col">#comment#&nbsp;</td>
  </tr>
<cfelseif #dateformat(actualdate,'dddd')# eq 'Friday' AND #status# eq 'new'>
<tr align="left" valign="top" bgcolor=###IIF(migrations.currentrow MOD 2,DE ('FFFFFF'),DE ('eeeeee'))#>
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
    <td width="14%" scope="col">#replacemodel#&nbsp;</td>
    <td width="11%" scope="col">#status#&nbsp;</td>  
	 <td width="11%" scope="col">#comment#&nbsp;</td>
  </tr>  
</cfif>
</cfoutput>
</table>

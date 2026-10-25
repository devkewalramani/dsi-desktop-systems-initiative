<link href="../scripts/font.css" rel="stylesheet" type="text/css">

<cfquery name="migrations" datasource="newdsi">
SELECT *
FROM master
WHERE actualdate Between #parsedatetime(form.bdate)# AND #parsedatetime(form.edate)#
Order BY actualdate,stime ASC
</cfquery>
<cfoutput>
  <p align="center"><span class="burgundy"><strong>FRB NY DSI Project<br>
    Hardrive Prep Report <br>
From #form.bdate# to #form.edate#</strong></span></p>
  <hr align="left" width="100%" size="3" noshade color="##660033" class="burgundy">
</cfoutput>

<strong class="burgundy">MONDAY</strong><br>
<table width="100%"  border="0" cellpadding="1" cellspacing="1" bgcolor="#CCCCCC">
<tr align="left" valign="top" bgcolor="#eeeeeee" class="burgundy">
    <th width="8%" scope="col"><strong>Date</strong></th>
    <th width="9%" scope="col"><strong>Time&nbsp;</strong></th>
	<th width="15%" scope="col"><strong>Name&nbsp;</strong></th>
    <th width="8%" scope="col"><strong>Function&nbsp;</strong></th>
    <th width="8%" scope="col">Location</th>
    <th width="14%" scope="col"><strong>Machine Type&nbsp;</strong></th>
    <th width="11%" scope="col"><strong>Status&nbsp;</strong></th>  
    <th width="11%" scope="col">Disposition</th>
    <th width="11%" scope="col">Comment</th>
</tr>
<cfoutput query="migrations">
<cfif #dateformat(actualdate,'dddd')# eq 'Monday' AND #status# neq 'new'>
  <tr align="left" valign="top" bgcolor="##FFFFFF">
    <td width="8%" scope="col">#dateformat(actualdate,'m/d')#&nbsp;</td>
    <td width="9%" scope="col">#timeformat(stime,'h:mm tt')#&nbsp;</td>
    <td width="15%" scope="col">#lname#, #fname#&nbsp;</td>
    <td width="8%" scope="col">#func#&nbsp;</td>
    <td width="8%" scope="col">#loc#</td>
    <td width="14%" scope="col">#mtype#&nbsp;</td>
    <td width="11%" scope="col">#status#&nbsp;</td>  
    <td width="11%" scope="col">#dispo#</td>
    <td width="11%" scope="col">#comment#&nbsp;</td>
  </tr>
<cfelseif #dateformat(actualdate,'dddd')# eq 'Monday' AND #status# eq 'new'>
  <tr align="left" valign="top" bgcolor="##FFFFFF">
    <td width="8%" scope="col">#dateformat(actualdate,'m/d')#&nbsp;</td>
    <td width="9%" scope="col">#timeformat(stime,'h:mm tt')#&nbsp;</td>
    <td width="15%" scope="col">#lname#, #fname#&nbsp;</td>
    <td width="8%" scope="col">#func#&nbsp;</td>
    <td width="8%" scope="col">#loc#</td>
    <td width="14%" scope="col">#replacemodel#&nbsp;</td>
    <td width="11%" scope="col">#status#&nbsp;</td>  
    <td width="11%" scope="col">#dispo#</td>
    <td width="11%" scope="col">#comment#&nbsp;</td>
  </tr>
</cfif>
</cfoutput>
</table>

<strong class="burgundy">TUESDAY</strong><br>
<table width="100%"  border="0" cellpadding="1" cellspacing="1" bgcolor="#cccccc">
<tr align="left" valign="top" bgcolor="#eeeeeee" class="burgundy">
    <th width="8%" scope="col"><strong>Date</strong></th>
    <th width="9%" scope="col"><strong>Time&nbsp;</strong></th>
	<th width="15%" scope="col"><strong>Name&nbsp;</strong></th>
    <th width="8%" scope="col"><strong>Function&nbsp;</strong></th>
    <th width="8%" scope="col">Location</th>
    <th width="14%" scope="col"><strong>Machine Type&nbsp;</strong></th>
    <th width="11%" scope="col"><strong>Status&nbsp;</strong></th>  
    <th width="11%" scope="col">Disposition</th>
    <th width="11%" scope="col">Comment</th>
</tr>
<cfoutput query="migrations">
<cfif #dateformat(actualdate,'dddd')# eq 'Tuesday' AND #status# neq 'new'>
  <tr align="left" valign="top" bgcolor="##FFFFFF">
    <td width="8%" scope="col">#dateformat(actualdate,'m/d')#&nbsp;</td>
    <td width="9%" scope="col">#timeformat(stime,'h:mm tt')#&nbsp;</td>
    <td width="15%" scope="col">#lname#, #fname#&nbsp;</td>
    <td width="8%" scope="col">#func#&nbsp;</td>
    <td width="8%" scope="col">#loc#</td>
    <td width="14%" scope="col">#mtype#&nbsp;</td>
    <td width="11%" scope="col">#status#&nbsp;</td>  
    <td width="11%" scope="col">#dispo#</td>
    <td width="11%" scope="col">#comment#&nbsp;</td>
  </tr>
<cfelseif #dateformat(actualdate,'dddd')# eq 'Tuesday' AND #status# eq 'new'>
  <tr align="left" valign="top" bgcolor="##FFFFFF">
    <td width="8%" scope="col">#dateformat(actualdate,'m/d')#&nbsp;</td>
    <td width="9%" scope="col">#timeformat(stime,'h:mm tt')#&nbsp;</td>
    <td width="15%" scope="col">#lname#, #fname#&nbsp;</td>
    <td width="8%" scope="col">#func#&nbsp;</td>
    <td width="8%" scope="col">#loc#</td>
    <td width="14%" scope="col">#replacemodel#&nbsp;</td>
    <td width="11%" scope="col">#status#&nbsp;</td>  
    <td width="11%" scope="col">#dispo#</td>
    <td width="11%" scope="col">#comment#&nbsp;</td>
  </tr>
</cfif>
</cfoutput>
</table>

<strong class="burgundy">WEDNESDAY</strong><br>
<table width="100%"  border="0" cellpadding="1" cellspacing="1" bgcolor="#cccccc">
<tr align="left" valign="top" bgcolor="#eeeeeee" class="burgundy">
    <th width="8%" scope="col"><strong>Date</strong></th>
    <th width="9%" scope="col"><strong>Time&nbsp;</strong></th>
	<th width="15%" scope="col"><strong>Name&nbsp;</strong></th>
    <th width="8%" scope="col"><strong>Function&nbsp;</strong></th>
    <th width="8%" scope="col">Location</th>
    <th width="14%" scope="col"><strong>Machine Type&nbsp;</strong></th>
    <th width="11%" scope="col"><strong>Status&nbsp;</strong></th>  
    <th width="11%" scope="col">Disposition</th>
	<th width="11%" scope="col">Comment</th>
</tr>
<cfoutput query="migrations">
<cfif #dateformat(actualdate,'dddd')# eq 'Wednesday' AND #status# neq 'new'>
  <tr align="left" valign="top" bgcolor="##FFFFFF">
    <td width="8%" scope="col">#dateformat(actualdate,'m/d')#&nbsp;</td>
    <td width="9%" scope="col">#timeformat(stime,'h:mm tt')#&nbsp;</td>
    <td width="15%" scope="col">#lname#, #fname#&nbsp;</td>
    <td width="8%" scope="col">#func#&nbsp;</td>
    <td width="8%" scope="col">#loc#</td>
    <td width="14%" scope="col">#mtype#&nbsp;</td>
    <td width="11%" scope="col">#status#&nbsp;</td>  
    <td width="11%" scope="col">#dispo#</td>
	<td width="11%" scope="col">#comment#&nbsp;</td>
  </tr>
<cfelseif #dateformat(actualdate,'dddd')# eq 'Wednesday' AND #status# eq 'new'>
 <tr align="left" valign="top" bgcolor="##FFFFFF">
    <td width="8%" scope="col">#dateformat(actualdate,'m/d')#&nbsp;</td>
    <td width="9%" scope="col">#timeformat(stime,'h:mm tt')#&nbsp;</td>
    <td width="15%" scope="col">#lname#, #fname#&nbsp;</td>
    <td width="8%" scope="col">#func#&nbsp;</td>
    <td width="8%" scope="col">#loc#</td>
    <td width="14%" scope="col">#replacemodel#&nbsp;</td>
    <td width="11%" scope="col">#status#&nbsp;</td>  
    <td width="11%" scope="col">#dispo#</td>
	<td width="11%" scope="col">#comment#&nbsp;</td>
  </tr>
</cfif>
</cfoutput>
</table>

<strong class="burgundy">THURSDAY</strong><br>
<table width="100%"  border="0" cellpadding="1" cellspacing="1" bgcolor="#cccccc">
<tr align="left" valign="top" bgcolor="#eeeeeee" class="burgundy">
    <th width="8%" scope="col"><strong>Date</strong></th>
    <th width="9%" scope="col"><strong>Time&nbsp;</strong></th>
	<th width="15%" scope="col"><strong>Name&nbsp;</strong></th>
    <th width="8%" scope="col"><strong>Function&nbsp;</strong></th>
    <th width="8%" scope="col">Location</th>
    <th width="14%" scope="col"><strong>Machine Type&nbsp;</strong></th>
    <th width="11%" scope="col"><strong>Status&nbsp;</strong></th>  
    <th width="11%" scope="col">Disposition</th>
	<th width="11%" scope="col">Comment</th>
</tr>
<cfoutput query="migrations">
<cfif #dateformat(actualdate,'dddd')# eq 'Thursday' AND #status# neq 'new'>
  <tr align="left" valign="top" bgcolor="##FFFFFF">
    <td width="8%" scope="col">#dateformat(actualdate,'m/d')#&nbsp;</td>
    <td width="9%" scope="col">#timeformat(stime,'h:mm tt')#&nbsp;</td>
    <td width="15%" scope="col">#lname#, #fname#&nbsp;</td>
    <td width="8%" scope="col">#func#&nbsp;</td>
    <td width="8%" scope="col">#loc#</td>
    <td width="14%" scope="col">#mtype#&nbsp;</td>
    <td width="11%" scope="col">#status#&nbsp;</td>  
    <td width="11%" scope="col">#dispo#</td>
	<td width="11%" scope="col">#comment#&nbsp;</td>
  </tr>
<cfelseif #dateformat(actualdate,'dddd')# eq 'Thursday' AND #status# eq 'new'>
  <tr align="left" valign="top" bgcolor="##FFFFFF">
    <td width="8%" scope="col">#dateformat(actualdate,'m/d')#&nbsp;</td>
    <td width="9%" scope="col">#timeformat(stime,'h:mm tt')#&nbsp;</td>
    <td width="15%" scope="col">#lname#, #fname#&nbsp;</td>
    <td width="8%" scope="col">#func#&nbsp;</td>
    <td width="8%" scope="col">#loc#</td>
    <td width="14%" scope="col">#replacemodel#&nbsp;</td>
    <td width="11%" scope="col">#status#&nbsp;</td>  
    <td width="11%" scope="col">#dispo#</td>
	<td width="11%" scope="col">#comment#&nbsp;</td>
  </tr>
</cfif>
</cfoutput>
</table>

<strong class="burgundy">FRIDAY</strong><br>
<table width="100%"  border="0" cellpadding="1" cellspacing="1" bgcolor="#cccccc">
<tr align="left" valign="top" bgcolor="#eeeeeee" class="burgundy">
    <th width="8%" scope="col"><strong>Date</strong></th>
    <th width="9%" scope="col"><strong>Time&nbsp;</strong></th>
	<th width="15%" scope="col"><strong>Name&nbsp;</strong></th>
    <th width="8%" scope="col"><strong>Function&nbsp;</strong></th>
    <th width="8%" scope="col">Location</th>
    <th width="14%" scope="col"><strong>Machine Type&nbsp;</strong></th>
    <th width="11%" scope="col"><strong>Status&nbsp;</strong></th>  
    <th width="11%" scope="col">Disposition</th>
	<th width="11%" scope="col">Comment</th>
</tr>
<cfoutput query="migrations">
<cfif #dateformat(actualdate,'dddd')# eq 'Friday' AND #status# neq 'new'>
  <tr align="left" valign="top" bgcolor="##FFFFFF">
    <td width="8%" scope="col">#dateformat(actualdate,'m/d')#&nbsp;</td>
    <td width="9%" scope="col">#timeformat(stime,'h:mm tt')#&nbsp;</td>
    <td width="15%" scope="col">#lname#, #fname#&nbsp;</td>
    <td width="8%" scope="col">#func#&nbsp;</td>
    <td width="8%" scope="col">#loc#</td>
    <td width="14%" scope="col">#mtype#&nbsp;</td>
    <td width="11%" scope="col">#status#&nbsp;</td>  
    <td width="11%" scope="col">#dispo#</td>
	<td width="11%" scope="col">#comment#&nbsp;</td>
  </tr>
<cfelseif #dateformat(actualdate,'dddd')# eq 'Friday' AND #status# eq 'new'>
 <tr align="left" valign="top" bgcolor="##FFFFFF">
    <td width="8%" scope="col">#dateformat(actualdate,'m/d')#&nbsp;</td>
    <td width="9%" scope="col">#timeformat(stime,'h:mm tt')#&nbsp;</td>
    <td width="15%" scope="col">#lname#, #fname#&nbsp;</td>
    <td width="8%" scope="col">#func#&nbsp;</td>
    <td width="8%" scope="col">#loc#</td>
    <td width="14%" scope="col">#replacemodel#&nbsp;</td>
    <td width="11%" scope="col">#status#&nbsp;</td>  
    <td width="11%" scope="col">#dispo#</td>
	<td width="11%" scope="col">#comment#&nbsp;</td>
  </tr>
</cfif>
</cfoutput>
</table>


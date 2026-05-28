<cfquery name="report" datasource="newdsi">
SELECT *
FROM teamtwo
WHERE midate Between #parsedatetime(form.bdate)# AND #parsedatetime(form.edate)#
Order by midate ASC
</cfquery>


<cfif #form.level# eq 'Summary'>
<cfoutput>
<font face="Arial">
<hr align="left" width="740" size="3" noshade color="##660033">
<font size="+3">#form.level# Migration Report For #form.bdate# to #form.edate#</font><br>
<hr align="left" width="740" size="3" noshade color="##660033">
<br>
</cfoutput>
<cfoutput query="report">
<table width="740" border="0" align="left" cellpadding="0" cellspacing="0">
<hr>
<tr>
<td width="104"><strong><font size="2">Date Migrated</font></strong><br>
  <font size="2">#Dateformat(midate,"m/d/yyyy")#</font></td>
<td width="104"><strong><font size="2">Migration ID</font></strong><font size="2"><br>
  MI-000#ID#</font></td>
<td width="104"><strong><font size="2">Customer</font></strong><font size="2"><br>
    #lname#,#fname#</font></td>
<td width="133"><strong><font size="2">Type/Model</font></strong><font size="2"><br>
    #type#/#model#</font></td>
<td width="75"><strong><font size="2">Tech</font></strong><font size="2"><br>
    #tech#</font></td>
<td width="105"><strong><font size="2">Total Migration Time</font></strong><font size="2"><br>
    #tot# Mins </font></td>
</tr>

</table>

<p>&nbsp;</p>
<p>&nbsp;</p>
<table width="600"  border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td>
	<strong><font size="2">Comments:</font></strong><font size="2"><br>
	#Comments#
	</font></td>
  </tr>
</table>
</cfoutput>
<hr align="left" width="740" >
<cfelseif #form.level# eq 'Detail'>
<cfoutput>
<font face="Arial">
<hr align="left" width="680" size="3" noshade color="##660033">
<font size="+3">#form.level# Migration Report For #form.bdate# to #form.edate#</font><br>
<hr align="left" width="680" size="3" noshade color="##660033">
<br>
</cfoutput><cfoutput query="report">
<table width="680" border="0" align="left" cellpadding="0" cellspacing="0">
<hr>
<tr>
<td width="104"><strong><font size="2">Date Migrated</font></strong><br>
  <font size="2">#Dateformat(midate,"m/d/yyyy")#</font></td>
<td width="104"><strong><font size="2">Migration ID</font></strong><font size="2"><br>
  MI-000#ID#</font></td>
<td width="104"><strong><font size="2">Customer</font></strong><font size="2"><br>
    #lname#,#fname#</font></td>
<td width="133"><strong><font size="2">Type/Model</font></strong><font size="2"><br>
    #type#/#model#</font></td>
<td width="75"><strong><font size="2">Tech</font></strong><font size="2"><br>
    #tech#</font></td>
<td width="105"><strong><font size="2">Total Migration Time</font></strong><font size="2"><br>
    #tot# Mins </font></td>
</tr>

</table>

<p>&nbsp;</p>
<p>&nbsp;</p>
<table width="65%"  border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="35%"><strong><font size="2">Pre Extraction:</font></strong></td>
    <td width="14%">#preextract#&nbsp;</td>
    <td width="38%"><strong><font size="2">SMS Client:</font></strong></td>
	<td width="13%">#smsclient#&nbsp;</td>
  </tr>
  <tr>
    <td><strong><font size="2">Add to Groups:</font></strong></td>
    <td>#addtogroup#&nbsp;</td>
    <td><strong><font size="2">Group Removal:</font></strong></td>
	<td>#groupremoval#&nbsp;</td>
  </tr>
  <tr>
    <td><strong><font size="2">Extraction:</font></strong></td>
    <td>#extraction#&nbsp;</td>
    <td><strong><font size="2">User Login/Pass change:</font></strong></td>
	<td>#userlogin#&nbsp;</td>
  </tr>
  <tr>
    <td><strong><font size="2">Swap HW:</font></strong></td>
    <td>#swaphw#&nbsp;</td>
    <td><strong><font size="2">Post Migration:</font></strong></td>
	<td>#postmi#&nbsp;</td>
  </tr>
  <tr>
    <td><strong><font size="2">1st Boot:</font></strong></td>
    <td>#firstboot#&nbsp;</td>
    <td><strong><font size="2">User verification:</font></strong></td>
	<td>#userverifi#&nbsp;</td>
  </tr>
  <tr>
    <td><strong><font size="2">Injection:</font></strong></td>
    <td>#injection#&nbsp;</td>
    <td><strong><font size="2">Other:</font></strong></td>
	<td>#other#&nbsp;</td>
  </tr>
</table><br>
<table width="600"  border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td>
	<strong><font size="2">Comments:</font></strong><font size="2"><br>
	#Comments#
	</font></td>
  </tr>
</table>
</cfoutput>
<hr align="left" width="680" >
</cfif>

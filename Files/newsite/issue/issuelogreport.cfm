<cfquery name="report" datasource="DSI">
SELECT *
FROM "migration_issue"
WHERE opdate Between #parsedatetime(form.bdate)# AND #parsedatetime(form.edate)#
AND status='#form.stat#'
</cfquery>
<cfoutput>
<font face="Arial">
<hr align="left" width="625" size="3" noshade color="##660033">
<font size="+3">DSI Migration #Form.stat# Issues Log Report</font><br>
<hr align="left" width="625" size="3" noshade color="##660033">
<br>
</cfoutput>
<cfoutput query="report">
<table width="625" border="0" align="left" cellpadding="0" cellspacing="0">
<hr>
<tr>
<td width="156"><strong><font size="2">Date Opened:</font></strong><br>
  <font size="2">#Dateformat(opdate,"m/d/yyyy")#</font></td>
<td width="157"><strong><font size="2">Issue ID:</font></strong><font size="2"><br>
  DSI-000#IssueID#</font></td>
<td width="160"><strong><font size="2">Assignee:</font></strong><font size="2"><br>
    #Assignee#</font></td>
<td width="152"><strong><font size="2">Status:</font></strong><font size="2"><br>
    #Status#</font></td>
</tr></table>
<br>
<br>
<p>&nbsp;</p>
<table width="600"  border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td>
	<strong><font size="2">Description:</font></strong><font size="2"><br>
	#Description#
	</font></td>
  </tr>
</table>
<br>
<table width="600"  border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td>
	<strong><font size="2">Solution:</font></strong><font size="2"><br>
	#Solution#
    </font>	</td>
  </tr>
</table>
</cfoutput>
</font>
<hr align="left" width="625" >
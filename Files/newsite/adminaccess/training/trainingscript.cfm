<link href="../scripts/font.css" rel="stylesheet" type="text/css">
<title>Checking Training Date Requested</title>
<body class="burgundy">
<center><strong>

<cfoutput>
<cfquery name="checkt" datasource="newdsi">
SELECT DISTINCT tdate, tsession,count(*) as count
FROM master 
Where tdate is not null AND tdate=#parsedatetime(form.requireddate)# AND tsession='#form.requiredsession#'
group by tdate,tsession
</cfquery>

<cfif #checkt.count# gte 12>
No more seats available for #dateformat(form.requireddate,'m/d/yyyy')#
<a href="javascript:history.back(1)"><img src="../images/back.jpg" border="0"></a>

<cfelseif #checkt.count# lt 12>
<cfquery name="balupdate" datasource="newdsi">
UPDATE master SET tdate='#requireddate#', tsession='#requiredsession#', tbu='#requiredbu#' Where ID=#form.ID#
</cfquery>

<cfmail from="DSI XP Training Scheduler" to="Nancy.Bailey@ny.frb.org,Pamela.Andrews@ny.frb.org,Patricia.Gordon@ny.frb.org,Louis.Bryan@ny.frb.org"  subject="User #Form.name# has been Scheduled">
The following User has been Scheduled For An XP Training Session

Name: #form.name#
Function: #form.funcname#
Location: #form.loc#
Date and Session: #dateformat(form.requireddate,'m/d/yyyy')#  #form.requiredsession#
</cfmail>
Customer #form.name# has been Scheduled for XP Training 
<br><br>You may now
<br><br>
<a href=""><img src="../images/close.jpg" border="0"  class="burgundy" onClick="window.close()"></a>

</cfif>
</cfoutput>
</strong>
</center>
<!--Nancy.Bailey@ny.frb.org,Pamela.Andrews@ny.frb.org,Patricia.Gordon@ny.frb.org,Louis.Bryan@ny.frb.org   onClick="history.go(-1)-->
</body>
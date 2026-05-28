<link href="../scripts/font.css" rel="stylesheet" type="text/css">
<title>Checking Orientation Date Requested</title>
<body class="burgundy">
<center><strong>

<cfquery name="balupdate" datasource="newdsi">
UPDATE master SET odate='#form.requireddate#', obu='#form.requiredbu#',osession='#form.requiredsession#' Where ID=#form.ID#
</cfquery>
<cfmail from="DSI Orientation Scheduler" to="Nancy.Bailey@ny.frb.org,Pamela.Andrews@ny.frb.org,Patricia.Gordon@ny.frb.org,Louis.Bryan@ny.frb.org"  subject="User #Form.name# has been Scheduled">

The following User has been Scheduled For An Orientation Session

Name: #form.name#
Function: #form.funcname#
Location: #main.loc#
Date and Session: #dateformat(form.requireddate,'m/d/yyyy')#  #form.requiredsession#
</cfmail>
Customer #form.name# has been Scheduled for Orientation 
<br><br>You may now
<br><br>
<a href=""><img src="../images/close.jpg" border="0"  class="burgundy" onClick="window.close()"></a>

</cfoutput>
</strong>
</center>
<!--Nancy.Bailey@ny.frb.org,Pamela.Andrews@ny.frb.org,Patricia.Gordon@ny.frb.org,Louis.Bryan@ny.frb.org   onClick="history.go(-1)-->
</body>
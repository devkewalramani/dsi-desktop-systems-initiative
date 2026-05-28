<link href="../scripts/font.css" rel="stylesheet" type="text/css">
<title>Processing Request</title>

<body class="burgundy">
<center><strong>

<cfquery name="request" datasource="newdsi">
update master set reqstatus='y', requesteddate='#form.requireddate#', requestedtime='#requiredtime#' where id=#form.id#
</cfquery>


<cfoutput>
<cfmail from="Migration Reschedule Request" to="glen.radziminski@ny.frb.org,ny.dsi.migration.scheduler@ny.frb.org" subject="A migration reschedule is being requested">

Customer: #form.name#
Function: #form.funcname#
Currently Date and Time: #dateformat(form.midate,'m/d/yyyy')# (#timeformat(form.stime,'h:ss tt')#)
Requesting Date and Time: #form.requireddate# (#form.requiredtime#)

</cfmail>
<!--glen.radziminski@ny.frb.org,ny.dsi.migration.scheduler@ny.frb.org-->
Your request has been submitted.  Thank you
<br><br>You may now
<br><br>
<a href=""><img src="../images/close.jpg" border="0"  class="burgundy" onClick="window.close()"></a>

</cfoutput>
</strong>
</center>
</body>


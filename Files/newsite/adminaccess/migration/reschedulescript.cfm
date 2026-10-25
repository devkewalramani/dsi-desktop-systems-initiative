<link href="../scripts/font.css" rel="stylesheet" type="text/css">
<title>Checking Migration Date Requested</title>

<body class="burgundy">
<center><strong>

<cfoutput>

<cfquery name="getorginal" datasource="newdsi">
SELECT *
FROM master 
Where id=#form.id#
</cfquery>


<cfquery name="balupdate" datasource="newdsi">
UPDATE master SET actualdate='#form.requireddate#',stime='#form.requiredtime#',reqstatus='a' Where ID=#form.ID#
</cfquery>

<cfmail from="DSI Migration Rescheduler" to="user033@example.org,user027@example.org,user007@example.org,user034@example.org,user021@example.org,user013@example.org,user017@example.org" subject="#form.name# has been rescheduled for his/her migration">

Customer: #form.name#
Function: #getorginal.func#
Original Date and Time: #dateformat(getorginal.midate,'m/d/yyyy')# (#timeformat(form.stime,'h:ss tt')#)
New Date and Time: #form.requireddate# (#timeformat(form.requiredtime,'hh:mm tt')#)

</cfmail>
<!--user033@example.org,user027@example.org,user007@example.org ,reqstatus='a'-->
Customer #form.name# has been Rescheduled for Migration
<br><br>You may now
<br><br>
<a href=""><img src="../images/close.jpg" border="0"  class="burgundy" onClick="window.close()"></a>


</cfoutput>
</strong>
</center>
</body>


<link href="../scripts/font.css" rel="stylesheet" type="text/css">
<title>Checking Orientation Date Requested</title>
<body class="burgundy">
<center><strong>

<cfquery name="specialcase" datasource="newdsi">
Select func
from master
where id=#form.id#
</cfquery>

<cfoutput query="specialcase">
<cfif #func# eq 'Markets'>
<cfif #dateformat(form.requireddate,'dddd')# eq 'Monday'>
<cfset odatecheck=1>
<cfelseif #dateformat(form.requireddate, 'dddd')# eq 'Tuesday'>
<cfset odatecheck=1>
<cfelseif #dateformat(form.requireddate, 'dddd')# eq 'Wednesday'>
<cfset odatecheck=1>
<cfelseif #dateformat(form.requireddate, 'dddd')# eq 'Thursday'>
<cfset odatecheck=1>
<cfelseif #dateformat(form.requireddate, 'dddd')# eq 'Friday'>
<cfset odatecheck=1>
<cfelseif #dateformat(form.requireddate, 'dddd')# eq 'Saturday'>
<cfset odatecheck=0>
<cfelseif #dateformat(form.requireddate, 'dddd')# eq 'Sunday'>
<cfset odatecheck=0>
</cfif>
<cfelse>
<cfif #dateformat(form.requireddate,'dddd')# eq 'Monday'>
<cfset odatecheck=0>
<cfelseif #dateformat(form.requireddate, 'dddd')# eq 'Tuesday'>
<cfset odatecheck=1>
<cfelseif #dateformat(form.requireddate, 'dddd')# eq 'Wednesday'>
<cfset odatecheck=1>
<cfelseif #dateformat(form.requireddate, 'dddd')# eq 'Thursday'>
<cfset odatecheck=1>
<cfelseif #dateformat(form.requireddate, 'dddd')# eq 'Friday'>
<cfset odatecheck=0>
<cfelseif #dateformat(form.requireddate, 'dddd')# eq 'Saturday'>
<cfset odatecheck=0>
<cfelseif #dateformat(form.requireddate, 'dddd')# eq 'Sunday'>
<cfset odatecheck=0>
</cfif>
</cfif>
</cfoutput>

<cfoutput>

<cfquery name="checko" datasource="newdsi">
SELECT DISTINCT odate, osession, count(*) as count
FROM master 
Where odate is not null AND odate=#parsedatetime(form.requireddate)# AND osession='#form.requiredsession#'
group by odate,osession
</cfquery>

<cfquery name="main" datasource="newdsi">
SELECT *
FROM master 
Where id=#form.id#
</cfquery>

<cfif #main.actualdate# neq "">
<cfset operiod=#dateformat(main.actualdate,'m/d/yyyy')#-14>
<cfelseif #main.actualdate# eq "">
<cfset operiod=#dateformat(now(),'m/d/yyyy')#>
</cfif>

<cfif #odatecheck# eq 0>
Orientation Sessions Are Offered on Tuesday, Wednesday, and Thursday only<br>
#dateformat(form.requireddate,'m/d/yyyy')# is a #dateformat(form.requireddate,'dddd')#
<br><br>
<a href="javascript:history.back(1)"><img src="../images/back.jpg" border="0"></a>

<cfelseif #dateformat(main.actualdate,'m/d/yyyy')# lte #dateformat(form.requireddate,'m/d/yyyy')# and #main.actualdate# neq "">
The Orientation Date must be before the Migration Date
<br><br>
<a href="javascript:history.back(1)"><img src="../images/back.jpg" border="0"></a>

<cfelseif #dateformat(form.requireddate,'m/d/yyyy')# gte #dateformat(operiod,'m/d/yyyy')# and #dateformat(form.requireddate,'m/d/yyyy')# lte #dateformat(main.actualdate,'m/d/yyyy')# >
Orientation must be scheduled two weeks before the user is scheduled to migrate
<br><br>
<a href="javascript:history.back(1)"><img src="../images/back.jpg" border="0"></a>

<cfelseif #dateformat(form.requireddate,'m/d/yyyy')# eq #dateformat(Now(),'m/d/yyyy')#>
Invalid Date, Today is #dateformat(form.requireddate,'m/d/yyyy')#
<br><br>
<a href="javascript:history.back(1)"><img src="../images/back.jpg" border="0"></a>

<cfelseif #dateformat(form.requireddate,'m/d/yyyy')# lt #dateformat(Now(),'m/d/yyyy')#>
You cannot schedule Orientation in the past
<br><br>
<a href="javascript:history.back(1)"><img src="../images/back.jpg" border="0"></a>

<cfelseif #dateformat(form.requireddate,'m/d/yyyy')# gte #dateformat(now(),'m/d/yyyy')# AND #checko.count# gte 20>
No More Seats available for this session
<br><br>
<a href="javascript:history.back(1)"><img src="../images/back.jpg" border="0"></a>

<cfelseif #dateformat(form.requireddate,'m/d/yyyy')# gte #dateformat(NOW(),'m/d/yyyy')# AND #checko.count# lt 20>
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

</cfif>
</cfoutput>
</strong>
</center>
<!--Nancy.Bailey@ny.frb.org,Pamela.Andrews@ny.frb.org,Patricia.Gordon@ny.frb.org,Louis.Bryan@ny.frb.org   onClick="history.go(-1)-->
</body>
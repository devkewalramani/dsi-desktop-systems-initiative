<cfset futuredate='2/1/2005'>
<cfset #dateformat(futuredate,'m/d/yyyy')#>

<cfif dateformat(now(),'dddd') eq 'Monday'>
<cfset firstavailabledate=dateformat(now(),'m/d/yyyy')+21>
<cfelseif dateformat(now(),'dddd') eq 'Tuesday'>
<cfset firstavailabledate=dateformat(now(),'m/d/yyyy')+20>
<cfelseif dateformat(now(),'dddd') eq 'Wednesday'>
<cfset firstavailabledate=dateformat(now(),'m/d/yyyy')+19>
<cfelseif dateformat(now(),'dddd') eq 'Thursday'>
<cfset firstavailabledate=dateformat(now(),'m/d/yyyy')+18>
<cfelseif dateformat(now(),'dddd') eq 'Friday'>
<cfset firstavailabledate=dateformat(now(),'m/d/yyyy')+17>
<cfelseif dateformat(now(),'dddd') eq 'Saturday'>
<cfset firstavailabledate=dateformat(now(),'m/d/yyyy')+16>
<cfelseif dateformat(now(),'dddd') eq 'Sunday'>
<cfset firstavailabledate=dateformat(now(),'m/d/yyyy')+15>
</cfif>
<cfset #firstavailabledate#=#dateformat(firstavailabledate,'m/d/yyyy')#>

<cfquery name="checkm" datasource="DSI">
SELECT DISTINCTROW actualdate,count(*) as count
FROM master 
Where actualdate <> null AND actualdate Between #parsedatetime(firstavailabledate)# AND #parsedatetime(futuredate)#
group by actualdate
</cfquery>

<cfquery name="checko" datasource="DSI">
SELECT DISTINCTROW odate, osession,count(*) as count
FROM master 
Where odate <> null AND actualdate Between #parsedatetime(firstavailabledate)# AND #parsedatetime(futuredate)#
group by odate,osession
</cfquery>

<cfquery name="checkt" datasource="DSI">
SELECT DISTINCTROW tdate, tsession,count(*) as count
FROM master 
Where odate <> null AND actualdate Between #parsedatetime(firstavailabledate)# AND #parsedatetime(futuredate)#
group by tdate,tsession
</cfquery>

<style type="text/css">
<!--
.style1 {
	color: #FF0000;
	font-weight: bold;
	font-size: 18px;
}
-->
</style>

<cfoutput>
<!--------------------------------------FIRST IF-------------------------------------------------------->
<cfif #dateformat(form.midate,'m/d/yyyy')# neq #dateformat(form.actual,'m/d/yyyy')#>
<!--------------------------------------FIRST IF-------------------------------------------------------->
<cfif #dateformat(form.actual,'m/d/yyyy')# gte #dateformat(firstavailabledate,'m/d/yyyy')# AND #checkm.count# lt 24>
<cfquery name="balupdate" datasource="DSI">
UPDATE master SET loc='#form.loc#', flr='#form.flr#', office='#form.office#', wrkhrs='#form.wrkhrs#', blkberry='#form.blkberry#', mtype='#form.mtype#', dispo='#form.dispo#', itemdesc='#form.desc#', serial='#form.serial#', replacemodel='#form.model#', status='#form.status#', midate='#form.actual#', actualdate='#form.actual#', stime='#form.time#' Where ID=#form.ID#
</cfquery>
<cfmail from="DSI Webpage Scheduler" to="dev.kewalramani@ny.frb.org"  subject="User #Form.name# has been Scheduled">
Today's Date: dateformat(now(),'m/d/yyyy')
The following User has been Scheduled

Information

Name: #form.name#
Date and Time: #dateformat(form.actual,'d/m/yyyy')#  #timeformat(form.time,'h:mm tt')#
</cfmail>
<span class="style1">Customer #form.name# Updated and Migration Scheduled</span>
<br>
<!----------------------------------------CHECK ODATE------------------------------------------->
<cfif #dateformat(form.odate,'dddd')# eq 'Monday'>
<cfset odatecheck=0>
<cfelseif #dateformat(form.odate, 'dddd')# eq 'Tuesday'>
<cfset odatecheck=1>
<cfelseif #dateformat(form.odate, 'dddd')# eq 'Wednesday'>
<cfset odatecheck=1>
<cfelseif #dateformat(form.odate, 'dddd')# eq 'Thursday'>
<cfset odatecheck=1>
<cfelseif #dateformat(form.odate, 'dddd')# eq 'Friday'>
<cfset odatecheck=0>
<cfelseif #dateformat(form.odate, 'dddd')# eq 'Saturday'>
<cfset odatecheck=0>
<cfelseif #dateformat(form.odate, 'dddd')# eq 'Sunday'>
<cfset odatecheck=0>
</cfif>

<cfif #form.osession# eq "" AND #form.odate# neq "">
<meta http-equiv="refresh" content="0;URL=functiondata2.cfm?ID=#form.ID#&error=7&name=#form.name#&actual=#form.actual#&odate=#form.odate#&osession=#form.osession#">
<cfelseif #dateformat(form.actual,'m/d/yyyy')# lte #dateformat(form.odate,'m/d/yyyy')#>
<meta http-equiv="refresh" content="0;URL=functiondata2.cfm?ID=#form.ID#&error=6&name=#form.name#&actual=#form.actual#&odate=#form.odate#&osession=#form.osession#">
<cfexit>
<cfelseif #odatecheck# eq 0>
<meta http-equiv="refresh" content="0;URL=functiondata2.cfm?ID=#form.ID#&error=8&name=#form.name#&actual=#form.actual#&odate=#form.odate#&osession=#form.osession#">
</cfif>
<!---------------------------------------------AM---------------------------------------------------->
<cfif #dateformat(form.oldodate,'m/d/yyyy')# neq #dateformat(form.odate,'m/d/yyyy')# AND #form.osession# eq 'AM'>
<cfif #dateformat(form.odate,'m/d/yyyy')# gte #dateformat(NOW(),'m/d/yyyy')# AND #checko.count# lt 20>
<cfquery name="balupdate" datasource="DSI">
UPDATE master SET loc='#form.loc#', flr='#form.flr#', office='#form.office#', wrkhrs='#form.wrkhrs#', blkberry='#form.blkberry#', mtype='#form.mtype#', dispo='#form.dispo#', itemdesc='#form.desc#', serial='#form.serial#', replacemodel='#form.model#', status='#form.status#',odate='#form.odate#', osession='#form.osession#' Where ID=#form.ID#
</cfquery>
<cfmail from="DSI Webpage Scheduler" to="dev.kewalramani@ny.frb.org"  subject="User #Form.name# has been Scheduled">
Today's Date: dateformat(now(),'m/d/yyyy')
The following User has been Scheduled For An Orientation Session

Information

Name: #form.name#
Date and Session: #dateformat(form.odate,'d/m/yyyy')#  #form.osession#
</cfmail>
<span class="style1">Customer #form.name# Updated and Orientation Scheduled</span>
<meta http-equiv="refresh" content="0;URL=functiondata.cfm?functionname=#form.funcname#">
<cfexit>
<cfelseif #dateformat(form.odate,'m/d/yyyy')# lt #dateformat(Now(),'m/d/yyyy')# AND #checko.count# lt 20>
<meta http-equiv="refresh" content="0;URL=functiondata2.cfm?ID=#form.ID#&error=3&name=#form.name#&actual=#form.actual#&odate=#form.odate#&osession=#form.osession#">
<cfexit>
<cfelseif #dateformat(form.odate,'m/d/yyyy')# gte #dateformat(now(),'m/d/yyyy')# AND #checko.count# gte 20>
<meta http-equiv="refresh" content="0;URL=functiondata2.cfm?ID=#form.ID#&error=4&name=#form.name#&actual=#form.actual#&odate=#form.odate#&osession=#form.osession#">
<cfexit>
<cfelseif #dateformat(form.actual,'m/d/yyyy')# lte #dateformat(form.odate,'m/d/yyyy')#>
<meta http-equiv="refresh" content="0;URL=functiondata2.cfm?ID=#form.ID#&error=5&name=#form.name#&actual=#form.actual#&odate=#form.odate#&osession=#form.osession#">
<cfexit>
</cfif>
</cfif>
<!---------------------------------------------PM---------------------------------------------------->
<cfif #dateformat(form.oldodate,'m/d/yyyy')# neq #dateformat(form.odate,'m/d/yyyy')# AND #form.osession# eq 'PM'>
<cfif #dateformat(form.odate,'m/d/yyyy')# gte #dateformat(NOW(),'m/d/yyyy')# AND #checko.count# lt 20>
<cfquery name="balupdate" datasource="DSI">
UPDATE master SET UPDATE master SET loc='#form.loc#', flr='#form.flr#', office='#form.office#', wrkhrs='#form.wrkhrs#', blkberry='#form.blkberry#', mtype='#form.mtype#', dispo='#form.dispo#', itemdesc='#form.desc#', serial='#form.serial#', replacemodel='#form.model#', status='#form.status#',odate=#form.odate#,osession=#form.osession# Where ID=#form.ID#
</cfquery>
<cfmail from="DSI Webpage Scheduler" to="dev.kewalramani@ny.frb.org"  subject="User #Form.name# has been Scheduled">
Today's Date: dateformat(now(),'m/d/yyyy')
The following User has been Scheduled For An Orientation Session

Information

Name: #form.name#
Date and Session: #dateformat(form.odate,'d/m/yyyy')#  #form.osession#
</cfmail>
<span class="style1">Customer #form.name# Updated and Orientation Scheduled</span>
<br>
<span class="style1">Refeshing Page...Please wait</span>
<meta http-equiv="refresh" content="0;URL=functiondata.cfm?functionname=#form.funcname#">
<cfexit>
<cfelseif #dateformat(form.odate,'m/d/yyyy')# lt #dateformat(Now(),'m/d/yyyy')# AND #checko.count# lt 20>
<meta http-equiv="refresh" content="0;URL=functiondata2.cfm?ID=#form.ID#&error=3&name=#form.name#&actual=#form.actual#&odate=#form.odate#&osession=#form.osession#">
<cfexit>
<cfelseif #dateformat(form.odate,'m/d/yyyy')# gte #dateformat(now(),'m/d/yyyy')# AND #checko.count# gte 20>
<meta http-equiv="refresh" content="0;URL=functiondata2.cfm?ID=#form.ID#&error=4&name=#form.name#&actual=#form.actual#&odate=#form.odate#&osession=#form.osession#">
<cfexit>
<cfelseif #dateformat(form.actual,'m/d/yyyy')# lte #dateformat(form.odate,'m/d/yyyy')#>
<meta http-equiv="refresh" content="0;URL=functiondata2.cfm?ID=#form.ID#&error=5&name=#form.name#&actual=#form.actual#&odate=#form.odate#&osession=#form.osession#">
<cfexit>
</cfif>
</cfif>
<!----------------------------------------END CHECK ODATE------------------------------------------->
<!----------------------------------------CHECK TDATE------------------------------------------->
<cfif #dateformat(form.tdate,'dddd')# eq 'Monday'>
<cfset tdatecheck=0>
<cfelseif #dateformat(form.tdate, 'dddd')# eq 'Tuesday'>
<cfset tdatecheck=1>
<cfelseif #dateformat(form.tdate, 'dddd')# eq 'Wednesday'>
<cfset tdatecheck=0>
<cfelseif #dateformat(form.tdate, 'dddd')# eq 'Thursday'>
<cfset tdatecheck=1>
<cfelseif #dateformat(form.tdate, 'dddd')# eq 'Friday'>
<cfset tdatecheck=0>
<cfelseif #dateformat(form.tdate, 'dddd')# eq 'Saturday'>
<cfset tdatecheck=0>
<cfelseif #dateformat(form.tdate, 'dddd')# eq 'Sunday'>
<cfset tdatecheck=0>
</cfif>


<cfif #form.tsession# eq "" and #form.tdate# neq "">
<meta http-equiv="refresh" content="0;URL=functiondata2.cfm?ID=#form.ID#&error=9&name=#form.name#&actual=#form.actual#&tdate=#form.tdate#&tsession=#form.tsession#">
<cfexit>
<cfelseif #tdatecheck# eq 0>
<meta http-equiv="refresh" content="0;URL=functiondata2.cfm?ID=#form.ID#&error=10&name=#form.name#&actual=#form.actual#&tdate=#form.tdate#&tsession=#form.tsession#">
<cfexit>
</cfif>
<!-----------------------------------------------------AM------------------------------->
<cfif #dateformat(form.oldtdate,'m/d/yyyy')# neq #dateformat(form.tdate,'m/d/yyyy')# AND #form.tsession# eq 'AM'>
<cfif #dateformat(form.tdate,'m/d/yyyy')# gte #dateformat(NOW(),'m/d/yyyy')# AND #checkt.count# lt 12>
<cfquery name="balupdate" datasource="DSI">
UPDATE master SET loc='#form.loc#', flr='#form.flr#', office='#form.office#', wrkhrs='#form.wrkhrs#', blkberry='#form.blkberry#', mtype='#form.mtype#', dispo='#form.dispo#', itemdesc='#form.desc#', serial='#form.serial#', replacemodel='#form.model#', status='#form.status#',tdate='#form.tdate#', tsession='#form.tsession#' Where ID=#form.ID#
</cfquery>
<cfmail from="DSI Webpage Scheduler" to="dev.kewalramani@ny.frb.org"  subject="User #Form.name# has been Scheduled">
Today's Date: dateformat(now(),'m/d/yyyy')
The following User has been Scheduled For An Training Session

Information

Name: #form.name#
Date and Session: #dateformat(form.tdate,'d/m/yyyy')#  #form.tsession#
</cfmail>
<span class="style1">Customer #form.name# Updated and Training Scheduled</span>
<br>
<span class="style1">Refeshing Page...Please wait</span>
<meta http-equiv="refresh" content="0;URL=functiondata.cfm?functionname=#form.funcname#">
<cfexit>
<cfelseif #dateformat(form.tdate,'m/d/yyyy')# lt #dateformat(Now(),'m/d/yyyy')# AND #checkt.count# lt 12>
<meta http-equiv="refresh" content="0;URL=functiondata2.cfm?ID=#form.ID#&error=11&name=#form.name#&actual=#form.actual#&tdate=#form.tdate#&tsession=#form.tsession#">
<cfexit>
<cfelseif #dateformat(form.tdate,'m/d/yyyy')# gte #dateformat(now(),'m/d/yyyy')# AND #checkt.count# gte 12>
<meta http-equiv="refresh" content="0;URL=functiondata2.cfm?ID=#form.ID#&error=12&name=#form.name#&actual=#form.actual#&tdate=#form.tdate#&tsession=#form.tsession#">
<cfexit>
</cfif>
</cfif>
<!---------------------------------------------PM------------------------------------------------->
<cfif #dateformat(form.oldtdate,'m/d/yyyy')# neq #dateformat(form.tdate,'m/d/yyyy')# AND #form.tsession# eq 'PM'>
<cfif #dateformat(form.tdate,'m/d/yyyy')# gte #dateformat(NOW(),'m/d/yyyy')# AND #checkt.count# lt 12>
<cfquery name="balupdate" datasource="DSI">
UPDATE master SET loc='#form.loc#', flr='#form.flr#', office='#form.office#', wrkhrs='#form.wrkhrs#', blkberry='#form.blkberry#', mtype='#form.mtype#', dispo='#form.dispo#', itemdesc='#form.desc#', serial='#form.serial#', replacemodel='#form.model#', status='#form.status#',tdate='#form.tdate#', tsession='#form.tsession#' Where ID=#form.ID#
</cfquery>
<cfmail from="DSI Webpage Scheduler" to="dev.kewalramani@ny.frb.org"  subject="User #Form.name# has been Scheduled">
Today's Date: dateformat(now(),'m/d/yyyy')
The following User has been Scheduled For An Training Session

Information

Name: #form.name#
Date and Session: #dateformat(form.tdate,'d/m/yyyy')#  #form.tsession#
</cfmail>
<span class="style1">Customer #form.name# Updated and Training Scheduled</span>
<br>
<span class="style1">Refeshing Page...Please wait</span>
<meta http-equiv="refresh" content="0;URL=functiondata.cfm?functionname=#form.funcname#">
<cfexit>
<cfelseif #dateformat(form.tdate,'m/d/yyyy')# lt #dateformat(Now(),'m/d/yyyy')# AND #checkt.count# lt 12>
<meta http-equiv="refresh" content="0;URL=functiondata2.cfm?ID=#form.ID#&error=11&name=#form.name#&actual=#form.actual#&tdate=#form.tdate#&tsession=#form.tsession#">
<cfexit>
<cfelseif #dateformat(form.tdate,'m/d/yyyy')# gte #dateformat(now(),'m/d/yyyy')# AND #checkt.count# gte 12>
<meta http-equiv="refresh" content="0;URL=functiondata2.cfm?ID=#form.ID#&error=12&name=#form.name#&actual=#form.actual#&tdate=#form.tdate#&tsession=#form.tsession#">
<cfexit>
</cfif>
</cfif>
<!----------------------------------------END CHECK TDATE------------------------------------------->
<span class="style1">Refeshing Page...Please wait</span>
<br>
<meta http-equiv="refresh" content="0;URL=functiondata.cfm?functionname=#form.funcname#">
<cfexit>

<cfelseif #dateformat(form.actual,'m/d/yyyy')# lt #dateformat(firstavailabledate,'m/d/yyyy')# AND #checkm.count# lt 24>
<meta http-equiv="refresh" content="0;URL=functiondata2.cfm?ID=#form.ID#&error=1&name=#form.name#&actual=#form.actual#&odate=#form.odate#&osession=#form.osession#">
<cfexit>

<cfelseif #dateformat(form.actual,'m/d/yyyy')# gte #dateformat(firstavailabledate,'m/d/yyyy')# AND #checkm.count# gte 24>
<meta http-equiv="refresh" content="0;URL=functiondata2.cfm?ID=#form.ID#&error=2&name=#form.name#&actual=#form.actual#&odate=#form.odate#&osession=#form.osession#">
<cfexit>

<cfelseif #dateformat(form.actual,'m/d/yyyy')# lte #dateformat(form.odate,'m/d/yyyy')# AND #form.actual# neq "" AND #form.odate# neq "">
<meta http-equiv="refresh" content="0;URL=functiondata2.cfm?ID=#form.ID#&error=6&name=#form.name#&actual=#form.actual#&odate=#form.odate#&osession=#form.osession#">
<cfexit>
</cfif>
</cfif>
<!----------------------------------------SECOND IF------------------------------------------------------>
<cfif #dateformat(form.midate,'m/d/yyyy')# eq #dateformat(form.actual,'m/d/yyyy')#>
<!----------------------------------------SECOND IF------------------------------------------------------>
<cfif #dateformat(form.odate,'dddd')# eq 'Monday'>
<cfset odatecheck=0>
<cfelseif #dateformat(form.odate, 'dddd')# eq 'Tuesday'>
<cfset odatecheck=1>
<cfelseif #dateformat(form.odate, 'dddd')# eq 'Wednesday'>
<cfset odatecheck=1>
<cfelseif #dateformat(form.odate, 'dddd')# eq 'Thursday'>
<cfset odatecheck=1>
<cfelseif #dateformat(form.odate, 'dddd')# eq 'Friday'>
<cfset odatecheck=0>
<cfelseif #dateformat(form.odate, 'dddd')# eq 'Saturday'>
<cfset odatecheck=0>
<cfelseif #dateformat(form.odate, 'dddd')# eq 'Sunday'>
<cfset odatecheck=0>
</cfif>


<cfif #form.osession# eq "" and #form.odate# neq "">
<meta http-equiv="refresh" content="0;URL=functiondata2.cfm?ID=#form.ID#&error=7&name=#form.name#&actual=#form.actual#&odate=#form.odate#&osession=#form.osession#">
<cfexit>
<cfelseif #dateformat(form.actual,'m/d/yyyy')# lte #dateformat(form.odate,'m/d/yyyy')#>
<meta http-equiv="refresh" content="0;URL=functiondata2.cfm?ID=#form.ID#&error=6&name=#form.name#&actual=#form.actual#&odate=#form.odate#&osession=#form.osession#">
<cfexit>
<cfelseif #odatecheck# eq 0>
<meta http-equiv="refresh" content="0;URL=functiondata2.cfm?ID=#form.ID#&error=8&name=#form.name#&actual=#form.actual#&odate=#form.odate#&osession=#form.osession#">
</cfif>

<cfif #dateformat(form.oldodate,'m/d/yyyy')# neq #dateformat(form.odate,'m/d/yyyy')# AND #form.osession# eq 'AM'>
<cfif #dateformat(form.odate,'m/d/yyyy')# gte #dateformat(NOW(),'m/d/yyyy')# AND #checko.count# lt 20>
<cfquery name="balupdate" datasource="DSI">
UPDATE master SET loc='#form.loc#', flr='#form.flr#', office='#form.office#', wrkhrs='#form.wrkhrs#', blkberry='#form.blkberry#', mtype='#form.mtype#', dispo='#form.dispo#', itemdesc='#form.desc#', serial='#form.serial#', replacemodel='#form.model#', status='#form.status#',odate='#form.odate#', osession='#form.osession#' Where ID=#form.ID#
</cfquery>
<cfmail from="DSI Webpage Scheduler" to="dev.kewalramani@ny.frb.org"  subject="User #Form.name# has been Scheduled">
Today's Date: dateformat(now(),'m/d/yyyy')
The following User has been Scheduled For An Orientation Session

Information

Name: #form.name#
Date and Session: #dateformat(form.odate,'d/m/yyyy')#  #form.osession#
</cfmail>
<span class="style1">Customer #form.name# Updated and Orientation Scheduled</span>
<!----------------------------------------CHECK TDATE------------------------------------------->
<cfif #dateformat(form.tdate,'dddd')# eq 'Monday'>
<cfset tdatecheck=0>
<cfelseif #dateformat(form.tdate, 'dddd')# eq 'Tuesday'>
<cfset tdatecheck=1>
<cfelseif #dateformat(form.tdate, 'dddd')# eq 'Wednesday'>
<cfset tdatecheck=0>
<cfelseif #dateformat(form.tdate, 'dddd')# eq 'Thursday'>
<cfset tdatecheck=1>
<cfelseif #dateformat(form.tdate, 'dddd')# eq 'Friday'>
<cfset tdatecheck=0>
<cfelseif #dateformat(form.tdate, 'dddd')# eq 'Saturday'>
<cfset tdatecheck=0>
<cfelseif #dateformat(form.tdate, 'dddd')# eq 'Sunday'>
<cfset tdatecheck=0>
</cfif>

<cfif #form.tsession# eq ""AND #form.tdate# neq "">
<meta http-equiv="refresh" content="0;URL=functiondata2.cfm?ID=#form.ID#&error=9&name=#form.name#&actual=#form.actual#&tdate=#form.tdate#&tsession=#form.tsession#">
<cfelseif #tdatecheck# eq 0>
<meta http-equiv="refresh" content="0;URL=functiondata2.cfm?ID=#form.ID#&error=10&name=#form.name#&actual=#form.actual#&tdate=#form.tdate#&tsession=#form.tsession#">
</cfif>
<!-----------------------------------------------------AM------------------------------->
<cfif #dateformat(form.oldtdate,'m/d/yyyy')# neq #dateformat(form.tdate,'m/d/yyyy')# AND #form.tsession# eq 'AM'>
<cfif #dateformat(form.tdate,'m/d/yyyy')# gte #dateformat(NOW(),'m/d/yyyy')# AND #checkt.count# lt 12>
<cfquery name="balupdate" datasource="DSI">
UPDATE master SET loc='#form.loc#', flr='#form.flr#', office='#form.office#', wrkhrs='#form.wrkhrs#', blkberry='#form.blkberry#', mtype='#form.mtype#', dispo='#form.dispo#', itemdesc='#form.desc#', serial='#form.serial#', replacemodel='#form.model#', status='#form.status#',tdate='#form.tdate#', tsession='#form.tsession#' Where ID=#form.ID#
</cfquery>
<cfmail from="DSI Webpage Scheduler" to="dev.kewalramani@ny.frb.org"  subject="User #Form.name# has been Scheduled">
Today's Date: dateformat(now(),'m/d/yyyy')
The following User has been Scheduled For An Training Session

Information

Name: #form.name#
Date and Session: #dateformat(form.tdate,'d/m/yyyy')#  #form.tsession#
</cfmail>
<span class="style1">Customer #form.name# Updated and Training Scheduled</span>
<br>
<span class="style1">Refeshing Page...Please wait</span>
<meta http-equiv="refresh" content="0;URL=functiondata.cfm?functionname=#form.funcname#">
<cfexit>
<cfelseif #dateformat(form.tdate,'m/d/yyyy')# lt #dateformat(Now(),'m/d/yyyy')# AND #checkt.count# lt 12>
<meta http-equiv="refresh" content="0;URL=functiondata2.cfm?ID=#form.ID#&error=11&name=#form.name#&actual=#form.actual#&tdate=#form.tdate#&tsession=#form.tsession#">
<cfexit>
<cfelseif #dateformat(form.tdate,'m/d/yyyy')# gte #dateformat(now(),'m/d/yyyy')# AND #checkt.count# gte 12>
<meta http-equiv="refresh" content="0;URL=functiondata2.cfm?ID=#form.ID#&error=12&name=#form.name#&actual=#form.actual#&tdate=#form.tdate#&tsession=#form.tsession#">
<cfexit>
</cfif>
</cfif>
<!---------------------------------------------PM------------------------------------------------->
<cfif #dateformat(form.oldtdate,'m/d/yyyy')# neq #dateformat(form.tdate,'m/d/yyyy')# AND #form.tsession# eq 'PM'>
<cfif #dateformat(form.tdate,'m/d/yyyy')# gte #dateformat(NOW(),'m/d/yyyy')# AND #checkt.count# lt 12>
<cfquery name="balupdate" datasource="DSI">
UPDATE master SET loc='#form.loc#', flr='#form.flr#', office='#form.office#', wrkhrs='#form.wrkhrs#', blkberry='#form.blkberry#', mtype='#form.mtype#', dispo='#form.dispo#', itemdesc='#form.desc#', serial='#form.serial#', replacemodel='#form.model#', status='#form.status#',tdate='#form.tdate#', tsession='#form.tsession#' Where ID=#form.ID#
</cfquery>
<cfmail from="DSI Webpage Scheduler" to="dev.kewalramani@ny.frb.org"  subject="User #Form.name# has been Scheduled">
Today's Date: dateformat(now(),'m/d/yyyy')
The following User has been Scheduled For An Training Session

Information

Name: #form.name#
Date and Session: #dateformat(form.tdate,'d/m/yyyy')#  #form.tsession#
</cfmail>
<span class="style1">Customer #form.name# Updated and Training Scheduled</span>
<br>
<span class="style1">Refeshing Page...Please wait</span>
<meta http-equiv="refresh" content="0;URL=functiondata.cfm?functionname=#form.funcname#">
<cfexit>
<cfelseif #dateformat(form.tdate,'m/d/yyyy')# lt #dateformat(Now(),'m/d/yyyy')# AND #checkt.count# lt 12>
<meta http-equiv="refresh" content="0;URL=functiondata2.cfm?ID=#form.ID#&error=11&name=#form.name#&actual=#form.actual#&tdate=#form.tdate#&tsession=#form.tsession#">
<cfexit>
<cfelseif #dateformat(form.tdate,'m/d/yyyy')# gte #dateformat(now(),'m/d/yyyy')# AND #checkt.count# gte 12>
<meta http-equiv="refresh" content="0;URL=functiondata2.cfm?ID=#form.ID#&error=12&name=#form.name#&actual=#form.actual#&tdate=#form.tdate#&tsession=#form.tsession#">
<cfexit>
</cfif>
</cfif>
<!----------------------------------------END CHECK TDATE------------------------------------------->
<br>
<span class="style1">Refeshing Page...Please wait</span>
<meta http-equiv="refresh" content="0;URL=functiondata.cfm?functionname=#form.funcname#">
<cfexit>
<cfelseif #dateformat(form.odate,'m/d/yyyy')# lt #dateformat(Now(),'m/d/yyyy')# AND #checko.count# lt 20>
<meta http-equiv="refresh" content="0;URL=functiondata2.cfm?ID=#form.ID#&error=3&name=#form.name#&actual=#form.actual#&odate=#form.odate#&osession=#form.osession#">
<cfexit>
<cfelseif #dateformat(form.odate,'m/d/yyyy')# gte #dateformat(now(),'m/d/yyyy')# AND #checko.count# gte 20>
<meta http-equiv="refresh" content="0;URL=functiondata2.cfm?ID=#form.ID#&error=4&name=#form.name#&actual=#form.actual#&odate=#form.odate#&osession=#form.osession#">
<cfexit>
</cfif>
</cfif>
<!------------------------------------------------PM---------------------------------------------->
<cfif #dateformat(form.oldodate,'m/d/yyyy')# neq #dateformat(form.odate,'m/d/yyyy')# AND #form.osession# eq 'PM'>
<cfif #dateformat(form.odate,'m/d/yyyy')# gte #dateformat(NOW(),'m/d/yyyy')# AND #checko.count# lt 20>
<cfquery name="balupdate" datasource="DSI">
UPDATE master SET UPDATE master SET loc='#form.loc#', flr='#form.flr#', office='#form.office#', wrkhrs='#form.wrkhrs#', blkberry='#form.blkberry#', mtype='#form.mtype#', dispo='#form.dispo#', itemdesc='#form.desc#', serial='#form.serial#', replacemodel='#form.model#', status='#form.status#',odate=#form.odate#,osession=#form.osession# Where ID=#form.ID#
</cfquery>
<cfmail from="DSI Webpage Scheduler" to="dev.kewalramani@ny.frb.org"  subject="User #Form.name# has been Scheduled">
Today's Date: dateformat(now(),'m/d/yyyy')
The following User has been Scheduled For An Orientation Session

Information

Name: #form.name#
Date and Session: #dateformat(form.odate,'d/m/yyyy')#  #form.osession#
</cfmail>
<span class="style1">Customer #form.name# Updated and Orientation Scheduled</span>

<!----------------------------------------CHECK TDATE------------------------------------------->
<cfif #dateformat(form.tdate,'dddd')# eq 'Monday'>
<cfset tdatecheck=0>
<cfelseif #dateformat(form.tdate, 'dddd')# eq 'Tuesday'>
<cfset tdatecheck=1>
<cfelseif #dateformat(form.tdate, 'dddd')# eq 'Wednesday'>
<cfset tdatecheck=0>
<cfelseif #dateformat(form.tdate, 'dddd')# eq 'Thursday'>
<cfset tdatecheck=1>
<cfelseif #dateformat(form.tdate, 'dddd')# eq 'Friday'>
<cfset tdatecheck=0>
<cfelseif #dateformat(form.tdate, 'dddd')# eq 'Saturday'>
<cfset tdatecheck=0>
<cfelseif #dateformat(form.tdate, 'dddd')# eq 'Sunday'>
<cfset tdatecheck=0>
</cfif>


<cfif #form.tsession# eq "" AND #form.tdate# neq "">
<meta http-equiv="refresh" content="0;URL=functiondata2.cfm?ID=#form.ID#&error=9&name=#form.name#&actual=#form.actual#&tdate=#form.tdate#&tsession=#form.tsession#">
<cfelseif #tdatecheck# eq 0>
<meta http-equiv="refresh" content="0;URL=functiondata2.cfm?ID=#form.ID#&error=10&name=#form.name#&actual=#form.actual#&tdate=#form.tdate#&tsession=#form.tsession#">
</cfif>
<!-------------------------------------------------AM-------------------------------------->
<cfif #dateformat(form.oldtdate,'m/d/yyyy')# neq #dateformat(form.tdate,'m/d/yyyy')# AND #form.tsession# eq 'AM'>
<cfif #dateformat(form.tdate,'m/d/yyyy')# gte #dateformat(NOW(),'m/d/yyyy')# AND #checkt.count# lt 12>
<cfquery name="balupdate" datasource="DSI">
UPDATE master SET loc='#form.loc#', flr='#form.flr#', office='#form.office#', wrkhrs='#form.wrkhrs#', blkberry='#form.blkberry#', mtype='#form.mtype#', dispo='#form.dispo#', itemdesc='#form.desc#', serial='#form.serial#', replacemodel='#form.model#', status='#form.status#',tdate='#form.tdate#', tsession='#form.tsession#' Where ID=#form.ID#
</cfquery>
<cfmail from="DSI Webpage Scheduler" to="dev.kewalramani@ny.frb.org"  subject="User #Form.name# has been Scheduled">
Today's Date: dateformat(now(),'m/d/yyyy')
The following User has been Scheduled For An Training Session

Information

Name: #form.name#
Date and Session: #dateformat(form.tdate,'d/m/yyyy')#  #form.tsession#
</cfmail>
<span class="style1">Customer #form.name# Updated and Training Scheduled</span>
<br>
<span class="style1">Refeshing Page...Please wait</span>
<meta http-equiv="refresh" content="0;URL=functiondata.cfm?functionname=#form.funcname#">
<cfexit>
<cfelseif #dateformat(form.tdate,'m/d/yyyy')# lt #dateformat(Now(),'m/d/yyyy')# AND #checkt.count# lt 12>
<meta http-equiv="refresh" content="0;URL=functiondata2.cfm?ID=#form.ID#&error=11&name=#form.name#&actual=#form.actual#&tdate=#form.tdate#&tsession=#form.tsession#">
<cfexit>
<cfelseif #dateformat(form.tdate,'m/d/yyyy')# gte #dateformat(now(),'m/d/yyyy')# AND #checkt.count# gte 12>
<meta http-equiv="refresh" content="0;URL=functiondata2.cfm?ID=#form.ID#&error=12&name=#form.name#&actual=#form.actual#&tdate=#form.tdate#&tsession=#form.tsession#">
<cfexit>
</cfif>
</cfif>
<!---------------------------------------------PM------------------------------------------------->
<cfif #dateformat(form.oldtdate,'m/d/yyyy')# neq #dateformat(form.tdate,'m/d/yyyy')# AND #form.tsession# eq 'PM'>
<cfif #dateformat(form.tdate,'m/d/yyyy')# gte #dateformat(NOW(),'m/d/yyyy')# AND #checkt.count# lt 12>
<cfquery name="balupdate" datasource="DSI">
UPDATE master SET loc='#form.loc#', flr='#form.flr#', office='#form.office#', wrkhrs='#form.wrkhrs#', blkberry='#form.blkberry#', mtype='#form.mtype#', dispo='#form.dispo#', itemdesc='#form.desc#', serial='#form.serial#', replacemodel='#form.model#', status='#form.status#',tdate='#form.tdate#', tsession='#form.tsession#' Where ID=#form.ID#
</cfquery>
<cfmail from="DSI Webpage Scheduler" to="dev.kewalramani@ny.frb.org"  subject="User #Form.name# has been Scheduled">
Today's Date: dateformat(now(),'m/d/yyyy')
The following User has been Scheduled For An Training Session

Information

Name: #form.name#
Date and Session: #dateformat(form.tdate,'d/m/yyyy')#  #form.tsession#
</cfmail>
<span class="style1">Customer #form.name# Updated and Training Scheduled</span>
<br>
<span class="style1">Refeshing Page...Please wait</span>
<meta http-equiv="refresh" content="0;URL=functiondata.cfm?functionname=#form.funcname#">
<cfexit>
<cfelseif #dateformat(form.tdate,'m/d/yyyy')# lt #dateformat(Now(),'m/d/yyyy')# AND #checkt.count# lt 12>
<meta http-equiv="refresh" content="0;URL=functiondata2.cfm?ID=#form.ID#&error=11&name=#form.name#&actual=#form.actual#&tdate=#form.tdate#&tsession=#form.tsession#">
<cfexit>
<cfelseif #dateformat(form.tdate,'m/d/yyyy')# gte #dateformat(now(),'m/d/yyyy')# AND #checkt.count# gte 12>
<meta http-equiv="refresh" content="0;URL=functiondata2.cfm?ID=#form.ID#&error=12&name=#form.name#&actual=#form.actual#&tdate=#form.tdate#&tsession=#form.tsession#">
<cfexit>
</cfif>
</cfif>
<!----------------------------------------CHECK TDATE------------------------------------------->

<br>
<span class="style1">Refeshing Page...Please wait</span>
<meta http-equiv="refresh" content="0;URL=functiondata.cfm?functionname=#form.funcname#">
<cfexit>
<cfelseif #dateformat(form.odate,'m/d/yyyy')# lt #dateformat(Now(),'m/d/yyyy')# AND #checko.count# lt 20>
<meta http-equiv="refresh" content="0;URL=functiondata2.cfm?ID=#form.ID#&error=3&name=#form.name#&actual=#form.actual#&odate=#form.odate#&osession=#form.osession#">
<cfexit>
<cfelseif #dateformat(form.odate,'m/d/yyyy')# gte #dateformat(now(),'m/d/yyyy')# AND #checko.count# gte 20>
<meta http-equiv="refresh" content="0;URL=functiondata2.cfm?ID=#form.ID#&error=4&name=#form.name#&actual=#form.actual#&odate=#form.odate#&osession=#form.osession#">
<cfexit>
<cfelseif #dateformat(form.actual,'m/d/yyyy')# lte #dateformat(form.odate,'m/d/yyyy')#>
<meta http-equiv="refresh" content="0;URL=functiondata2.cfm?ID=#form.ID#&error=5&name=#form.name#&actual=#form.actual#&odate=#form.odate#&osession=#form.osession#">
<cfexit>
</cfif>
</cfif>

</cfif>


<!---------------------------------------THIRD IF------------------------------------------------------->
<cfif #dateformat(form.oldodate,'m/d/yyyy')# eq #dateformat(form.odate,'m/d/yyyy')#>
<!------------------------------------------------------------------------------------------------>
<cfif #dateformat(form.tdate,'dddd')# eq 'Monday'>
<cfset tdatecheck=0>
<cfelseif #dateformat(form.tdate, 'dddd')# eq 'Tuesday'>
<cfset tdatecheck=1>
<cfelseif #dateformat(form.tdate, 'dddd')# eq 'Wednesday'>
<cfset tdatecheck=0>
<cfelseif #dateformat(form.tdate, 'dddd')# eq 'Thursday'>
<cfset tdatecheck=1>
<cfelseif #dateformat(form.tdate, 'dddd')# eq 'Friday'>
<cfset tdatecheck=0>
<cfelseif #dateformat(form.tdate, 'dddd')# eq 'Saturday'>
<cfset tdatecheck=0>
<cfelseif #dateformat(form.tdate, 'dddd')# eq 'Sunday'>
<cfset tdatecheck=0>
</cfif>

<cfif #form.tdate# eq "">
<cfquery name="balupdate" datasource="DSI">
UPDATE master SET loc='#form.loc#', flr='#form.flr#', office='#form.office#', wrkhrs='#form.wrkhrs#', blkberry='#form.blkberry#', mtype='#form.mtype#', dispo='#form.dispo#', itemdesc='#form.desc#', serial='#form.serial#', replacemodel='#form.model#', status='#form.status#' Where ID=#form.ID#
</cfquery>
<span class="style1">Customer #form.name# Updated</span>
<br>
<span class="style1">Refeshing Page...Please wait</span>
<meta http-equiv="refresh" content="0;URL=functiondata.cfm?functionname=#form.funcname#">
<cfexit>

<cfelseif #form.tsession# eq "">
<meta http-equiv="refresh" content="0;URL=functiondata2.cfm?ID=#form.ID#&error=9&name=#form.name#&actual=#form.actual#&tdate=#form.tdate#&tsession=#form.tsession#">
<cfelseif #tdatecheck# eq 0>
<meta http-equiv="refresh" content="0;URL=functiondata2.cfm?ID=#form.ID#&error=10&name=#form.name#&actual=#form.actual#&tdate=#form.tdate#&tsession=#form.tsession#">
</cfif>

<cfif #dateformat(form.oldtdate,'m/d/yyyy')# neq #dateformat(form.tdate,'m/d/yyyy')# AND #form.tsession# eq 'AM'>
<cfif #dateformat(form.tdate,'m/d/yyyy')# gte #dateformat(NOW(),'m/d/yyyy')# AND #checkt.count# lt 12>
<cfquery name="balupdate" datasource="DSI">
UPDATE master SET loc='#form.loc#', flr='#form.flr#', office='#form.office#', wrkhrs='#form.wrkhrs#', blkberry='#form.blkberry#', mtype='#form.mtype#', dispo='#form.dispo#', itemdesc='#form.desc#', serial='#form.serial#', replacemodel='#form.model#', status='#form.status#',tdate='#form.tdate#', tsession='#form.tsession#' Where ID=#form.ID#
</cfquery>
<cfmail from="DSI Webpage Scheduler" to="dev.kewalramani@ny.frb.org"  subject="User #Form.name# has been Scheduled">
Today's Date: dateformat(now(),'m/d/yyyy')
The following User has been Scheduled For An Training Session

Information

Name: #form.name#
Date and Session: #dateformat(form.tdate,'d/m/yyyy')#  #form.tsession#
</cfmail>
<span class="style1">Customer #form.name# Updated and Training Scheduled</span>
<br>
<span class="style1">Refeshing Page...Please wait</span>
<meta http-equiv="refresh" content="0;URL=functiondata.cfm?functionname=#form.funcname#">
<cfexit>
<cfelseif #dateformat(form.tdate,'m/d/yyyy')# lt #dateformat(Now(),'m/d/yyyy')# AND #checkt.count# lt 12>
<meta http-equiv="refresh" content="0;URL=functiondata2.cfm?ID=#form.ID#&error=11&name=#form.name#&actual=#form.actual#&tdate=#form.tdate#&tsession=#form.tsession#">
<cfexit>
<cfelseif #dateformat(form.tdate,'m/d/yyyy')# gte #dateformat(now(),'m/d/yyyy')# AND #checkt.count# gte 12>
<meta http-equiv="refresh" content="0;URL=functiondata2.cfm?ID=#form.ID#&error=12&name=#form.name#&actual=#form.actual#&tdate=#form.tdate#&tsession=#form.tsession#">
<cfexit>
</cfif>
</cfif>
<!-------------------------------------------PM--------------------------------------------------->
<cfif #dateformat(form.oldtdate,'m/d/yyyy')# neq #dateformat(form.tdate,'m/d/yyyy')# AND #form.tsession# eq 'PM'>
<cfif #dateformat(form.tdate,'m/d/yyyy')# gte #dateformat(NOW(),'m/d/yyyy')# AND #checkt.count# lt 12>
<cfquery name="balupdate" datasource="DSI">
UPDATE master SET loc='#form.loc#', flr='#form.flr#', office='#form.office#', wrkhrs='#form.wrkhrs#', blkberry='#form.blkberry#', mtype='#form.mtype#', dispo='#form.dispo#', itemdesc='#form.desc#', serial='#form.serial#', replacemodel='#form.model#', status='#form.status#',tdate='#form.tdate#', tsession='#form.tsession#' Where ID=#form.ID#
</cfquery>
<cfmail from="DSI Webpage Scheduler" to="dev.kewalramani@ny.frb.org"  subject="User #Form.name# has been Scheduled">
Today's Date: dateformat(now(),'m/d/yyyy')
The following User has been Scheduled For An Training Session

Information

Name: #form.name#
Date and Session: #dateformat(form.tdate,'d/m/yyyy')#  #form.tsession#
</cfmail>
<span class="style1">Customer #form.name# Updated and Training Scheduled</span>
<br>
<span class="style1">Refeshing Page...Please wait</span>
<meta http-equiv="refresh" content="0;URL=functiondata.cfm?functionname=#form.funcname#">
<cfexit>
<cfelseif #dateformat(form.tdate,'m/d/yyyy')# lt #dateformat(Now(),'m/d/yyyy')# AND #checkt.count# lt 12>
<meta http-equiv="refresh" content="0;URL=functiondata2.cfm?ID=#form.ID#&error=11&name=#form.name#&actual=#form.actual#&tdate=#form.tdate#&tsession=#form.tsession#">
<cfexit>
<cfelseif #dateformat(form.tdate,'m/d/yyyy')# gte #dateformat(now(),'m/d/yyyy')# AND #checkt.count# gte 12>
<meta http-equiv="refresh" content="0;URL=functiondata2.cfm?ID=#form.ID#&error=12&name=#form.name#&actual=#form.actual#&tdate=#form.tdate#&tsession=#form.tsession#">
<cfexit>
</cfif>
</cfif>

</cfif>

<cfif #dateformat(form.oldtdate,'m/d/yyyy')# eq #dateformat(form.tdate,'m/d/yyyy')#>
<cfquery name="balupdate" datasource="DSI">
UPDATE master SET loc='#form.loc#', flr='#form.flr#', office='#form.office#', wrkhrs='#form.wrkhrs#', blkberry='#form.blkberry#', mtype='#form.mtype#', dispo='#form.dispo#', itemdesc='#form.desc#', serial='#form.serial#', replacemodel='#form.model#', status='#form.status#' Where ID=#form.ID#
</cfquery>
<span class="style1">Customer #form.name# Updated</span>
<br>
<span class="style1">Refeshing Page...Please wait</span>
<meta http-equiv="refresh" content="0;URL=functiondata.cfm?functionname=#form.funcname#">
<cfexit>
</cfif>

<!------------------------------------------------------------------------------------------------>

</cfoutput>





<!----------------------------------------CHECK ODATE------------------------------------------->
<cfif #dateformat(form.odate,'dddd')# eq 'Monday'>
<cfset odatecheck=0>
<cfelseif #dateformat(form.odate, 'dddd')# eq 'Tuesday'>
<cfset odatecheck=1>
<cfelseif #dateformat(form.odate, 'dddd')# eq 'Wednesday'>
<cfset odatecheck=1>
<cfelseif #dateformat(form.odate, 'dddd')# eq 'Thursday'>
<cfset odatecheck=1>
<cfelseif #dateformat(form.odate, 'dddd')# eq 'Friday'>
<cfset odatecheck=0>
<cfelseif #dateformat(form.odate, 'dddd')# eq 'Saturday'>
<cfset odatecheck=0>
<cfelseif #dateformat(form.odate, 'dddd')# eq 'Sunday'>
<cfset odatecheck=0>
</cfif>

<cfif #form.osession# eq "" AND #form.odate# neq "">
<meta http-equiv="refresh" content="0;URL=functiondata2.cfm?ID=#form.ID#&error=7&name=#form.name#&actual=#form.actual#&odate=#form.odate#&osession=#form.osession#">
<cfelseif #dateformat(form.actual,'m/d/yyyy')# lte #dateformat(form.odate,'m/d/yyyy')#>
<meta http-equiv="refresh" content="0;URL=functiondata2.cfm?ID=#form.ID#&error=5&name=#form.name#&actual=#form.actual#&odate=#form.odate#&osession=#form.osession#">
<cfexit>
<cfelseif #odatecheck# eq 0>
<meta http-equiv="refresh" content="0;URL=functiondata2.cfm?ID=#form.ID#&error=8&name=#form.name#&actual=#form.actual#&odate=#form.odate#&osession=#form.osession#">
</cfif>
<!---------------------------------------------AM---------------------------------------------------->
<cfif #dateformat(form.oldodate,'m/d/yyyy')# neq #dateformat(form.odate,'m/d/yyyy')# AND #form.osession# eq 'AM'>
<cfif #dateformat(form.odate,'m/d/yyyy')# gte #dateformat(NOW(),'m/d/yyyy')# AND #checko.count# lt 20>
<cfquery name="balupdate" datasource="DSI">
UPDATE master SET loc='#form.loc#', flr='#form.flr#', office='#form.office#', wrkhrs='#form.wrkhrs#', blkberry='#form.blkberry#', mtype='#form.mtype#', dispo='#form.dispo#', itemdesc='#form.desc#', serial='#form.serial#', replacemodel='#form.model#', status='#form.status#',odate='#form.odate#', osession='#form.osession#' Where ID=#form.ID#
</cfquery>
<cfmail from="DSI Webpage Scheduler" to="dev.kewalramani@ny.frb.org"  subject="User #Form.name# has been Scheduled">
Today's Date: dateformat(now(),'m/d/yyyy')
The following User has been Scheduled For An Orientation Session

Information

Name: #form.name#
Date and Session: #dateformat(form.odate,'d/m/yyyy')#  #form.osession#
</cfmail>
<span class="style1">Customer #form.name# Updated and Orientation Scheduled</span>
<cfexit>
<cfelseif #dateformat(form.odate,'m/d/yyyy')# lt #dateformat(Now(),'m/d/yyyy')# AND #checko.count# lt 20>
<meta http-equiv="refresh" content="0;URL=functiondata2.cfm?ID=#form.ID#&error=3&name=#form.name#&actual=#form.actual#&odate=#form.odate#&osession=#form.osession#">
<cfexit>
<cfelseif #dateformat(form.odate,'m/d/yyyy')# gte #dateformat(now(),'m/d/yyyy')# AND #checko.count# gte 20>
<meta http-equiv="refresh" content="0;URL=functiondata2.cfm?ID=#form.ID#&error=4&name=#form.name#&actual=#form.actual#&odate=#form.odate#&osession=#form.osession#">
<cfexit>
<cfelseif #dateformat(form.actual,'m/d/yyyy')# lte #dateformat(form.odate,'m/d/yyyy')# and #form.actual# neq "" and #form.odate# neq "">
<meta http-equiv="refresh" content="0;URL=functiondata2.cfm?ID=#form.ID#&error=5&name=#form.name#&actual=#form.actual#&odate=#form.odate#&osession=#form.osession#">
<cfexit>
</cfif>
</cfif>
<!---------------------------------------------PM---------------------------------------------------->
<cfif #dateformat(form.oldodate,'m/d/yyyy')# neq #dateformat(form.odate,'m/d/yyyy')# AND #form.osession# eq 'PM'>
<cfif #dateformat(form.odate,'m/d/yyyy')# gte #dateformat(NOW(),'m/d/yyyy')# AND #checko.count# lt 20>
<cfquery name="balupdate" datasource="DSI">
UPDATE master SET UPDATE master SET loc='#form.loc#', flr='#form.flr#', office='#form.office#', wrkhrs='#form.wrkhrs#', blkberry='#form.blkberry#', mtype='#form.mtype#', dispo='#form.dispo#', itemdesc='#form.desc#', serial='#form.serial#', replacemodel='#form.model#', status='#form.status#',odate=#form.odate#,osession=#form.osession# Where ID=#form.ID#
</cfquery>
<cfmail from="DSI Webpage Scheduler" to="dev.kewalramani@ny.frb.org"  subject="User #Form.name# has been Scheduled">
Today's Date: dateformat(now(),'m/d/yyyy')
The following User has been Scheduled For An Orientation Session

Information

Name: #form.name#
Date and Session: #dateformat(form.odate,'d/m/yyyy')#  #form.osession#
</cfmail>
<span class="style1">Customer #form.name# Updated and Orientation Scheduled</span>
<cfexit>
<cfelseif #dateformat(form.odate,'m/d/yyyy')# lt #dateformat(Now(),'m/d/yyyy')# AND #checko.count# lt 20>
<meta http-equiv="refresh" content="0;URL=functiondata2.cfm?ID=#form.ID#&error=3&name=#form.name#&actual=#form.actual#&odate=#form.odate#&osession=#form.osession#">
<cfexit>
<cfelseif #dateformat(form.odate,'m/d/yyyy')# gte #dateformat(now(),'m/d/yyyy')# AND #checko.count# gte 20>
<meta http-equiv="refresh" content="0;URL=functiondata2.cfm?ID=#form.ID#&error=4&name=#form.name#&actual=#form.actual#&odate=#form.odate#&osession=#form.osession#">
<cfexit>
<cfelseif #dateformat(form.actual,'m/d/yyyy')# lte #dateformat(form.odate,'m/d/yyyy')# and #form.actual# neq "" and #form.odate# neq "">
<meta http-equiv="refresh" content="0;URL=functiondata2.cfm?ID=#form.ID#&error=5&name=#form.name#&actual=#form.actual#&odate=#form.odate#&osession=#form.osession#">
<cfexit>
</cfif>
</cfif>
<!----------------------------------------END CHECK ODATE------------------------------------------->

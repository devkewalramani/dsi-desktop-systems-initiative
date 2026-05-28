
<html><!-- InstanceBegin template="/Templates/dsi.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<!-- InstanceBeginEditable name="doctitle" -->


<!-- InstanceEndEditable -->
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<!-- InstanceBeginEditable name="head" -->

<!-- InstanceEndEditable -->
<link href="../scripts/font.css" rel="stylesheet" type="text/css">

</head>

<body link="#660000" vlink="#660000">
<div id="info" style="position:absolute; left:181px; top:331px; width:224px; height:197px; z-index:1; visibility: hidden;"></div>
<div id="info2" style="position:absolute; left:181px; top:134px; width:224px; height:197px; z-index:1; visibility: hidden;"> 
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr> 
      <td align="center" bgcolor="#cccccc"> 
        <table width="100%" border="0" cellspacing="1" cellpadding="0">
          <tr> 
            <td valign="top" bgcolor="#eeeeee"><div align="center" class="burgundy"><strong>.:: 
                info box ::.</strong></div></td>
          </tr>
          <tr> 
            <td valign="top" bgcolor="#FFFFFF"> 
              <table width="100%" border="0" cellspacing="0" cellpadding="8">
                <tr> 
                  <td valign="top" class="text1">Entering a user id or last name 
                    will allow you to view all tickets. Select the &quot;Open 
                    Tickets&quot; option to view only open tickets. <p>Enter Ticket 
                      No, User ID, or Lastname.</p></td>
                </tr>
              </table>
            </td>
          </tr>
          <tr> 
            <td height="20" bgcolor="#eeeeee"> <div align="center" class="burgundy"><strong>.:<a href="javascript:;" onClick="MM_showHideLayers('info2','','hide')"><img src="../images/close1.jpg" width="100" height="15" border="0"></a>:.</strong></div></td>
          </tr>
        </table>
      </td>
    </tr>
  </table>
</div>
<table width="75%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" bgcolor="#cccccc"> 
      <table width="100%" border="0" cellspacing="1" cellpadding="0">
        <tr> 
          <td valign="top" bgcolor="#FFFFFF"> 
            <table width="100%" border="0" cellspacing="0" cellpadding="4">
              <tr>
                <td width="61%" align="left" valign="top"><img src="../images/nuLogo.jpg" alt="Information Technology Logo" width="313" height="101" border="0"></td>
                <td width="39%" colspan="2" align="right">&nbsp; </td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td valign="top" bgcolor="#eeeeee"> <table width="100%" border="0" cellspacing="0" cellpadding="2">
              <tr valign="top"> 
                <td width="1%">&nbsp;</td>
                <td width="48%" class="topmenu"> <script language="JavaScript">

    // -- made by A1javascripts.com, please keep these credits when using this script
    days = new Array(7)
    days[1] = "Sunday";
    days[2] = "Monday";
    days[3] = "Tuesday"; 
    days[4] = "Wednesday";
    days[5] = "Thursday";
    days[6] = "Friday";
    days[7] = "Saturday";
    months = new Array(12)
    months[1] = "January";
    months[2] = "February";
    months[3] = "March";
    months[4] = "April";
    months[5] = "May";
    months[6] = "June";
    months[7] = "July";
    months[8] = "August";
    months[9] = "September";
    months[10] = "October"; 
    months[11] = "November";
    months[12] = "December";
    today = new Date(); day = days[today.getDay() + 1]
    month = months[today.getMonth() + 1]
    date = today.getDate()
    year=today.getYear(); 
if (year < 2000)
year = year + 1900;
    document.write (day +
    ", " + month + " " + date + ", " + year)
    // -- end hiding 
    </script> </td>
                <td width="51%" class="topmenu"><div align="right"><a href="http://www.it.ny.frb.org/wcsd-dsi/">DSI Home </a> 
                    | <a href="http://www.it.ny.frb.org/">IT Website </a>  | <a href="http://atthebank.ny.frb.org/@theBank/currentweek/cover.htm">@TheBank</a> 
                  </div></td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td valign="top" bgcolor="#FFFFFF">
<table width="100%" border="0" cellspacing="0" cellpadding="8">
              <tr>
                <td valign="top"><!-- InstanceBeginEditable name="mainbody" -->
				
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
<cfif #form.odate# neq "">
<cfset operiod=#dateformat(form.odate,'m/d/yyyy')#+14>
<cfelseif #form.odate# eq "">
<cfset operiod=#dateformat(now(),'m/d/yyyy')#+14>
</cfif>
<cfif #form.actual# neq "">
<cfset operiod2=#dateformat(form.actual,'m/d/yyyy')#-14>
</cfif>

<style type="text/css">
<!--
.style1 {
	color: #FF0000;
	font-weight: bold;
	font-size: 18px;
}
-->
</style>
<cftry>
<cfoutput>

<cfif #form.time# eq "" and #form.actual# neq "">
<meta http-equiv="refresh" content="0;URL=functiondata3.cfm?ID=#form.ID#&error=13&name=#form.name#&actual=#form.actual#">
<cfexit>
</cfif>
<!--------------------------------------FIRST IF-------------------------------------------------------->
<cfif #dateformat(form.midate,'m/d/yyyy')# neq #dateformat(form.actual,'m/d/yyyy')#>
<cfquery name="checkm" datasource="DSI">
SELECT DISTINCTROW actualdate,count(*) as count
FROM master 
Where actualdate <> null AND actualdate=#parsedatetime(form.actual)#
group by actualdate
</cfquery>

<cfquery name="checkfunc" datasource="DSI">
SELECT count(*) as ftot
FROM master 
Where actualdate <> null AND actualdate=#parsedatetime(form.actual)# AND func='#form.funcname#'
</cfquery>

<cfquery name="funclimit" datasource="DSI">
select *
from functionlimit
Where func='#form.funcname#'
</cfquery>

<!---------------------------------------------FIRST IF--------------------------------------------------->
<cfif #dateformat(form.actual,'m/d/yyyy')# lte #dateformat(form.odate,'m/d/yyyy')# and #form.actual# neq "" and #form.odate# neq "">
<meta http-equiv="refresh" content="0;URL=functiondata3.cfm?ID=#form.ID#&error=5&name=#form.name#&actual=#form.actual#&odate=#form.odate#&osession=#form.osession#">
<cfexit>
<cfelseif #dateformat(form.actual,'m/d/yyyy')# lt #dateformat(operiod,'m/d/yyyy')# and #form.actual# neq "" and #form.odate# neq "">
<meta http-equiv="refresh" content="0;URL=functiondata3.cfm?ID=#form.ID#&error=15&name=#form.name#&actual=#form.actual#&odate=#form.odate#&osession=#form.osession#">
<cfexit>
</cfif>

<cfif #dateformat(form.actual,'m/d/yyyy')# gte #dateformat(firstavailabledate,'m/d/yyyy')# AND #checkm.count# lt 24 and #checkfunc.ftot# lt #funclimit.limit#>
<cfquery name="balupdate" datasource="DSI">
UPDATE master SET loc='#form.loc#', flr='#form.flr#', office='#form.office#', ph='#form.ph#', wrkhrs='#form.wrkhrs#', blkberry='#form.blkberry#', mtype='#form.mtype#', dispo='#form.dispo#', itemdesc='#form.desc#', serial='#form.serial#', replacemodel='#form.model#', status='#form.status#', actualdate='#form.actual#', stime='#form.time#',lock='y', comment='#form.comment#' Where ID=#form.ID#
</cfquery>
<cfmail from="DSI Webpage Rescheduler" to="glen.radziminski@ny.frb.org,ny.dsi.migration.scheduler@ny.frb.org" subject="User #Form.lname#,#form.fname# has been rescheduled">

The following User has been rescheduled for migration

Previous Information

Name: #FORM.lname#, #FORM.fname#
Machine Type: #form.mtype#
Status: #form.status#
Date and Time: #dateformat(FORM.oldactualdate,'d/m/yyyy')#  #timeformat(FORM.oldstime,'h:mm tt')#


New Information

Name: #FORM.lname#, #FORM.fname#
Date and Time: #form.actual# at #FORM.time# </cfmail>
<span class="style1">Customer #form.name# Updated and Migration Re-Scheduled</span>
<br>
<!----------------------------------------CHECK ODATE------------------------------------------->

<cfif #form.odate# neq "">
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
<cfquery name="checko" datasource="DSI">
SELECT DISTINCTROW odate, osession,count(*) as count
FROM master 
Where odate <> null AND odate=#parsedatetime(form.odate)# AND osession='#form.osession#'
group by odate,osession
</cfquery>
<cfif #form.osession# eq "" AND #form.odate# neq "">
<meta http-equiv="refresh" content="0;URL=functiondata3.cfm?ID=#form.ID#&error=7&name=#form.name#&actual=#form.actual#&odate=#form.odate#&osession=#form.osession#">
<cfexit>
<cfelseif #dateformat(form.actual,'m/d/yyyy')# lte #dateformat(form.odate,'m/d/yyyy')#>
<meta http-equiv="refresh" content="0;URL=functiondata3.cfm?ID=#form.ID#&error=5&name=#form.name#&actual=#form.actual#&odate=#form.odate#&osession=#form.osession#">
<cfexit>
<cfelseif #form.odate# neq "" and #odatecheck# eq 0 >
<meta http-equiv="refresh" content="0;URL=functiondata3.cfm?ID=#form.ID#&error=8&name=#form.name#&actual=#form.actual#&odate=#form.odate#&osession=#form.osession#">
<cfexit>
<cfelseif #dateformat(form.odate,'m/d/yyyy')# gt #dateformat(operiod2,'m/d/yyyy')# AND #dateformat(operiod2,'m/d/yyyy')# gt #dateformat(now(),'m/d/yyyy')# and #form.actual# neq "" and #form.odate# neq "">
<meta http-equiv="refresh" content="0;URL=functiondata3.cfm?ID=#form.ID#&error=15&name=#form.name#&actual=#form.actual#&odate=#form.odate#&osession=#form.osession#">
<cfexit>

</cfif>
</cfif>
<!---------------------------------------------AM---------------------------------------------------->
<cfif #dateformat(form.oldodate,'m/d/yyyy')# neq #dateformat(form.odate,'m/d/yyyy')# AND #form.osession# eq 'AM'>
<cfif #dateformat(form.odate,'m/d/yyyy')# gte #dateformat(NOW(),'m/d/yyyy')# AND #checko.count# lt 20>
<cfquery name="balupdate" datasource="DSI">
UPDATE master SET loc='#form.loc#', flr='#form.flr#', office='#form.office#', ph='#form.ph#', wrkhrs='#form.wrkhrs#', blkberry='#form.blkberry#', mtype='#form.mtype#', dispo='#form.dispo#', itemdesc='#form.desc#', serial='#form.serial#', replacemodel='#form.model#', status='#form.status#',odate='#form.odate#', osession='#form.osession#', comment='#form.comment#' Where ID=#form.ID#
</cfquery>
<cfmail from="DSI Webpage Rescheduler" to="Nancy.Bailey@ny.frb.org,Pamela.Andrews@ny.frb.org,Patricia.Gordon@ny.frb.org,Louis.Bryan@ny.frb.org" subject="User #Form.lname#,#form.fname# has been rescheduled">

The following User has been rescheduled for orientation

Previous Information

Name: #FORM.lname#, #FORM.fname#
Function: #form.funcname#
Location: #form.loc#
Date and Time: #dateformat(FORM.oldactualdate,'d/m/yyyy')#  #timeformat(FORM.oldstime,'h:mm tt')#


New Information

Name: #FORM.lname#, #FORM.fname#
Function: #form.funcname#
Location: #form.loc#
Date and Time: #form.actual# at #FORM.time# </cfmail>
<span class="style1">Customer #form.name# Updated and Orientation Re-Scheduled</span>
<cfelseif #dateformat(form.odate,'m/d/yyyy')# lt #dateformat(Now(),'m/d/yyyy')# AND #checko.count# lt 20>
<meta http-equiv="refresh" content="0;URL=functiondata3.cfm?ID=#form.ID#&error=3&name=#form.name#&actual=#form.actual#&odate=#form.odate#&osession=#form.osession#">
<cfexit>
<cfelseif #dateformat(form.odate,'m/d/yyyy')# gte #dateformat(now(),'m/d/yyyy')# AND #checko.count# gte 20>
<meta http-equiv="refresh" content="0;URL=functiondata3.cfm?ID=#form.ID#&error=4&name=#form.name#&actual=#form.actual#&odate=#form.odate#&osession=#form.osession#">
<cfexit>
</cfif>
</cfif>
<!---------------------------------------------PM---------------------------------------------------->
<cfif #dateformat(form.oldodate,'m/d/yyyy')# neq #dateformat(form.odate,'m/d/yyyy')# AND #form.osession# eq 'PM'>
<cfif #dateformat(form.odate,'m/d/yyyy')# gte #dateformat(NOW(),'m/d/yyyy')# AND #checko.count# lt 20>
<cfquery name="balupdate" datasource="DSI">
UPDATE master SET loc='#form.loc#', flr='#form.flr#', office='#form.office#', ph='#form.ph#', wrkhrs='#form.wrkhrs#', blkberry='#form.blkberry#', mtype='#form.mtype#', dispo='#form.dispo#', itemdesc='#form.desc#', serial='#form.serial#', replacemodel='#form.model#', status='#form.status#',odate='#form.odate#',osession='#form.osession#', comment='#form.comment#' Where ID=#form.ID#
</cfquery>
<cfmail from="DSI Webpage Rescheduler" to="Nancy.Bailey@ny.frb.org,Pamela.Andrews@ny.frb.org,Patricia.Gordon@ny.frb.org,Louis.Bryan@ny.frb.org" subject="User #Form.lname#,#form.fname# has been rescheduled">

The following User has been rescheduled for orientation

Previous Information

Name: #FORM.lname#, #FORM.fname#
Function: #form.funcname#
Location: #form.loc#
Date and Time: #dateformat(FORM.oldactualdate,'d/m/yyyy')#  #timeformat(FORM.oldstime,'h:mm tt')#


New Information

Name: #FORM.lname#, #FORM.fname#
Function: #form.funcname#
Location: #form.loc#
Date and Time: #form.actual# at #FORM.time# </cfmail>
<span class="style1">Customer #form.name# Updated and Orientation Re-Scheduled</span>
<cfelseif #dateformat(form.odate,'m/d/yyyy')# lt #dateformat(Now(),'m/d/yyyy')# AND #checko.count# lt 20>
<meta http-equiv="refresh" content="0;URL=functiondata3.cfm?ID=#form.ID#&error=3&name=#form.name#&actual=#form.actual#&odate=#form.odate#&osession=#form.osession#">
<cfexit>
<cfelseif #dateformat(form.odate,'m/d/yyyy')# gte #dateformat(now(),'m/d/yyyy')# AND #checko.count# gte 20>
<meta http-equiv="refresh" content="0;URL=functiondata3.cfm?ID=#form.ID#&error=4&name=#form.name#&actual=#form.actual#&odate=#form.odate#&osession=#form.osession#">
<cfexit>
</cfif>
</cfif>
<!----------------------------------------END CHECK ODATE------------------------------------------->

<span class="style1">Refeshing Page...Please wait</span>
<br>
<meta http-equiv="refresh" content="1;URL=baleditschedule2.cfm?funcname=#form.funcname#&lname=#form.lname#">
<cfexit>

<cfelseif #dateformat(form.actual,'m/d/yyyy')# lt #dateformat(firstavailabledate,'m/d/yyyy')# AND #checkm.count# lt 24>
<meta http-equiv="refresh" content="0;URL=functiondata3.cfm?ID=#form.ID#&error=1&name=#form.name#&actual=#form.actual#&odate=#form.odate#&osession=#form.osession#">
<cfexit>

<cfelseif #dateformat(form.actual,'m/d/yyyy')# gte #dateformat(firstavailabledate,'m/d/yyyy')# AND #checkm.count# gte 24>
<meta http-equiv="refresh" content="0;URL=functiondata3.cfm?ID=#form.ID#&error=2&name=#form.name#&actual=#form.actual#&odate=#form.odate#&osession=#form.osession#">
<cfexit>
<cfelseif #checkfunc.ftot# gte #funclimit.limit#>
<meta http-equiv="refresh" content="0;URL=functiondata3.cfm?ID=#form.ID#&error=16&name=#form.name#&actual=#form.actual#&odate=#form.odate#&osession=#form.osession#">
<cfexit>
</cfif>
</cfif>

<!----------------------------------------SECOND IF------------------------------------------------------>
<cfif #dateformat(form.midate,'m/d/yyyy')# eq #dateformat(form.actual,'m/d/yyyy')# and #form.odate# neq "">
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
<cfquery name="checko" datasource="DSI">
SELECT DISTINCTROW odate, osession,count(*) as count
FROM master 
Where odate <> null AND odate=#parsedatetime(form.odate)# AND osession='#form.osession#'
group by odate,osession
</cfquery>


<cfif #form.osession# eq "" and #form.odate# neq "">
<meta http-equiv="refresh" content="0;URL=functiondata3.cfm?ID=#form.ID#&error=7&name=#form.name#&actual=#form.actual#&odate=#form.odate#&osession=#form.osession#">
<cfexit>
<cfelseif #dateformat(form.actual,'m/d/yyyy')# lte #dateformat(form.odate,'m/d/yyyy')# and #form.actual# neq "" and #form.odate# neq "">
<meta http-equiv="refresh" content="0;URL=functiondata3.cfm?ID=#form.ID#&error=5&name=#form.name#&actual=#form.actual#&odate=#form.odate#&osession=#form.osession#">
<cfexit>
<cfelseif #odatecheck# eq 0>
<meta http-equiv="refresh" content="0;URL=functiondata3.cfm?ID=#form.ID#&error=8&name=#form.name#&actual=#form.actual#&odate=#form.odate#&osession=#form.osession#">
<cfexit>
<cfelseif #form.actual# neq "" and #form.odate# neq "" and #dateformat(form.odate,'m/d/yyyy')# gt #dateformat(operiod2,'m/d/yyyy')# AND #dateformat(operiod2,'m/d/yyyy')# gt #dateformat(now(),'m/d/yyyy')# >
<meta http-equiv="refresh" content="0;URL=functiondata3.cfm?ID=#form.ID#&error=15&name=#form.name#&actual=#form.actual#&odate=#form.odate#&osession=#form.osession#">
<cfexit>
</cfif>

<cfif #dateformat(form.oldodate,'m/d/yyyy')# neq #dateformat(form.odate,'m/d/yyyy')# AND #form.osession# eq 'AM'>
<cfif #dateformat(form.odate,'m/d/yyyy')# gte #dateformat(NOW(),'m/d/yyyy')# AND #checko.count# lt 20>
<cfquery name="balupdate" datasource="DSI">
UPDATE master SET loc='#form.loc#', flr='#form.flr#', office='#form.office#', ph='#form.ph#', wrkhrs='#form.wrkhrs#', blkberry='#form.blkberry#', mtype='#form.mtype#', dispo='#form.dispo#', itemdesc='#form.desc#', serial='#form.serial#', replacemodel='#form.model#', status='#form.status#',odate='#form.odate#', osession='#form.osession#', comment='#form.comment#' Where ID=#form.ID#
</cfquery>
<cfmail from="DSI Webpage Rescheduler" to="Nancy.Bailey@ny.frb.org,Pamela.Andrews@ny.frb.org,Patricia.Gordon@ny.frb.org,Louis.Bryan@ny.frb.org" subject="User #Form.lname#,#form.fname# has been rescheduled">

The following User has been rescheduled for orientation

Previous Information

Name: #FORM.lname#, #FORM.fname#
Function: #form.funcname#
Location: #form.loc#
Date and Time: #dateformat(FORM.oldactualdate,'d/m/yyyy')#  #timeformat(FORM.oldstime,'h:mm tt')#


New Information

Name: #FORM.lname#, #FORM.fname#
Function: #form.funcname#
Location: #form.loc#
Date and Time: #form.actual# at #FORM.time# </cfmail>
<span class="style1">Customer #form.name# Updated and Orientation Re-Scheduled</span>

<br>
<span class="style1">Refeshing Page...Please wait</span>
<meta http-equiv="refresh" content="1;URL=baleditschedule2.cfm?funcname=#form.funcname#&lname=#form.lname#">
<cfexit>
<cfelseif #dateformat(form.odate,'m/d/yyyy')# lt #dateformat(Now(),'m/d/yyyy')# AND #checko.count# lt 20>
<meta http-equiv="refresh" content="0;URL=functiondata3.cfm?ID=#form.ID#&error=3&name=#form.name#&actual=#form.actual#&odate=#form.odate#&osession=#form.osession#">
<cfexit>
<cfelseif #dateformat(form.odate,'m/d/yyyy')# gte #dateformat(now(),'m/d/yyyy')# AND #checko.count# gte 20>
<meta http-equiv="refresh" content="0;URL=functiondata3.cfm?ID=#form.ID#&error=4&name=#form.name#&actual=#form.actual#&odate=#form.odate#&osession=#form.osession#">
<cfexit>
</cfif>
</cfif>
<!------------------------------------------------PM---------------------------------------------->
<cfif #dateformat(form.oldodate,'m/d/yyyy')# neq #dateformat(form.odate,'m/d/yyyy')# AND #form.osession# eq 'PM'>
<cfif #dateformat(form.odate,'m/d/yyyy')# gte #dateformat(NOW(),'m/d/yyyy')# AND #checko.count# lt 20>
<cfquery name="balupdate" datasource="DSI">
UPDATE master SET loc='#form.loc#', flr='#form.flr#', office='#form.office#', ph='#form.ph#', wrkhrs='#form.wrkhrs#', blkberry='#form.blkberry#', mtype='#form.mtype#', dispo='#form.dispo#', itemdesc='#form.desc#', serial='#form.serial#', replacemodel='#form.model#', status='#form.status#',odate='#form.odate#',osession='#form.osession#', comment='#form.comment#' Where ID=#form.ID#
</cfquery>
<cfmail from="DSI Webpage Rescheduler" to="Nancy.Bailey@ny.frb.org,Pamela.Andrews@ny.frb.org,Patricia.Gordon@ny.frb.org,Louis.Bryan@ny.frb.org" subject="User #Form.lname#,#form.fname# has been rescheduled">

The following User has been rescheduled for orientation

Previous Information

Name: #FORM.lname#, #FORM.fname#
Function: #form.funcname#
Location: #form.loc#
Date and Time: #dateformat(FORM.oldactualdate,'d/m/yyyy')#  #timeformat(FORM.oldstime,'h:mm tt')#


New Information

Name: #FORM.lname#, #FORM.fname#
Function: #form.funcname#
Location: #form.loc#
Date and Time: #form.actual# at #FORM.time# </cfmail>
<span class="style1">Customer #form.name# Updated and Orientation Re-Scheduled</span>



<br>
<span class="style1">Refeshing Page...Please wait</span>
<meta http-equiv="refresh" content="1;URL=baleditschedule2.cfm?funcname=#form.funcname#&lname=#form.lname#">
<cfexit>
<cfelseif #dateformat(form.odate,'m/d/yyyy')# lt #dateformat(Now(),'m/d/yyyy')# AND #checko.count# lt 20>
<meta http-equiv="refresh" content="0;URL=functiondata3.cfm?ID=#form.ID#&error=3&name=#form.name#&actual=#form.actual#&odate=#form.odate#&osession=#form.osession#">
<cfexit>
<cfelseif #dateformat(form.odate,'m/d/yyyy')# gte #dateformat(now(),'m/d/yyyy')# AND #checko.count# gte 20>
<meta http-equiv="refresh" content="0;URL=functiondata3.cfm?ID=#form.ID#&error=4&name=#form.name#&actual=#form.actual#&odate=#form.odate#&osession=#form.osession#">
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
UPDATE master SET loc='#form.loc#', flr='#form.flr#', office='#form.office#', ph='#form.ph#', wrkhrs='#form.wrkhrs#', blkberry='#form.blkberry#', mtype='#form.mtype#', dispo='#form.dispo#', itemdesc='#form.desc#', serial='#form.serial#', replacemodel='#form.model#', status='#form.status#', comment='#form.comment#' Where ID=#form.ID#
</cfquery>
<span class="style1">Customer #form.name# Updated</span>
<br>
<span class="style1">Refeshing Page...Please wait</span>
<meta http-equiv="refresh" content="1;URL=baleditschedule2.cfm?funcname=#form.funcname#&lname=#form.lname#">
<cfexit>

<cfelseif #form.tsession# eq "">
<meta http-equiv="refresh" content="0;URL=functiondata3.cfm?ID=#form.ID#&error=9&name=#form.name#&actual=#form.actual#&tdate=#form.tdate#&tsession=#form.tsession#">
<cfexit>
<cfelseif #tdatecheck# eq 0>
<meta http-equiv="refresh" content="0;URL=functiondata3.cfm?ID=#form.ID#&error=10&name=#form.name#&actual=#form.actual#&tdate=#form.tdate#&tsession=#form.tsession#">
<cfexit>
</cfif>
<cfquery name="checkt" datasource="DSI">
SELECT DISTINCTROW tdate, tsession,count(*) as count
FROM master 
Where tdate <> null AND tdate=#parsedatetime(form.tdate)# AND tsession='#form.tsession#'
group by tdate,tsession
</cfquery>

<cfif #dateformat(form.oldtdate,'m/d/yyyy')# neq #dateformat(form.tdate,'m/d/yyyy')# AND #form.tsession# eq 'AM'>
<cfif #dateformat(form.tdate,'m/d/yyyy')# gte #dateformat(NOW(),'m/d/yyyy')# AND #checkt.count# lt 12>
<cfquery name="balupdate" datasource="DSI">
UPDATE master SET loc='#form.loc#', flr='#form.flr#', office='#form.office#', ph='#form.ph#', wrkhrs='#form.wrkhrs#', blkberry='#form.blkberry#', mtype='#form.mtype#', dispo='#form.dispo#', itemdesc='#form.desc#', serial='#form.serial#', replacemodel='#form.model#', status='#form.status#',tdate='#form.tdate#', tsession='#form.tsession#', comment='#form.comment#' Where ID=#form.ID#
</cfquery>
<cfmail from="DSI Webpage Scheduler" to="Nancy.Bailey@ny.frb.org,Pamela.Andrews@ny.frb.org,Patricia.Gordon@ny.frb.org,Louis.Bryan@ny.frb.org"  subject="User #Form.lname#,#form.fname# has been rescheduled for training">

The following User has been rescheduled for training

New Information

Name: #form.name#
Function: #form.funcname#
Location: #form.loc#
Date and Session: #dateformat(form.tdate,'d/m/yyyy')#  #form.tsession#

</cfmail>
<span class="style1">Customer #form.name# Updated and Training Re-Scheduled</span>
<br>
<span class="style1">Refeshing Page...Please wait</span>
<meta http-equiv="refresh" content="1;URL=baleditschedule2.cfm?funcname=#form.funcname#&lname=#form.lname#">
<cfexit>
<cfelseif #dateformat(form.tdate,'m/d/yyyy')# lt #dateformat(Now(),'m/d/yyyy')# AND #checkt.count# lt 12>
<meta http-equiv="refresh" content="0;URL=functiondata3.cfm?ID=#form.ID#&error=11&name=#form.name#&actual=#form.actual#&tdate=#form.tdate#&tsession=#form.tsession#">
<cfexit>
<cfelseif #dateformat(form.tdate,'m/d/yyyy')# gte #dateformat(now(),'m/d/yyyy')# AND #checkt.count# gte 12>
<meta http-equiv="refresh" content="0;URL=functiondata3.cfm?ID=#form.ID#&error=12&name=#form.name#&actual=#form.actual#&tdate=#form.tdate#&tsession=#form.tsession#">
<cfexit>
</cfif>
</cfif>
<!-------------------------------------------PM--------------------------------------------------->
<cfif #dateformat(form.oldtdate,'m/d/yyyy')# neq #dateformat(form.tdate,'m/d/yyyy')# AND #form.tsession# eq 'PM'>
<cfif #dateformat(form.tdate,'m/d/yyyy')# gte #dateformat(NOW(),'m/d/yyyy')# AND #checkt.count# lt 12>
<cfquery name="balupdate" datasource="DSI">
UPDATE master SET loc='#form.loc#', flr='#form.flr#', office='#form.office#', ph='#form.ph#', wrkhrs='#form.wrkhrs#', blkberry='#form.blkberry#', mtype='#form.mtype#', dispo='#form.dispo#', itemdesc='#form.desc#', serial='#form.serial#', replacemodel='#form.model#', status='#form.status#',tdate='#form.tdate#', tsession='#form.tsession#', comment='#form.comment#' Where ID=#form.ID#
</cfquery>
<cfmail from="DSI Webpage Scheduler" to="Nancy.Bailey@ny.frb.org,Pamela.Andrews@ny.frb.org,Patricia.Gordon@ny.frb.org,Louis.Bryan@ny.frb.org"  subject="User #Form.lname#,#form.fname# has been rescheduled for training">

The following User has been rescheduled for training

New Information

Name: #form.name#
Function: #form.funcname#
Location: #form.loc#
Date and Session: #dateformat(form.tdate,'d/m/yyyy')#  #form.tsession#

</cfmail>
<span class="style1">Customer #form.name# Updated and Training Scheduled</span>
<br>
<span class="style1">Refeshing Page...Please wait</span>
<meta http-equiv="refresh" content="1;URL=baleditschedule2.cfm?funcname=#form.funcname#&lname=#form.lname#">
<cfexit>
<cfelseif #dateformat(form.tdate,'m/d/yyyy')# lt #dateformat(Now(),'m/d/yyyy')# AND #checkt.count# lt 12>
<meta http-equiv="refresh" content="0;URL=functiondata3.cfm?ID=#form.ID#&error=11&name=#form.name#&actual=#form.actual#&tdate=#form.tdate#&tsession=#form.tsession#">
<cfexit>
<cfelseif #dateformat(form.tdate,'m/d/yyyy')# gte #dateformat(now(),'m/d/yyyy')# AND #checkt.count# gte 12>
<meta http-equiv="refresh" content="0;URL=functiondata3.cfm?ID=#form.ID#&error=12&name=#form.name#&actual=#form.actual#&tdate=#form.tdate#&tsession=#form.tsession#">
<cfexit>
</cfif>
</cfif>

</cfif>

<cfif #dateformat(form.oldtdate,'m/d/yyyy')# eq #dateformat(form.tdate,'m/d/yyyy')#>
<cfquery name="balupdate" datasource="DSI">
UPDATE master SET loc='#form.loc#', flr='#form.flr#', office='#form.office#', ph='#form.ph#', wrkhrs='#form.wrkhrs#', blkberry='#form.blkberry#', mtype='#form.mtype#', dispo='#form.dispo#', itemdesc='#form.desc#', serial='#form.serial#', replacemodel='#form.model#', status='#form.status#', comment='#form.comment#' Where ID=#form.ID#
</cfquery>
<span class="style1">Customer #form.name# Updated</span>
<br>
<span class="style1">Refeshing Page...Please wait</span>
<meta http-equiv="refresh" content="1;URL=baleditschedule2.cfm?funcname=#form.funcname#&lname=#form.lname#">
<cfexit>
</cfif>

<!------------------------------------------------------------------------------------------------>
</cfoutput>

<cfcatch type="any">
<cfoutput><meta http-equiv="refresh" content="1;URL=baleditschedule2.cfm?funcname=#form.funcname#&lname=#form.lname#"></cfoutput>
</cfcatch>

</cftry>










<!-- InstanceEndEditable --></td>
              </tr>
            </table> </td>
        </tr>
        <tr> 
          <td valign="top" bgcolor="#FFFFFF">&nbsp;</td>
        </tr>
        <tr> 
          <td valign="top" bgcolor="#999999"><font color="#FFFFFF">This site optimally 
            viewed with Internet Explorer running on Windows 2000 or higher.</font></td>
        </tr>
      </table></td>
  </tr>
</table>
<map name="Map">
              <area shape="rect" coords="19,2,151,48" href="http://www.it.ny.frb.org/wcsd-dsi">
</map>
</body>
<!-- InstanceEnd --></html>

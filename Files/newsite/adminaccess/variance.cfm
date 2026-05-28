
<html><!-- InstanceBegin template="/Templates/dsi.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<!-- InstanceBeginEditable name="doctitle" -->
<title>Variance Report</title>
<!-- InstanceEndEditable -->
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<!-- InstanceBeginEditable name="head" --><!-- InstanceEndEditable -->
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
                <td width="65%" align="left" valign="top"><img src="../images/dsilogo.jpg" alt="DSI Logo" width="187" height="67"></td>
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
<!--Output the Previous Weeks Information-->
<cfif dateformat(now(),'dddd') eq 'Monday'>
<cfset bdate=dateformat(now(),'m/d/yyyy')-7>
<cfset edate=dateformat(now(),'m/d/yyyy')-3>
<cfelseif dateformat(now(),'dddd') eq 'Tuesday'>
<cfset bdate=dateformat(now(),'m/d/yyyy')-8>
<cfset edate=dateformat(now(),'m/d/yyyy')-4>
<cfelseif dateformat(now(),'dddd') eq 'Wednesday'>
<cfset bdate=dateformat(now(),'m/d/yyyy')-9>
<cfset edate=dateformat(now(),'m/d/yyyy')-5>
<cfelseif dateformat(now(),'dddd') eq 'Thursday'>
<cfset bdate=dateformat(now(),'m/d/yyyy')-10>
<cfset edate=dateformat(now(),'m/d/yyyy')-6>
<cfelseif dateformat(now(),'dddd') eq 'Friday'>
<cfset bdate=dateformat(now(),'m/d/yyyy')-11>
<cfset edate=dateformat(now(),'m/d/yyyy')-7>
<cfelseif dateformat(now(),'dddd') eq 'Saturday'>
<cfset bdate=dateformat(now(),'m/d/yyyy')-12>
<cfset edate=dateformat(now(),'m/d/yyyy')-8>
<cfelseif dateformat(now(),'dddd') eq 'Sunday'>
<cfset bdate=dateformat(now(),'m/d/yyyy')-13>
<cfset edate=dateformat(now(),'m/d/yyyy')-9>
</cfif>

<cfset #bdate#=#dateformat(bdate,'m/d/yyyy')#>
<cfset #edate#=#dateformat(edate,'m/d/yyyy')#>

<cfset bdate2=dateformat('2/1/2004','m/d/yyyy')>
<cfset #bdate2#=#dateformat(bdate2,'m/d/yyyy')#>


<cfquery name="report" datasource="newdsi">
SELECT count(*) as mi
FROM master
WHERE actualdate Between #parsedatetime(bdate)# AND #parsedatetime(edate)#
</cfquery>

<cfquery name="report1" datasource="newdsi">
SELECT count(*) as sch
FROM scheduled
WHERE sdate Between #parsedatetime(bdate)# AND #parsedatetime(edate)#
</cfquery>

<cfquery name="report2" datasource="newdsi">
SELECT count(*) as mitot
FROM master
WHERE actualdate Between #parsedatetime(bdate2)# AND #parsedatetime(edate)#
</cfquery>

<cfquery name="report3" datasource="newdsi">
SELECT count(*) as schtot
FROM scheduled
WHERE sdate Between #parsedatetime(bdate2)# AND #parsedatetime(edate)#
</cfquery>
<cfoutput>
<strong>
<cfset variance=#report.mi#-#report1.sch#>
</strong>
<p align="center" class="burgundy"><strong>FRB NY DSI PROJECT<br>
  Customer Migration<br>
  Progress Report<br>
  Week of #dateformat(bdate,'mmmm d, yyyy')#
</strong></p>
<p>&nbsp;</p>
<table width="100%"  border="0" cellpadding="2" cellspacing="5" bgcolor="##000000">
  <tr bgcolor="##CCCCCC" class="burgundy">
    <th scope="col"><div align="center">Scheduled</div></th>
    <th scope="col"><div align="center">Migrated</div></th>
    <th scope="col"><div align="center">Variance</div></th>
  </tr>
  <tr bgcolor="##FFFFFF">
    <td><div align="center">#report1.sch#</div></td>
    <td><div align="center">#report.mi#</div></td>
    <td><div align="center">#variance#</div></td>
  </tr>
</table>
<p align="center" class="burgundy"><strong>Totals</strong></p>
<cfset resch=17>
<cfset totalscheduled=(125+77+179+#report3.schtot#)-1>
<cfset totalmigrated=1+179+#report2.mitot#>
<cfset adj=#totalscheduled#-#totalmigrated#>
<cfset totalvariance=#resch#-#adj#>
<table width="100%"  border="0" cellpadding="2" cellspacing="5" bgcolor="##000000">
  <tr bgcolor="##CCCCCC" class="burgundy">
    <th scope="col"><div align="center">Total Scheduled</div></th>
    <th scope="col"><div align="center">Total Migrated</div></th>
  </tr>
  <tr bgcolor="##FFFFFF">
    <td><div align="center">#totalscheduled#</div></td>
    <td><div align="center">#totalmigrated#</div></td>
  </tr>
  <tr bgcolor="##CCCCCC">
    <td><div align="center" class="burgundy"><strong>Rescheduled Variance </strong></div></td>
    <td><div align="center" class="burgundy"><strong>Adjusted Variance </strong></div></td>
  </tr>
  <tr bgcolor="##FFFFFF">
    <td><div align="center">#resch#</div></td>
    <td><div align="center">#totalvariance#</div></td>
  </tr>
</table>
</cfoutput>
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

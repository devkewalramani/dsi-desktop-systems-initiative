
<html><!-- InstanceBegin template="/Templates/dsi.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<!-- InstanceBeginEditable name="doctitle" -->
<title>DSI Migration Website</title>
<!-- InstanceEndEditable -->
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<!-- InstanceBeginEditable name="head" --><!-- InstanceEndEditable -->
<link href="../../scripts/font.css" rel="stylesheet" type="text/css">

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
            <td height="20" bgcolor="#eeeeee"> <div align="center" class="burgundy"><strong>.:<a href="javascript:;" onClick="MM_showHideLayers('info2','','hide')"><img src="../../images/close1.jpg" width="100" height="15" border="0"></a>:.</strong></div></td>
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
                <td width="65%" align="left" valign="top"><img src="../../images/dsilogo.jpg" alt="DSI Logo" width="187" height="67"></td>
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
<cfquery name="getfunctions" datasource="newdsi">
Select distinct func
from master
where func <> 'Corrupt'
order by func asc
</cfquery>


<cfset bdate='2/1/2004'>
<cfset bdate=dateformat(bdate,'m/d/yyyy')>
<cfset edate=dateformat(now(),'m/d/yyyy')>
<cfset edate=dateformat(edate,'m/d/yyyy')>

<cfset bdate1=dateformat(now(),'m/d/yyyy')+1>
<cfset bdate1=dateformat(bdate1,'m/d/yyyy')>
<cfset edate1='1/1/2005'>
<cfset edate1=dateformat(edate1,'m/d/yyyy')>


<table width="100%"  border="0" cellpadding="1" cellspacing="1" bgcolor="#CCCCCC">
  <tr bgcolor="#eeeeee" class="burgundy">
    <th scope="col">Function Name</th>
    <th scope="col">Total Migrated To Date </th>
    <th scope="col">Total Scheduled</th>
	<th scope="col">Total UnScheduled</th> 
    <th scope="col">Total Devices</th>
	<th scope="col">Total Estimated Devices</th>
  </tr>
   
  
  <cfoutput query="getfunctions">
  <cfset totdev=0>
  
  <cfquery name="totmigrated" datasource="newdsi">
  Select count(*) as totmi
  from master
  where func='#func#' and actualdate >= #parsedatetime(bdate)# and actualdate <= #parsedatetime(edate)#
  </cfquery>
 
  <cfquery name="totsch" datasource="newdsi">
  Select count(*) as totsch
  from master
  where func='#func#' and actualdate >= #parsedatetime(bdate1)# and actualdate <= #parsedatetime(edate1)#
  </cfquery>
  
  <cfquery name="totunsch" datasource="newdsi">
  Select count(*) as totunsch
  from master
  where func='#func#' and actualdate is null and dispo <> 'Decommision' and dispo <> 'Exception'
  </cfquery>
  
  <cfset totdev=#totmigrated.totmi#+#totsch.totsch#+#totunsch.totunsch#>
  
  <cfquery name="totest" datasource="newdsi">
  Select tot
  from functotal
  where func='#func#'
  </cfquery>
  
  <tr bgcolor="##FFFFFF">
    <td>#func#</td>
    <td><div align="center">#totmigrated.totmi#</div></td>
    <td><div align="center">#totsch.totsch#</div></td>
    <td><div align="center">#totunsch.totunsch#</div></td>
	<td><div align="center">#totdev#</div></td>
	<td><div align="center">#totest.tot#</div></td>
  </tr>
  </cfoutput>
  <tr bgcolor="#FFFFFF">
  <td colspan="6"><hr noshade color="#CCCCCC"></td>
  </tr>
  <cfquery name="totalmigrated" datasource="newdsi">
  Select count(*) as totmitotal
  from master
  where actualdate >= #parsedatetime(bdate)# and actualdate <= #parsedatetime(edate)#
  </cfquery>
 
  <cfquery name="totalsch" datasource="newdsi">
  Select count(*) as totschtotal
  from master
  where actualdate >= #parsedatetime(bdate1)# and actualdate <= #parsedatetime(edate1)#
  </cfquery>
  
  <cfquery name="totalunsch" datasource="newdsi">
  Select count(*) as totunschtotal
  from master
  where actualdate is null and dispo <> 'Decommision' and dispo <> 'Exception'
  </cfquery>
  
  <cfset totaldev=#totalmigrated.totmitotal#+#totalsch.totschtotal#+#totalunsch.totunschtotal#>
  
  <cfoutput>
  <tr class="burgundy" bgcolor="##eeeeee">
  <td><strong>Totals</strong></td>
  <td><div align="center"><strong>#totalmigrated.totmitotal#</strong></div></td>
  <td><div align="center"><strong>#totalsch.totschtotal#</strong></div></td>
  <td><div align="center"><strong>#totalunsch.totunschtotal#</strong></div></td>
  <td><div align="center"><strong>#totaldev#</strong></div></td>
  <td><div align="center"></div></td>
  </tr>
  </cfoutput>
</table>
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

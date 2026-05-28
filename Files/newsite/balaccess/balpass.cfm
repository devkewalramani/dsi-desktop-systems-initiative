
<html><!-- InstanceBegin template="/Templates/dsi.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<!-- InstanceBeginEditable name="doctitle" -->
<title>Secure Area</title>
<!-- InstanceEndEditable -->
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<!-- InstanceBeginEditable name="head" -->
<SCRIPT LANGUAGE="JavaScript">
<!-- Idea by:  Nic Wolfe (Nic@TimelapseProductions.com) -->
<!-- Web URL:  http://fineline.xs.mw -->

<!-- This script and many more are available free online at -->
<!-- The JavaScript Source!! http://javascript.internet.com -->

<!-- Begin
function popUp(URL) {
day = new Date();
id = day.getTime();
eval("page" + id + " = window.open(URL, '" + id + "', 'toolbar=0,scrollbars=0,location=0,statusbar=0,menubar=0,resizable=0,width=800,height=600');");
}
// End -->
</script>


<style type="text/css">
<!--
.style2 {font-size: 12}
-->
</style>
<style type="text/css">
<!--
.style3 {font-size: 12px}
-->
</style>
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

<cfquery name="balauth" datasource="newdsi">
SELECT *
FROM functionpass 
Where func='#form.Team#'
</cfquery>

				
<cfoutput query="balauth">
<cfif #bgrant# eq '0'>
<div align="center"><strong><span class="burgundy">Your function has not been given access rights to view this page, please call Glen Radziminski x6224 or Dev Kewalramani x2439</span>
</strong></div>
<cfelseif #form.pass# eq #pass# AND #bgrant# eq '1'>
<cfset funcname=#form.team#>

<br>
<table width="100%"  border="0" cellpadding="2" cellspacing="2" bgcolor="##cccccc">
  <tr bgcolor="##eeeeee">
    <th colspan="2" class="burgundy"><strong>SCHEDULING TOOLS</strong></th>
    </tr>
  <tr bgcolor="##FFFFFF">
    <td><div align="center"><strong><span class="burgundy"><a href="javascript:popUp('functioninfo.cfm?functionname=#funcname#')">VIEW YOUR FUNCTIONS RECORDS</a></span></strong></div></td>
    <td><div align="center"><strong><span class="burgundy"><a href="javascript:popUp('search.cfm?functionname=#funcname#')">TO RESCHEDULE AN EMPLOYEE</a></span></strong></div></td>
  </tr>
  <tr bgcolor="##eeeeee">
    <td colspan="2"><div align="center" class="burgundy"><strong>ADMINISTRATIVE TOOLS </strong></div></td>
    </tr>
  <tr bgcolor="##FFFFFF">
    <td><div align="center"></div>      <div align="center"><a href="assetsearch.cfm?func=#form.team#" target="_blank">ASSET SEARCH </a></div></td>
	<td><div align="center"><span class="burgundy"><a href="change/search2.cfm?func=#form.team#" target="_blank">RE-ASSIGN ASSET</a> </span></div></td>
    </tr>
  <tr bgcolor="##FFFFFF">
    <td><div align="center" class="burgundy"><a href="change/addnewcust.cfm?func=#form.team#&grp=#form.Make#" target="_blank">ADD CUSTOMER</a> </div></td>
    <td><div align="center" class="burgundy"><a href="change/deletesearch.cfm?func=#form.team#" target="_blank">DELETE CUSTOMER</a></div></td>
  </tr>
  <tr bgcolor="##FFFFFF">
    <td colspan="2" bgcolor="##eeeeee"><div align="center" class="burgundy"><strong>ATTACHMENT F TOOLS </strong></div></td>
    </tr>
  <tr bgcolor="##FFFFFF">
    <td width="50%"><div align="center" class="burgundy style2 style3"><a href="attachmentf/record.cfm?func=#form.team#" target="_blank">VIEW PENDING ATTACHMENT F PIPELINE </a> </div></td>
    <td><div align="center" class="style2 burgundy"><a href="attachmentf/search.cfm?func=#form.team#" target="_blank">SEARCH PENDING ATTACHMENT F PIPELINE</a></div></td>
  </tr>
  <tr bgcolor="##FFFFFF">
    <td colspan="2"><div align="center" class="style2 burgundy"><a href="attachmentf/search2.cfm?func=#form.team#" target="_blank">SEARCH APPROVED ATTACHMENT F's</a></div></td>
    </tr>
  <tr bgcolor="##FFFFFF">
    <td colspan="2"><div align="center" class="style2 burgundy"><a href="attachmentf/recordsearch3.cfm?func=#form.team#" target="_blank">VIEW ALL APPROVED ATTACHMENT F's</a></div></td>
  </tr>
</table>
<p>&nbsp;</p>
<table width="100%"  border="0" cellpadding="1" cellspacing="1" bgcolor="##cccccc">
  <tr bgcolor="##eeeeee">
    <th colspan="4" class="burgundy" scope="col">REPORTS </th>
    </tr>
  <tr align="center" bgcolor="##FFFFFF">
    <td colspan="2" width="50%"><a href="calendar.cfm?func=#form.team#" target="_blank">MIGRATION CALENDAR</a></td>
    <td colspan="2"width="50%"><a href="calendar2.cfm?func=#form.team#" target="_blank">ORIENTATION CALENDAR</a></td>
    </tr>
  <tr align="center" bgcolor="##FFFFFF">
    <td width="33%"><a href="remainmi.cfm?func=#form.team#" target="_blank">REMAINING TO BE MIGRATED</a> </td>
    <td width="33%" colspan="2"><a href="remaino.cfm?func=#form.team#" target="_blank">REMAINING TO BE SCHEDULED FOR ORIENTATION</a></td>
    <td width="33%"><a href="remaint.cfm?func=#form.team#" target="_blank">REMAINING TO BE SCHEDULED FOR TRAINING</a> </td>
  </tr>
  <tr align="center" bgcolor="##FFFFFF">
    <td bgcolor="##FFFFFF" class="burgundy"><a href="attendance.cfm?func=#form.team#" target="_blank">ORIENTATION ATTENDANCE REPORT</a> </td>
    <td colspan="2"><a href="viewworksheet.cfm?func=#form.team#" target="_blank">VIEW WORKSHEET</a></td>
    <td>&nbsp;</td>
  </tr>
</table>
  <cfelseif #form.pass# neq #pass# and #bgrant# eq '1'>
<meta http-equiv="refresh" content="0;URL=./balaccess.cfm?error=1">
</cfif>
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

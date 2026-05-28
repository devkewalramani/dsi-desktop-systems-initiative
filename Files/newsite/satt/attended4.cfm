
<html><!-- InstanceBegin template="/Templates/dsi.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<!-- InstanceBeginEditable name="doctitle" -->
<title>SATT Attendance Form</title>
<!-- InstanceEndEditable -->
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<!-- InstanceBeginEditable name="head" -->
<style type="text/css">
<!--
.style1 {font-size: 14px}
-->
</style>
<style type="text/css">
<!--
.style2 {font-size: 14}
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
<cfquery name="updateattendance" datasource="newdsi">
UPDATE master SET tattended='#attend#' WHERE ID=#form.ID#
</cfquery>				
								
<cfquery name="attended" datasource="newdsi">
Select *
From master
Where tdate Between #parsedatetime(form.bdate)# AND #parsedatetime(form.edate)# and tdate is not null
Order by lname ASC
</cfquery>
<cfoutput>
  <p align="center"><span class="style2 style1 burgundy"><strong>FRB NY DSI Project<br>
    SATT XP Training Attendance Form <br>
  From #form.bdate# to #form.edate#</strong></span></p>
  </cfoutput>
<table width="100%"  border="0" cellpadding="2" cellspacing="2" bgcolor="#cccccc">
  <tr bgcolor="#eeeeee" class="burgundy">
    <th scope="col"><strong>Last Name&nbsp;</strong></th>
    <th scope="col"><strong>First Name&nbsp;</strong></th>
	<th scope="col"><strong>Function&nbsp;</strong></th>
	<th scope="col"><strong>Training BU&nbsp;</strong></th>
    <th scope="col"><strong>Date&nbsp;</strong></th>
    <th scope="col"><strong>Session&nbsp;</strong></th>
    <th scope="col"><strong>Attended?&nbsp;</strong></th>
    <th scope="col">&nbsp;</th>
  </tr>
<cfoutput query="attended">
<cfif #tattended# eq "" OR #tattended# eq 'No' >
<form name="form" method="post" action="attended4.cfm">
  <input type="hidden" name="ID" value="#ID#">
  <input type="hidden" name="bdate" value="#form.bdate#">
  <input type="hidden" name="edate" value="#form.edate#">
  <tr bgcolor="#FFFFFF">
    <td>#lname#&nbsp;</td>
    <td>#fname#&nbsp;</td>
	<td>#func#&nbsp;</td>
	<td>#tbu#&nbsp;</td>
    <td>#dateformat(tdate,'m/d/yyyy')#&nbsp;</td>
    <td>#tsession#&nbsp;</td>
    <td><select name="attend">
	  <option value="#tattended#">#tattended#</option>
	  <option value=""></option>
      <option value="Yes">Yes</option>
      <option value="No">No</option>
    </select></td>
    <td><input name="save" type="submit" id="save" value="  Save  "></td>
  </tr>
</form>
</cfif>
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


<html><!-- InstanceBegin template="/Templates/dsi.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<!-- InstanceBeginEditable name="doctitle" -->
<title>DSI</title>
<!-- InstanceEndEditable -->
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<!-- InstanceBeginEditable name="head" -->
<meta http-equiv="refresh" content="60">
<SCRIPT LANGUAGE="JavaScript">
<!-- Idea by:  Nic Wolfe (Nic@TimelapseProductions.com) -->
<!-- Web URL:  http://fineline.xs.mw -->

<!-- This script and many more are available free online at -->
<!-- The JavaScript Source!! http://javascript.internet.com -->

<!-- Begin
function popUp(URL) {
day = new Date();
id = day.getTime();
eval("page" + id + " = window.open(URL, '" + id + "', 'toolbar=0,scrollbars=0,location=0,statusbar=0,menubar=0,resizable=0,width=315,height=200,left = 345.5,top = 273');");
}
// End -->
</script>
<style type="text/css">
<!--
.style2 {font-weight: bold}
-->
</style>
<style type="text/css">
<!--
.style4 {font-size: 10px}
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
<cfquery name="bal" datasource="newdsi">
SELECT *
FROM master
WHERE id=#url.id#
</cfquery>

<cfquery name="trainingdates" datasource="newdsi">
SELECT *
FROM training
</cfquery>

<div align="center">
  <style type="text/css">
<!--
.style2 {font-size: 12px}
.style4 {font-size: 12px; font-weight: bold; }
.style6 {
	font-size: 12px;
	color: #6F201C;
}
.style7 {font-weight: bold; color: #6F201C;}
-->
</style>
  <span class="burgundy"><strong>RESCHEDULE MODE</strong></span><br>
  <br>
</div>
<cfoutput query="bal">
<cfset funcname=#func#>

<cfform action="balupdate.cfm" method="post" target="_blank">
<input type="hidden" name="ID" value="#ID#"> 
<input type="hidden" name="funcname" value="#func#">
<input type="hidden" name="lname" value="#lname#">
<input type="hidden" name="fname" value="#fname#">
<input name="name" type="text" value="#lname#, #fname#" readonly="yes" class="burgundy"  style="background-color:##eeeeee ">
<br>
<div style="border:1px black solid; width:700px; height:100px; overflow-y:auto; overflow-x:auto;">
<table width="700" border="0">
  <tr align="left" valign="top" class="burgundy">
  <th class="style2" scope="col"><div align="center">Function</div></th>
  <th class="style2" scope="col"><div align="center">Logon</div></th>
  <th class="style2" scope="col"><div align="center">Context</div></th>
    <th class="style2" scope="col"><div align="center">Location</div></th>
    <th class="style2" scope="col"><div align="center">Floor</div></th>
    <th class="style2" scope="col"><div align="center">Cube/Office</div></th>
    <th class="style2" scope="col"><div align="center">Phone</div></th>
    <th class="style2" scope="col"><div align="center">Work Hours</div></th>
    <th class="style2" scope="col"><div align="center">Black Berry</div></th>
    <th class="style2" scope="col"><div align="center">Machine Type</div></th>
    <th class="style2" scope="col"><div align="center">Disposition</div></th>
    <th class="style2" scope="col"><div align="center">Machine Description</div></th>
    <th class="style2" scope="col"><div align="center">Serial</div></th>
    <th class="style2" scope="col"><div align="center">Replacement Model</div></th>
    <th class="style2" scope="col"><div align="center">Status</div></th>
    </tr>
  <tr>
  <td><input type="text" name="func" value="#func#" size="15" maxlength="15"></td>
  <td><input type="text" name="logon" value="#logon#" size="15" maxlength="15"></td>
  <td><input type="text" name="context" value="#context#" size="15" maxlength="30"></td>
    <td><select name="loc">
	<option value="#loc#">#loc#</option>
	<option value=""></option>
	  <option value="BUFFALO">BUFFALO</option>
      <option value="EROC">EROC</option>
	  <option value="HO">HO</option>
	  <option value="NEWARK">NEWARK</option>
	  <option value="UTICA">UTICA</option>
    </select></td>
    <td><input type="text" name="flr" value="#flr#" size="15" maxlength="15"></td>
    <td><input type="text" name="office" value="#office#" size="15" maxlength="15"></td>
    <td><input type="text" name="ph" value="#ph#" size="10" maxlength="10"></td>
    <td><input type="text" name="wrkhrs" value="#wrkhrs#" size="15" maxlength="15"></td>
    <td><select name="blkberry">
	<option value="#blkberry#">#blkberry#</option>
	<option value=""></option>
      <option value="Yes">Yes</option>
      <option value="No">No</option>
    </select></td>
    <td><select name="mtype">
	  <option value="#mtype#">#mtype#</option>
	  <option value=""></option>
      <option value="Desktop">Desktop</option>
      <option value="Laptop">Laptop</option>
	  <option value="Customer Only">Customer Only</option>
	  <option value="Customer Only/Kiosk">Customer Only/Kiosk</option>
    </select></td>
    <td><select name="dispo" >
	  <option value="#dispo#">#dispo#</option>
	   <option value=""></option>
	  <option value="Production">Production</option>
      <option value="Exception">Exception</option>
      <option value="Test">Test</option>
	  <option value="Decommision">Decommision</option>
	  <option value="Shared">Shared</option>
	  <option value="Pooled(Device Only)">Pooled(Device Only)</option>
	  <option value="Kiosk">Kiosk</option>
	  <option value="Utility">Utility</option>
    </select></td>
    <td><input type="text" name="desc" value="#itemdesc#" size="15" maxlength="25"></td>
    <td><input type="text" name="serial" value="#serial#" size="15" maxlength="15"></td>
    <td><select name="model">
	  <option value="#replacemodel#">#replacemodel#</option>
	  <option value=""></option>
      <option value="Desktop GX150">Desktop GX150</option>
      <option value="Desktop GX240">Desktop GX240</option>
      <option value="Desktop GX260">Desktop GX260</option>
      <option value="Desktop GX270">Desktop GX270</option>
	  <option value="Desktop GX340">Desktop GX340</option>
      <option value="Laptop X30">Laptop X30</option>
      <option value="Laptop T30">Laptop T30</option>
      <option value="Laptop X31">Laptop X31</option>
      <option value="Laptop T40">Laptop T40</option>
	  <option value="Laptop D400">Laptop D400</option>
	  <option value="Laptop D600">Laptop D600</option>
    </select></td>
    <td><select name="status">
	  <option value="#status#">#status#</option>
	  <option value=""></option>
      <option value="New">New</option>
      <option value="Re-Image">Re-Image</option>
    </select></td>
    </tr>
</table>
</div>
<p><span class="style4">Comments</span><br>
    <textarea name="comment" cols="85" rows="2">#comment#</textarea>
  </p>
<p align="center">
  <input name="submit" type="submit" id="submit" value="SAVE">
</p>
<table width="100%"  border="0" cellpadding="1" cellspacing="1" bgcolor="##cccccc">
  <tr bgcolor="##eeeeee" class="burgundy">
    <th scope="col">Current Orientation Scheduled</th>
    <th scope="col">Current Training Scheduled</th>
    <th scope="col">Current Migration Scheduled</th>
  </tr>
  <tr bgcolor="##FFFFFF">
    <td>Date: #dateformat(odate,'m/d/yyyy')# Session: #osession#  </td>
    <td>Date: #dateformat(tdate,'m/d/yyyy')# Session: #tsession#</td>
    <td>Date: #dateformat(actualdate,'m/d/yyyy')# Time: #timeformat(stime,'h:mm tt')#</td>
  </tr>
  <tr bgcolor="##FFFFFF">
    <td>
      <div align="center">
        <input type="button" value="Reschedule Orientation" onClick="javascript:popUp('./orientation/index.cfm?id=#id#&reschedule=1')">
      </div>
    </td>
    <td>
      <div align="center">
        <input type="button" value="Reschedule  XP Training" onClick="javascript:popUp('./training/index.cfm?id=#id#&reschedule=1')">
      </div>
    </td>
    <td>
      <div align="center">
        <input type="button" value="Reschedule  Migration" onClick="javascript:popUp('./migration/index.cfm?id=#id#&reschedule=1')">
      </div>
    </td>
  </tr>
</table>

</cfform>
</cfoutput>

</font>
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

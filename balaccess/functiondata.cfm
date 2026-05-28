
<html><!-- InstanceBegin template="/Templates/dsi.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<!-- InstanceBeginEditable name="doctitle" -->
<title>DSI</title>
<!-- InstanceEndEditable -->
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<!-- InstanceBeginEditable name="head" -->
<style type="text/css">
<!--
.style1 {color: #FF0000}
-->
</style>
<style type="text/css">
<!--
.style2 {font-weight: bold}
-->
</style>
<style type="text/css">
<!--
.style3 {font-size: 12px}
-->
</style>
<style type="text/css">
<!--
.style4 {font-size: 10px}
-->
</style>
<style type="text/css">
<!--
.style5 {color: #6f201c}
-->
</style>
<style type="text/css">
<!--
.style6 {color: #6F201C}
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
<cfquery name="bal" datasource="DSI">
SELECT *
FROM master
WHERE lname='#url.lname#' AND fname='#url.fname#'
ORDER BY lname ASC 
</cfquery>

<cfquery name="trainingdates" datasource="DSI">
SELECT *
FROM training
</cfquery>


<cfif dateformat(now(),'dddd') eq 'Monday'>
<cfset lockdate=dateformat(now(),'m/d/yyyy')+28>
<cfelseif dateformat(now(),'dddd') eq 'Tuesday'>
<cfset lockdate=dateformat(now(),'m/d/yyyy')+27>
<cfelseif dateformat(now(),'dddd') eq 'Wednesday'>
<cfset lockdate=dateformat(now(),'m/d/yyyy')+26>
<cfelseif dateformat(now(),'dddd') eq 'Thursday'>
<cfset lockdate=dateformat(now(),'m/d/yyyy')+25>
<cfelseif dateformat(now(),'dddd') eq 'Friday'>
<cfset lockdate=dateformat(now(),'m/d/yyyy')+24>
<cfelseif dateformat(now(),'dddd') eq 'Saturday'>
<cfset lockdate=dateformat(now(),'m/d/yyyy')+23>
<cfelseif dateformat(now(),'dddd') eq 'Sunday'>
<cfset lockdate=dateformat(now(),'m/d/yyyy')+22>
</cfif>
<cfoutput>
<cfset #lockdate#=#dateformat(lockdate,'m/d/yyyy')#>
</cfoutput>
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


<cfoutput query="bal">
<cfset funcname=#func#>
<cfif #dateformat(actualdate,'m/d/yyyy')# lt #lockdate# AND #actualdate# neq "">
<cfquery name="changelock" datasource="DSI">
Update master Set lock='y' Where ID=#ID#
</cfquery>
<cfform action="baleditschedule2.cfm?lname=#lname#&funcname=#func#" method="post"  enctype="application/x-www-form-urlencoded">
  <table width="700" border="0">
    <tr align="left">
      <th class="style2" scope="col">Last Name</th>
      <th class="style2" scope="col">First Name</th>
      <th class="style2" scope="col">Orientation Date</th>
      <th class="style2" scope="col">Orientation Session</th>
      <th class="style2" scope="col">Migration Date</th>
	  <th class="style2" scope="col">Migration Time</th>
    </tr>
    <tr bgcolor="##CCCCCC">
      <td>#lname#</td>
      <td>#fname#</td>
      <td>#dateformat(odate,'m/d/yyyy')#</td>
      <td>#osession#</td>
      <td>#dateformat(actualdate,'m/d/yyyy')#</td>
	  <td>#timeformat(stime,'h:mm tt')#</td>
    </tr>
  </table>
<cfif #dateformat(actualdate,'m/d/yyyy')# lte #dateformat(now(),'m/d/yyyy')# >
  <span class="style6 style7"><strong>This Customer has Been Migrated!  </strong></span>
  <hr align="left" width="700" noshade> 
<cfelseif #dateformat(actualdate,'m/d/yyyy')# gt #dateformat(now(),'m/d/yyyy')# >
<input name="reschedule" type="submit" id="reschedule" value="Re-Schedule This Customer">
<hr align="left" width="700" noshade>
</cfif>
</cfform>
<cfelseif #lock# eq 'y'>
<cfform action="baleditschedule2.cfm?lname=#lname#&funcname=#func#" method="post"  enctype="application/x-www-form-urlencoded">
  <table width="700" border="0">
    <tr align="left">
      <th class="style2" scope="col">Last Name</th>
      <th class="style2" scope="col">First Name</th>
      <th class="style2" scope="col">Orientation Date</th>
      <th class="style2" scope="col">Orientation Session</th>
      <th class="style2" scope="col">Migration Date</th>
	  <th class="style2" scope="col">Migration Time</th>
    </tr>
    <tr bgcolor="##CCCCCC">
      <td>#lname#</td>
      <td>#fname#</td>
      <td>#dateformat(odate,'m/d/yyyy')#</td>
      <td>#osession#</td>
      <td>#dateformat(actualdate,'m/d/yyyy')#</td>
	  <td>#timeformat(stime,'h:mm tt')#</td>
    </tr>
  </table>
<input name="reschedule" type="submit" id="reschedule" value="Re-Schedule This Customer">
<span class="style6  style1 style3 style4 style5"><strong>* this customer has been rescheduled before</strong></span>
<hr align="left" width="700" noshade>
</cfform>

<cfelseif #dateformat(actualdate,'m/d/yyyy')# gte #dateformat(lockdate,'m/d/yyyy')# OR #actualdate# eq "">
<cfform action="balupdate.cfm" method="post" >
<input type="hidden" name="ID" value="#ID#"> 
<input type="hidden" name="midate" value="#midate#">
<input type="hidden" name="funcname" value="#func#">
<input type="hidden" name="lname" value="#lname#">
<input type="hidden" name="fname" value="#fname#">
<input type="hidden" name="oldodate" value="#odate#">
<input type="hidden" name="oldtdate" value="#tdate#">
<input name="name" type="text" value="#lname#, #fname#" readonly="yes" class="burgundy"  style="background-color:##eeeeee ">
<br>
<div style="border:1px black solid; width:700px; height:100px; overflow-y:auto; overflow-x:auto;">
<table width="700" border="0">
  <tr align="left" valign="bottom">
    <th class="style2" scope="col">Location</th>
    <th class="style2" scope="col">Floor</th>
    <th class="style2" scope="col">Cube/Office</th>
    <th class="style2" scope="col">Phone</th>
    <th class="style2" scope="col">Work Hours</th>
    <th class="style2" scope="col">Black Berry</th>
    <th class="style2" scope="col">Machine Type</th>
    <th class="style2" scope="col">Disposition</th>
    <th class="style2" scope="col">Machine Description</th>
    <th class="style2" scope="col">Serial</th>
    <th class="style2" scope="col">Replacement Model</th>
    <th class="style2" scope="col">Status</th>
    <th valign="bottom" class="style2" scope="col">Orientation Date <span class="style6 style4">(m/d/yyyy)</span> </th>
    <th class="style2" scope="col">Session</th>
    <th align="left" valign="bottom" class="style2" scope="col">XP Training Date <span class="style6 style4">(m/d/yyyy)</span></th>
    <th class="style2" scope="col">Session</th>
    <th align="left" valign="bottom" class="style2" scope="col">Migration Date <span class="style6 style4">(m/d/yyyy)</span></th>
    <th class="style2" scope="col">Migration Time</th>
  </tr>
  <tr>
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
      <option value="Desktop GX110">Desktop GX110</option>
      <option value="Desktop GX150">Desktop GX150</option>
      <option value="Desktop GX240">Desktop GX240</option>
      <option value="Desktop GX260">Desktop GX260</option>
      <option value="Desktop GX270">Desktop GX270</option>
	  <option value="Desktop GX340">Desktop GX340</option>
      <option value="Laptop T23">Laptop T23</option>
      <option value="Laptop X30">Laptop X30</option>
      <option value="Laptop T30">Laptop T30</option>
      <option value="Laptop X31">Laptop X31</option>
      <option value="Laptop T40">Laptop T40</option>
    </select></td>
    <td><select name="status">
	  <option value="#status#">#status#</option>
	  <option value=""></option>
      <option value="New">New</option>
      <option value="Re-Image">Re-Image</option>
    </select></td>
    <td><cfinput type="text" name="odate" value="#dateformat(odate,'m/d/yyyy')#" size="15" maxlength="15" required="no" validate="date" message="Please Enter a valid Date"></td>
    <td><select name="osession">
	<option value="#osession#">#osession#</option>
	<option value=""></option>
      <option value="AM">AM</option>
      <option value="PM">PM</option>
    </select></td>
    <td>
	<cfselect name="tdate">
	<option value="#dateformat(tdate,'m/d/yyyy')#">#dateformat(tdate,'m/d/yyyy')#</option>
	<option value=""></option>
	<cfloop query="trainingdates">
	<option value="#dateformat(trainingdates.trainingdate,'m/d/yyyy')#">#dateformat(trainingdates.trainingdate,'m/d/yyyy')#</option>
	</cfloop>
	</cfselect></td>
    <td><select name="tsession">
	<option value="#tsession#">#tsession#</option>
	<option value=""></option>
      <option value="AM">AM</option>
      <option value="PM">PM</option>
    </select></td>
    <td align="left" valign="top"><cfinput type="text" name="actual" value="#dateformat(actualdate,'m/d/yyyy')#" size="15" maxlength="15"></td>
	<td><select name="time">
	<option value="#timeformat(stime,'h:mm tt')#">#timeformat(stime,'h:mm tt')#</option>
	<option value=""></option>
      <option value="9:30 AM">9:30 AM</option>
      <option value="10:00 AM">10:00 AM</option>
	  <option value="10:30 AM">10:30 AM</option>
	  <option value="11:00 AM">11:00 AM</option>
	  <option value="11:30 AM">11:30 AM</option>
	  <option value="12:00 PM">12:00 PM</option>
    </select></td>
  </tr>
</table>
</div>
<span class="style4">Comments</span><br>
<textarea name="comment" cols="85" rows="2">#comment#</textarea>
<em><br>
</em><br>
<input name="submit" type="submit" id="submit" value="SUBMIT">
<hr align="left" width="700" noshade>
</cfform>
</cfif>
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


<html><!-- InstanceBegin template="/Templates/dsi.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<!-- InstanceBeginEditable name="doctitle" -->
<title>Administrative Re-schedule Tool</title>
<!-- InstanceEndEditable -->
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<!-- InstanceBeginEditable name="head" -->
<style type="text/css">
<!--
.style6 {font-size: 10px}
-->
</style>
<style type="text/css">
<!--
.style7 {font-size: x-small}
-->
</style>
<style type="text/css">
<!--
.style8 {font-weight: bold}
-->
</style><!-- InstanceEndEditable -->
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
				

	<!--display information-->
				

<cfquery name="lookup" datasource="DSI">
Select *
From master
Where func='Regs'
Order by lname ASC
</cfquery>

	<table width="100%"  border="0" align="center" cellpadding="2" cellspacing="2" bgcolor="##000000">
	<tr valign="bottom" bgcolor="##CCCCCC" class="burgundy">
        <th scope="col"><div align="center" class="style7">ID</div></th>
		<th scope="col"><div align="center" class="style6 style8 style7"><strong>Name</strong></div></th>
        <th scope="col"><strong>Schedule Date</strong></th>
        <th scope="col"><div align="center" class="style8"><strong>Machine Type</strong></div></th>
        <th scope="col"><div align="center" class="style8"><strong>Disposition</strong></div></th>
		<th scope="col"><div align="center" class="style8"><strong>Status</strong></div></th>
      </tr>
	<cfoutput query="lookup">
	<cfif #actualdate# eq "">
	 <cfform method="post" action="adminschedulescript.cfm">
	 <input type="hidden" name="ID" value="#id#">
	 <input type="hidden" name="oldactual" value=" #dateformat(actualdate,'m/d/yyyy')#">
	 <input type="hidden" name="name" value="#fname# #lname#">
      <tr bgcolor="##FFFFFF">
        <td><input type="submit" value="Schedule"></td>
		<td><span class="style6">#lname#,#fname#&nbsp;</span></td>
		 <td ><cfinput type="text" name="midate" required="yes" message="Please enter a valid Date"></td>
		<td><select name="mtype">
	  <option value="#mtype#">#mtype#</option>
	  <option value=""></option>
      <option value="Desktop">Desktop</option>
      <option value="Laptop">Laptop</option>
	  <option value="Customer Only">Customer Only</option></select>
	  </td>
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
		<td><span class="style6">#status#&nbsp;</span></td>
      </tr>
	  	  </cfform>
		  	</cfif>
	</cfoutput>
	</table>

	
	<!--end display-->

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
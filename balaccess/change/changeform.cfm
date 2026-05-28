
<html><!-- InstanceBegin template="/Templates/dsi.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<!-- InstanceBeginEditable name="doctitle" -->
<title>Change Form</title>
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
                <td width="61%" align="left" valign="top"><img src="../../images/nuLogo.jpg" alt="Information Technology Logo" width="313" height="101" border="0"></td>
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
<cfoutput>
<!-- Asset request-->
<cfif #form.type# eq 'asset'>
  <div align="center" class="burgundy"><strong>Re-Assign Asset Request
  </strong></div>
  <cfform name="form" method="post" action="changescript.cfm">
<input type="hidden" name="requesttype" value="#form.type#">
<input type="hidden" name="func" value="#form.func#">
<br>
<span class="burgundy"><strong>Current User Info</strong></span><br>
<span class="burgundy">First Name</span>
<cfinput name="currentfname" type="text" required="yes" message="Please enter the current user's first name">
<br>
<span class="burgundy">Last Name</span>
<cfinput name="currentlname" type="text" required="yes" message="Please enter the current user's last name">
<br>
<span class="burgundy">Asset Type</span>
<cfselect name="assettype" required="yes" message="Please specify asset type">
<option value=""></option>
<option value="Desktop">Desktop</option>
<option value="Laptop">Laptop</option>
</cfselect>
<span class="burgundy">Asset Serial Number</span>
<cfinput name="serial" type="text" required="yes" message="Please enter the assets serial number">
<hr width="100%" noshade>
<span class="burgundy"><strong>Assign Asset to
</strong></span><br>
<span class="burgundy">First Name</span>
<cfinput name="newfname" type="text" required="yes" message="Please enter the new user's first name">
<br>
<span class="burgundy">Last Name</span>
<cfinput name="newlname" type="text" required="yes" message="Please enter the new user's last name">
<div align="left">
  <hr noshade>
  <br>
      <span class="burgundy"><strong>BAL requesting change?</strong> <br>
             <strong>First name</strong>
             <cfinput name="balfname" type="text" id="balfname" required="yes" message="Please enter your first name" >
             <strong>Last name</strong>
             <cfinput name="ballname" type="text" id="ballname" required="yes" message="Please enter your last name">
      </span>
      <p align="center">
          <input name="submit" type="submit" id="submit" value="Request Change">
    </p>
</div>
  </cfform>
<!-- Add request-->
<cfelseif #form.type# eq 'add'>
<div align="center" class="burgundy"><strong>Add New Customer
</strong></div>
<cfform name="form" method="post" action="changescript.cfm">
<input type="hidden" name="requesttype" value="#form.type#">
<input type="hidden" name="func" value="#form.func#">
<span class="burgundy">First Name</span>
<cfinput name="newfname" type="text" required="yes" message="Please enter the new user's first name">
<br>
<span class="burgundy">Last Name</span>
<cfinput name="newlname" type="text" required="yes" message="Please enter the new user's last name">
<hr width="100%" noshade>
<span class="burgundy"><strong>BAL requesting addition?</strong></span><br>
            <span class="burgundy"><strong>First name</strong></span>             
            <cfinput name="balfname" type="text" id="balfname" required="yes" message="Please enter your first name" >
             <span class="burgundy"><strong>Last name</strong></span>             
             <cfinput name="ballname" type="text" id="ballname" required="yes" message="Please enter your last name">
<div align="center"><br>
    <input name="submit" type="submit" id="submit" value="Request Addition">
    <br>
</div>
</cfform>
<!-- Delete request-->
<cfelseif #form.type# eq 'delete'>
<div align="center" class="burgundy"><strong>Delete Customer Request</strong>
</div>
<cfform name="form" method="post" action="changescript.cfm">
<input type="hidden" name="requesttype" value="#form.type#">
<input type="hidden" name="func" value="#form.func#">
<span class="burgundy">First Name</span>
<cfinput name="fname" type="text" required="yes" message="Please enter the user's first name">
<br>
<span class="burgundy">Last Name</span>
<cfinput name="lname" type="text" required="yes" message="Please enter the user's last name">
<div align="center">
  <p class="burgundy"><strong> Please specify Asset Type and Serial Number</strong></p>
  <p align="left"><span class="burgundy">Asset Type</span>    <cfselect name="assettype" required="yes" message="Please specify asset type">
<option value=""></option>
<option value="Desktop">Desktop</option>
<option value="Laptop">Laptop</option>
</cfselect>
    <span class="burgundy">Asset Serial Number</span>
    <cfinput name="serial" type="text" required="yes" message="Please enter the assets serial number">
<br>
<br>
<span class="burgundy">Reason
      </span><br>
      <textarea name="reason" cols="75" rows="3"></textarea>
      <br>
	  <hr width="100%" noshade>
      <div align="left"><span class="burgundy"><strong>BAL requesting deletion?</strong></span><br>
              <span class="burgundy"><strong>First name</strong></span>             
              <cfinput name="balfname" type="text" id="balfname" required="yes" message="Please enter your first name" >
               <span class="burgundy"><strong>Last name</strong></span>             
               <cfinput name="ballname" type="text" id="ballname" required="yes" message="Please enter your last name">
               </p>
      </div>
</div>
  <div align="center">
    <p>
      <input name="submit" type="submit" id="submit" value="Request Deletion">
        </p>
    </div>
</cfform>
<!-- Error handler-->
<cfelseif #form.type# eq "">
<div align="center"><br>
    <span class="burgundy"><strong>Please specify the Type of Request</strong></span>
</div>
<meta http-equiv="refresh" content="1;URL=changetype.cfm">
<br>
</cfif></cfoutput>
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

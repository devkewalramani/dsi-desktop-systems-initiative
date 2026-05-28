
<html><!-- InstanceBegin template="/Templates/dsi.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<!-- InstanceBeginEditable name="doctitle" -->
<title>Re-Assign Asset</title>
<cfquery name="detail" datasource="newdsi">
SELECT *
FROM master
WHERE ID = #URL.recordID# 
</cfquery>


<!-- InstanceEndEditable -->
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<!-- InstanceBeginEditable name="head" -->
<script language="JavaScript" type="text/JavaScript">
<!--
function MM_popupMsg(msg) { //v1.0
  alert(msg);
}
//-->
</script>
<style type="text/css">
<!--
.style2 {
	color: #560808;
	font-weight: bold;
	font-size: 18px;
}
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
				
<table width="100%" border="0" cellpadding="0" cellspacing="1" >
  <tr>
    <td width="709" height="390" valign="top">
      <table width="100%" height="385" border="0" cellpadding="0" cellspacing="1" >
  <tr>
    <td width="603" height="362" align="left" valign="top">
	<!--display information-->
	<cfoutput query="detail">
	<cfform name="form" method="post"  action="reassign.cfm">
	<p>
	  <input type="Hidden" name="ID" value="#ID#">
	  </p>
	<p align="center" class="style2"> NOTE THIS WILL NOT CHANGE ASSET TRACKING! ASSET TRACKING MUST BE CHANGED AND CONFIRMED PRIOR TO USING THIS UTILITY! </p>
	<hr align="left" width="100%" noshade>
	<p align="left" class="burgundy"><strong>Current Info<br>
	  </strong><br> 
              <span class="burgundy">First</span>              <input name="fname" type="text" id="fname" value="#Fname#" readonly="yes">
      
            <span class="burgundy">Last</span>              <input name="lname" type="text" id="lname" value="#Lname#" readonly="yes">
	           </p>
	<p align="left"><span class="burgundy">Asset</span>	  <input type="text" name="mtype" value="#mtype#" readonly="yes">
	  <span class="burgundy">serial</span>	  
	  <input type="text" name="serial" value="#serial#" readonly="yes">
	  </p>
	<hr align="left" width="100%" noshade>
	<p align="left" class="burgundy">Re-Assign To: (all fields are required) </p>
	<p align="left"><span class="burgundy">First</span>	  <cfinput type="text" name="newfname" required="yes" message="You must enter the new customers First Name">
	  <span class="burgundy">Last</span>	  
	  <cfinput type="text" name="newlname" required="yes" message="You must enter the new customers Last Name">
	</p>
	<p align="left">
	<span class="burgundy">B1 Logon ID 
	</span>
	<cfinput type="text" name="logon" required="yes" message="You must enter the new customers B1 Logon ID">
    <span class="burgundy">Novell Context</span>
    <cfinput type="text" name="context" required="yes" message="You must enter the new customers novell context">
	</p>
	<p align="left"><span class="burgundy"><strong>BAL requesting change?</strong></span><br> 
	  <span class="burgundy"><strong>First name</strong></span>	  
	  <cfinput name="balfname" type="text" id="balfname" required="yes" message="Please enter the First Name of the BAL making the request">
	  <span class="burgundy"><strong>Last name</strong></span>	  
	  <cfinput name="ballname" type="text" id="ballname" required="yes" message="Please enter the Last Name of the BAL making the request">
	  <br>
	                   </p>
	<p>
	  <input name="update" type="submit" id="update" value="Re-Assign Asset" >
	</p>

</cfform>
</cfoutput>
	
	<!--end display-->
	</td>
  </tr>
  <tr>
    <td height="19" align="left" valign="top">&nbsp;</td>
  </tr>
</table></td>
  </tr>
</table>

<P>&nbsp;</P>
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

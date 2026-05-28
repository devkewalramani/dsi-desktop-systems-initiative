<cfquery name="index" datasource="DSI">
SELECT func, lname, fname, logon, actualdate, stime
FROM master
ORDER BY stime ASC 
</cfquery>

<cfset today=dateformat(now(),'m/d/yyyy')>
<cfset #today#=#dateformat(today,'m/d/yyyy')#>

<cfquery name="countnum" datasource="DSI">
SELECT count(*) as count
FROM master
Where actualdate=#parsedatetime(today)#
</cfquery>



<html><title>DSI HOME PAGE</title><!-- InstanceBegin template="/Templates/dsi.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<!-- InstanceBeginEditable name="doctitle" -->

<!-- InstanceEndEditable -->
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<!-- InstanceBeginEditable name="head" -->
<style type="text/css">
<!--
.style10 {font-size: 11px}
-->
</style>
<style type="text/css">
<!--
.style14 {color: #6F201C}
-->
table.menu a { 
width:125px; 
border:1px solid #cccccc; 
display: block; 
} 
div.menu a {
color: #6F201C; 
background: #ffffff; 
text-decoration:none; 
font-size:10px;  
 
font-family: Verdana, Arial, Helvetica, sans-serif;
padding: 2px 5px;
font-weight:bold
}
div.menu a:link {
color: #6F201C; 
background: #eeeeee; 
}

div.menu a:active { 
color: #000000;
background: #eeeeee; 
}

div.menu a:visited {
color: #6F201C; 
background: #eeeeee; 
}

div.menu a:hover {
color: #eeeeee;
background: #6F201C; 
border:1px solid #cccccc; 
}
div.menu ( 
position:absolute;
top:0; 
left:0;
) 
</style>

<!-- InstanceEndEditable -->
<link href="scripts/font.css" rel="stylesheet" type="text/css">

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
            <td height="20" bgcolor="#eeeeee"> <div align="center" class="burgundy"><strong>.:<a href="javascript:;" onClick="MM_showHideLayers('info2','','hide')"><img src="images/close1.jpg" width="100" height="15" border="0"></a>:.</strong></div></td>
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
                <td width="61%" align="left" valign="top"><img src="images/nuLogo.jpg" alt="Information Technology Logo" width="313" height="101" border="0"></td>
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
<table width="712" height="221" border="1" cellpadding="0" cellspacing="0" bordercolor="#eeeeee" >
  <tr> 
    <td width="140" height="219" valign="top" bgcolor="#eeeeee">
	<div class="menu">
<table width="100%" height="100%" cellpadding="0" cellspacing="0" class="menu" summary="">
<tr>
<td><div align="center"><a href="adminaccess/adminaccess.cfm?error=0" target="_blank" class="menu" onfocus="this.blur()">DSI Admin Page</a></div></td>
</tr>
<tr>
<td><div align="center"><a href="team1/index.cfm" target="_blank" onfocus="this.blur()">DSI Team 1</a></div></td>
</tr>
<tr>
<td><div align="center"><a href="team2/index.cfm" target="_blank" onfocus="this.blur()">DSI Team 2</a></div></td>
</tr>
<tr>
<td><div align="center"><a href="calendar.cfm" target="_blank" onfocus="this.blur()">Migration Calendar</a></div></td>
</tr>
<tr>
<td><div align="center"><a href="balaccess/balaccess.cfm?error=0" target="_blank" onfocus="this.blur()">BAL Access Page</a></div></td>
</tr>
<tr>
<td><div align="center"><a href="attachmentf/index.cfm" target="_blank" onfocus="this.blur()">Attachment F Online</a></div></td>
</tr>
<tr>
<td><div align="center"><a href="nacs/nacsaccess.cfm?error=0" target="_blank" onfocus="this.blur()">NACS Admin</a></div></td>
</tr>
<tr>
<td><div align="center"><a href="satt/sattaccess.cfm?error=0" target="_blank" onfocus="this.blur()">SATT Admin</a></div></td>
</tr>
<tr>
<td><div align="center"><a href="search/index.cfm" target="_blank" onfocus="this.blur()">Customer Search</a></div></td>
</tr>
</table>
</div>
	  </td>
    <td width="565" align="left" valign="top">	<p align="center"><br>
	    <span class="style14"><strong>TODAY'S MIGRATIONS - <cfoutput query="countnum">#count# devices scheduled</cfoutput></strong></span></p>
		 <div align="center">
	<div style="border:0px; width:500px; height:150px; overflow-y:auto; overflow-x:auto;">
	      <table width="100%"  border="1" cellpadding="0" cellspacing="0" bordercolor="#eeeeee" >
	        <cfoutput query="index">  
            <cfif dateformat(Now(),'short') EQ #dateformat(actualdate,'short')#>
	        <tr>
                 <td width="12%" class="style10">#timeformat(stime,'h:mm tt')#&nbsp;</td>
                 <td width="16%" class="style10 style10">#fname#&nbsp;</td>
                 <td width="30%" class="style10 style10">#lname#&nbsp;</td>
		         <td width="30%" class="style10 style10">#logon#&nbsp;</td>
                 <td width="42%" class="style10 style10">#func#&nbsp;</td>
	        </tr>
             </cfif>
	  	        </cfoutput>	
          </table>
	      </div>
	</div>
	</td>
  </tr>
</table>
<div align="right"><a href="currentweek.cfm" target="_blank"><strong>View This Weeks Migration Schedule
</strong></a></div>
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

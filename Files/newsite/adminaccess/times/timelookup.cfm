
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
<center>
<cfoutput>
  <span class="burgundy"><strong>#form.team#</strong></span></cfoutput>
<span class="burgundy"><strong><br>
Current Time Slots Allowed
</strong></span>
<hr>

<cfquery name="gettime" datasource="newdsi">
Select * 
from timeslots
where func='#form.team#'
</cfquery>
<cfoutput query="gettime">
<form method="post" action="updatetimes.cfm">
<input type="hidden" name="func" value="#func#">
      <table width="100%"  border="0">
        <tr>
          <td>1<input type="text" value="#timeformat(gettime.ts1,'hh:mm tt')#" size="10" name="ts1"></td>
          <td>2<input type="text" value="#timeformat(gettime.ts2,'hh:mm tt')#" size="10" name="ts2"></td>
          <td>3<input type="text" value="#timeformat(gettime.ts3,'hh:mm tt')#" size="10" name="ts3"></td>
          <td>4<input type="text" value="#timeformat(gettime.ts4,'hh:mm tt')#" size="10" name="ts4"></td>
        </tr>
        <tr>
          <td>5<input type="text" value="#timeformat(gettime.ts5,'hh:mm tt')#" size="10" name="ts5"></td>
	  	  <td>6<input type="text" value="#timeformat(gettime.ts6,'hh:mm tt')#" size="10" name="ts6"></td>
	      <td>7<input type="text" value="#timeformat(gettime.ts7,'hh:mm tt')#" size="10" name="ts7"></td>
	      <td>8<input type="text" value="#timeformat(gettime.ts8,'hh:mm tt')#" size="10" name="ts8"></td>
        </tr>
        <tr>
          <td>9<input type="text" value="#timeformat(gettime.ts9,'hh:mm tt')#" size="10" name="ts9"></td>
	      <td>10<input type="text" value="#timeformat(gettime.ts10,'hh:mm tt')#" size="10" name="ts10"></td>
	      <td>11<input type="text" value="#timeformat(gettime.ts11,'hh:mm tt')#" size="10" name="ts11"></td>
	      <td>12<input type="text" value="#timeformat(gettime.ts12,'hh:mm tt')#" size="10" name="ts12"></td>
        </tr>
        <tr>
          <td>13<input type="text" value="#timeformat(gettime.ts13,'hh:mm tt')#" size="10" name="ts13"></td>
	      <td>14<input type="text" value="#timeformat(gettime.ts14,'hh:mm tt')#" size="10" name="ts14"></td>
	      <td>15<input type="text" value="#timeformat(gettime.ts15,'hh:mm tt')#" size="10" name="ts15"></td>
	      <td>16<input type="text" value="#timeformat(gettime.ts16,'hh:mm tt')#" size="10" name="ts16"></td>
        </tr>
        <tr>
          <td>17<input type="text" value="#timeformat(gettime.ts17,'hh:mm tt')#" size="10" name="ts17"></td>
	      <td>18<input type="text" value="#timeformat(gettime.ts18,'hh:mm tt')#" size="10" name="ts18"></td>
	      <td>19<input type="text" value="#timeformat(gettime.ts19,'hh:mm tt')#" size="10" name="ts19"></td>
	      <td>20<input type="text" value="#timeformat(gettime.ts20,'hh:mm tt')#" size="10" name="ts20"></td>
        </tr>
      </table>
	 <br>
	<input type="submit" value="Update">
</form>

</cfoutput>
</center>

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

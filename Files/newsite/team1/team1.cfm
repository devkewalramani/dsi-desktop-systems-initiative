
<html><!-- InstanceBegin template="/Templates/dsi.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<!-- InstanceBeginEditable name="doctitle" -->
<title>Team 1 Admin</title>
<!-- InstanceEndEditable -->
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<!-- InstanceBeginEditable name="head" -->


<script language='javascript' src="popcalendar.js"></script>


<style type="text/css">
<!--
.style4 {
	font-size: 18px;
	font-weight: bold;
	font-style: italic;
	color: #6F201C;
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


	<form name="form" method="post" action="team1add.cfm">
<label>Prep Date:</label>
<input type=text name='Date' size=10 maxlength=10 value='...' >
</label>
<script language='javascript'>
if (!document.layers) {
document.write("<input type=button onclick='popUpCalendar(this, form.Date, \"m/d/yyyy\")' value='select' style='font-size:11px'>")
}
</script>
<br>	
<p>
  <label></label>
  <label>Customer's</label>
  <br>  
  <label>First Name:
  <input name="fname" type="text" id="fname">
  Last Name:
  <input name="lname" type="text" id="lname">
    </label>
</p>
<p>
  <label>Tech:
  <select name="tech" id="tech">
    <option value="Dev">Dev</option>
    <option value="Joe">Joe</option>
    <option value="Mike">Mike</option>
    <option value="Vincent">Vincent</option>
          </select>
          </label>
</p>
<p>
    <label>
	Machine Type: 
    <select name="type" id="type">
      <option value="Desktop">Desktop</option>
      <option value="Laptop">Laptop</option>
    </select>
     Model#: 
     <select name="model" id="model">
      <option value="GX 110">GX 110</option>
      <option value="GX 150">GX 150</option>
      <option value="GX 240">GX 240</option>
      <option value="GX 260">GX 260</option>
      <option value="GX270">GX 270</option>
	  <option value="GX270">GX 340</option>
      <option value="T 23">T 23</option>
      <option value="X30">X 30</option>
      <option value="T30">T 30</option>
      <option value="X 31">X 31</option>
      <option value="T 40">T 40</option>
    </select>
</label>
  </p>
  <p>Status: 
    <select name="status">
      <option value="New">New</option>
      <option value="Re-Image">Re-Image</option>
    </select>
  </p>
  <p>
    <label></label>
    </p>
  <table width="99%"  border="0" align="center" cellpadding="0" cellspacing="0">
    <tr align="center" valign="top">
      <td width="12%">Install Hdd </td>
      <td width="11%">Sysprep</td>
      <td width="10%">Join RB </td>
      <td width="14%">Admin Policies</td>
      <td width="13%">Map K Drive</td>
      <td width="14%">Other Apps</td>
      <td width="12%">Context</td>
      <td width="14%">Rapid Restore </td>
    </tr>
    <tr align="center" valign="top">
      <td><input name="t1" type="text" id="t1" size="3" maxlength="3"></td>
      <td><input name="t2" type="text" id="t2" size="3" maxlength="3"></td>
      <td><input name="t3" type="text" id="t3" size="3" maxlength="3"></td>
      <td><input name="t4" type="text" id="t4" size="3" maxlength="3"></td>
      <td><input name="t5" type="text" id="t5" size="3" maxlength="3"></td>
      <td><input name="t6" type="text" id="t6" size="4" maxlength="4"></td>
      <td><input name="t7" type="text" id="t7" size="3" maxlength="3"></td>
      <td><input name="t8" type="text" id="t8" size="4" maxlength="4"></td>
    </tr>
  </table>
  <p><br>
      <label></label>
      <input name="new" type="submit" id="add" value="Submit">
</p>
  </form>

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

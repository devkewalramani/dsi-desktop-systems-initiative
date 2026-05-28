
<html><!-- InstanceBegin template="/Templates/dsi.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<!-- InstanceBeginEditable name="doctitle" -->
<title>Team 2</title>
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

<form name="form" method="post" action="team2add.cfm">
<label>Migration Date:</label>
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
    <option value="Woo">Woo</option>
    	  <option value="Chan">Chan</option>
		  <option value="Vail">Vail</option>
		  <option value="Avvento">Avvento</option>
		  <option value="Tudor">Tudor</option>
		  <option value="Segal">Segal</option>
		  <option value="Alleyne">Alleyne</option>
		  <option value="Da Silva">Da Silva</option>
		  <option value="Henriquez">Henriquez</option>
          </select>
          </label>
</p>
<p>
    <label>Machine Type: 
<select name="type" id="type">
      <option value="Desktop">Desktop</option>
      <option value="Laptop">Laptop</option>
    </select>
</label> 
   <label> Model:    
    <select name="model" id="model">
      <option value="GX110">GX110</option>
      <option value="GX150">GX150</option>
      <option value="GX240">GX240</option>
      <option value="GX260">GX260</option>
      <option value="GX270">GX270</option>
      <option value="Gx340">GX340</option>
      <option value="T23">T23</option>
      <option value="X30">X30</option>
      <option value="T30">T30</option>
      <option value="X31">X31</option>
      <option value="T40">T40</option>
    </select>
</label>
  </p>
<p>Migration Status: 
    <select name="status">
      <option value="New">Migrated</option>
      <option value="Re-Image">Not Migrated</option>
    </select>
</p>
<table width="78%"  border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="50%">Pre Extraction:
      <input name="t1" type="text" id="t1" tabindex="1" value="0" size="5" maxlength="5"></td>
    <td width="50%">SMS Client:
      <input name="t7" type="text" id="t7" tabindex="7" value="0" size="5" maxlength="5"></td>
  </tr>
  <tr>
    <td>Add to Groups:
      <input name="t2" type="text" id="t2" tabindex="2" value="0" size="5" maxlength="5" readonly="yes"></td>
    <td>Group Removal:
      <input name="t8" type="text" id="t8" tabindex="8" value="0" size="5" maxlength="5" readonly="yes">
      <label></label></td>
  </tr>
  <tr>
    <td>Extraction:
      <input name="t3" type="text" id="t3" tabindex="3" value="0" size="5" maxlength="5"></td>
    <td>User Login/Pass change: 
      <input name="t9" type="text" id="t9" tabindex="9" value="0" size="5" maxlength="5"></td>
  </tr>
  <tr>
    <td>Swap HW:
      <input name="t4" type="text" id="t4" tabindex="4" value="0" size="5" maxlength="5">
      <label></label></td>
    <td>Post Migration: 
      <input name="t10" type="text" id="t10" tabindex="10" value="0" size="5" maxlength="5"></td>
  </tr>
  <tr>
    <td>1st Boot:
      <input name="t5" type="text" id="t5" tabindex="5" value="0" size="5" maxlength="5"></td>
    <td>User verification: 
      <input name="t11" type="text" id="t11" tabindex="11" value="0" size="5" maxlength="5"></td>
  </tr>
  <tr>
    <td>Injection:
      <input name="t6" type="text" id="t6" tabindex="6" value="0" size="5" maxlength="5"></td>
    <td>Other: 
      <input name="t12" type="text" id="t12" tabindex="12" value="0" size="5" maxlength="5"> 
      </td>
  </tr>
 
</table>
<p>Comments:<br>
  <textarea name="comments" cols="80" rows="7" id="comments" tabindex="13"></textarea>
</p>
<p>
  <input name="new" type="submit" id="new2" value="Submit" tabindex="14">
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

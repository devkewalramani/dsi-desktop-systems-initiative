
<html><!-- InstanceBegin template="/Templates/dsi.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<!-- InstanceBeginEditable name="doctitle" -->
<title>Create Migration Schedule</title>
<!-- InstanceEndEditable -->
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<!-- InstanceBeginEditable name="head" -->
<style type="text/css">
<!--
.style2 {font-size: 10px}
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
<cfset d1=#form.bdate#>
<cfset d2=#form.edate#>
                  <table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="33%" align="left" valign="top"><span class="style2"><strong>Legend:<br>
White - Reimage Machine<br>
Blue - New Machine<br>
Grey - Tech Assigned</strong></span></td>
                      <td width="33%" align="center" valign="top"><cfoutput>
                        <p align="center"><span class="burgundy"><strong>FRB NY DSI Project<br>
    Customer Migration<br>
    Technician Assignment Page <br>
    Week of #form.bdate#</strong></span></p>
                      </cfoutput></td>
                      <td width="33%" align="right" valign="middle">
					  <cfoutput>
<cfform name="form2" action="printviewwschedule.cfm">
<input type="hidden" name="bdate" value="#d1#">
<input type="hidden" name="edate" value="#d2#">
<input name="submit" type="submit" id="submit" value="Print / View Schedule" >
</cfform>
</cfoutput>
                      </td>
                    </tr>
                  </table>
				  <br>
<cfquery name="report" datasource="DSI">
SELECT *
FROM master
WHERE actualdate Between #parsedatetime(form.bdate)# AND #parsedatetime(form.edate)#
Order BY actualdate,stime ASC
</cfquery>
<div style="border:0px; width:100%; height:300px; overflow-y:auto; overflow-x:auto;">
 <table width="100%" border="0" cellpadding="1" cellspacing="2" bgcolor="#000000">
  <tr bgcolor="#CCCCCC" class="burgundy">
	<th scope="col"><strong>ID</strong></th>
     <th scope="col"><strong>Date</strong></th>
      <th scope="col"><strong>Time</strong></th>
      <th scope="col"><strong>Tech</strong></th>
      <th scope="col"><strong>Floater</strong></th>
      <th scope="col"><strong>Name</strong></th>
      <th scope="col"><strong>Function</strong></th>
      <th scope="col"><strong>Loc</strong></th>
      <th scope="col"><strong>Flr</strong></th>
      <th scope="col"><strong>Phone</strong></th>
      <th scope="col"><strong>Machine</strong></th>
      <th scope="col"><strong>Status</strong></th>
    </tr>

<cfoutput query="report">
<cfif #tech# eq "" AND #status# neq 'new'>
<cfform name="form" method="post" action="updatetech.cfm">
    <tr bgcolor="##FFFFFF">
	 <td>
	 <input name="save" type="submit" value=" Save ">
	 </td>
      <td><span class="style2">#dateformat(actualdate,'m/d')#</span></td>
      <td>
	  <cfselect name="stime" id="stime" required="yes" message="Please Select a Time">
		<span class="style2">
		<option>#TimeFormat(stime,'h:mm tt')#</option>
        <option value="9:30 AM">9:30 AM</option>
		<option value="10:00 AM">10:00 AM</option>
		<option value="10:30 AM">10:30 AM</option>
		<option value="11:00 AM">11:00 AM</option>
		<option value="11:30 AM">11:30 AM</option>
		<option value="12:00 PM">12:00 PM</option>
        </span>
	  </cfselect>
	  </td>
	  <td>
	    <span class="style2">
	    <select name="tech">
	  	  <option value="#tech#">#tech#</option>
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
	    </span>	  </td>
      <td>
	    <span class="style2">
	    <select name="floater">
	  	  <option value="#floater#">#floater#</option>
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
	    </span>
		</td>
      <td><span class="style2">#fname# #lname#</span></td>
	  <td><span class="style2">#func#</span></td>
      <td><span class="style2">#loc#</span></td>
      <td><span class="style2">#flr#</span></td>
      <td><span class="style2">#ph#</span></td>
      <td><span class="style2">#mtype#</span></td>
      <td><span class="style2">#status#</span></td>
    </tr>
	<input type="hidden" name="ID" value="#ID#">
  	<input type="hidden" name="bdate" value="#form.bdate#">
  	<input type="hidden" name="edate" value="#form.edate#">
  	<input type="hidden" name="date" value="#dateformat(actualdate,'m/d/yyyy')#">
</cfform>
<cfelseif #tech# eq "" AND #status# eq 'new'>
<cfform name="form" method="post" action="updatetech.cfm">
    <tr  bgcolor="##3399FF">
	 <td>
	 <input name="save" type="submit" value=" Save ">
	 </td>
      <td><span class="style2">#dateformat(actualdate,'m/d')#</span></td>
      <td>
	  <cfselect name="stime" id="stime" required="yes" message="Please Select a Time">
		<span class="style2">
		<option>#TimeFormat(stime,'h:mm tt')#</option>
        <option value="9:30 AM">9:30 AM</option>
		<option value="10:00 AM">10:00 AM</option>
		<option value="10:30 AM">10:30 AM</option>
		<option value="11:00 AM">11:00 AM</option>
		<option value="11:30 AM">11:30 AM</option>
		<option value="12:00 PM">12:00 PM</option>
        </span>
	  </cfselect>
	  </td>
	  <td>
	    <span class="style2">
	    <select name="tech">
	  	  <option value="#tech#">#tech#</option>
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
	    </span>	  </td>
      <td>
	    <span class="style2">
	    <select name="floater">
	  	  <option value="#floater#">#floater#</option>
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
	    </span>	  </td>
      <td><span class="style2">#fname# #lname#</span></td>
	  <td><span class="style2">#func#</span></td>
      <td><span class="style2">#loc#</span></td>
      <td><span class="style2">#flr#</span></td>
      <td><span class="style2">#ph#</span></td>
      <td><span class="style2">#replacemodel#</span></td>
      <td><span class="style2">#status#</span></td>
    </tr>
	<input type="hidden" name="ID" value="#ID#">
  	<input type="hidden" name="bdate" value="#form.bdate#">
  	<input type="hidden" name="edate" value="#form.edate#">
  	<input type="hidden" name="date" value="#dateformat(actualdate,'m/d/yyyy')#">
</cfform>
<cfelseif #tech# neq "" AND #status# neq 'new'>
<cfform name="form" method="post" action="updatetech.cfm">
    <tr bgcolor="##999999">
	 <td>
	 <input name="save" type="submit" value="Update">
	 </td>
      <td><span class="style2">#dateformat(actualdate,'m/d')#</span></td>
      <td>
	  <cfselect name="stime" id="stime" required="yes" message="Please Select a Time">
		<span class="style2">
		<option>#TimeFormat(stime,'h:mm tt')#</option>
		<option value="9:30 AM">9:30 AM</option>
		<option value="10:00 AM">10:00 AM</option>
		<option value="10:30 AM">10:30 AM</option>
		<option value="11:00 AM">11:00 AM</option>
		<option value="11:30 AM">11:30 AM</option>
		<option value="12:00 PM">12:00 PM</option>
        </span>
	  </cfselect>
	  </td>
	  <td>
	    <span class="style2">
	    <select name="tech">
	  	  <option value="#tech#">#tech#</option>
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
	    </span>	  </td>
      <td>
	    <span class="style2">
	    <select name="floater">
	  	  <option value="#floater#">#floater#</option>
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
	    </span>	  </td>
      <td><span class="style2">#fname# #lname#</span></td>
	  <td><span class="style2">#func#</span></td>
      <td><span class="style2">#loc#</span></td>
      <td><span class="style2">#flr#</span></td>
      <td><span class="style2">#ph#</span></td>
      <td><span class="style2">#mtype#</span></td>
      <td><span class="style2">#status#</span></td>
    </tr>
	<input type="hidden" name="ID" value="#ID#">	
  	<input type="hidden" name="bdate" value="#form.bdate#">
  	<input type="hidden" name="edate" value="#form.edate#">
  	<input type="hidden" name="date" value="#dateformat(actualdate,'m/d/yyyy')#">
</cfform>
<cfelseif #tech# neq "" AND #status# eq 'new'>
<cfform name="form" method="post" action="updatetech.cfm">
    <tr bgcolor="##999999">
	 <td>
	 <input name="save" type="submit" value="Update">
	 </td>
      <td><span class="style2">#dateformat(actualdate,'m/d')#</span></td>
      <td>
	  <cfselect name="stime" id="stime" required="yes" message="Please Select a Time">
		<span class="style2">
		<option>#TimeFormat(stime,'h:mm tt')#</option>
		<option value="9:30 AM">9:30 AM</option>
		<option value="10:00 AM">10:00 AM</option>
		<option value="10:30 AM">10:30 AM</option>
		<option value="11:00 AM">11:00 AM</option>
		<option value="11:30 AM">11:30 AM</option>
		<option value="12:00 PM">12:00 PM</option>
        </span>
	  </cfselect>
	  </td>
	  <td>
	    <span class="style2">
	    <select name="tech">
	  	  <option value="#tech#">#tech#</option>
	 	  <option value="Woo">Woo</option>
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
	    </span>	  </td>
      <td>
	    <span class="style2">
	    <select name="floater">
	  	  <option value="#floater#">#floater#</option>
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
	    </span>	  </td>
      <td><span class="style2">#fname# #lname#</span></td>
	  <td><span class="style2">#func#</span></td>
      <td><span class="style2">#loc#</span></td>
      <td><span class="style2">#flr#</span></td>
      <td><span class="style2">#ph#</span></td>
      <td><span class="style2">#replacemodel#</span></td>
      <td><span class="style2">#status#</span></td>
    </tr>
	<input type="hidden" name="ID" value="#ID#">	
  	<input type="hidden" name="bdate" value="#form.bdate#">
  	<input type="hidden" name="edate" value="#form.edate#">
  	<input type="hidden" name="date" value="#dateformat(actualdate,'m/d/yyyy')#">
</cfform>
</cfif>
</cfoutput>

</table>
</div>

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


<head>
<link href="../scripts/font.css" rel="stylesheet" type="text/css">
<title>Schedule a Migration</title>
<script language='javascript' src="popcalendar.js"></script>

<SCRIPT LANGUAGE="JavaScript">

function checkrequired(which) {
var pass=true;
if (document.images) {
for (i=0;i<which.length;i++) {
var tempobj=which.elements[i];
if (tempobj.name.substring(0,8)=="required") {
if (((tempobj.type=="text"||tempobj.type=="textarea")&&
tempobj.value=='')||(tempobj.type.toString().charAt(0)=="s"&&
tempobj.selectedIndex==0)) {
pass=false;
break;
         }
      }
   }
}
if (!pass) {
shortFieldName=tempobj.name.substring(8,30).toUpperCase();
alert("Please make sure the "+shortFieldName+" field was properly completed.");
return false;
}
else
return true;
}
</script>

</head>

<body>
<cfquery name="main" datasource="newdsi">
Select *
from master
where id=#url.id#
</cfquery>

<cfoutput query="main">
<cfif #url.reschedule# eq '1'>
<form method="post" action="reschedulescript.cfm" onSubmit="return checkrequired(this)">
<input type="hidden" name="midate" value="#midate#">
<input type="hidden" name="stime" value="#stime#">
<input type="hidden" name="funcname" value="#func#">
<input type="hidden" name="ID" value="#ID#">
<input type="hidden" name="name" value="#fname# #lname#">
  <table width="300"  border="0" align="left" cellpadding="1" cellspacing="2" bgcolor="##000000">
    <tr>
      <th bgcolor="##CCCCCC" class="burgundy" scope="col"><strong>Migration Date (m/d/yy)</strong></th>
    </tr>
    <tr>
      <td bgcolor="##FFFFFF">
	  <div align="center">
	<input type="text" name="requireddate" value="#dateformat(actualdate,'m/d/yyyy')#" size="10">
<script language='javascript'>
if (!document.layers) {
document.write("<input type=button onclick='popUpCalendar(this, form.requireddate, \"m/d/yyyy\")' value='select' style='font-size:11px'>")
}
</script>
      </div>
	  </td>
    </tr>
    <tr>
      <th bgcolor="##CCCCCC" scope="col"><span class="burgundy"><strong>Migration Time</strong></span></th>
    </tr>
    <tr>
      <td bgcolor="##FFFFFF"><div align="center">
	<cfif #func# eq 'Check' and #loc# eq 'UTICA'>
	<select name="requiredtime">
	  <option selected>Select a time</option>
	  <option value="7:00 AM">7:00 AM</option>
	  <option value="7:30 AM">7:30 AM</option>
	  <option value="8:00 AM">8:00 AM</option>
	  <option value="8:30 AM">8:30 AM</option>
	  <option value="9:00 AM">9:00 AM</option>
      <option value="9:30 AM">9:30 AM</option>
      <option value="10:00 AM">10:00 AM</option>
	  <option value="10:30 AM">10:30 AM</option>
	  <option value="11:00 AM">11:00 AM</option>
	  <option value="11:30 AM">11:30 AM</option>
	  <option value="12:00 PM">12:00 PM</option>
	  <option value="12:30 AM">12:30 AM</option>
	  <option value="9:00 PM">9:00 PM</option>
	  <option value="9:30 PM">9:30 PM</option>
	  <option value="10:00 PM">10:00 PM</option>
	  <option value="10:30 PM">10:30 PM</option>
	  <option value="11:00 PM">11:00 PM</option>
	  <option value="11:30 PM">11:30 PM</option>
    </select>
	<cfelse>
	<select name="requiredtime">
	  <option selected>Select a time</option>
      <option value="9:30 AM">9:30 AM</option>
      <option value="10:00 AM">10:00 AM</option>
	  <option value="10:30 AM">10:30 AM</option>
	  <option value="11:00 AM">11:00 AM</option>
	  <option value="11:30 AM">11:30 AM</option>
	  <option value="12:00 PM">12:00 PM</option>
    </select>
	</cfif>
      </div></td>
    </tr>
	<tr>
      <td bgcolor="##FFFFFF"><div align="center">
        <input name="Submit" type="submit" value="Reschedule">
      </div></td>
    </tr>
  </table>
  <div align="center"></div>
</form>
<cfelse>
<form method="post" action="migrationscript.cfm" onSubmit="return checkrequired(this)">
<input type="hidden" name="midate" value="#midate#">
<input type="hidden" name="funcname" value="#func#">
<input type="hidden" name="ID" value="#ID#">
<input type="hidden" name="name" value="#fname# #lname#">
  <table width="300"  border="0" align="left" cellpadding="1" cellspacing="2" bgcolor="##000000">
    <tr>
      <th bgcolor="##CCCCCC" class="burgundy" scope="col"><strong>Migration Date (m/d/yy)</strong></th>
    </tr>
    <tr>
      <td bgcolor="##FFFFFF">
	  <div align="center">
	<input type="text" name="requireddate" value="#dateformat(actualdate,'m/d/yyyy')#" size="10">
<script language='javascript'>
if (!document.layers) {
document.write("<input type=button onclick='popUpCalendar(this, form.requireddate, \"m/d/yyyy\")' value='select' style='font-size:11px'>")
}
</script>
      </div>
	  </td>
    </tr>
    <tr>
      <th bgcolor="##CCCCCC" scope="col"><span class="burgundy"><strong>Migration Time</strong></span></th>
    </tr>
    <tr>
      <td bgcolor="##FFFFFF"><div align="center">
	<cfif #func# eq 'Check' and #loc# eq 'UTICA'>
	<select name="requiredtime">
	  <option selected>Select a time</option>
	  <option value="7:00 AM">7:00 AM</option>
	  <option value="7:30 AM">7:30 AM</option>
	  <option value="8:00 AM">8:00 AM</option>
	  <option value="8:30 AM">8:30 AM</option>
	  <option value="9:00 AM">9:00 AM</option>
      <option value="9:30 AM">9:30 AM</option>
      <option value="10:00 AM">10:00 AM</option>
	  <option value="10:30 AM">10:30 AM</option>
	  <option value="11:00 AM">11:00 AM</option>
	  <option value="11:30 AM">11:30 AM</option>
	  <option value="12:00 PM">12:00 PM</option>
	  <option value="12:30 AM">12:30 AM</option>
	  <option value="9:00 PM">9:00 PM</option>
	  <option value="9:30 PM">9:30 PM</option>
	  <option value="10:00 PM">10:00 PM</option>
	  <option value="10:30 PM">10:30 PM</option>
	  <option value="11:00 PM">11:00 PM</option>
	  <option value="11:30 PM">11:30 PM</option>
    </select>
	<cfelse>
	<select name="requiredtime">
	  <option selected>Select a time</option>
      <option value="9:30 AM">9:30 AM</option>
      <option value="10:00 AM">10:00 AM</option>
	  <option value="10:30 AM">10:30 AM</option>
	  <option value="11:00 AM">11:00 AM</option>
	  <option value="11:30 AM">11:30 AM</option>
	  <option value="12:00 PM">12:00 PM</option>
    </select>
	</cfif>
      </div></td>
    </tr>
	<tr>
      <td bgcolor="##FFFFFF"><div align="center">
        <input name="Submit" type="submit" value="Schedule">
      </div></td>
    </tr>
  </table>
  <div align="center"></div>
</form>
</cfif>
</cfoutput>
</body>


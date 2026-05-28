
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
      <th bgcolor="##CCCCCC" class="burgundy" scope="col"><strong>Requesting Migration Date</strong></th>
    </tr>
    <tr>
      <td bgcolor="##FFFFFF">
	  <div align="center">
	<input type="text" name="requireddate" value="#dateformat(actualdate,'m/d/yyyy')#" size="10">
<script language='javascript'>
if (!document.layers) {
document.write("<input type=button onclick='popUpCalendar(this, form.requireddate, \"m/d/yyyy\")' value='view calander' style='font-size:11px'>")
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
	 <cfquery name="gettime" datasource="newdsi">
	 Select *
	 from timeslots
	 where func='#main.func#'
	 </cfquery>
	 <cfloop query="gettime">
	<select name="requiredtime" size="4">
	  <option selected>Select a time</option>
	  <option value="#gettime.ts1#">#timeformat(gettime.ts1,'hh:mm tt')#</option>
	  <option value="#gettime.ts2#">#timeformat(gettime.ts2,'hh:mm tt')#</option>
	  <option value="#gettime.ts3#">#timeformat(gettime.ts3,'hh:mm tt')#</option>
	  <option value="#gettime.ts4#">#timeformat(gettime.ts4,'hh:mm tt')#</option>
	  <option value="#gettime.ts5#">#timeformat(gettime.ts5,'hh:mm tt')#</option>
	  <option value="#gettime.ts6#">#timeformat(gettime.ts6,'hh:mm tt')#</option>
	  <option value="#gettime.ts7#">#timeformat(gettime.ts7,'hh:mm tt')#</option>
	  <option value="#gettime.ts8#">#timeformat(gettime.ts8,'hh:mm tt')#</option>
	  <option value="#gettime.ts9#">#timeformat(gettime.ts9,'hh:mm tt')#</option>
	  <option value="#gettime.ts10#">#timeformat(gettime.ts10,'hh:mm tt')#</option>
	  <option value="#gettime.ts11#">#timeformat(gettime.ts11,'hh:mm tt')#</option>
	  <option value="#gettime.ts12#">#timeformat(gettime.ts12,'hh:mm tt')#</option>
	  <option value="#gettime.ts13#">#timeformat(gettime.ts13,'hh:mm tt')#</option>
	  <option value="#gettime.ts14#">#timeformat(gettime.ts14,'hh:mm tt')#</option>
	  <option value="#gettime.ts15#">#timeformat(gettime.ts15,'hh:mm tt')#</option>
	  <option value="#gettime.ts16#">#timeformat(gettime.ts16,'hh:mm tt')#</option>
	  <option value="#gettime.ts17#">#timeformat(gettime.ts17,'hh:mm tt')#</option>
	  <option value="#gettime.ts18#">#timeformat(gettime.ts18,'hh:mm tt')#</option>
	  <option value="#gettime.ts19#">#timeformat(gettime.ts19,'hh:mm tt')#</option>
	  <option value="#gettime.ts20#">#timeformat(gettime.ts20,'hh:mm tt')#</option>
    </select>
	</cfloop>
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
	
	 <cfquery name="gettime" datasource="newdsi">
	 Select *
	 from timeslots
	 where func='#main.func#'
	 </cfquery>
	 <cfloop query="gettime">
	<select name="requiredtime" size="4">
	  <option selected>Select a time</option>
	  <option value="#gettime.ts1#">#timeformat(gettime.ts1,'hh:mm tt')#</option>
	  <option value="#gettime.ts2#">#timeformat(gettime.ts2,'hh:mm tt')#</option>
	  <option value="#gettime.ts3#">#timeformat(gettime.ts3,'hh:mm tt')#</option>
	  <option value="#gettime.ts4#">#timeformat(gettime.ts4,'hh:mm tt')#</option>
	  <option value="#gettime.ts5#">#timeformat(gettime.ts5,'hh:mm tt')#</option>
	  <option value="#gettime.ts6#">#timeformat(gettime.ts6,'hh:mm tt')#</option>
	  <option value="#gettime.ts7#">#timeformat(gettime.ts7,'hh:mm tt')#</option>
	  <option value="#gettime.ts8#">#timeformat(gettime.ts8,'hh:mm tt')#</option>
	  <option value="#gettime.ts9#">#timeformat(gettime.ts9,'hh:mm tt')#</option>
	  <option value="#gettime.ts10#">#timeformat(gettime.ts10,'hh:mm tt')#</option>
	  <option value="#gettime.ts11#">#timeformat(gettime.ts11,'hh:mm tt')#</option>
	  <option value="#gettime.ts12#">#timeformat(gettime.ts12,'hh:mm tt')#</option>
	  <option value="#gettime.ts13#">#timeformat(gettime.ts13,'hh:mm tt')#</option>
	  <option value="#gettime.ts14#">#timeformat(gettime.ts14,'hh:mm tt')#</option>
	  <option value="#gettime.ts15#">#timeformat(gettime.ts15,'hh:mm tt')#</option>
	  <option value="#gettime.ts16#">#timeformat(gettime.ts16,'hh:mm tt')#</option>
	  <option value="#gettime.ts17#">#timeformat(gettime.ts17,'hh:mm tt')#</option>
	  <option value="#gettime.ts18#">#timeformat(gettime.ts18,'hh:mm tt')#</option>
	  <option value="#gettime.ts19#">#timeformat(gettime.ts19,'hh:mm tt')#</option>
	  <option value="#gettime.ts20#">#timeformat(gettime.ts20,'hh:mm tt')#</option>
    </select>
	</cfloop>
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


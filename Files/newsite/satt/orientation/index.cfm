<head>
<link href="../scripts/font.css" rel="stylesheet" type="text/css">
<title>Schedule Orientation</title>
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

<form method="post" action="orientationscript.cfm" onSubmit="return checkrequired(this)">
<input type="hidden" name="midate" value="#midate#">
<input type="hidden" name="funcname" value="#func#">
<input type="hidden" name="ID" value="#ID#">
<input type="hidden" name="name" value="#fname# #lname#">
  <table width="300"  border="0" align="left" cellpadding="1" cellspacing="2" bgcolor="##000000">
    <tr>
      <th bgcolor="##CCCCCC" class="burgundy" scope="col"><strong>Orientation Date (m/d/yy)</strong></th>
    </tr>
    <tr>
      <td bgcolor="##FFFFFF">
	  <div align="center">
	<input type="text" name="requireddate" value="#dateformat(odate,'m/d/yyyy')#" size="10" >
	<script language='javascript'>
if (!document.layers) {
document.write("<input type=button onclick='popUpCalendar(this, form.requireddate, \"m/d/yyyy\")' value='select' style='font-size:11px'>")
}
</script>
      </div>
	  </td>
    </tr>
    <tr>
      <th bgcolor="##CCCCCC" scope="col"><span class="burgundy"><strong> Orientation Session</strong></span></th>
    </tr>
    <tr>
      <td bgcolor="##FFFFFF"><div align="center">
	<select name="requiredsession">
	<option selected></option>
	<option value="AM">AM</option>
	<option value="PM">PM</option>
	</select>
      </div></td>
    </tr>
	 <tr>
      <th bgcolor="##CCCCCC" class="burgundy">Orientation BU </th>
    </tr>
    <tr>
      <td bgcolor="##FFFFFF"><div align="center">
        <input type="text" name="requiredbu" value="#obu#">
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
</cfoutput>
</body>


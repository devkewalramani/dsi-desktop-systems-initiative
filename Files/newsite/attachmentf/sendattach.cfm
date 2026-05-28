
<html><!-- InstanceBegin template="/Templates/dsi.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<!-- InstanceBeginEditable name="doctitle" -->
<title>attachment</title>
<!-- InstanceEndEditable -->
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<!-- InstanceBeginEditable name="head" -->

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


<cfquery name="checkattach" datasource="newdsi">
select custid
from customer
where custid='#form.id#'
</cfquery>

<cfset submitted=dateformat(now(),'m/d/yyyy')>
<cfoutput>

<cfif #checkattach.custid# eq "">

<cfquery name="addcust" datasource="newdsi">
INSERT INTO customer (custid,lname,fname,office,submitted,func,officer,bal,logon,ph,mtype,status,condata,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,comment) VALUES ('#form.id#','#form.lname#','#form.fname#','#form.office#','#submitted#','#form.func#','#form.officer#','#form.bal#','#form.logon#','#form.ph#','#form.mtype#','#form.status#','#form.condata#','#form.s1#','#form.s2#','#form.s3#','#form.s4#','#form.s5#','#form.s6#','#form.s7#','#form.s8#','#form.s9#','#form.s10#','#form.s11#','#form.s12#','#form.s13#','#form.s14#','#form.s15#','#form.s16#','#form.s17#','#form.s18#','#form.s19#','#form.s20#','#form.comment#')
</cfquery>

<cfquery name="updatemaster" datasource="newdsi">
UPDATE master SET ph='#form.ph#',office='#form.office#',attachstatus='pending' WHERE ID=#form.id#
</cfquery>



<cfmail from="DSI WEBSITE" to="#form.bal#@ny.frb.org" subject="#form.fname#, #form.lname# has filled out a Attachment F">

#form.fname# #form.lname# has filled out a Attachment F

Please visit your BAL page to View It and to Approve It

Thank you

DSI Staff
</cfmail>
</cfif>
</cfoutput>


<cfoutput>	
<p align="center" class="burgundy"><strong>Thank you<br>
  Your Attachment F has been Submitted to your BAL for approval.</strong></p>
<p align="center" class="burgundy"><strong><br>
      Note if you have more than one device, you must <br>
      fill out an seperate Attachment F for each device<br>
</strong></p>
<p align="center" class="burgundy"><strong>Fill out another Attachment F?
</strong></p>
<table width="220"  border="0" align="center" cellpadding="5" cellspacing="5">
  <tr align="center" valign="middle" class="burgundy">
    <form name="form" method="post" action="record.cfm">
	<input type="hidden" name="lname" value="#form.lname#">
	<input type="hidden" name="Team" value="#form.func#">
	<td width="50%" >
    <input name="Submit" type="submit" class="burgundy" value="     Yes     ">
    </td></form>
	<form>
    <td width="50%">
    <input name="Submit" type="button" class="burgundy" value="No Thank You" onClick="window.close()" >
    </td></form>
  </tr>
</table>
<div align="center"></div>
<p>&nbsp;</p>
</cfoutput>

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

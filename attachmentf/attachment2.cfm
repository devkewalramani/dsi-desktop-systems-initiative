
<html><!-- InstanceBegin template="/Templates/dsi.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<!-- InstanceBeginEditable name="doctitle" -->
<title>DSI</title>
<!-- InstanceEndEditable -->
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<!-- InstanceBeginEditable name="head" -->
<style type="text/css">
<!--
.style2 {font-weight: bold}
-->
</style>
<style type="text/css">
<!--
.style3 {font-size: 16px}
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
<cfquery name="soft" datasource="DSI">
select *
from attachment
order by name ASC
</cfquery>

<cfoutput>

<cfquery name="attach" datasource="DSI">
Select *
From customer
Where custid='#url.recordID#'
</cfquery>



<p align="center" class="burgundy"><strong>Attachment F- Customer Migration information Worksheet</strong></p>
    <p>Department Images to Deploy</p>
    <p>A customized Business Area COE image will automatically be deployed on each customer's PC. To ensure that <strong>all</strong> of the business applications used by you and your department are properly identified and deployed, please complete a separate form for each PC: Please identify the PC model type you will have <strong>after</strong> your migration by indicating in the appropriate column whether your existing PC will be re-imaged or replaced.</p>
    <hr align="left" width="100%" noshade>
	<form name="form" method="post" action="revised.cfm">
	<input type="hidden" name="ID" value="#url.recordID#">
    <table width="100%"  border="0">
      <tr>
        <td width="18%" bgcolor="##CCCCCC" class="burgundy">Full Name </td>
        <td width="33%"><input name="fname" type="text" id="fname" size="15" maxlength="25" value="#attach.fname#">
        <input name="lname" type="text" id="lname" size="20" maxlength="25" value="#attach.lname#"></td>
        <td width="17%" bgcolor="##CCCCCC" class="burgundy">Network ID (B1xxxyy)</td>
        <td width="32%"><input name="logon" type="text" id="logon" value="#attach.logon#"></td>
      </tr>
      <tr>
        <td bgcolor="##CCCCCC" class="burgundy">Cubicle/Office Location </td>
        <td><input name="office" type="text" id="office" value="#attach.office#"></td>
        <td bgcolor="##CCCCCC" class="burgundy">Phone No. </td>
        <td><input name="ph" type="text" id="ph" value="#attach.ph#"></td>
      </tr>
      <tr>
        <td bgcolor="##CCCCCC" class="burgundy">Function</td>
        <td><input name="func" type="text" id="func" value="#attach.func#" readonly="yes"></td>
        <td rowspan="2" align="left" valign="top" bgcolor="##CCCCCC" class="burgundy">PC Model Type and Status </td>
        <td rowspan="2"> <select name="mtype" id="mtype">
		 <option value="#attach.mtype#">#attach.mtype#</option>
      <option value=""></option>
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
          <select name="status" id="status">
		  <option value="#attach.status#">#attach.status#</option>
		  <option value=""></option>
            <option value="New">New</option>
            <option value="Re-image">Re-image</option>
          </select></td>
      </tr>
      <tr>
        <td bgcolor="##CCCCCC" class="burgundy">Department Officer </td>
        <td><input name="officer" type="text" value="#attach.officer#"></td>
      </tr>
      <tr>
        <td height="40" bgcolor="##CCCCCC" class="burgundy">Business Area Liaison </td>
        <td><input name="bal" type="text" value="#attach.bal#"></td>
        <td bgcolor="##CCCCCC" class="burgundy">Do you handle FRBNY Highly Confidential Data? </td>
        <td><select name="condata" id="condata">
		<option value="#attach.condata#">#attach.condata#</option>
		<option value=""></option>
          <option value="no">No</option>
          <option value="yes">Yes</option>
            </select></td>
      </tr>
    </table>
    <div align="center"></div>
    <hr align="left" width="100%" noshade>  
    <div align="center">
      <p><strong>List Other Department Business Applications Required<br> 
        </strong><span class="style2">(If you do not see applications required for your department on the <em>Line of Business Image Definitions </em>list </span></p>
      <hr align="left" width="100%" noshade>
    </div>
</cfoutput>
  
      <table width="100%"  border="1" cellpadding="0" cellspacing="0" bordercolor="#000000">
        <tr bgcolor="#eeeeee">
          <td width="50%" bgcolor="#eeeeee">1.
              <select name="s1">
			  <cfoutput><option value="#attach.s1#">#attach.s1#</option></cfoutput>
                <option value=""></option>
                <cfoutput query="soft">
                  <option value="#soft.name# (#soft.num#)">#soft.name#</option>
                </cfoutput>
              </select>
          <td width="50%" bgcolor="#eeeeee">11.
              <select name="s11">
                <cfoutput><option value="#attach.s11#">#attach.s11#</option></cfoutput>
                <option value=""></option>
                <cfoutput query="soft">
                  <option value="#soft.name# (#soft.num#)">#soft.name#</option>
                </cfoutput>
              </select>          </td>
        </tr>
        <tr bgcolor="#eeeeee">
          <td width="50%" bgcolor="#eeeeee">2.
              <select name="s2">
                <cfoutput><option value="#attach.s2#">#attach.s2#</option></cfoutput>
                <option value=""></option>
                <cfoutput query="soft">
                  <option value="#soft.name# (#soft.num#)">#soft.name#</option>
                </cfoutput>
              </select>          </td>
          <td width="50%" bgcolor="#eeeeee">12.
              <select name="s12">
                <cfoutput><option value="#attach.s12#">#attach.s12#</option></cfoutput>
                <option value=""></option>
                <cfoutput query="soft">
                  <option value="#soft.name# (#soft.num#)">#soft.name#</option>
                </cfoutput>
              </select>          </td>
        </tr>
        <tr bgcolor="#eeeeee">
          <td width="50%" bgcolor="#eeeeee">3.
              <select name="s3">
              <cfoutput><option value="#attach.s3#">#attach.s3#</option></cfoutput>
                <option value=""></option>
                <cfoutput query="soft">
                  <option value="#soft.name# (#soft.num#)">#soft.name#</option>
                </cfoutput>
              </select>          </td>
          <td width="50%" bgcolor="#eeeeee">13.
              <select name="s13">
                <cfoutput><option value="#attach.s13#">#attach.s13#</option></cfoutput>
                <option value=""></option>
                <cfoutput query="soft">
                  <option value="#soft.name# (#soft.num#)">#soft.name#</option>
                </cfoutput>
            </select></td>
        </tr>
        <tr bgcolor="#eeeeee">
          <td width="50%" bgcolor="#eeeeee">4.
              <select name="s4">
               <cfoutput><option value="#attach.s4#">#attach.s4#</option></cfoutput>
                <option value=""></option>
                <cfoutput query="soft">
                  <option value="#soft.name# (#soft.num#)">#soft.name#</option>
                </cfoutput>
            </select></td>
          <td width="50%" bgcolor="#eeeeee">14.
              <select name="s14">
                <cfoutput><option value="#attach.s14#">#attach.s14#</option></cfoutput>
                <option value=""></option>
                <cfoutput query="soft">
                  <option value="#soft.name# (#soft.num#)">#soft.name#</option>
                </cfoutput>
            </select></td>
        </tr>
        <tr bgcolor="#eeeeee">
          <td width="50%" bgcolor="#eeeeee">5.
              <select name="s5">
                <cfoutput><option value="#attach.s5#">#attach.s5#</option></cfoutput>
                <option value=""></option>
                <cfoutput query="soft">
                  <option value="#soft.name# (#soft.num#)">#soft.name#</option>
                </cfoutput>
            </select></td>
          <td width="50%" bgcolor="#eeeeee">15.
              <select name="s15">
                <cfoutput><option value="#attach.s15#">#attach.s15#</option></cfoutput>
                <option value=""></option>
                <cfoutput query="soft">
                  <option value="#soft.name# (#soft.num#)">#soft.name#</option>
                </cfoutput>
            </select></td>
        </tr>
        <tr bgcolor="#eeeeee">
          <td width="50%" bgcolor="#eeeeee">6.
              <select name="s6">
                <cfoutput><option value="#attach.s6#">#attach.s6#</option></cfoutput>
                <option value=""></option>
                <cfoutput query="soft">
                  <option value="#soft.name# (#soft.num#)">#soft.name#</option>
                </cfoutput>
            </select></td>
          <td width="50%" bgcolor="#eeeeee">16.
              <select name="s16">
                <cfoutput><option value="#attach.s16#">#attach.s16#</option></cfoutput>
                <option value=""></option>
                <cfoutput query="soft">
                  <option value="#soft.name# (#soft.num#)">#soft.name#</option>
                </cfoutput>
            </select></td>
        </tr>
        <tr bgcolor="#eeeeee">
          <td width="50%" bgcolor="#eeeeee">7.
              <select name="s7">
                <cfoutput><option value="#attach.s7#">#attach.s7#</option></cfoutput>
                <option value=""></option>
                <cfoutput query="soft">
                  <option value="#soft.name# (#soft.num#)">#soft.name#</option>
                </cfoutput>
            </select></td>
          <td width="50%" bgcolor="#eeeeee">17.
              <select name="s17">
                <cfoutput><option value="#attach.s17#">#attach.s17#</option></cfoutput>
                <option value=""></option>
                <cfoutput query="soft">
                  <option value="#soft.name# (#soft.num#)">#soft.name#</option>
                </cfoutput>
            </select></td>
        </tr>
        <tr bgcolor="#eeeeee">
          <td width="50%" bgcolor="#eeeeee">8.
              <select name="s8">
               <cfoutput><option value="#attach.s8#">#attach.s8#</option></cfoutput>
                <option value=""></option>
                <cfoutput query="soft">
                  <option value="#soft.name# (#soft.num#)">#soft.name#</option>
                </cfoutput>
            </select></td>
          <td width="50%" bgcolor="#eeeeee">18.
              <select name="s18">
               <cfoutput><option value="#attach.s18#">#attach.s18#</option></cfoutput>
                <option value=""></option>
                <cfoutput query="soft">
                  <option value="#soft.name# (#soft.num#)">#soft.name#</option>
                </cfoutput>
            </select></td>
        </tr>
        <tr bgcolor="#eeeeee">
          <td width="50%" bgcolor="#eeeeee">9.
              <select name="s9">
                <cfoutput><option value="#attach.s9#">#attach.s9#</option></cfoutput>
                <option value=""></option>
                <cfoutput query="soft">
                  <option value="#soft.name# (#soft.num#)">#soft.name#</option>
                </cfoutput>
            </select></td>
          <td width="50%" bgcolor="#eeeeee">19.
              <select name="s19">
                <cfoutput><option value="#attach.s19#">#attach.s19#</option></cfoutput>
                <option value=""></option>
                <cfoutput query="soft">
                  <option value="#soft.name# (#soft.num#)">#soft.name#</option>
                </cfoutput>
            </select></td>
        </tr>
        <tr bgcolor="#eeeeee">
          <td width="50%" bgcolor="#eeeeee">10.
              <select name="s10">
                <cfoutput><option value="#attach.s10#">#attach.s10#</option></cfoutput>
                <option value=""></option>
                <cfoutput query="soft">
                  <option value="#soft.name# (#soft.num#)">#soft.name#</option>
                </cfoutput>
            </select></td>
          <td width="50%" bgcolor="#eeeeee">20.
              <select name="s20">
                <cfoutput><option value="#attach.s20#">#attach.s20#</option></cfoutput>
                <option value=""></option>
                <cfoutput query="soft">
                  <option value="#soft.name# (#soft.num#)">#soft.name#</option>
                </cfoutput>
            </select></td>
        </tr>
      </table>
      
       <div align="left">
         <p><strong class="burgundy">Additonal Items</strong><br>
          
           <cfoutput><textarea name="comment" cols="75" rows="2" >#attach.comment#</textarea></cfoutput>
                    </p>
         <p align="center"><br>
                      <input type="submit" name="Submit" value="Click to save and forward to your Business Area Liaison">
                      </form>
                    </p>
            </p>
       </div>
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

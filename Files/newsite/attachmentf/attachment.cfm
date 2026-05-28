
<html><!-- InstanceBegin template="/Templates/dsi.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<!-- InstanceBeginEditable name="doctitle" -->
<title>Customer Attachment F</title>
<script language=Javascript>
  <!--
  function checkform(theForm)
  {
    if(theForm.bal.value=="")
    {
      alert ("Please select your BAL")
      return false;
    }
    return true;
  }
  //-->
  </script>
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
.style3 {
	font-size: 9px;
	font-weight: bold;
	font-style: italic;
}
-->
</style>
<style type="text/css">
<!--
.style4 {color: #560808}
-->
</style>
<style type="text/css">
<!--
.style5 {font-style: italic}
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
<cfquery name="soft" datasource="dsc">
select *
from attachment
order by name ASC
</cfquery>
<cfoutput>
<cfquery name="attach" datasource="newdsi">
  Select *
  From master
  Where ID=#url.recordID#
</cfquery>

<cfquery name="ballist" datasource="newdsi">
Select *
From emailbal
where func='#attach.func#'
</cfquery>
  <p align="center" class="burgundy"><strong>Attachment F- Customer Migration information Worksheet</strong></p>
    <p>Department Images to Deploy</p>
    <p>A customized Business Area COE image will automatically be deployed on each customer's PC. To ensure that <strong>all</strong> of the business applications used by you and your department are properly identified and deployed, please complete a separate form for each PC: Please identify the PC model type you will have <strong>after</strong> your migration by indicating in the appropriate column whether your existing PC will be re-imaged or replaced.</p>
<hr align="left" width="100%" noshade>
<form name="form" method="post" action="sendattach.cfm">
<input type="hidden" name="ID" value="#url.recordID#">
<table width="100%"  border="0">
  <tr>
    <td width="18%" bgcolor="##CCCCCC" class="burgundy">Full Name </td>
    <td width="33%"><input name="fname" type="text" id="fname" size="15" maxlength="25" value="#attach.fname#" readonly="yes">
        <input name="lname" type="text" id="lname" size="20" maxlength="25" value="#attach.lname#" readonly="yes"></td>
        <td width="17%" bgcolor="##CCCCCC" class="burgundy">Network ID (B1xxxyy)</td>
        <td width="32%"><input name="logon" type="text" id="logon" value="#attach.logon#" readonly="yes"></td>
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
        <td rowspan="2" align="left" valign="top" bgcolor="##CCCCCC" class="burgundy">Machine Type <br>
          Model and Status </td>
        <td rowspan="2" valign="top">
		<input name="mtype1" type="text" id="mtype1" value="#attach.mtype#" readonly="yes">
          <br>
          <select name="mtype" id="mtype" >
	   <option value="">Select</option>  
      <option value=""></option>
      <option value="GX150">GX150</option>
      <option value="GX240">GX240</option>
      <option value="GX260">GX260</option>
      <option value="GX270">GX270</option>
	  <option value="GX270">GX340</option>
      <option value="X30">X30</option>
      <option value="T30">T30</option>
      <option value="X31">X31</option>
      <option value="T40">T40</option>
	  <option value="D400">D400</option>
	  <option value="D600">D600</option>
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
        <td><input name="officer" type="text" id="officer"></td>
      </tr>
      <tr>
        <td height="40" bgcolor="##CCCCCC" class="burgundy">Business Area Liaison </td>
        <td><select name="bal">
		<option value="">Select</option>
		<option value="#ballist.bal1first#.#ballist.bal1last#">#ballist.bal1first# #ballist.bal1last#</option>
		<option value="#ballist.bal2first#.#ballist.bal2last#">#ballist.bal2first# #ballist.bal2last#</option>
		<option value="#ballist.bal3first#.#ballist.bal3last#">#ballist.bal3first# #ballist.bal3last#</option>
		<option value="#ballist.bal4first#.#ballist.bal4last#">#ballist.bal4first# #ballist.bal4last#</option>
		<option value="#ballist.bal5first#.#ballist.bal5last#">#ballist.bal5first# #ballist.bal5last#</option>
		</select> 
          <span class="style3 style4">*required </span></td>
        <td bgcolor="##CCCCCC" class="burgundy">Do you handle FRBNY Highly Confidential Data? </td>
        <td><select name="condata" id="condata">
          <option value="no">No</option>
          <option value="yes">Yes</option>
            </select></td>
      </tr>
    </table>
    <hr align="left" width="100%" noshade>
    <div align="center"><strong class="burgundy">Line of Business Images Required </strong><br>
      <br>  
      <input name="func2" type="text" id="func2" value="#attach.func#" readonly="yes"></div>

    <hr align="left" width="100%" noshade>  
    <div align="center">
      <p><strong>List Other Department Business Applications Required<br> 
        </strong><span class="style2">If you do not see applications required for your department on the <em>Line of Business Image Definitions </em>list (Attachment G), or you do not see the applications in the drop down menus below, please make sure that they are noted in the </span><span class="burgundy"><strong>ADDITIONAL ITEMS</strong></span><span class="style2"> section.<br>
        <strong> <span class="style5"><a href="attachmentg.pdf" target="_blank">Click here to view Attachment G</a></span></strong><br>
        </span> </p>
      </div>
 </cfoutput>
<table width="100%"  border="1" cellpadding="0" cellspacing="0" bordercolor="#000000">
        <tr bgcolor="#eeeeee">
          <td width="50%" bgcolor="#eeeeee">1.
              <select name="s1">
                <option value=""></option>
                <cfoutput query="soft">
                  <option value="#soft.name# (#soft.num#)">#soft.name#</option>
                </cfoutput>
              </select>
          <td width="50%" bgcolor="#eeeeee">11.
              <select name="s11">
                <option value=""></option>
                <cfoutput query="soft">
                  <option value="#soft.name# (#soft.num#)">#soft.name#</option>
                </cfoutput>
              </select>          </td>
        </tr>
        <tr bgcolor="#eeeeee">
          <td width="50%" bgcolor="#eeeeee">2.
              <select name="s2">
                <option value=""></option>
                <cfoutput query="soft">
                  <option value="#soft.name# (#soft.num#)">#soft.name#</option>
                </cfoutput>
              </select>          </td>
          <td width="50%" bgcolor="#eeeeee">12.
              <select name="s12">
                <option value=""></option>
                <cfoutput query="soft">
                  <option value="#soft.name# (#soft.num#)">#soft.name#</option>
                </cfoutput>
              </select>          </td>
        </tr>
        <tr bgcolor="#eeeeee">
          <td width="50%" bgcolor="#eeeeee">3.
              <select name="s3">
                <option value=""></option>
                <cfoutput query="soft">
                  <option value="#soft.name# (#soft.num#)">#soft.name#</option>
                </cfoutput>
              </select>          </td>
          <td width="50%" bgcolor="#eeeeee">13.
              <select name="s13">
                <option value=""></option>
                <cfoutput query="soft">
                  <option value="#soft.name# (#soft.num#)">#soft.name#</option>
                </cfoutput>
            </select></td>
        </tr>
        <tr bgcolor="#eeeeee">
          <td width="50%" bgcolor="#eeeeee">4.
              <select name="s4">
                <option value=""></option>
                <cfoutput query="soft">
                  <option value="#soft.name# (#soft.num#)">#soft.name#</option>
                </cfoutput>
            </select></td>
          <td width="50%" bgcolor="#eeeeee">14.
              <select name="s14">
                <option value=""></option>
                <cfoutput query="soft">
                  <option value="#soft.name# (#soft.num#)">#soft.name#</option>
                </cfoutput>
            </select></td>
        </tr>
        <tr bgcolor="#eeeeee">
          <td width="50%" bgcolor="#eeeeee">5.
              <select name="s5">
                <option value=""></option>
                <cfoutput query="soft">
                  <option value="#soft.name# (#soft.num#)">#soft.name#</option>
                </cfoutput>
            </select></td>
          <td width="50%" bgcolor="#eeeeee">15.
              <select name="s15">
                <option value=""></option>
                <cfoutput query="soft">
                  <option value="#soft.name# (#soft.num#)">#soft.name#</option>
                </cfoutput>
            </select></td>
        </tr>
        <tr bgcolor="#eeeeee">
          <td width="50%" bgcolor="#eeeeee">6.
              <select name="s6">
                <option value=""></option>
                <cfoutput query="soft">
                  <option value="#soft.name# (#soft.num#)">#soft.name#</option>
                </cfoutput>
            </select></td>
          <td width="50%" bgcolor="#eeeeee">16.
              <select name="s16">
                <option value=""></option>
                <cfoutput query="soft">
                  <option value="#soft.name# (#soft.num#)">#soft.name#</option>
                </cfoutput>
            </select></td>
        </tr>
        <tr bgcolor="#eeeeee">
          <td width="50%" bgcolor="#eeeeee">7.
              <select name="s7">
                <option value=""></option>
                <cfoutput query="soft">
                  <option value="#soft.name# (#soft.num#)">#soft.name#</option>
                </cfoutput>
            </select></td>
          <td width="50%" bgcolor="#eeeeee">17.
              <select name="s17">
                <option value=""></option>
                <cfoutput query="soft">
                  <option value="#soft.name# (#soft.num#)">#soft.name#</option>
                </cfoutput>
            </select></td>
        </tr>
        <tr bgcolor="#eeeeee">
          <td width="50%" bgcolor="#eeeeee">8.
              <select name="s8">
                <option value=""></option>
                <cfoutput query="soft">
                  <option value="#soft.name# (#soft.num#)">#soft.name#</option>
                </cfoutput>
            </select></td>
          <td width="50%" bgcolor="#eeeeee">18.
              <select name="s18">
                <option value=""></option>
                <cfoutput query="soft">
                  <option value="#soft.name# (#soft.num#)">#soft.name#</option>
                </cfoutput>
            </select></td>
        </tr>
        <tr bgcolor="#eeeeee">
          <td width="50%" bgcolor="#eeeeee">9.
              <select name="s9">
                <option value=""></option>
                <cfoutput query="soft">
                  <option value="#soft.name# (#soft.num#)">#soft.name#</option>
                </cfoutput>
            </select></td>
          <td width="50%" bgcolor="#eeeeee">19.
              <select name="s19">
                <option value=""></option>
                <cfoutput query="soft">
                  <option value="#soft.name# (#soft.num#)">#soft.name#</option>
                </cfoutput>
            </select></td>
        </tr>
        <tr bgcolor="#eeeeee">
          <td width="50%" bgcolor="#eeeeee">10.
              <select name="s10">
                <option value=""></option>
                <cfoutput query="soft">
                  <option value="#soft.name# (#soft.num#)">#soft.name#</option>
                </cfoutput>
            </select></td>
          <td width="50%" bgcolor="#eeeeee">20.
              <select name="s20">
                <option value=""></option>
                <cfoutput query="soft">
                  <option value="#soft.name# (#soft.num#)">#soft.name#</option>
                </cfoutput>
            </select></td>
        </tr>
      </table>
      
<div align="left">
<p><strong class="burgundy">Additional Items</strong><br> </p></div>
          
<textarea name="comment" cols="75" rows="2" id="comment"></textarea>

<p align="center"><br>
<input type="submit" name="Submit" value="Click to save (This will also be sent to your Business Area Liaison for approval)" onClick="javascript: return checkform(document.form)"></p>
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

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html><!-- InstanceBegin template="/Templates/IT2.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<!-- InstanceBeginEditable name="doctitle" -->
<title>Information Technology</title>
<meta http-equiv="refresh" content="2;URL=./scheduling.cfm">
<!-- InstanceEndEditable -->
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<!-- InstanceBeginEditable name="head" -->


<!-- InstanceEndEditable -->
<link href="../scripts/font.css" rel="stylesheet" type="text/css">
<SCRIPT LANGUAGE="JavaScript" TYPE="text/javascript" SRC="/CFIDE/scripts/cfform.js"></SCRIPT>

<SCRIPT LANGUAGE="JavaScript" TYPE="text/javascript">
<!--

function  _CF_checkCFForm_1(_CF_this)
{
	if  (!_CF_hasValue(_CF_this.TicketNo, "TEXT" ))
	{
		if  (!_CF_onError(_CF_this, _CF_this.TicketNo, _CF_this.TicketNo.value, "Please enter a Ticket No, User ID, or Lastname."))
		{
			return false;
		}
	}

	return true;
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_showHideLayers() { //v6.0
  var i,p,v,obj,args=MM_showHideLayers.arguments;
  for (i=0; i<(args.length-2); i+=3) if ((obj=MM_findObj(args[i]))!=null) { v=args[i+2];
    if (obj.style) { obj=obj.style; v=(v=='show')?'visible':(v=='hide')?'hidden':v; }
    obj.visibility=v; }
}
//-->
</SCRIPT>
</head>

<body link="#660000" vlink="#660000">
<div id="info" style="position:absolute; left:181px; top:331px; width:224px; height:197px; z-index:1; visibility: hidden;"> 
  <table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#6666FF">
    <tr> 
      <td valign="top" bgcolor="#eeeeee"><div align="center" class="burgundy"><strong>.:: 
          info box ::.</strong></div></td>
    </tr>
    <tr> 
      <td valign="top" bgcolor="#FFFFFF"><iframe scrolling="no" src="templates/info.htm" width="100%" height="200" frameborder="0"></iframe></td>
    </tr>
    <tr> 
      <td height="20" bgcolor="#eeeeee"> <div align="center" class="burgundy"><strong>.:<a href="javascript:;" onClick="MM_showHideLayers('info','','hide')"><img src="../images/close1.jpg" width="100" height="15" border="0"></a>:.</strong></div></td>
    </tr>
  </table>
</div>
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
                <td width="45%" rowspan="2"><a href="http://www.it.ny.frb.org"><img src="../images/nuLogo.jpg" alt="Information Technology Logo" width="132" height="42" border="0"></a></td>
                <td width="6%" rowspan="2" valign="top"><a name="top"></a></td>
                <td height="10" align="right">&nbsp;</td>
                <td width="43%" height="10">&nbsp;</td>
                <td width="6%">&nbsp;</td>
              </tr>
              <tr> 
                <td width="0%" align="right">&nbsp;</td>
                <td colspan="2" align="right"> <form action="http://search.re.ny.frb.org/frbny/search.cgi" method="get" name="query" target="_NEW2" class="text1">
                    <input type=HIDDEN name="metaname" value="all">
                    <input type=HIDDEN name="swishdocpath" value="www.it.ny.frb.org">
                    <input name="query" type="text" class="search" size="25" maxlength="20">
                    <input name="Go" type="submit" class="search" value="Search">
                  </form></td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td valign="top" bgcolor="#eeeeee"> <table width="100%" border="0" cellspacing="0" cellpadding="2">
              <tr valign="top"> 
                <td width="1%">&nbsp;</td>
                <td width="49%" class="topmenu"> <script language="JavaScript">

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
                <td width="49%" class="topmenu"><div align="right"><a href="http://www.it.ny.frb.org/mission.html">Mission</a> 
                    | <a href="http://www.it.ny.frb.org/contact.html">Contact 
                    Us</a> | <a href="http://www.it.ny.frb.org/contact/index.cfm">Page 
                    IT</a> | <a href="http://atthebank.ny.frb.org/@theBank/currentweek/cover.htm">@TheBank</a> 
                  </div></td>
                <td width="1%">&nbsp;</td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td valign="top" bgcolor="#FFFFFF">
<table width="100%" border="0" cellspacing="0" cellpadding="8">
              <tr>
                <td valign="top"><!-- InstanceBeginEditable name="mainbody" -->
<cfquery name="deletequery" datasource="DSI">
DELETE FROM master WHERE ID=#URL.recordID#
</cfquery>
                 <cfoutput>
				 <p>Customer #URL.recordID# has been Deleted! <br>
                    You will be re-directed in a moment!</p>
                  <p>&nbsp;</p>
                  <p>&nbsp; </p>
				  </cfoutput> 
                  <!-- InstanceEndEditable --></td>
              </tr>
            </table> </td>
        </tr>
        <tr> 
          <td valign="top" bgcolor="#FFFFFF"><a href="javascript:;" onClick="MM_showHideLayers('info','','show','info2','','hide')"><img src="../images/info.gif" alt="Show Site Information" width="15" height="15" border="0"></a></td>
        </tr>
        <tr> 
          <td valign="top" bgcolor="#999999"><font color="#FFFFFF">This site optimally 
            viewed with Internet Explorer running on Windows 2000 or higher<a href="../site.html">.</a></font></td>
        </tr>
      </table></td>
  </tr>
</table>
<map name="Map">
              <area shape="rect" coords="19,2,151,48" href="http://www.it.ny.frb.org">
            </map>
</body>
<!-- InstanceEnd --></html>

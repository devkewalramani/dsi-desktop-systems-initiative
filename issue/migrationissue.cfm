<cfset CurrentPage=GetFileFromPath(GetTemplatePath())>
<cfparam name="PageNum_main" default="1">
<cfquery name="main" datasource="DSI">
SELECT *
FROM migration_issue 
</cfquery>
<cfset MaxRows_main=5>
<cfset StartRow_main=Min((PageNum_main-1)*MaxRows_main+1,Max(main.RecordCount,1))>
<cfset EndRow_main=Min(StartRow_main+MaxRows_main-1,main.RecordCount)>
<cfset TotalPages_main=Ceiling(main.RecordCount/MaxRows_main)>
<cfset QueryString_main=Iif(CGI.QUERY_STRING NEQ "",DE("&"&XMLFormat(CGI.QUERY_STRING)),DE(""))>
<cfset tempPos=ListContainsNoCase(QueryString_main,"PageNum_main=","&")>
<cfif tempPos NEQ 0>
  <cfset QueryString_main=ListDeleteAt(QueryString_main,tempPos,"&")>
</cfif>

<html><!-- InstanceBegin template="/Templates/dsi.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<!-- InstanceBeginEditable name="doctitle" -->
<title>Information Technology</title>
<!-- InstanceEndEditable -->
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<!-- InstanceBeginEditable name="head" -->


<style type="text/css">
<!--
body {
	background-color: #FFFFFF;
}
body,td,th {
	color: #000000;
}
-->
</style><!-- InstanceEndEditable -->
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
                  <table width="100%" border="0" cellpadding="0" cellspacing="1" >
                    <tr>
                      <td valign="top"> 
                        <table width="100%" border="0" cellpadding="0" cellspacing="0" >
                          <tr>
          <td width="148" valign="top" bgcolor="#eeeeee">&nbsp; </td>
        <td width="100%" align="center" valign="top" bgcolor="#EEEEEE"><div align="center">
              <table border="0" width="100%" align="Left">
                <cfoutput><td width="41%">
                      <cfif PageNum_main GT 1>
                      <a href="#CurrentPage#?PageNum_main=1#QueryString_main#">First</a>
                      </cfif>
                    
                      <cfif PageNum_main GT 1>
                      <a href="#CurrentPage#?PageNum_main=#Max(DecrementValue(PageNum_main),1)##QueryString_main#">Previous</a>
                      </cfif>
                    
                      <cfif PageNum_main LT TotalPages_main>
                      <a href="#CurrentPage#?PageNum_main=#Min(IncrementValue(PageNum_main),TotalPages_main)##QueryString_main#">Next</a>
                      </cfif>
                    
                      <cfif PageNum_main LT TotalPages_main>
                      <a href="#CurrentPage#?PageNum_main=#TotalPages_main##QueryString_main#">Last</a>
                      </cfif>
					  </td>
					  <td width="59%" align="right">
					    <div align="left">Records #StartRow_main# to #EndRow_main# of #main.RecordCount#				  </div></td>
			    </cfoutput>
          </table>       </td>
      </tr>
    </table>
                        <table width="100%" border="0" cellpadding="0" cellspacing="1" >
                          <tr>
                            <td align="left" valign="top" bgcolor="#EEEEEE"><br>      <table width="42%" height="278"  border="0" align="center" cellpadding="0" cellspacing="1">
      <tr>
        <td align="center" valign="top"><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0" width="100" height="22">
          <param name="BGCOLOR" value="">
          <param name="movie" value="dsiissuebut2.swf">
          <param name="quality" value="high">
          <embed src="dsiissuebut2.swf" quality="high" pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="100" height="22" ></embed>
        </object></td>
      </tr>
      <tr>
        <td align="center" valign="top">&nbsp;</td>
      </tr>
      <tr>
        <td align="center" valign="top">&nbsp;</td>
      </tr>
      <tr>
        <td align="center" valign="top">&nbsp;</td>
      </tr>
      <tr>
        <td align="center" valign="top">&nbsp;</td>
      </tr>
      <tr>
        <td align="center" valign="top">&nbsp;</td>
      </tr>
      <tr>
        <td height="25" align="center" valign="top">&nbsp;</td>
      </tr>
      <tr>
        <td align="center" valign="top">&nbsp;</td>
      </tr>
    </table></td>
                            <td align="left" valign="top"> 
                              <!--begin data dump -->
                              <table width="100%" border="0" align="center" cellpadding="2" cellspacing="1" bgcolor="#eeeeee">
                                <tr valign="top" bgcolor="#efefef"> 
                <td><strong>IssueID</strong></td>
                <td><strong>Opened Date</strong></td>
                <td><strong>Assignee</strong></td>
                <td><strong>Status</strong></td>
                <td><strong>Description</strong></td>
                <td><strong>Solution</strong></td>
              </tr>
              <cfoutput query="main" startRow="#StartRow_main#" maxRows="#MaxRows_main#"> 
                <tr valign="top" bgcolor="##FFFFFF"> 
                  <td><a href="migrationissuedetail.cfm?recordID=#main.IssueID#">DSI-000#main.IssueID#</a></td>
                  <td>#DatePart("m",main.opdate)#/#DatePart("d",main.opdate)#/#DatePart("yyyy",main.opdate)#</td>
                  <td>#main.Assignee# </td>
                  <td>#main.Status# </td>
                  <td>#main.Description# </td>
                  <td>#main.Solution# </td>
                </tr>
              </cfoutput> 
            </table>
<cfoutput></cfoutput>
<!--End-->
	</td>
  </tr>
</table>
</td>
  </tr>
</table>




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

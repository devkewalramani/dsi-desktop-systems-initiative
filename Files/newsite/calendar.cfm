
<html><!-- InstanceBegin template="/Templates/dsi.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<!-- InstanceBeginEditable name="doctitle" -->
<title>DSI</title>
<!-- InstanceEndEditable -->
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<!-- InstanceBeginEditable name="head" -->
<!-- InstanceEndEditable -->
<link href="scripts/font.css" rel="stylesheet" type="text/css">

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
            <td height="20" bgcolor="#eeeeee"> <div align="center" class="burgundy"><strong>.:<a href="javascript:;" onClick="MM_showHideLayers('info2','','hide')"><img src="images/close1.jpg" width="100" height="15" border="0"></a>:.</strong></div></td>
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
                <td width="65%" align="left" valign="top"><img src="images/dsilogo.jpg" alt="DSI Logo" width="187" height="67"></td>
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
<!---First things first. There is no need to ouput blank space to the user's browser with out 
preperatory code so let's disable the output of anything NOT inside <CFOUTPUT></CFOUTPUT> Tags---><cfsetting enablecfoutputonly="yes" showdebugoutput="no">
<!--- If a URL Varaible is defined called THISCAL, lets try and use its date as the current calendar --->

<cfif IsDefined('Url.ThisCal')>
      <cftry>
          <!--- try setting the value found in URL.ThisCal to a dateformatted variable --->
          <cfset ThisCalMonth = DateFormat(Url.ThisCal, "M-D-YYYY")>
          
        <cfcatch type="Any">
          <!--- if there was a problem creating a date from the URL variables value such as the value not being a date 
at all or the value being an invalid date such as 1-33-2003, then use todays date as the current calendar --->
          <cfset ThisCalMonth = DateFormat(Now(), "M-D-YYYY")>
          </cfcatch>
      </cftry>
  <cfelse>
      <!--- else if there was no URL variable defined at all, let's use todays date as the current calendar --->
      <cfset ThisCalMonth = DateFormat(Now(), "M-D-YYYY")>
</cfif>

<!--- Now we have a variable called ThisCalMonth that holds either Todays date or a date defined by the user--->
<!--- Next, let's make sure that ThisCalMonth's DAY part is 1 (first day of the month so we can decide what DAY
to start outputting Numbers to our calendar --->
<!--- Take the MONTH and YEAR from ThisCalMonth and create a date using "1" as the Day part ---><cfset ThisCalMonth = "#DateFormat(ThisCalMonth, "M")#-1-#DateFormat(ThisCalMonth, "YYYY")#">
<!--- Ok, now we are ready to decide what LAST MONTH's and NEXT MONTH's dates should be ---><!--- Thanks to ColdFusion, we can simply use the DateAdd function to decide these values ---><!--- Just ADD NEGATIVE 1 (-1) to ThisCalMonth's MONTH part to get the PRVIOUS month's date ---><cfset LastMonth = DateFormat(DateAdd("M", -1, ThisCalMonth), "M-D-YYYY")>
<!--- Just ADD 1 to ThisCalMonth's MONTH part to get NEXT month's date ---><cfset NextMonth = DateFormat(DateAdd("M", 1, ThisCalMonth), "M-D-YYYY")><cfset TotalDays = DaysInMonth(ThisCalMonth)><cfoutput>
  <table border="1" cellpadding="0" cellspacing="0" width="600">
      <tr>
          <!--- Ok, as I said at the beginning, we need last month and next month to use as links to other calendars
so here is LASTMONTH's link (it will appear as a 3 character abbreviation of that months name (eg. Jan)
--->
          <td align="center">
              <a href="calendar.cfm?ThisCal=#LastMonth#">#DateFormat(LastMonth, "mmm")#</a>
          </td>
          <!--- this is the top center square that displays the current calendars MONTH and YEAR --->
          <td align="center" colspan="5">
		  <cfset num=#daysinmonth(ThisCalMonth)#>
		  <cfset bdate=#dateformat(ThisCalMonth,'m/d/yyyy')#>
		  <cfset #bdate#=#dateformat(bdate,'m/d/yyyy')#>
		  <cfset edate=#dateformat(ThisCalMonth,'m/d/yyyy')#+#num#>
		  <cfset #edate#=#dateformat(edate,'m/d/yyyy')#>
		  <cfquery name="totct" datasource="newdsi">
		  Select count(*) as totmonth
		  From Master
		  Where actualdate BETWEEN #parsedatetime(bdate)# and #parsedatetime(edate)# and mtype <> 'Customer Only'
		  </cfquery>
              #DateFormat(ThisCalMonth, "mmmm - yyyy")# (#totct.totmonth# devices scheduled)
          </td>
          <!--- here is our link to NEXT MONTH's calendar --->
          <td align="center">
              <a href="calendar.cfm?ThisCal=#NextMonth#">#DateFormat(NextMonth, "mmm")#</a>
          </td>
      </tr>
      <tr>
      <!--- ok so it wouldnt be a calendar without a row of DAY headers to tell us what day the column is right?
how many days in a week? oh yeah 7.. so lets loop from 1 to 7 takin the current loops index and converting it to 
the day that corresponds with it with good ol' DateFormat()
--->

          <cfloop from="1" to="7" index="DayOfWeek">
          <td align="center">#DateFormat(DayOfWeek, "DDD")#</td>
          </cfloop>
      </tr>
      <!--- we do not want to start outputting numbers to represent the days until we have reached the starting day for the current month
So lets create a "Flag" variable to determin rather or not to show numbers yet
---> 
      <cfset ShowDays = False>
  

  <!--- 
Once we start outputting day numbers to the squares, we will need to keep track of where we are and what number is next right?
What better place to start than... you guessed it... "1"
--->
  <cfset ThisDay = 1>
  <!--- NOTE: this number will only be incremented while ShowDays = TRUE --->
  <tr> 
  <!--- 
Ok, I've looked at a few calendars... ok i only looked at one.. my system calendar and according to Microsoft..
We will NEVER need more than 42 squares...6 rows of 7 squares to display every day in any month... ever 
( i failed me some english .. heh) Really... if the first day of the month starts on a Saturday (the 
last square in the first row) and the month has the max 31 days... the 42nd square will be day 31... hmm also a Saturday weird...
ok ok ... it doesnt take much to distract me into confusing you....
--->
  
<!--- Loop from "1" to our previously discussed "42" our loop Index will be Called ThisCalSquare and will hold the current loops number --->
  <cfloop from="1" to="42" index="ThisCalSquare">

<!--- if we have reached the square that holds the first day of the current calendar's month, set ShowDays to TRUE so we can begin displaying the numbers to represent the date--->
  <cfif ThisCalSquare LTE 7 and ( DateFormat(ThisCalMonth, "DDDD") IS DateFormat(ThisCalSquare, "DDDD") )>
      <cfset ShowDays = True>
  </cfif>
  
<!--- if we have reached the LAST square that will hold a numbe for this month, reset SHOWDAYS to FALSE so the code knows to stop displaying the numbers in the squares --->
  <cfif ThisDay GT TotalDays>
      <cfset ShowDays = False>
  </cfif>
  
<!--- If ShowDays is TRUE then we can display a number in this sq to represent a day --->
  <cfif ShowDays>
  <td valign="top" height="50">
  <!--- this nested table will create a smaller square in the upper left corner to hold the number that we set in THISDAY ---> 
  <cfset miday = "#DateFormat(ThisCalMonth, "M")#-#ThisDay#-#DateFormat(ThisCalMonth, "YYYY")#">
  <cfset miday2 = #dateformat(miday,'m/d/yyyy')#>
  
  <cfquery name="ct" datasource="newdsi">
  Select actualdate, count(*) as count
  from master
  WHERE actualdate=#parsedatetime(miday2)# and mtype <> 'Customer Only'
  group by actualdate
  </cfquery>
 
  <table>
  <tr>
  <td ><a href="whoismi.cfm?miday3=#miday2#">#ThisDay#</a></td>
  </tr>
  <cfif #dateformat(ct.actualdate,'m/d/yyy')# eq #miday2#>
  <tr><td width="25%"></td></tr><tr><td align="center"><font size="-4">#ct.count#<br>Devices<br>Today</font></td></tr>
  <cfelse>
  <tr><td></td></tr><tr><td width="40"></td></tr>
  </cfif>
  </table>
  <!-- Enter VAR to count number of migrations today-->
  

  <!--  end num of migrations -->
  <!--- 
If you want to do something different with special days, such as days that might match a date form a query... here's the 
place to do it.

ThisDay only holds a single or double digit number (1-31) but combined with ThisCalMonth's date and year parts, you can 
have the exact date of this squares value to compare against dates in a query or any other dates you wish


--->
  
</td>
  <!--- SHOWDAYS is TRUE and we just output THISDAY so lets add 1 to THISDAY for the next round --->
  <cfset ThisDay = ThisDay + 1>
  <cfelse>
  
<!--- else if SHOWDAYS is FALSE, display a grayed out square with a little style help --->
  <td valign="top" height="80" style="background-color:##cccccc;"></td>
  
</cfif> 
  
<!---
decide rather or not to strt another row of weeks
if ThisCalSquare MOD 7 is 0 (the remainder of THISCALSQUARE divided by 7 = 0) then we just hit saturday... the last square of the row
so lets end the row with </tr>
--->
  <cfif ThisCalSquare MOD 7 is 0></tr>
  <!--- If THISCALSQUARE (this loop index) is NOT the last one (42) then begin another row with <tr> --->
  <cfif NOT ThisCalSquare NEQ 42><tr></cfif>
  </cfif>
  
</cfloop>
  
</tr> 
  </table>
</cfoutput>

<!--- dont forget to renable output incase you want to add more below the calendar HAVE FUN!---><cfsetting enablecfoutputonly="no" showdebugoutput="no">
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

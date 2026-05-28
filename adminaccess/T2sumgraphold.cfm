<html>
<head>
<title>Team 2 Summary Graph</title>

</head>

<body>
<font size="+3" color="#000000"><strong>
</strong></font><font color="#000000" size="+3"><strong><cfoutput>
  </cfoutput></strong><cfoutput></cfoutput></font><cfoutput><div align="center">
    <div align="left">
      <div align="center"><font color="##000000" size="+3"><strong>
        <div align="left">
          <table width="86%"  border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
              <td align="left" valign="top">                <div align="center">
                  <p><font color="##000000" size="+1"><strong><font size="+2">Team 2 #form.type#<br>
                  </font></strong></font><font color="##000000" size="+2"><strong>Summary Graph Report #form.bdate# to #form.edate#<br>
                  <em><font color="##0000FF">Average completion time of each step by Tech</font></em><br>
                  </strong></font></p>
                  </div></td>
            </tr>
          </table>
</div>
      </strong></font></div>
    </div>
  </div>
    </cfoutput>
  <div align="left">
  <table width="100%" height="600"  border="5" align="center" cellpadding="0" cellspacing="5">
    <tr>
      <th width="73%" height="551" align="left" valign="middle" scope="col"><div align="center"><strong>        </strong>
            <cfquery name="summary" datasource="DSI">
    SELECT DISTINCTROW teamtwo.tech, Avg(teamtwo.preextract) AS [preextract], Avg(teamtwo.addtogroup) AS [addtogroup], Avg(teamtwo.extraction) AS [extraction], Avg(teamtwo.swaphw) AS [swaphw], Avg(teamtwo.firstboot) AS [firstboot], Avg(teamtwo.injection) AS [injection], Avg(teamtwo.smsclient) AS [smsclient], Avg(teamtwo.groupremoval) AS [groupremoval], Avg(teamtwo.userlogin) AS [userlogin], Avg(teamtwo.postmi) AS [postmi], Avg(teamtwo.userverifi) AS [userverifi],Avg(teamtwo.other) AS [other]
    FROM teamtwo
    WHERE midate Between #parsedatetime(form.bdate)# AND #parsedatetime(form.edate)# AND type='#Form.type#'
    GROUP BY [teamtwo].[tech]
            </cfquery>
    
          <cfchart format="flash"  xaxistitle="Technician" yaxistitle="Average Times in Minutes" show3d="no" showborder="yes" labelformat="number" chartheight="550" chartwidth="600" showxgridlines="no" showygridlines="yes" gridlines="16" scalefrom="0" scaleto="75"> 
      <cfchartseries query="summary" type="bar" itemcolumn="Tech" valuecolumn="preextract" serieslabel="Task 1" paintstyle="shade" seriescolor="##FF0000">
      </cfchartseries>
      <cfchartseries query="summary" type="bar" itemcolumn="Tech" valuecolumn="addtogroup" serieslabel="Task 2" paintstyle="shade" seriescolor="##0000FF">
      </cfchartseries>
      <cfchartseries query="summary" type="bar" itemcolumn="Tech" valuecolumn="extraction" serieslabel="Task 3"paintstyle="shade" seriescolor="##FFFF00">
      </cfchartseries>
      <cfchartseries query="summary" type="bar" itemcolumn="Tech" valuecolumn="swaphw" serieslabel="Task 4"paintstyle="shade" seriescolor="##00FFFF">
      </cfchartseries>
      <cfchartseries query="summary" type="bar" itemcolumn="Tech" valuecolumn="firstboot" serieslabel="Task 5"paintstyle="shade" seriescolor="##FF9900">
      </cfchartseries>
      <cfchartseries query="summary" type="bar" itemcolumn="Tech" valuecolumn="injection" serieslabel="Task 6"paintstyle="shade" seriescolor="##660000">
      </cfchartseries>
      <cfchartseries query="summary" type="bar" itemcolumn="Tech" valuecolumn="smsclient" serieslabel="Task 7"paintstyle="shade" seriescolor="##6699CC">
      </cfchartseries>
      <cfchartseries query="summary" type="bar" itemcolumn="Tech" valuecolumn="groupremoval" serieslabel="Task 8" paintstyle="shade" seriescolor="##006600">
      </cfchartseries>
      <cfchartseries query="summary" type="bar" itemcolumn="Tech" valuecolumn="userlogin" serieslabel="Task 9" paintstyle="shade" seriescolor="##66FF66">
      </cfchartseries>
      <cfchartseries query="summary" type="bar" itemcolumn="Tech" valuecolumn="postmi" serieslabel="Task 10" paintstyle="shade" seriescolor="##FF66CC">
      </cfchartseries>
      <cfchartseries query="summary" type="bar" itemcolumn="Tech" valuecolumn="userverifi" serieslabel="Task 11" paintstyle="shade" seriescolor="##33FFFF">
      </cfchartseries>
      <cfchartseries query="summary" type="bar" itemcolumn="Tech" valuecolumn="other" serieslabel="Task 12" paintstyle="shade" seriescolor="##6600FF">
      </cfchartseries>
     
          </cfchart>
      </div></th>
      <th width="27%" align="left" valign="top" scope="col">
	  <font size="-1">
	  <cfoutput query="summary">
	  <table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td width="53%">
		  
	  <strong><em><font color="##FF0000">#tech#</font></em></strong><br>
	  <strong>Task1- <font color="##0000FF">#NumberFormat(preextract,'999.99')#</font><br>
	  Task2- <font color="##0000FF">#NumberFormat(addtogroup,'999.99')#</font><br>
	  Task3- <font color="##0000FF">#NumberFormat(extraction,'999.99')#</font><br>
	  Task4- <font color="##0000FF">#NumberFormat(swaphw,'999.99')#</font><br>
	  Task5-<font color="##0000FF">#NumberFormat(firstboot,'999.99')#</font><br>
	  Task6- <font color="##0000FF">#NumberFormat(injection,'999.99')#</font></strong><br></td>
          <td width="47%">
	        <p><br>
	          <strong>Task7- <font color="##0000FF">#NumberFormat(smsclient,'999.99')#</font><br>
	    Task8-  <font color="##0000FF">#NumberFormat(groupremoval,'999.99')#</font><br>
	    Task9- <font color="##0000FF">#NumberFormat(userlogin,'999.99')#</font><br>
	    Task10-  <font color="##0000FF">#NumberFormat(postmi,'999.99')#</font><br>
	    Task11- <font color="##0000FF">#NumberFormat(userverifi,'999.99')#</font><br>
	    Task12- <font color="##0000FF">#NumberFormat(other,'999.99')#</font></strong><br>
	   
		  </p>	        </td>
        </tr>
      </table>
	   </cfoutput></font>    </tr>
	</table>
	<p><br><br><br>
      <br>
	</p>
	<cfoutput><font color="##000000" size="+3"><strong>
	  <table width="86%"  border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td align="left" valign="top">            <div align="center">
            <p><font color="##000000" size="+1"><strong><font size="+2">Team 2 #form.type#<br>
            </font></strong></font><font color="##000000" size="+2"><strong>Summary Graph Report #form.bdate# to #form.edate#<br>
            <em><font color="##0000FF">Migration Totals </font></em> </strong></font></p>
              </div></td>
        </tr>
      </table>
	  </strong></font></cfoutput>
	<table width="95%" height="600"  border="5" align="center" cellpadding="0" cellspacing="5">
    <tr>
      <td width="67%" align="left" valign="middle"><div align="center"><strong>      </strong>
	  
          <cfquery name="summary1" datasource="DSI">
  SELECT (Sum(teamtwo.preextract)+Sum(teamtwo.addtogroup)+Sum(teamtwo.extraction)+Sum(teamtwo.swaphw)+Sum(teamtwo.firstboot)+Sum(teamtwo.injection)+Sum(teamtwo.smsclient)+Sum(teamtwo.groupremoval)+Sum(teamtwo.userlogin)+Sum(teamtwo.postmi)+Sum(teamtwo.userverifi)+Sum(teamtwo.other))/Count(*) AS totavg, (Min(teamtwo.preextract)+Min(teamtwo.addtogroup)+Min(teamtwo.extraction)+Min(teamtwo.swaphw)+Min(teamtwo.firstboot)+Min(teamtwo.injection)+Min(teamtwo.smsclient)+Min(teamtwo.groupremoval)+Min(teamtwo.userlogin)+Min(teamtwo.postmi)+Min(teamtwo.userverifi)+Min(teamtwo.other)) AS totmin, (Max(teamtwo.preextract)+Max(teamtwo.addtogroup)+Max(teamtwo.extraction)+Max(teamtwo.swaphw)+Max(teamtwo.firstboot)+Max(teamtwo.injection)+Max(teamtwo.smsclient)+Max(teamtwo.groupremoval)+Max(teamtwo.userlogin)+Max(teamtwo.postmi)+Max(teamtwo.userverifi)+Max(teamtwo.other)) AS totmax
  FROM teamtwo
  WHERE midate Between #parsedatetime(form.bdate)# AND #parsedatetime(form.edate)# AND type='#Form.type#'
          </cfquery>
  
          <cfchart format="flash" pieslicestyle="solid" show3d="no" showborder="yes" labelformat="number" chartheight="500" chartwidth="600" showxgridlines="no" showygridlines="yes" scalefrom="0" scaleto="500"  gridlines="51" yaxistitle="Times in Minutes" xaxistitle="Totals" > 
  <cfchartseries query="summary1" type="bar" valuecolumn="totavg" serieslabel="Average" paintstyle="shade" seriescolor="##FF0000">
  </cfchartseries>
  <cfchartseries query="summary1" type="bar" valuecolumn="totmin" serieslabel="Minimum" paintstyle="shade" seriescolor="##0000FF">
  </cfchartseries>
  <cfchartseries query="summary1" type="bar" valuecolumn="totmax" serieslabel="Maximum" paintstyle="shade" seriescolor="##00FF00">
  </cfchartseries> 
            </cfchart>
      </div></td>
      <td width="17%" align="center" valign="top">
	    <div align="left">
		<cfoutput query="summary1">
	      <p><br>
	          <strong>Average- <font color="##0000FF">#NumberFormat(totavg,'999.99')#</font></strong></p>
	      <p><br>
              <strong>Minimum- <font color="##0000FF">#NumberFormat(totmin,'999.99')#</font></strong></p>
	      <p><strong><br>
              Maximum- <font color="##0000FF">#NumberFormat(totmax,'999.99')#</font></strong><br>
              <br>
            </p>
		</cfoutput>
	    </div></td>
      <td width="16%" align="center" valign="top"><p><strong>Description</strong></p>
      <p align="left"><strong>Average - Total Average for the specified dates </strong></p>
      <p align="left"><strong>Minimum - Total Minimum for specified dates</strong></p>
      <p align="left"><strong>Maximum - Total Maximum for specified dates </strong></p></td>
    </tr>
	</table>
	<p><br>
      <br><br>
	</p>

	<cfoutput><font color="##000000" size="+3"><strong>
	  <table width="86%"  border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td align="left" valign="top">
            <div align="center">
              <p><font color="##000000" size="+1"><strong><font size="+2">Team 2 #form.type#<br>
              </font></strong></font><font color="##000000" size="+2"><strong>Summary Graph Report #form.bdate# to #form.edate#<br>
              <em><font color="##0000FF">Total Number of Machines Completed By Technician</font></em>              <br>
              </strong></font></p>
          </div></td>
        </tr>
      </table>
	  </strong></font></cfoutput>
	<table width="87%" height="600"  border="5" align="center" cellpadding="0" cellspacing="5">
    <tr>
      <td width="74%" align="center" valign="middle"><div align="center"><strong>        </strong>
            <cfquery name="techs" datasource="DSI">
      SELECT Tech, Count(*) AS Count
      FROM teamtwo
      WHERE midate Between #parsedatetime(form.bdate)# AND #parsedatetime(form.edate)# AND type='#Form.type#'
      GROUP BY Tech
          </cfquery>
            <cfchart format="flash" show3d="yes" showborder="yes" labelformat="number" chartheight="500" chartwidth="600" showxgridlines="no" showygridlines="yes" xaxistitle="Technician" yaxistitle="Number of Total #form.type# Completed" scalefrom="0" scaleto="24" gridlines="25"> 
      <cfchartseries query="techs" type="bar" itemcolumn="Tech" valuecolumn="Count" paintstyle="shade" seriescolor="##0000FF">
      </cfchartseries>
            </cfchart>	
      </div></td>
      <td width="26%" align="center" valign="top"><p align="left">
	  <cfoutput query="techs">
	      <br>
	      <strong>#Tech#- <font color="##0000FF">#NumberFormat(Count,'999.99')#</font></strong><br><br>
          </cfoutput>
	  </p></td>
    </tr>
  </table>
	-->
</div>
</body>
</html>

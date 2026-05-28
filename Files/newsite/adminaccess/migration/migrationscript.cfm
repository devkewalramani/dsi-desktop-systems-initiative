<link href="../scripts/font.css" rel="stylesheet" type="text/css">
<title>Checking Migration Date Requested</title>

<body class="burgundy">
<center><strong>


<cfquery name="balupdate" datasource="newdsi">
UPDATE master SET midate='#form.requireddate#', actualdate='#form.requireddate#', stime='#form.requiredtime#' Where ID=#form.ID#
</cfquery>


<cfset restrict=28>
<cfif dateformat(now(),'dddd') eq 'Monday'>
<cfset firstavailabledate=dateformat(now(),'m/d/yyyy')+#restrict#>
<cfelseif dateformat(now(),'dddd') eq 'Tuesday'>
<cfset firstavailabledate=dateformat(now(),'m/d/yyyy')+(#restrict#-1)>
<cfelseif dateformat(now(),'dddd') eq 'Wednesday'>
<cfset firstavailabledate=dateformat(now(),'m/d/yyyy')+(#restrict#-2)>
<cfelseif dateformat(now(),'dddd') eq 'Thursday'>
<cfset firstavailabledate=dateformat(now(),'m/d/yyyy')+(#restrict#-3)>
<cfelseif dateformat(now(),'dddd') eq 'Friday'>
<cfset firstavailabledate=dateformat(now(),'m/d/yyyy')+(#restrict#-4)>
<cfelseif dateformat(now(),'dddd') eq 'Saturday'>
<cfset firstavailabledate=dateformat(now(),'m/d/yyyy')+(#restrict#+2)>
<cfelseif dateformat(now(),'dddd') eq 'Sunday'>
<cfset firstavailabledate=dateformat(now(),'m/d/yyyy')+(#restrict#+1)>
</cfif>

<cfset #firstavailabledate#=#dateformat(firstavailabledate,'m/d/yyyy')#>

<cfoutput>
<cfif #dateformat(form.requireddate,'m/d/yyyy')# lt #dateformat(firstavailabledate,'m/d/yyyy')#>
<cfmail from="Online Migration Scheduler" to="nynacs.team@ny.frb.org,ny.dsi.migration.scheduler@ny.frb.org,glen.radziminski@ny.frb.org,Paul.Florenz@ny.frb.org,Vincent.Gulizio@ny.frb.org,Larry.Koenig@ny.frb.org,Michael.Tudor@ny.frb.org" subject="#form.name# has been added to the schedule">

Customer: #form.name#
Function: #form.funcname#
Date and Time: #form.requireddate# #timeformat(form.requiredtime,'hh:mm tt')#
</cfmail>

Customer #form.name# has been Scheduled for Migration
<br><br>You may now
<br><br>
<a href=""><img src="../images/close.jpg" border="0"  class="burgundy" onClick="window.close()"></a>
<cfelse>
Customer #form.name# has been Scheduled for Migration
<br><br>You may now
<br><br>
<a href=""><img src="../images/close.jpg" border="0"  class="burgundy" onClick="window.close()"></a>
</cfif>

</cfoutput>
<!--"nynacs.team@ny.frb.org,ny.dsi.migration.scheduler@ny.frb.org,glen.radziminski@ny.frb.org,Paul.Florenz@ny.frb.org,Vincent.Gulizio@ny.frb.org,Larry.Koenig@ny.frb.org,Michael.Tudor@ny.frb.org"-->
</strong>
</center>
</body>


<cfset bdate=dateformat('3/8/2004','m/d/yyyy')>
<cfset edate=dateformat('3/12/2004','m/d/yyyy')>
<cfset #bdate#=#dateformat(bdate,'m/d/yyyy')#>
<cfset #edate#=#dateformat(edate,'m/d/yyyy')#>

<cfquery name="report" datasource="DSI">
SELECT count(*) as mi
FROM master
WHERE actualdate Between #parsedatetime(bdate)# AND #parsedatetime(edate)#
</cfquery>

<cfquery name="report1" datasource="DSI">
SELECT count(*) as sch
FROM scheduled
WHERE sdate Between #parsedatetime(bdate)# AND #parsedatetime(edate)#
</cfquery>
<cfoutput>
<cfset variance=#report1.sch#-#report.mi#>

for the week of #bdate#<br>
Scheduled: #report1.sch#<br>
Migrated: #report.mi#<br>
variance: #variance#
</cfoutput>
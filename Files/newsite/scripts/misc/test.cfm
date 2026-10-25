<cfset mo1='2/1/2004'>
<cfset end=#dateformat(mo1,'m/d/yyyy')#+#daysinmonth(mo1)#-1>
<cfset mo2=dateformat(now(),'m/d/yyyy')>
<cfset #end#=#dateformat(end,'m/d/yyyy')#>
<cfquery name="num" datasource="DSI">
Select count(*) as count
from master
where actualdate between #parsedatetime(mo1)# and #parsedatetime(end)# and grp='Automation' 
</cfquery>
<cfoutput>#num.count#</cfoutput>
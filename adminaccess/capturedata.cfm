
<body>
<!--Capture Upcoming Weeks Information-->
<cfquery name="getsch" datasource="DSI">
SELECT *
FROM master
WHERE actualdate BETWEEN #parsedatetime(form.bdate)# AND #parsedatetime(form.edate)#
</cfquery>

<cfoutput query="getsch">

<cfquery name="checksch" datasource="DSI">
Select *
from scheduled
where SchedID='#id#'
</cfquery>

<cfif #checksch.SchedID# neq #id#>
<cfquery name="addtosch" datasource="DSI">
INSERT INTO scheduled (sdate,SchedID) Values ('#dateformat(actualdate,'m/d/yyyy')#','#ID#')
</cfquery>

</cfif>

</cfoutput>
</body>


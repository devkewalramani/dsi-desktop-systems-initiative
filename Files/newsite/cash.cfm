<cfquery name="serial" datasource="import">
select *
from serial
</cfquery>

<cfoutput query="serial">
<cfquery name="mas" datasource="newdsi">
select count(*) as count
from master
where serial='#serial#'
</cfquery>
#mas.count#
</cfoutput>

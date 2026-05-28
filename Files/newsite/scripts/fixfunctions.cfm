<cfquery name="getbainfo" datasource="import">
select *
from stats
</cfquery>

<cfquery name="ctimportrec" datasource="import">
select count(*) as count
from stats
</cfquery>

<cfoutput query="getbainfo">

<cfquery name="updatemaster" datasource="dsiprod">
update master set func='Statistics' where logon='#getbainfo.logon#' and logon <> null
</cfquery>

</cfoutput>
<cfoutput>
update Complete
#ctimportrec.count# Records updated
</cfoutput>
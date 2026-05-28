<cfquery name="getbainfo" datasource="import">
select *
from dups
</cfquery>

<cfoutput query="getbainfo">

<cfquery name="deletefrommaster" datasource="newdsi">
Delete from master where id=#id# and serial='#serial#' and actualdate is null
</cfquery>

</cfoutput>

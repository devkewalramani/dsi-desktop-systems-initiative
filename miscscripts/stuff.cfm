<cfquery name="dups" datasource="DSI">
SELECT *
FROM sheet
</cfquery>

<cfoutput query="dups">

<cfquery name="crap" datasource="DSI">
DELETE FROM master WHERE id=#dups.id#
</cfquery>



</cfoutput>


<cfquery name="main" datasource="DSI">
SELECT *
FROM master
</cfquery>

<cfoutput query="main">
<cfquery name="cid" datasource="DSI">
SELECT *
FROM cid
WHERE lname='#main.lname#' and fname='#main.fname#'
</cfquery>

<cfif '#cid.logon#' neq '#main.logon#'>
<cfquery name="updatelogon" datasource="DSI">
UPDATE master SET logon='#cid.logon#' WHERE ID=#main.ID#
</cfquery>
</cfif>

<cfif '#cid.context#' neq '#main.context#'>
<cfquery name="updatecontext" datasource="DSI">
UPDATE master SET context='#cid.context#' WHERE ID=#main.ID#
</cfquery>
</cfif>

<cfif '#main.logon#' eq "">
<cfquery name="updatelogon" datasource="DSI">
UPDATE master SET logon='#cid.logon#' WHERE ID=#main.ID#
</cfquery>
</cfif>

<cfif '#main.context#' eq "">
<cfquery name="updatecontext" datasource="DSI">
UPDATE master SET context='#cid.context#' WHERE ID=#main.ID#
</cfquery>
</cfif>

</cfoutput>


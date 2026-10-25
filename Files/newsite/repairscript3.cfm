<cfquery name="main" datasource="dsiprod">
SELECT *
FROM master
</cfquery>

<cfoutput query="main">

<cfquery name="cid" datasource="nds">
SELECT *
FROM ndscheck
WHERE lname='#main.lname#' and fname='#main.fname#'
</cfquery>


<cfif '#main.logon#' eq "">
<cfquery name="updatelogon" datasource="dsiprod">
UPDATE master SET logon='#cid.logon#' WHERE ID=#main.ID#
</cfquery>
</cfif>


</cfoutput>


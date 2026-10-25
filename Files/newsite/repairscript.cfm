<cfquery name="main" datasource="dsiprod">
SELECT *
FROM master
where logon=''
</cfquery>

<cfoutput query="main">
<cfquery name="cid" datasource="check">
SELECT *
FROM datacheck
WHERE noteslname='#main.lname#' and notesfname='#main.fname#'
</cfquery>

<cfquery name="updatelogon" datasource="dsiprod">
UPDATE master SET logon='#cid.logon#' WHERE ID=#main.ID#
</cfquery>

</cfoutput>


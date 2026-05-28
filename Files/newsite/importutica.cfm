<cfquery name="openutica" datasource="import">
SELECT *
FROM utica
</cfquery>

<cfoutput query="openutica">
<cfquery name="updatemaster" datasource="dsiprod">
update master set fname='#openutica.fname#', lname='#openutica.lname#',logon='#openutica.logon#',actualdate='#openutica.actualdate#',midate='#openutica.actualdate#',stime='#openutica.stime#' where serial='#openutica.serial#'
</cfquery>
<br>
</cfoutput>

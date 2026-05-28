<cfquery name="openutica" datasource="import">
SELECT *
FROM utica
</cfquery>

<cfoutput query="openutica">
<cfquery name="updatemaster" datasource="dsiprod">
Select lname,fname,serial,actualdate,stime
from master
where serial='#serial#'
</cfquery>
#updatemaster.lname# #updatemaster.fname# #updatemaster.serial# #updatemaster.actualdate# #updatemaster.stime#
<br>
</cfoutput>


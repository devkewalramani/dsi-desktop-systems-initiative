<cfquery name="test" datasource="DSI">
Select *
from master
where func='Relationship Management'
</cfquery>
<cfoutput query="test">
#lname#<br>Fname<Br>


</cfoutput>
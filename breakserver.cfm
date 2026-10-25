<cfloop index="i" from="1" to="1000">
<cfquery name="test" datasource="dsi">
Select *
from CID
</cfquery>

<cfquery name="main" datasource="dsi">
Select *
from master
</cfquery>

<cfquery name="test" datasource="dsi">
Select *
from CID
</cfquery>

<cfquery name="main" datasource="dsi">
Select *
from master
</cfquery>

<cfquery name="test" datasource="dsi">
Select *
from CID
</cfquery>

<cfquery name="main" datasource="dsi">
Select *
from master
</cfquery>

<cfquery name="test" datasource="dsi">
Select *
from CID
</cfquery>

<cfquery name="main" datasource="dsi">
Select *
from master
</cfquery>
<cfquery name="test" datasource="dsi">
Select *
from CID
</cfquery>

<cfquery name="main" datasource="dsi">
Select *
from master
</cfquery>

<cfoutput>#i#</cfoutput>
<br>
</cfloop>
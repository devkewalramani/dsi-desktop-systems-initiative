<cfquery name="cher" datasource="DSI">
select *
from tempcher
</cfquery>

<cfoutput query="cher">
<cfquery name="main" datasource="DSI">
Select *
from master
where lname='#lname#' and fname='#fname#' and func='Bank Sup'
</cfquery>

<cfif #cher.lname# eq #main.lname# AND #cher.fname# eq #main.fname#>
<cfset tempdate=#dateformat(cher.actualdate,'m/d/yyyy')#>
<cfset #tempdate#=#dateformat(tempdate,'m/d/yyyy')#>
<cfquery name="setdate" datasource="DSI">
Update master set actualdate='#tempdate#',midate='#tempdate#' where id=#main.id#
</cfquery>
<cfquery name="delcher" datasource="DSI">
DELETE FROM tempcher WHERE id=#id#
</cfquery>
</cfif>

<cfif #status# eq 'add'>
<cfset tempdate=#dateformat(actualdate,'m/d/yyyy')#>
<cfset #tempdate#=#dateformat(tempdate,'m/d/yyyy')#>
<cfquery name="addnew" datasource="DSI">
INSERT INTO master (grp,func,lname,fname,actualdate,midate) VALUES ('Bank Sup','Bank Sup','#cher.lname#','#cher.fname#','#tempdate#','#tempdate#')
</cfquery>
<cfquery name="delcher" datasource="DSI">
DELETE FROM tempcher WHERE id=#id#
</cfquery>
</cfif>

</cfoutput>
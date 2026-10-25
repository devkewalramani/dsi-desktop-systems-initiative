<cfquery name="getinfo" datasource="newdsi">
select *
from master
where func='legal' and mtype='laptop'
</cfquery>


<cfoutput query="getinfo">
<cfquery name="getcidinfo" datasource="import">
select *
from legalfix
where logon='#logon#'
</cfquery>

<cfquery name="updatemaster" datasource="newdsi">
update master set mtype='#getcidinfo.mtype#',serial='#getcidinfo.serial#',itemdesc='#getcidinfo.itemdesc#' where logon='#getcidinfo.logon#'
</cfquery>

</cfoutput>
<cfoutput>
update Complete

</cfoutput>
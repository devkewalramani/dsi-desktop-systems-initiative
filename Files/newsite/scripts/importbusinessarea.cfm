<cfquery name="getbainfo" datasource="import">
select *
from function
</cfquery>

<cfquery name="ctimportrec" datasource="import">
select count(*) as count
from function
</cfquery>

<cfoutput query="getbainfo">

<cfquery name="insertintomaster" datasource="newdsi">
INSERT INTO master (grp,func,lname,fname,logon,context,loc,flr,ph,mtype,itemdesc,serial) VALUES ('#grp#','#func#','#lname#','#fname#','#logon#','#context#','#loc#','#flr#','#ph#','#mtype#','#itemdesc#','#serial#')
</cfquery>

</cfoutput>
<cfoutput>
#getbainfo.func#
Import Complete
#ctimportrec.count# Records Imported
</cfoutput>
<cfquery name="checkbackup" datasource="newdsi">
Select *
from test
</cfquery>
<cfset ctr=0>

<cfoutput query="checkbackup">
<cfquery name="getmasterinfo" datasource="newdsi">
select *
from master
where func='Research' and id=#id#
</cfquery>

<cfif #getmasterinfo.id# eq #checkbackup.id#>
#getmasterinfo.id#<br>
<cfelse>
Missing: #checkbackup.id#<br>
<cfset #ctr#=#ctr#+1>

<cfquery name="test" datasource="newdsi">
set IDENTITY_INSERT Master on
</cfquery>

<cfquery name="test2" datasource="newdsi">
set Null Master on
</cfquery>

<cfquery name="copytomaster" datasource="newdsi">
Insert into master (id,grp,func,lname,fname,logon,context,loc,flr,office,ph,wrkhrs,blkberry,mtype,dispo,itemdesc,serial,replacemodel,status,odate,osession,obu,tdate,tsession,tbu,midate,actualdate,stime,comment,tech,floater,lock,attachstatus,oattended,tattended,reqstatus,requesteddate,requestedtime,attachdate) values (#id#,'#grp#','#func#','#lname#','#fname#','#logon#','#context#','#loc#','#flr#','#office#','#ph#','#wrkhrs#','#blkberry#','#mtype#','#dispo#','#itemdesc#','#serial#','#replacemodel#','#status#','#odate#','#osession#','#obu#','#tdate#','#tsession#','#tbu#','#midate#','#actualdate#','#stime#','#comment#','#tech#','#floater#','#lock#','#attachstatus#','#oattended#','#tattended#','#reqstatus#','#requesteddate#','#requestedtime#','#attachdate#')
</cfquery>
</cfif>

</cfoutput>
<cfoutput>Total Missing #ctr#</cfoutput>
<cfquery name="getpodinfo" datasource="import">
select *
from pod2
</cfquery>



<cfoutput query="getpodinfo">

<cfquery name="updatemaster" datasource="dsiprod">
INSERT INTO master (grp,func,lname,fname,serial,midate,actualdate,stime,itemdesc,comment) VALUES ('Markets','Markets','ThompsonSmith','SL','#serial#','#actualdate#','#actualdate#','#stime#','#itemdesc#','#comment#')
</cfquery>

</cfoutput>


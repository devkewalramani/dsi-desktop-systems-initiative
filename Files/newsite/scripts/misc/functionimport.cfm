<cfquery name="cid" datasource="dsi">
SELECT *
FROM importcid 
</cfquery>

<cfoutput query="cid">
<cfquery name="addtomaster" datasource="dsi">
INSERT INTO master (grp,func,lname,fname,logon,context,loc,flr,ph,mtype,itemdesc,serial) VALUES('#grp#','#func#','#lname#','#fname#','#logon#','#context#','#loc#','#flr#','#ph#','#mtype#','#itemdesc#','#serial#') 
</cfquery>

</cfoutput>
Done
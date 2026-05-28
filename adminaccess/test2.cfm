<cfset bdate=dateformat('3/1/2004','m/d/yyyy')>
<cfset edate=dateformat('3/31/2004','m/d/yyyy')>
<cfset #bdate#=#dateformat(bdate,'m/d/yyyy')#>
<cfset #edate#=#dateformat(edate,'m/d/yyyy')#>
<cfquery name="tot1" datasource="DSI">
select *
from master
where grp='Automation' and dispo <> 'Decommision' and dispo <> 'Exception' and actualdate = null
order by actualdate, lname asc
</cfquery>
<table width="500"  border="1">
 <tr>
  <th scope="col">date&nbsp;</th>
    <th scope="col">Last&nbsp;</th>
    <th scope="col">first&nbsp;</th>
	<th scope="col">function&nbsp;</th>
    <th scope="col">type&nbsp;</th>
    <th scope="col">dispo&nbsp;</th>
   
  </tr>
<cfoutput query="tot1">

  <tr>
  <td width="100">#dateformat(actualdate,'m/d/yyyy')#&nbsp;</td>
    <td width="100">#lname#&nbsp;</td>
    <td width="100">#fname#&nbsp;</td>
	<td width="100">#func#&nbsp;</td>
    <td width="100">#mtype#&nbsp;</td>
    <td width="100">#dispo#&nbsp;</td>
    
  </tr>
             
</cfoutput>

</table>




<cfquery name="tot2" datasource="DSI">
select count(*) as count
from master
where grp='Automation' and dispo <> 'Decommision' and dispo <> 'Exception'
</cfquery>
<cfoutput query="tot2">

#count#

</cfoutput>
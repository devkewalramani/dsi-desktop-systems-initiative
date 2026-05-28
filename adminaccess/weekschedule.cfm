<cfquery name="report" datasource="DSI">
SELECT ID,func,lname,fname,loc,flr,ph,mtype,status,actualdate,stime,tech,floater
FROM master
WHERE actualdate Between #parsedatetime(form.bdate)# AND #parsedatetime(form.edate)#
Order BY actualdate,stime ASC
</cfquery>

<style type="text/css">
<!--
.style1 {font-size: 12px}
.style2 {
	color: #FF0000;
	font-style: italic;
}
-->
</style>

<cfoutput>
  <p align="center"><span class="style1">FRB NY DSI Project<br>
    End to End Migration<br>
    Assignment Sheet<br>
  Week of #form.bdate#</span></p>
  <hr align="left" width="100%" size="3" noshade color="##660033">
</cfoutput>
<cfoutput query="report">
<cfform name="form" method="post" action="updatetech.cfm">
  <table width="100%" border="0" cellpadding="1" cellspacing="1" bgcolor="##000000">
  <tr align="left" valign="bottom" bgcolor="##FFFFFF">
	<td width="30"><span class="style2"><span class="style1"> ID</span></td>
     <td width="80"><span class="style2"><span class="style1">Date</span></td>
      <td width="53"><span class="style2"><span class="style1">Time</span></td>
      <td width="84"><span class="style2"><span class="style1">Tech</span></td>
      <td width="84"><span class="style2"><span class="style1">Floater</span></td>
      <td width="114"><span class="style2"><span class="style1">Name</span></td>
      <td width="54"><span class="style2"><span class="style1">BA</span></td>
      <td width="37"><span class="style2"><span class="style1">Loc</span></td>
      <td width="72"><span class="style2"><span class="style1">Flr</span></td>
      <td width="34"><span class="style2"><span class="style1">Phone</span></td>
      <td width="56"><span class="style2"><span class="style1">Machine</span></td>
      <td width="37"><span class="style2"><span class="style1">Status</span></td>
    </tr>
    <tr align="left" valign="top" bgcolor="##FFFFFF">
	 <td width="30"><input  name="ID" type="text" value="#ID#" size="5" maxlength="5" readonly="yes" border="0" ></td>
      <td width="80">#dateformat(actualdate,'m/d')#</td>
      <td width="53"><cfselect name="stime" id="stime" required="yes" message="Please Select a Time">
			            <option>#TimeFormat(stime,'h:mm tt')#</option>
                        <option value="9:30 AM">9:30 AM</option>
                        <option value="10:00 AM">10:00 AM</option>
						<option value="10:30 AM">10:30 AM</option>
						<option value="11:00 AM">11:00 AM</option>
						<option value="11:30 AM">11:30 AM</option>
						<option value="12:00 PM">12:00 PM</option>
        </cfselect></td>
	  <td width="84">
	  <select name="tech">
	  <option value="#tech#">#tech#</option>
	 <option value="Woo">Woo</option>
    <option value="Samuel">Samuel</option>
	<option value="Vail">Vail</option>
	<option value="Avvento">Avvento</option>
	<option value="Tudor">Tudor</option>
	<option value="Segal">Segal</option>
	<option value="Alleyne">Alleyne</option>
	<option value="Ling">Ling</option>
	<option value="Da Silva">Da Silva</option>
	<option value="Henriquez">Henriquez</option>
	  </select></td>
      <td width="84">
	  <select name="floater">
	  <option value="#floater#">#floater#</option>
	  <option value="Woo">Woo</option>
    <option value="Samuel">Samuel</option>
	<option value="Vail">Vail</option>
	<option value="Avvento">Avvento</option>
	<option value="Tudor">Tudor</option>
	<option value="Segal">Segal</option>
	<option value="Alleyne">Alleyne</option>
	<option value="Ling">Ling</option>
	<option value="Da Silva">Da Silva</option>
	<option value="Henriquez">Henriquez</option>
	  </select></td>
      <td width="114">#fname# #lname#</td>
	  <td width="54">#func#</td>
      <td width="37">#loc#</td>
      <td width="72">#flr#</td>
      <td width="34">#ph#</td>
      <td width="56">#mtype#</td>
      <td width="57">#status#</td>
    </tr>
  </table>
  <input type="hidden" name="bdate" value="#form.bdate#">
  <input type="hidden" name="edate" value="#form.edate#">
  <input name="save" type="submit" value="Save">
</cfform>
<cfset d1=#form.bdate#>
<cfset d2=#form.edate#>
</cfoutput>
<cfoutput >
<cfform name="form2" action="printviewwschedule.cfm">
<input type="hidden" name="bdate" value="#d1#">
<input type="hidden" name="edate" value="#d2#">
<input name="submit" type="submit" id="submit" value="Print / View Schedule" >
</cfform>
</cfoutput>
</font>




<html><!-- InstanceBegin template="/Templates/dsi2.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<!-- InstanceBeginEditable name="doctitle" -->
<title>DSI</title>
<!-- InstanceEndEditable -->
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<!-- InstanceBeginEditable name="head" --><!-- InstanceEndEditable -->
<link href="../../scripts/font.css" rel="stylesheet" type="text/css">

</head>

<body link="#660000" vlink="#660000">
<div id="info" style="position:absolute; left:181px; top:331px; width:224px; height:197px; z-index:1; visibility: hidden;"></div>
<div id="info2" style="position:absolute; left:181px; top:134px; width:224px; height:197px; z-index:1; visibility: hidden;"> 
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr> 
      <td align="center" bgcolor="#cccccc"> 
        <table width="100%" border="0" cellspacing="1" cellpadding="0">
          <tr> 
            <td valign="top" bgcolor="#eeeeee"><div align="center" class="burgundy"><strong>.:: 
                info box ::.</strong></div></td>
          </tr>
          <tr> 
            <td valign="top" bgcolor="#FFFFFF"> 
              <table width="100%" border="0" cellspacing="0" cellpadding="8">
                <tr> 
                  <td valign="top" class="text1">Entering a user id or last name 
                    will allow you to view all tickets. Select the &quot;Open 
                    Tickets&quot; option to view only open tickets. <p>Enter Ticket 
                      No, User ID, or Lastname.</p></td>
                </tr>
              </table>
            </td>
          </tr>
          <tr> 
            <td height="20" bgcolor="#eeeeee"> <div align="center" class="burgundy"><strong>.:<a href="javascript:;" onClick="MM_showHideLayers('info2','','hide')"><img src="../../images/close1.jpg" width="100" height="15" border="0"></a>:.</strong></div></td>
          </tr>
        </table>
      </td>
    </tr>
  </table>
</div>
<table width="75%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" bgcolor="#cccccc"> 
      <table width="100%" border="0" cellspacing="1" cellpadding="0">
        <tr> 
          <td valign="top" bgcolor="#FFFFFF"> 
            <table width="100%" border="0" cellspacing="0" cellpadding="4">
              <tr>
                <td align="left" valign="top"><div align="center"><span class="burgundy"><span class="style4"><strong>Attachment F<br>
                </strong><strong>Customer Migration Information Worksheet</strong></span></span> </div></td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td valign="top" bgcolor="#FFFFFF">
<table width="100%" border="0" cellspacing="0" cellpadding="8">
              <tr>
                <td valign="top"><!-- InstanceBeginEditable name="mainbody" -->
<style type="text/css">
<!--
.style2 {font-weight: bold}
-->
</style>
<style type="text/css">
<!--
.style4 {font-size: 18px}
-->
</style>


<cfquery name="attach" datasource="newdsi">
Select *
From customer
Where custid='#url.recordID#'
</cfquery>

<cfoutput>
  <hr align="left" width="100%" noshade>
    <table width="100%"  border="1" cellpadding="0" cellspacing="0" bordercolor="##000000">
      <tr>
        <td width="18%" bgcolor="##CCCCCC" class="burgundy">Full Name </td>
        <td width="33%">#attach.fname# #attach.lname#</td>
        <td width="17%" bgcolor="##CCCCCC" class="burgundy">Network ID (B1xxxyy)</td>
        <td width="32%">#attach.logon#</td>
      </tr>
      <tr>
        <td bgcolor="##CCCCCC" class="burgundy">Cubicle/Office Location </td>
        <td>#attach.office#</td>
        <td bgcolor="##CCCCCC" class="burgundy">Phone No. </td>
        <td>#attach.ph#</td>
      </tr>
      <tr>
        <td bgcolor="##CCCCCC" class="burgundy">Function</td>
        <td>#attach.func#</td>
        <td rowspan="2" align="left" valign="top" bgcolor="##CCCCCC" class="burgundy">PC Model Type and Status </td>
        <td rowspan="2">#attach.mtype#  #attach.status#</td>
      </tr>
      <tr>
        <td bgcolor="##CCCCCC" class="burgundy">Department Officer </td>
        <td>#attach.officer#</td>
      </tr>
      <tr>
        <td height="40" bgcolor="##CCCCCC" class="burgundy">Business Area Liaison </td>
        <td>#attach.bal#</td>
        <td bgcolor="##CCCCCC" class="burgundy">Do you handle FRBNY Highly Confidential Data? </td>
        <td>#attach.condata#</td>
      </tr>
  </table>
    <div align="center"></div>
    <hr align="left" width="100%" noshade>  
  <div align="center">
  <cfquery name="funcsoft" datasource="newdsi">
  Select software
  from attachg
  where func='#attach.func#'
  </cfquery>
      <table width="100%"  border="1" cellpadding="0" cellspacing="0" bordercolor="##000000">
        <tr>
          <td><span class="burgundy">Attachment G for #attach.func#:<br>
		  <br>
          </span>#funcsoft.software#         </td>
        </tr>
      </table>
      <hr align="left" width="100%" noshade>
  </div>
      <table width="100%"  border="1" cellpadding="0" cellspacing="0" bordercolor="##000000">
        <tr bgcolor="##eeeeee">
          <td width="50%" bgcolor="##eeeeee">1. #attach.s1#
          <td width="50%" bgcolor="##eeeeee">11. #attach.s11#</td>
        </tr>
        <tr bgcolor="##eeeeee">
          <td width="50%" bgcolor="##eeeeee">2. #attach.s2#</td>
          <td width="50%" bgcolor="##eeeeee">12. #attach.s12#</td>
        </tr>
        <tr bgcolor="##eeeeee">
          <td width="50%" bgcolor="##eeeeee">3. #attach.s3#</td>
          <td width="50%" bgcolor="##eeeeee">13. #attach.s13#</td>
        </tr>
        <tr bgcolor="##eeeeee">
          <td width="50%" bgcolor="##eeeeee">4. #attach.s4#</td>
          <td width="50%" bgcolor="##eeeeee">14. #attach.s14#</td>
        </tr>
        <tr bgcolor="##eeeeee">
          <td width="50%" bgcolor="##eeeeee">5. #attach.s5#</td>
          <td width="50%" bgcolor="##eeeeee">15. #attach.s15#</td>
        </tr>
        <tr bgcolor="##eeeeee">
          <td width="50%" bgcolor="##eeeeee">6. #attach.s6#</td>
          <td width="50%" bgcolor="##eeeeee">16. #attach.s16#</td>
        </tr>
        <tr bgcolor="##eeeeee">
          <td width="50%" bgcolor="##eeeeee">7. #attach.s7#</td>
          <td width="50%" bgcolor="##eeeeee">17. #attach.s17#</td>
        </tr>
        <tr bgcolor="##eeeeee">
          <td width="50%" bgcolor="##eeeeee">8. #attach.s8#</td>
          <td width="50%" bgcolor="##eeeeee">18. #attach.s18#</td>
        </tr>
        <tr bgcolor="##eeeeee">
          <td width="50%" bgcolor="##eeeeee">9. #attach.s9#</td>
          <td width="50%" bgcolor="##eeeeee">19. #attach.s19#</td>
        </tr>
        <tr bgcolor="##eeeeee">
          <td width="50%" bgcolor="##eeeeee">10. #attach.s10#</td>
          <td width="50%" bgcolor="##eeeeee">20. #attach.s20#</td>
        </tr>
  </table>
      <p>&nbsp;</p>
   <div align="left">
     <table width="100%"  border="1" cellpadding="0" cellspacing="0" bordercolor="##000000">
           <tr>
             <td><strong class="burgundy">Additonal Items</strong></td>
           </tr>
           <tr>
             <td>#attach.comment# </td>
           </tr>
     </table>
	
  </div>
 
	 <form name="form" method="post" action="revise.cfm">
     <input type="hidden" name="ID" value="#url.recordID#">
	 <input type="hidden" name="lname" value="#attach.lname#">
	 <input type="hidden" name="fname" value="#attach.fname#">
	 <input type="hidden" name="func" value="#attach.func#">
	 <input type="hidden" name="mtype" value="#attach.mtype#">
	 <input type="hidden" name="status" value="#attach.status#">
	 <table width="100%"  border="0" cellspacing="5" cellpadding="5">
       <tr bgcolor="##CCCCCC">
         <td width="50%"><div align="right" class="burgundy">Who would you like to revise this Attachment F? </div></td>
         <td><div align="left">
			 <select name="edit" >
			   <option value="cust">Customer</option>
			   <option value="bal">BAL</option>
		     </select>
			 &nbsp;
		 </div></td>
       </tr>
       <tr bgcolor="##CCCCCC">
         <td colspan="2"><div align="center">
            <input name="Submit" type="submit" class="burgundy" value="     Submit      ">
         &nbsp;</div></td>
         </tr>
     </table>
	 </form>
</cfoutput> <!-- InstanceEndEditable --></td>
              </tr>
            </table> </td>
        </tr>
        <tr> 
          <td valign="top" bgcolor="#FFFFFF">&nbsp;</td>
        </tr>
        <tr> 
          <td valign="top" bgcolor="#999999"><font color="#FFFFFF">This site optimally 
            viewed with Internet Explorer running on Windows 2000 or higher.</font></td>
        </tr>
      </table></td>
  </tr>
</table>
<map name="Map">
              <area shape="rect" coords="19,2,151,48" href="http://www.it.ny.frb.org/wcsd-dsi">
</map>
</body>
<!-- InstanceEnd --></html>

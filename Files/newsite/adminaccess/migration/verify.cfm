<head>
<link href="../scripts/font.css" rel="stylesheet" type="text/css">

<title>Verify Reschedule</title>
</head>

<body>
<cfoutput>
<p align="center" class="burgundy"><strong>Are you sure you want to<br>
approve this reschedule?</strong></p>
<div align="center">
  <table width="200" border="0" cellspacing="0" cellpadding="0">
    <tr class="burgundy">
      <td><div align="center"><strong>
	   <a href="approvedate.cfm?ID=#url.ID#">APPROVE</a>
      </strong></div></td>
      <td><div align="center"><strong>
       <a href="" onClick="window.close()">CANCEL</a>
      </strong></div></td>
    </tr>
  </table>
</div>
</cfoutput>
</body>
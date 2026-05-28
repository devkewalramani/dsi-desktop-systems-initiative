<html>
<head>
<link href="../scripts/font.css" rel="stylesheet" type="text/css">
<title>Reschedule Approved</title>
</head>

<body>
<cfquery name="request" datasource="newdsi">
Select *
from master
where id='#url.id#'
</cfquery>


<cfquery name="approve" datasource="newdsi">
Update master SET actualdate='#request.requesteddate#', stime='#request.requestedtime#', reqstatus='a' where id='#request.id#'
</cfquery>
<div align="center"><br>
  <span class="burgundy"><strong>You have approved this reschedule
  <br>
  You may now</strong></span><br>
  <a href=""><img src="../images/close.jpg" border="0"  class="burgundy" onClick="window.close()"></a>
</div>


</body>
</html>

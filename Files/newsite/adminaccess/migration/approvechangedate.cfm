<html>
<head>
<link href="../scripts/font.css" rel="stylesheet" type="text/css">
<title>Approve Alternative Date</title>
</head>

<body>



<cfquery name="approve" datasource="newdsi">
Update master SET actualdate='##', stime='##', reqstatus='a' where id='##'
</cfquery>
<div align="center"><br>
  <span class="burgundy"><strong>You have approved this reschedule
  <br>
  You may now</strong></span><br>
  <a href=""><img src="../images/close.jpg" border="0"  class="burgundy" onClick="window.close()"></a>
</div>


</body>
</html>

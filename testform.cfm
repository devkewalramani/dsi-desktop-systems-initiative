<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script language='javascript' src="popcalendar.js"></script>
</head>

<body>


<form name="form" method="post" action="weekschedule.cfm">
  <p>
  Please enter your start date:
  <br>
  <input type=text name='bdate' size=10 maxlength=10 value='...'>
  <script language='javascript'>
  if (!document.layers) {
  document.write("<input type=button onclick='popUpCalendar(this, form.bdate, \"m/d/yyyy\")' value='select'  style='font-size:11px'>")
  }
</script>
  <br>
  Please enter you end date:
  <br>    
  <input type=text name='edate' size=10 maxlength=10 value='...'>
  <script language='javascript'>
  if (!document.layers) {
  document.write("<input type=button onclick='popUpCalendar(this, form.edate, \"m/d/yyyy\")' value='select'  style='font-size:11px'>")
  }
  </script>
  <br>  
  <p>
    <input name="submit" type="submit" value="Submit">
  </form>
</body>
</html>

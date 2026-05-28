
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>DSI Migration</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<style type="text/css">
<!--
body,td,th {
	font-family: century gothic,Arial,Helvetica;
	color: #FFFFFF;
}
body {
	background-color: #333366;
}
.style4 {font-size: 24pt}
-->
</style></head>

<body>
<p>  <span class="style4">DSI Customer Issue Reporting Tool<br><hr>
</span>
<span class="style4"></span>
<form name="form1" method="post" action="">
<cfquery name="Recordset1" datasource="DSI_Team">
SELECT *
FROM "DSI Customer Issue Reporting Log" 
</cfquery>
  <p>&nbsp;<label>Issue ID: 
    <input type="text" name="issue_id">
</label>
  </p>
  <p>
    <label>Date:
    <input name="date" type="text" id="date">
</label>
  </p>
  <p>
    <label>Assignee: 
    <select name="assignee" id="assignee">
      <option value="Avvento">Avvento</option>
      <option value="Koenig">Koenig</option>
      <option value="Rubin">Rubin</option>
      <option value="Segal">Segal</option>
      <option value="Shafer">Shafer</option>
      <option value="Thal">Thal</option>
      <option value="Team 1">Team 1</option>
      <option value="Team 2">Team 2</option>
      <option value="Vail">Vail</option>
    </select>
    </label>
  </p>
  <p>
    <label>Status: 
    <select name="status" id="status">
      <option value="Open">Open</option>
      <option value="Pending">Pending</option>
      <option value="Closed">Closed</option>
    </select>
</label>
  </p>
  <p>
    <label>Description:</label>
    <br>
    <textarea name="description" cols="80" rows="7" id="description"></textarea>  
    <label></label>
  </p>
  <p>
    <label>Solution:</label>
    <br>
    <textarea name="solution" cols="80" rows="7" id="solution"></textarea>  
    <label></label>
  </p>
  <br>
  <input name="new" type="button" id="new" value="New Entry">
                  <input name="save" type="button" id="save" value="Save/Update">
  <input name="next" type="button" id="next" value="Next Record">
  <input name="previous" type="submit" id="previous" value="Previous Record">
</form>
</body>
</html>

	<script language="javascript">
			function parseInput()
			{
				var input = frmSearch.txtSearch.value;
				if (input != "")
				{
					// Define Regex patterns
					var ticketPattern = /^\d+$/;
					var loginIdPattern = /^[a-z]\d[a-z]{5}$/i;
					var lastNamePattern = /^[a-z]+$/i;						
					if (input.match(ticketPattern) != null)
					{
						frmSearch.action = "http://ats.it.ny.frb.org/hd/Tix?Ticket=" + input + "&userlink=off";
					}
					else if (input.match(loginIdPattern) != null)
					{
						frmSearch.fldType.value = "LoginId";
					}
					else if (input.match(lastNamePattern) != null)
					{
						frmSearch.fldType.value = "LastName";
					}
					else
						frmSearch.fldType.value = "NotValid"
				}					
				else
					frmSearch.fldType.value = "Resolved"
				
			}
			

		</script>
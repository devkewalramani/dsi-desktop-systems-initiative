<link href="../scripts/font.css" rel="stylesheet" type="text/css">
<title>Checking Migration Date Requested</title>

<body class="burgundy">
<center><strong>
<cfset futuredate='2/1/2005'>
<cfset #dateformat(futuredate,'m/d/yyyy')#>

<cfquery name="checkfunctionsrestriction" datasource="newdsi">
Select weekrestriction
from functionlimit
where func='#form.funcname#'
</cfquery>

<cfoutput>
<cfset restrict=#checkfunctionsrestriction.weekrestriction#*7>

<cfif dateformat(now(),'dddd') eq 'Monday'>
<cfset firstavailabledate=dateformat(now(),'m/d/yyyy')+#restrict#>
<cfelseif dateformat(now(),'dddd') eq 'Tuesday'>
<cfset firstavailabledate=dateformat(now(),'m/d/yyyy')+(#restrict#-1)>
<cfelseif dateformat(now(),'dddd') eq 'Wednesday'>
<cfset firstavailabledate=dateformat(now(),'m/d/yyyy')+(#restrict#-2)>
<cfelseif dateformat(now(),'dddd') eq 'Thursday'>
<cfset firstavailabledate=dateformat(now(),'m/d/yyyy')+(#restrict#-3)>
<cfelseif dateformat(now(),'dddd') eq 'Friday'>
<cfset firstavailabledate=dateformat(now(),'m/d/yyyy')+(#restrict#-4)>
<cfelseif dateformat(now(),'dddd') eq 'Saturday'>
<cfset firstavailabledate=dateformat(now(),'m/d/yyyy')+(#restrict#+2)>
<cfelseif dateformat(now(),'dddd') eq 'Sunday'>
<cfset firstavailabledate=dateformat(now(),'m/d/yyyy')+(#restrict#+1)>
</cfif>
</cfoutput>

<cfset #firstavailabledate#=#dateformat(firstavailabledate,'m/d/yyyy')#>

<cfoutput>

<cfquery name="checkm" datasource="newdsi">
SELECT DISTINCT actualdate,count(*) as count
FROM master 
Where actualdate=#parsedatetime(form.requireddate)#
group by actualdate
</cfquery>

<cfquery name="checkfunc" datasource="newdsi">
SELECT count(*) as ftot
FROM master 
Where actualdate=#parsedatetime(form.requireddate)# AND func='#form.funcname#'
</cfquery>

<cfquery name="funclimit" datasource="newdsi">
select *
from functionlimit
Where func='#form.funcname#'
</cfquery>

<cfquery name="checkodate" datasource="newdsi">
SELECT odate
FROM master 
Where id=#form.id#
</cfquery>

<cfif #checkodate.odate# neq "">
<cfset operiod=#dateformat(checkodate.odate,'m/d/yyyy')#+14>
<cfelseif #checkodate.odate# eq "">
<cfset operiod=#dateformat(now(),'m/d/yyyy')#>
</cfif>


<cfif #dateformat(form.requireddate,'m/d/yyyy')# lt #dateformat(firstavailabledate,'m/d/yyyy')#>
Not a valid date, the first available date is #dateformat(firstavailabledate,'m/d/yyyy')#
<br><br>
<a href="javascript:history.back(1)"><img src="../images/back.jpg" border="0"></a>

<cfelseif #dateformat(form.requireddate,'m/d/yyyy')# gte #dateformat(firstavailabledate,'m/d/yyyy')# AND #checkm.count# gte 24>
No More Migrations Available today
<br><br>
<a href="javascript:history.back(1)"><img src="../images/back.jpg" border="0"></a>

<cfelseif #checkfunc.ftot# gte #funclimit.limit#>
You have reached your maximum function limit
<br><br>
<a href="javascript:history.back(1)"><img src="../images/back.jpg" border="0"></a>

<cfelseif #dateformat(form.requireddate,'m/d/yyyy')# lte #dateformat(operiod,'m/d/yyyy')#>
Migrations must be scheduled two weeks after the users orientation class
<br><br>
<a href="javascript:history.back(1)"><img src="../images/back.jpg" border="0"></a>

<cfelseif #dateformat(form.requireddate,'m/d/yyyy')# gte #dateformat(firstavailabledate,'m/d/yyyy')# AND #checkm.count# lt 24 and #checkfunc.ftot# lt #funclimit.limit#>
<cfquery name="balupdate" datasource="newdsi">
UPDATE master SET midate='#form.requireddate#', actualdate='#form.requireddate#', stime='#form.requiredtime#' Where ID=#form.ID#
</cfquery>

Customer #form.name# has been Scheduled for Migration
<br><br>You may now
<br><br>
<a href=""><img src="../images/close.jpg" border="0"  class="burgundy" onClick="window.close()"></a>

</cfif>
</cfoutput>
</strong>
</center>
</body>


<cfquery name="test" datasource="dsi">
Delete from master where func='Public Information' and mtype='printer' or mtype='wireless' or mtype='server'
</cfquery>
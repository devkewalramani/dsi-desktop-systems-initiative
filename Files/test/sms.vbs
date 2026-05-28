
Dim loc
Set loc = CreateObject("WbemScripting.SWbemLocator")
Dim WbemServices
Set WbemServices = loc.ConnectServer("B1PSM01" ,"root\SMS\site_B11")

Dim Cat3
Set Cat3 = WbemServices.Get("SMS_Collection.CollectionID='B110000E'")

Dim Cat3contents
Set Cat3contents = WbemServices.ExecQuery("select * from SMS_Collection where Name like 'B1%'")

Dim CollectionArray()

Dim index
index = 1
ReDim Preserve CollectionArray(index)
   
For each oCollection in Cat3contents   
   CollectionArray(index) = oCollection.Name
   index = index + 1
   ReDim Preserve CollectionArray(index)
Next

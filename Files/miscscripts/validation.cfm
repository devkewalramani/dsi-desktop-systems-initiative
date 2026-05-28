
<!-- TWO STEPS TO INSTALL BASIC VALIDATION:

  1.  Copy the coding into the HEAD of your HTML document
  2.  Add the last code into the BODY of your HTML document  -->

<!-- STEP ONE: Paste this code into the HEAD of your HTML document  -->

<SCRIPT LANGUAGE="JavaScript">
<!-- Original: wsabstract.com -->

<!-- This script and many more are available free online at -->
<!-- The JavaScript Source!! http://javascript.internet.com -->

<!-- Begin
function checkrequired(which) {
var pass=true;
if (document.images) {
for (i=0;i<which.length;i++) {
var tempobj=which.elements[i];
if (tempobj.name.substring(0,8)=="required") {
if (((tempobj.type=="text"||tempobj.type=="textarea")&&
tempobj.value=='')||(tempobj.type.toString().charAt(0)=="s"&&
tempobj.selectedIndex==0)) {
pass=false;
break;
         }
      }
   }
}
if (!pass) {
shortFieldName=tempobj.name.substring(8,30).toUpperCase();
alert("Please make sure the "+shortFieldName+" field was properly completed.");
return false;
}
else
return true;
}
//  End -->
</script>

<!-- STEP TWO: Copy this code into the BODY of your HTML document  -->

<center>
<form onSubmit="return checkrequired(this)">

<input type="text" name="requiredname">
<br>
<input type="text" name="requiredemail">
<br>
<select name="requiredhobby">
<option selected>Pick an option!
<option>1
<option>2
<option>3
</select>
<br>
<textarea name="requiredcomments"></textarea>
<br>
<input type=submit value="Submit">
</form>
</center>

<!-- The first option in your pulldown menus must be set to 'selected' !! -->

<p><center>
<font face="arial, helvetica" size="-2">Free JavaScripts provided<br>
by <a href="http://javascriptsource.com">The JavaScript Source</a></font>
</center><p>

<!-- Script Size:  1.41 KB -->
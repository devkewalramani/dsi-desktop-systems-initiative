function validate() {
	if ((document.forms[1].retaddr.value != " ") || (document.forms[1].media[3].checked == true)) {
	document.forms[1].submitBtn.disabled = true;
	document.forms[1].submit();
	}
	else {
	//alert(document.forms[1].media[3].checked);
	alert("Please enter a return address");
	}
}
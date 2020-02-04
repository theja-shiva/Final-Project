function validate_form(thisform)
{
	with (thisform){
			if(validate_required(email,"Email ID should contain @ and .")==false)
				{
					email.focus();
					return false;
					}
			else{
				return true;
			}
	}
}

function validate_required(field,text){
	with(field){
			apos=value.indexOf("@");
			dotpos=value.lastIndexOf(".");
			if(apos<1 || dotpos<2 || value==null ||value==""){
				alert(text);
				return false;
			}
			else{
				return false;
			}
	}
}

function match_form(thisform){
	with(thisform){
		if(match_form(pwd,"Password should contain atleast 1 Uppercase,2 digits, one ")){}
	}
}

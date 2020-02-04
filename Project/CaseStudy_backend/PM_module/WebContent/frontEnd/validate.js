function validate_form(thisForm){
	with(thisForm){
		if(validate_required(email,"Email Cannot be empty!!!")==false){
			email.focus();
			return false;
		}else{
			return true;
		}
	}
}

function validate_required(field,text){
	with(field){
		apos=value.indexOf("@");
		dotPos=value.lastIndexOf(".");
		if(apos<1||dotPos<2||value==null||value==""){
			alert(text);
			return false;
		}else{
			return true;
		}
	}
}
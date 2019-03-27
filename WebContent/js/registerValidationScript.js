window.onload = function(){

	$("#in_patient").hide();
	
	$("#isPatientYes").click(function(){
		$("#in_patient").show();
	});
	
	$("#isPatientNo").click(function(){
		$("#in_patient").hide();
	});
};
	


$(function(){
	$("#registerForm").validate({
		rules : {
				'admin.name' : {
					required : true,	
				},
				'admin.userName' : {
					required : true,
				},
				'admin.passWord' : {
					required : true,
				}
		},
		messages : {
			    'admin.name' : {
						required : "Please enter a name",
				},
				'admin.userName' : {
					required : "Please enter a User name",
				},
				'admin.passWord' : {
					required : "Please enter a Password",
				}
		}
	});
});




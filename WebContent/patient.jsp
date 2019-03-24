<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
    <%@ taglib prefix="sx" uri="/struts-dojo-tags" %>
    
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.0/dist/jquery.validate.js"></script>
<script src="js/registerValidationScript.js"></script>
<script type="text/javascript">
function logoutAdmin(){
	document.loginForm.action="logout.action";
	document.loginForm.submit();
}
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
<sx:head/>
</head>
<body>
<s:form name="patientForm" action="patientRegisteration">
<s:textfield name="patient.firstName" label="First Name"></s:textfield>
<s:textfield name="patient.lastName" label="Last Name"></s:textfield>
<s:textfield name="patient.phoneNumber" label="Phone Number"></s:textfield>
<sx:datetimepicker name="patient.birthDate" label="Birth Date" displayFormat="dd-MMM-yyyy"/>
<s:radio name="patient.gender" label="Gender" list="{'male','female'}"></s:radio>
<s:textfield name="patient.address" label="Address"></s:textfield>
<s:radio name="patient.gender" label="Is patient in-patient?" list="{'Yes','No'}"></s:radio>

<div id="in_patient" class="inpatient">
<s:textfield name="patient.roomNo" label="Room Number"></s:textfield>
<sx:datetimepicker name="patient.admitDate" label="Admission Date" displayFormat="dd-MMM-yyyy"/>
<sx:datetimepicker name="patient.dischargeDate" label="Discharge Date" displayFormat="dd-MMM-yyyy"/>
</div>

<s:submit value="Register" />

</s:form>
<s:form name="loginForm">
<input type="button" value="Logout" onclick="logoutAdmin()"></s:form>
<div id="test_div">
	hello hidden
</div>

</body>
</html>
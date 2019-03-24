<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<%-- <script type="text/javascript">
history.forward();
</script> --%>
<script type="text/javascript">
function Patient(){
	document.loginForm.action="patientLink.action";
	document.loginForm.submit();
}
function Doctor(){
	document.loginForm.action="doctorLink.action";
	document.loginForm.submit();
}
function Billing(){
	document.loginForm.action="billingLink.action";
	document.loginForm.submit();
}
function RoomHistory(){
	document.loginForm.action="roomHistoryLink.action";
	document.loginForm.submit();
}
function LabReports(){
	document.loginForm.action="labReportsLink.action";
	document.loginForm.submit();
}
function logoutAdmin(){
	document.loginForm.action="logout.action";
	document.loginForm.submit();
}
</script>
<meta charset="UTF-8">


<title>Insert title here</title>
</head>
<body>
<s:form name="loginForm">
<input type="button" value="Patient" onclick="Patient()">
<input type="button" value="Doctors" onclick="Doctor()">
<input type="button" value="Billing" onclick="Billing()">
<input type="button" value="Room History" onclick="RoomHistory()">
<input type="button" value="Labs Reports" onclick="LabReports()">
<input type="button" value="Logout" onclick="logoutAdmin()">
</s:form>
</body>
</html>
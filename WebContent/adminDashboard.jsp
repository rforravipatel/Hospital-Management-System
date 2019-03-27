<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<%-- <script type="text/javascript">
history.forward();
</script> --%>
<%-- <script type="text/javascript">
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
} --%>
<%-- </script> --%>
<meta charset="UTF-8">


<title>Insert title here</title>
</head>
<body>
<jsp:include page="navigation.jsp"></jsp:include>
	<%-- <s:property value="#session.Admin"/>   --%>
</body>
</html>
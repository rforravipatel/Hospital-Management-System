<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="Sat, 01 Dec 2001 00:00:00 GMT">
<link rel="stylesheet" type="text/css">
<script type="text/javascript">
function RegisterAdmin(){
	document.loginForm.action="registerAdminLink.action";
	document.loginForm.submit();
}
</script>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h4>Login Admin</h4>

<s:form action="login" name="loginForm" method="post">
    <s:textfield name="admin.userName" label="User Name" />
    <s:textfield name="admin.passWord" label="Password" />
    <s:submit value="Submit" />
</s:form>
<input type="button" value="Register Admin" onclick="RegisterAdmin()">

<s:actionerror/>
</body>
</html>
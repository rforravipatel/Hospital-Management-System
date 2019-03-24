<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.0/dist/jquery.validate.js"></script>

<script src="js/registerValidationScript.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<s:head/>
</head>
<body>
<s:form id="registerForm" action="adminRegister" name="AdminRegisterForm">
<s:textfield name="admin.name" label="Name"></s:textfield>
<s:textfield name="admin.userName" label="UserName"></s:textfield>
<s:textfield name="admin.passWord" label="Passowrd"></s:textfield>
<s:submit value="Register" />
</s:form>

</body>
</html>
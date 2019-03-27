<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="Sat, 01 Dec 2001 00:00:00 GMT">
<!-- ==========BootStrap========== -->
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css">
<script type="text/javascript">
	function RegisterAdmin() {
		document.loginForm.action = "registerAdminLink.action";
		document.loginForm.submit();
	}
</script>
<!-- ==========Login Form CSS============= -->
<style type="text/css">
.login-form {
	width: 340px;
	margin: 50px auto;
}

.login-form form {
	margin-bottom: 15px;
	background: #f7f7f7;
	box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
	padding: 30px;
}

.login-form h2 {
	margin: 0 0 15px;
}

.form-control, .btn {
	min-height: 38px;
	border-radius: 2px;
}

.btn {
	font-size: 15px;
	font-weight: bold;
}

.register-button {
	width: 50%
}
</style>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="login-form">

		<s:form action="login" name="loginForm" method="post" theme="simple">
			<h2 class="text-center">Login Admin</h2>
			<div class="form-group">
				<s:textfield name="admin.userName" class="form-control"
					placeholder="User Name" />
			</div>
			<div class="form-group">
				<s:password name="admin.passWord" class="form-control"
					placeholder="Password" />
			</div>
			<div class="form-group">
				<s:submit value="Log in" class="btn btn-primary btn-block" />
			</div>
		</s:form>
		<p class="register-button text-center">
			<input type="button" class="btn-primary btn-block"
				value="Register Admin" onclick="RegisterAdmin()">
		</p>

		<s:actionerror />
	</div>
</body>
</html>
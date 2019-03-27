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
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">Home</a>
			</div>
			
				<ul class="nav navbar-nav">
					<li><a href="<s:url action="patientLink.action"/>">Patient</a></li>
					<li><a href="<s:url action="doctorLink.action"/>">Doctors</a>
					</li>
					<li><a href="<s:url action="billingLink.action"/>">Billing</a>
					</li>
					<li><a href="<s:url action="roomHistoryLink.action"/>">Room
							History</a></li>
					<li><a href="<s:url action="labReportsLink.action"/>">Labs
							Reports</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="<s:url action="logout.action"/>">Logout</a></li>
				</ul>
		</div>
	</nav>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">


<script type="text/javascript">
	function logoutAdmin() {
		document.loginForm.action = "logout.action";
		document.loginForm.submit();
	}
</script>
<style type="text/css">
body {
	background-color: #eee;
}

*[role="form"] {
	max-width: 530px;
	padding: 15px;
	margin: 0 auto;
	background-color: #fff;
	border-radius: 0.3em;
}

*[role="form"] h2 {
	margin-left: 5em;
	margin-bottom: 1em;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
<sx:head />
</head>
<body>
	<jsp:include page="navigation.jsp"></jsp:include>

	<div class="container">
		<s:form name="patientForm" class="form-horizontal"
			action="patientRegisteration" role="form" theme="simple">
			<h2>Enter Patient Details</h2>
			<div class="form-group">
				<s:label name="First Name" class="col-sm-3 control-label"
					value="Fist Name"></s:label>
				<div class="col-sm-9">
					<s:textfield name="patient.firstName" placeholder="First Name"
						class="form-control"></s:textfield>
				</div>
			</div>


			<div class="form-group">
				<s:label name="Last Name" class="col-sm-3 control-label"
					value="Last Name"></s:label>
				<div class="col-sm-9">
					<s:textfield name="patient.lastName" placeholder="Last Name"
						class="form-control"></s:textfield>
				</div>
			</div>


			<div class="form-group">
				<s:label name="Phone Number" class="col-sm-3 control-label"
					value="Phone Number"></s:label>
				<div class="col-sm-9">
					<s:textfield name="patient.phoneNumber" placeholder="Phone Number"
						class="form-control"></s:textfield>
				</div>
			</div>


			<div class="form-group">
				<s:label name="Birth Date" class="col-sm-3 control-label"
					value="Birth Date"></s:label>
				<div class="col-sm-9">
					<sx:datetimepicker name="patient.birthDate" label="Birth Date"
						displayFormat="dd-MMM-yyyy" />
				</div>
			</div>

			<div class="form-group">
				<s:label name="Gender" class="col-sm-3 control-label" value="Gender"></s:label>
				<div class="col-sm-6">
					<div class="row">
						<div class="col-sm-2">
							<label class="radio-inline"> <s:radio
									name="patient.gender" list="{'male','female'}"></s:radio>
							</label>
						</div>
					</div>
				</div>
			</div>

			<div class="form-group">
				<s:label name="Phone Number" class="col-sm-3 control-label"
					value="Phone Number"></s:label>
				<div class="col-sm-9">
					<s:textfield name="patient.phoneNumber" placeholder="Phone Number"
						class="form-control"></s:textfield>
				</div>
			</div>

			<div class="form-group">
				<s:label name="Street Address 1" class="col-sm-3 control-label"
					value="Street Address 1">
				</s:label>
				<div class="col-sm-9">
					<s:textfield name="patient.streetAddress1"
						placeholder="Street Address 1" class="form-control"></s:textfield>
				</div>
			</div>

			<div class="form-group">
				<s:label name="Apartment Number" class="col-sm-3 control-label"
					value="Apartment Number">
				</s:label>
				<div class="col-sm-9">
					<s:textfield name="patient.partmentNumber"
						placeholder="Apartment Number" class="form-control"></s:textfield>
				</div>
			</div>

			<div class="form-group">
				<s:label name="City" class="col-sm-3 control-label" value="City">
				</s:label>
				<div class="col-sm-9">
					<s:textfield name="patient.city" placeholder="City"
						class="form-control"></s:textfield>
				</div>

			</div>

			<div class="form-group">
				<s:label name="State" class="col-sm-3 control-label" value="State">
				</s:label>
				<div class="col-sm-9">
					<s:textfield name="patient.state" placeholder="State"
						class="form-control"></s:textfield>
				</div>
			</div>

			<div class="form-group">
				<s:label name="Zip code" class="col-sm-3 control-label"
					value="Zip code">
				</s:label>
				<div class="col-sm-9">
					<s:textfield name="patient.zipCode" placeholder="Zip code"
						class="form-control"></s:textfield>
				</div>
			</div>


			<div class="form-group">
				<s:label name="Is patient in-patient?"
					class="col-sm-3 control-label" value="Is patient in-patient?">
				</s:label>
				<div class="col-sm-3">
					<s:radio name="patient.gender" label="Is patient in-patient?"
						id="isPatient" list="{'Yes','No'}"></s:radio>
				</div>
			</div>


			<div id="in_patient" class="inpatient">
				<div class="form-group">
					<s:label name="Room No" class="col-sm-3 control-label"
						value="Room No">
					</s:label>
					<div class="col-sm-9">
						<s:textfield name="patient.roomNo" placeholder="Room No"
							class="form-control"></s:textfield>
					</div>
				</div>

				<div class="form-group">
					<s:label name="Admission Date" class="col-sm-3 control-label"
						value="Admission Date"></s:label>
					<div class="col-sm-9">
						<sx:datetimepicker name="patient.admitDate"
							displayFormat="dd-MMM-yyyy" />
					</div>
				</div>

				<div class="form-group">
					<s:label name="Discharge Date" class="col-sm-3 control-label"
						value="Discharge Date"></s:label>
					<div class="col-sm-9">
						<sx:datetimepicker name="patient.dischargeDate"
							displayFormat="dd-MMM-yyyy" />
					</div>
				</div>

			</div>

			<div class="form-group">
				<div class="col-sm-9 col-sm-offset-3">
					<s:submit value="Register" class="btn btn-primary btn-block"/>
				</div>
			</div>


		</s:form>

	</div>

	<s:form name="loginForm">
		<input type="button" value="Logout" onclick="logoutAdmin()">
	</s:form>

	<s:if test="listPatient.size() > 0">
		<div class="content">
			<table border="1px" cellpadding="5px">
				<tr class="even">
					<th>FirstName</th>
					<th>LastName</th>
					<th>Phone Number</th>
					<th>Birth Date</th>
					<th>Gender</th>
					<th>Address</th>
					<th>Room Number</th>
					<th>Admission Date</th>
					<th>Discharge Date</th>
				</tr>
				<s:iterator value="listPatient" status="userStatus">
					<tr>
						<td><s:property value="firstName" /></td>
						<td><s:property value="lastName" /></td>
						<td><s:property value="phoneNumber" /></td>
						<td><s:property value="birthDate" /></td>
						<td><s:property value="gender" /></td>
						<td><s:property value="address" /></td>
						<td><s:property value="roomNo" /></td>
						<td><s:property value="admitDate" /></td>
						<td><s:property value="dischargeDate" /></td>
					</tr>
				</s:iterator>
			</table>
		</div>
	</s:if>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.0/dist/jquery.validate.js"></script>
	<script src="js/registerValidationScript.js"></script>
</body>
</html>
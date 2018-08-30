<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

<title>Login FEST</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Reference Bootstrap files -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Varela+Round"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<link href="${pageContext.request.contextPath}/resources/css/signin.css"
	rel="stylesheet" />



</head>


<body class="text-center">

	

	<div id="loginbox" style="margin-top: 50px;"
		class="mainbox col-md-3 col-md-offset-2 col-sm-6 col-sm-offset-2">

		<div class="panel panel-info">

			<div class="panel-heading">
				<div class="panel-title">Ulogujte se</div>
			</div>

			<div style="padding-top: 30px" class="panel-body">

				<!-- Login Form -->
				<form:form
					action="${pageContext.request.contextPath}/authenticateTheUser"
					method="POST" class="form-horizontal">

					<!-- Place for messages: error, alert etc ... -->
					<div class="form-group">
						<div class="col-xs-15">
							<div>

								<!-- Check for login error -->

								<c:if test="${param.error != null}">

									<div class="alert alert-danger col-xs-offset-1 col-xs-10">
										Pogrešno korisničko ime ili lozinka.</div>

								</c:if>

								<!-- Check for logout -->

								<c:if test="${param.logout != null}">

									<div class="alert alert-success col-xs-offset-1 col-xs-10">
										Izlogovali ste se.</div>

								</c:if>

							</div>
						</div>
					</div>

					<!-- User name -->
					<div style="margin-bottom: 25px" class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-user"></i></span> <input type="text"
							name="username" placeholder="korisničko ime" class="form-control">
					</div>

					<!-- Password -->
					<div style="margin-bottom: 25px" class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-lock"></i></span> <input type="password"
							name="password" placeholder="lozinka" class="form-control">
					</div>

					<!-- Login/Submit Button -->
					<div style="margin-top: 10px" class="form-group">
						<div class="col-sm-6 controls">
							<button type="submit" class="btn btn-success">Uloguj me</button>
						</div>
					</div>

				</form:form>

			</div>

		</div>

	</div>
	<p class="mt-5 mb-3 text-muted">&copy; FEST 2018</p>

</body>

</html>
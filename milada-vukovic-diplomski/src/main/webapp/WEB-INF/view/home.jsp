<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>


<html>

<head>
<title>Početna strana</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap core CSS -->
<link href="../../dist/css/bootstrap.min.css" rel="stylesheet">

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<link href="../../assets/css/ie10-viewport-bug-workaround.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>

<link href="${pageContext.request.contextPath}/resources/css/home.css"
	rel="stylesheet" />
</head>

<body>
	<div class="site-wrapper">

		<div class="site-wrapper-inner">

			<div class="cover-container">

				<div class="masthead clearfix">
					<div class="inner">
						<h3 class="masthead-brand">Meni</h3>
						<nav>
							<ul class="nav masthead-nav">
								<li class="active"><a href="#">Link 1</a></li>
								<li><a href="#">Link 2</a></li>
								<li><a href="#">Link 3</a></li>
							</ul>
						</nav>
					</div>
				</div>

				<div class="inner cover">
					<h1 class="cover-heading">FEST 2018</h1>
					<p class="lead">Dobrodošli na početnu stranu!</p>
					<p class="lead">
						<form:form action="${pageContext.request.contextPath}/logout"
							method="POST">
							<input class="btn btn-lg btn-default" type="submit"
								value="Izloguj me" />
						</form:form>
					</p>
				</div>

				<div class="mastfoot">
					<div class="inner">
						<p>Film lovers</p>
						Vaše uloge:
						<security:authentication property="principal.authorities" />
					</div>
				</div>

			</div>
		</div>

	</div>
</body>

</html>
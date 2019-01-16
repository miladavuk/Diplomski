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
						<nav>
							<ul class="nav masthead-nav">
								<li class="active"><a
									href="${pageContext.request.contextPath}/">Početna</a></li>
								<li><a href="#">Novi dnevni plan</a></li>
								<li><a href="#">Nedeljni pregled</a></li>
								<li><form:form
										action="${pageContext.request.contextPath}/logout"
										method="POST">
										<button type="submit" class="linkButton">Izloguj me</button>
									</form:form></li>
							</ul>
						</nav>
					</div>
				</div>

				<div class="inner cover">
					<h1 class="cover-heading">Moj planer</h1>
					<p class="lead">Odaberite datum za koji pravite plan</p>
				</div>
				<form:form action="${pageContext.request.contextPath}" method="POST"
					modelAttribute="activity" id="dateForm">
					<input type="date" path="date" />
					<!-- TODO: add submit button,after selecting date,ajax should be called to load the table bellow -->
					<button type="submit" class="btn-default" form="dateForm"
						value="Potvrdi datum">Potvrdi datum</button>
				</form:form>
				<div class="daily-plan">
					<form:form action="${pageContext.request.contextPath}"
						method="POST" modelAttribute="activity" id="planForm">
						<table id="tablePlan">
							<thead>
								<th>Vreme početka</th>
								<th>Tip aktivnosti</th>
								<th>Naziv aktivnosti</th>
								<th>Detalji</th>
								<th>Završeno</th>
								<th>Akcija</th>
							</thead>
							<tbody>
								<tr id="tableRow">
									<td><input type="text" path="startTime" /></td>
									<td><form:select path="type"></form:select></td>
									<td><input type="text" path="name" /></td>
									<td><input type="text" path="details" /></td>
									<td><label class="container"><input
											type="checkbox"> <span class="checkmark"></span> </label></td>
									<td><button class="btn-default">Obriši aktivnost</button></td>
								</tr>
							</tbody>
						</table>
						<br>
						<input type="button" class="btn-big" onclick="addRow()" value="Dodaj aktivnost"/>
						<input type="submit" class="btn-confirm" form="planForm"
							value="Sačuvaj plan"value="Sačuvaj plan"/>
					</form:form>
					<!-- TODO: add button "dodaj aktivnost" and "obrisi aktivnost" for adding/deleting a row, add submit button -->
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/planner.js"></script>

</html>
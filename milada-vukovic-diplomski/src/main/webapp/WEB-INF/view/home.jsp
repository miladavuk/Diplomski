<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>

<head>
	<title>Početna strana</title>
</head>

<body>
	<h2>FEST 2018</h2>
	<hr>
	
	Dobrodošli na početnu stranu! <br><br><br>
	<!-- Add a logout button -->
	<form:form action="${pageContext.request.contextPath}/logout" 
			   method="POST">
	
		<input type="submit" value="Izloguj me" />
	
	</form:form>

</body>

</html>
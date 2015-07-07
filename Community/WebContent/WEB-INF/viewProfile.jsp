<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@ include file="/WEB-INF/header.jsp"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Profile</title>
</head>
<body background="images/background-pattern-fabric.jpg">
	<c:import url="/WEB-INF/navbar.jsp"></c:import>
	<div class="col-md-4"></div>
	<div class="col-md-4" style="border-radius: 10px; background-color: lightgray">
		<br />
		<p style="color: blue">Hi ${user.name}!</p>

		<p>We're glad you are a part of our community!</p>

		<p>Here's your information:</p>
		Your User ID is: ${user.ID } <br /> 
		Your UserName is: ${user.userName }<br /> 
		Your Email is: ${user.email} <br /> 
		<br/>
		<a class="btn btn-default btn-sm" href="editProfile?id=${user.ID }">Edit
			Your Info</a>

	</div>
	<div class="col-md-4"></div>
</body>
</html>
<%@ include file="/WEB-INF/header.jsp"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List of Residents</title>
</head>
<body background="images/background-pattern-fabric.jpg">
	<c:import url="/WEB-INF/navbar.jsp"></c:import>

	<h3 align="center">Residents List</h3>
	<div class="col-md-1"></div>
	<div class="col-md-10"
		style="border-radius: 10px; background-color: lightgray">
		<table class="table table-hover">
			<tr>
				<th>ID</th>
				<th>NAME</th>
				<th>USERNAME</th>
				<th>EMAIL</th>
				<th>USER COMMENTS</th>
			</tr>

			<c:forEach items="${listOfUsers }" var="user">
				<tr>
					<td>${user.ID}</td>
					<td>${user.name}</td>
					<td>${user.userName}</td>
					<td>${user.email}</td>
					<td><a class="btn btn-primary btn-sm"
						href="listComments?id=${user.ID }">${user.name }'s Comments</a></td>


				</tr>
			</c:forEach>
		</table>
	</div>
	<div class="col-md-1"></div>
</body>
</html>
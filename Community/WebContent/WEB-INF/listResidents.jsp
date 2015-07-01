<%@ include file="/WEB-INF/header.jsp"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List of Residents</title>
</head>
<body>
	<c:import url="/WEB-INF/navbar.jsp"></c:import>

	<h3 align="center">Residents List</h3>

	<table class="table table-hover">
		<tr>
			<th>ID</th>
			<th>NAME</th>
			<th>USERNAME</th>
			<th>EMAIL</th>
			<th></th>
			<th></th>
		</tr>

		<c:forEach items="${listOfUsers }" var="user">
			<tr>
				<td>${user.ID}</td>
				<td>${user.name}</td>
				<td>${user.userName}</td>
				<td>${user.email}</td>
				<td>
					<form action="listComments" method="get">
						<input type="hidden" name="user_ID" value="${ comments.user_ID}=?">
						<input class="btn btn-primary btn-sm" type="submit"
							value="${user.name }'s Comments" id="submit">
					</form>
				</td>

				<td><a class="btn btn-primary btn-sm"
					href="listComments?id=${comment.user_ID }">${user.name }'s
						Comments</a></td>


			</tr>
		</c:forEach>
	</table>

</body>
</html>
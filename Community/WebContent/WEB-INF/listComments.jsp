<%@ include file="/WEB-INF/header.jsp"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Comment Board</title>
</head>

<body background="images/background-pattern-fabric.jpg">
	<c:import url="/WEB-INF/navbar.jsp"></c:import>

	<h1 align="center">Neighbor Comments</h1>

	<%-- <c:out value="${listOfComments }"></c:out> --%>

	<div class="col-md-1"></div>
	<div class="col-md-10"
		style="border-radius: 10px; background-color: lightgray">
		<div align="right">
			<form action="addComment" method="get">
				<input class="btn btn-primary btn-sm" type="submit"
					value="Add Comment" id="submit">
			</form>
		</div>

		<table class="table table-hover">
			<tr>
				<th>ID</th>
				<th>USER</th>
				<th>TOPIC</th>
				<th>COMMENTS</th>
				<th></th>
				<!-- <th>
				<form action="addComment" method="get">
					<input class="btn btn-primary btn-sm" type="submit"
						value="Add Comment" id="submit">
				</form>
			</th> -->


			</tr>

			<c:forEach items="${listOfComments }" var="comment">
				<tr>
					<td>${comment.ID}</td>

					<!-- NEED TO GET THIS TO READ AS USERNAME INSTEAD OF USER_ID -->
					<td>${comment.userName}</td>

					<td>${comment.commentTopic}</td>
					<td>${comment.commentContent}<%-- <c:if test="${comment.user_id=1}"> --%>
					<td><a class="btn btn-default btn-sm"
						href="editComments?id=${comment.ID }">Edit</a></td>
					<td>
						<form action="deleteComment" method="post">
							<input type="hidden" name="id" value="${ comment.ID}"> <input
								class="btn btn-danger btn-sm" type="submit" value="Delete"
								id="submit">
						</form>
					</td>
					<%-- </c:if> --%>
				</tr>
			</c:forEach>
		</table>
	</div>
	<div class="col-md-1"></div>
</body>
</body>
</html>
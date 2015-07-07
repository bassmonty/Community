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

	<h3 align="center">Neighbor Comments</h3>

	<%-- <c:out value="${listOfComments }"></c:out> --%>

	<table class="table table-hover">
		<tr>
			<th>ID</th>
			<th>USER</th>
			<th>TOPIC</th>
			<th>COMMENTS</th>
			<th></th>
			<th>
				<form action="addComment" method="post">
					<input type="hidden" name="ID" value="${ comments.ID}"> <input
						class="btn btn-primary btn-sm" type="submit" value="Add Comment"
						id="submit">
				</form>
			</th>


		</tr>

		<c:forEach items="${listOfComments }" var="comment">
			<tr>
				<td>${comment.ID}</td>
				
				<!-- NEED TO GET THIS TO READ AS USERNAME INSTEAD OF USER_ID -->
				<td>${comment.user_id}</td>
				
				<td>${comment.commentTopic}</td>
				<td>${comment.commentContent}<%-- <c:if test="${comment.user_id=1}"> --%>
				<td><a class="btn btn-default btn-sm"
					href="editComment?id=${comments.ID }">Edit</a></td>
				<td>
					<form action="deleteComment" method="post">
						<input type="hidden" name="ID" value="${ comments.ID}"> <input
							class="btn btn-danger btn-sm" type="submit" value="Delete"
							id="submit">
					</form>
				</td>
				<%-- </c:if> --%>
			</tr>
		</c:forEach>
	</table>

</body>
</body>
</html>
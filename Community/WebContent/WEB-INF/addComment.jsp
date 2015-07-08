<%@ include file="/WEB-INF/header.jsp"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Comment</title>
</head>
<body background="images/background-pattern-fabric.jpg">
	<c:import url="/WEB-INF/navbar.jsp"></c:import>

	<div class="col-md-3"></div>
	<div class="col-md-6"
		style="border-radius: 10px; background-color: lightgray">
		<br />

		<legend>
			<h4 align="center">Add Comment</h4>
		</legend>

		<form action="AddCommentServlet" method="post">
			<input type="hidden" name="action" value="addComment">

			<div class="form-group">
				<label>Comment Topic</label> <input class="form-control"
					style="width: 60%; font-size: 20;" type="text" name="commentTopic"
					required placeholder="topic">
			</div>

			<div class="form-group">
				<label>Comment:</label> <input class="form-control"
					style="width: 70%; font-size: 20;" type="text"
					name="commentContent" required placeholder="add a comment">
				<br>
			</div>

			<div class="form-group" align="right">
				<label>&nbsp;</label> <input class="btn btn-primary active"
					type="submit" value="Submit" id="submit">
			</div>
		</form>
	</div>
	<div class="col-md-3"></div>
</body>
</html>
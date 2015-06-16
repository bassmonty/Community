<%@ include file="/WEB-INF/header.jsp" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Comment Board</title>
</head>

<body>
	<c:import url="/WEB-INF/navbar.jsp"></c:import>

	<form action="LoginServlet" method="post">
		<input type="hidden" name="action" value="login">
		
		<label>Username:</label>
		<input type="text" name="userName" required><br/>
		
		<label>Password:</label>
		<input type="password" name="password" required><br/>
		
		<label>&nbsp;</label>
		<input type="submit" value="Login" id="submit">
	</form>
	
</body>
</body>
</html>
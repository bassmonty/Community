<%@ include file="header.jsp"%>

<title>Login</title>
</head>

<body>
	<c:import url="/navbar.jsp"></c:import>
	
	<myTags:Error />
			

	<form action="LoginServlet" method="post">
		<input type="hidden" name="action" value="login">
		
		<label>UserName:</label>
		<input type="text" name="userName" required><br/>
		
		<label>Password:</label>
		<input type="password" name="password" required><br/>
		
		<label>&nbsp;</label>
		<input type="submit" value="Login" id="submit">
	</form>
	
</body>
</html>
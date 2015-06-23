<%@ include file="/WEB-INF/header.jsp" %>

<title>Login</title>
</head>

<body>
	<c:import url="/WEB-INF/navbar.jsp"></c:import>

	<h3>Log in </h3>
	
	<br/>
	<p style="color:red">${error_username }</p>
	<div>
	
	<form action="LoginServlet" method="get">
		<input type="hidden" name="action" value="login">
		<div class="form-group">
			<label>Username:</label>
			<input class="form-control" type="text" name="userName" required style="width:300px"><br/>
		</div>
		<div class="form-group">
			<label>Password:</label>
			<input class="form-control" type="password" name="password" required style="width:300px"><br/>
		</div>
		<div class="form-group">
			<label>&nbsp;</label>
			<input class="btn btn-primary active" type="submit" value="Login" id="submit">
		</div>
	</form>
	</div>
</body>
</html>
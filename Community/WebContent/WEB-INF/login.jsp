<%@ include file="/WEB-INF/header.jsp" %>

<title>Login</title>
</head>

<body>
	<c:import url="/WEB-INF/navbar.jsp"></c:import>

	<h3>Log in to your Community</h3>
	
	<br/>
	
	<div>
	
	<form action="LoginServlet" method="post">
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
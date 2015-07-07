<%@ include file="/WEB-INF/header.jsp"%>

<title>Login</title>
</head>

<body background="images/background-pattern-fabric.jpg">
	<c:import url="/WEB-INF/navbar.jsp"></c:import>

	<h1 align="center">Log In</h1>

	<br />
	<p style="color: red">${error_username }</p>

	<div class="col-md-4"></div>
	<div class="col-md-4"
		style="border-radius: 10px; background-color: lightgray">

		<form action="LoginServlet" method="POST">
			<input type="hidden" name="action" value="login">
			<div class="form-group" align="center">
				<label>Username:</label> <input class="form-control" type="text"
					name="userName" required style="width: 300px"><br />
			</div>
			<div class="form-group" align="center">
				<label>Password:</label> <input class="form-control" type="password"
					name="password" required style="width: 300px"><br />
			</div>
			<div class="form-group" align="center">
				<label>&nbsp;</label> <input class="btn btn-primary active"
					type="submit" value="Login" id="submit">
			</div>
		</form>
		<div class="col-md-4"></div>
	</div>
</body>
</html>
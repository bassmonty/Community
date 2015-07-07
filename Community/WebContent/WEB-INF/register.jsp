<%@ include file="/WEB-INF/header.jsp"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
</head>
<body background="images/background-pattern-fabric.jpg">
	<c:import url="/WEB-INF/navbar.jsp"></c:import>

	<div>
		<h1 style="text-align: center;">Join A Community</h1>
	</div>

	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<div class="alert alert-dismissable alert-info">
					<button type="button" class="close" data-dismiss="alert"
						aria-hidden="true">×</button>
					<strong>Note!</strong> We are working on adding more communities to
					our Community Network. Thank you for your patience! <a
						href="/Community/Contact" class="alert-link">Tell us about
						your community.</a>
				</div>
			</div>
		</div>
		<div class="col-md-3"></div>
		<div class="col-md-6"
			style="border-radius: 10px; background-color: lightgray">
			<br />

			<legend>
				<h4 align="center">Enter Your Information</h4>
			</legend>
			
			<form action="RegistrationServlet" method="post">
				<input type="hidden" name="action" value="register">

				<div class="form-group">
					<label>Name:</label> <input class="form-control"
						style="width: 60%; font-size: 20;" type="text" name="name"
						required placeholder="Enter name">
				</div>

				<div class="form-group">
					<label>Email:</label> <input class="form-control"
						style="width: 70%; font-size: 20;" type="email" name="email"
						required placeholder="Enter email"> <br>
				</div>

				<div class="form-group">
					<label>Username:</label> <input class="form-control"
						style="width: 60%; font-size: 20;" type="text" name="userName"
						required placeholder="Enter username">
				</div>

				<div class="form-group">
					<label>Password:</label> <input class="form-control"
						style="width: 60%; font-size: 20;" type="password" name="password"
						required placeholder="Enter password">
				</div>

				<div class="form-group">
					<label>Verify Password:</label> <input class="form-control"
						style="width: 60%; font-size: 20;" type="password"
						name="verify_password" required placeholder="Retype password">
				</div>

				<div class="form-group">
					<label>Select Your Community:</label> <select class="form-control"
						id="community" name="community" style="width: 60%; font-size: 20;"
						required>

						<option value="na" selected="">Choose One:</option>
						<option value="ParkAtLakeline">Park At Lakeline</option>
						<option value="MuirLake" disabled>Muir Lake Apartments</option>
						<option value="SycamoreSprings" disabled>Sycamore Springs</option>
					</select>
				</div>

				<div class="form-group" align="right">
					<label>&nbsp;</label> <input class="btn btn-primary active"
						type="submit" value="Register" id="submit">
				</div>
			</form>		
		</div>
	</div>
	<div class="col-md-3"></div>
</body>
</html>
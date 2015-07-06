<%@ include file="/WEB-INF/header.jsp"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
</head>
<body background="images/background-pattern-gray.jpg">
	<c:import url="/WEB-INF/navbar.jsp"></c:import>

	<div>
		<h2 style="text-align: center;">Join A Community</h2>
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



		<!-- <div class="row clearfix">
		<div class="col-md-3 column">
			<img alt="140x140" src="images/generic-avatar.jpg" class="img-rounded" />
		
		<br/>
		Profile Picture Upload
			<div class="col-md-offset-1 control-group">
    			<label for="exampleInputFile">Upload a Profile Picture</label>
    				<input type="file" id="exampleInputFile">		
			</div>
		</div> -->

		<h5>Which is your community?</h5>


		<div class="col-md-offset-1 form-group">
			<label>Select Your Community </label> <select id="subject"
				name="subject">

				<option value="na" selected="">Choose One:</option>
				<option value="ParkAtLakeline">Park At Lakeline</option>
				<option value="MuirLake" disabled>Muir Lake Apartments</option>
				<option value="SycamoreSprings" disabled>Sycamore Springs</option>
			</select>

		</div>

		<!-- <div class="col-md-3 column">
			<div class= "column input-group" style="border:solid">
      			<span class="input-group-addon">
       		 		<input type="radio" aria-label="...">       		 		       		 		
      			</span>
      			
      			      			
      			<div>
      			<address> <strong>The Park At Lakeline</strong>
      			<br /> 2800 S. Lakeline Blvd.
      			<br /> Cedar Park, TX 78613
      			<br /> <abbr title="Phone">P:</abbr> (855) 848-5918
      			</address>
      			</div>
      			
      		</div>     		
		</div>
		
		<div class= "col-md-3 column input-group" style="border:solid">
      		<span class="input-group-addon">
       		 	<input type="radio" aria-label="...">       		 		       		 		
      		</span>
      		<div>
      			<address> <strong>The Park At Lakeline</strong>
      			<br /> 2850 S. Lakeline Blvd.
      			<br /> Cedar Park, TX 78613
      			<br /> <abbr title="Phone">P:</abbr> (855) 848-5918
      			</address>
      		</div>
      	</div> -->

	</div>

	<form class="form-horizontal" >
		<fieldset>

			<!-- Form Name -->
			<legend class="col-md-offset-1">Your Information</legend>


			<!-- Name Input-->
			<div class="col-md-offset-1 control-group">
				<label class="control-label" for="name">Name</label>
				<div class="controls">
					<input id="name" name="name" type="text" placeholder="First Last"
						class="input-medium" required>
					<!-- 					<p class="help-block">Enter your name</p> -->
				</div>
			</div>

			<!-- Email Input-->
			<div class="col-md-offset-1 control-group">
				<label class="control-label" for="email">Email</label>
				<div class="controls">
					<input id="email" name="email" type="text" placeholder=""
						class="input-medium" required>
					<!-- 					<p class="help-block">Enter your email</p> -->
				</div>
			</div>

			<!-- Username Input-->
			<div class="col-md-offset-1 control-group">
				<label class="control-label" for="userName">Username</label>
				<div class="controls">
					<input id="userName" name="userName" type="text" placeholder=""
						class="input-medium" required>
					<!-- 					<p class="help-block">Username can contain any letters or -->
					<!-- 						numbers, without spaces</p> -->
				</div>
			</div>

			<!-- Password Input-->
			<div class="col-md-offset-1 control-group">
				<label class="control-label" for="password">Password</label>
				<div class="controls">
					<input id="password" name="password" type="password" placeholder=""
						class="input-medium" required>
					<!-- 					<p class="help-block">Password should be at least 8 characters</p> -->
				</div>
			</div>

			<!-- Password Verify Input-->
			<div class="col-md-offset-1 control-group">
				<label class="control-label" for="password_verify">Verify
					Password</label>
				<div class="controls">
					<input id="password_verify" name="password_verify" type="password"
						placeholder="" class="input-medium" required>
					<p class="help-block">Please retype password</p>
				</div>
			</div>



			<!-- Submit -->
			<div class="col-md-offset-1 control-group">
				<label class="control-label" for="register"></label>
				<div class="controls">
					<button id="register" name="register" class="btn btn-primary">Register</button>
				</div>
			</div>
</div>
		</fieldset>
	</form>

</body>
</html>
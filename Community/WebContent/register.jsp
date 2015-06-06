<%@ include file="header.jsp"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
</head>
<body>
	<c:import url="navbar.jsp"></c:import>
	<%--  <myTags:common-body> --%>
	<%-- 		<c:import url="/navbar.jsp"></c:import> --%>
	<div>
		<h2>Which Community are you a part of?</h2>
	</div>
	
	--------------------------------------------------
	
		--------------------------
	<!-- 	<div class="col-lg-6">
    <div class="input-group">
      <span class="input-group-addon">
        <input type="radio" aria-label="...">
      </span>
      <input type="text" class="form-control" aria-label="...">
    </div>/input-group
  </div>/.col-lg-6
</div>/.row -->
		--------------------------
		
		<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="alert alert-dismissable alert-info">
				 <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
				<strong>Notice!</strong> 
				We are working on adding more communities to our Community Network. 
				Thank you for your patience!
				<a href="/Community/contact-us" class="alert-link">Tell us about your community.</a>
			</div>
		</div>
	</div>
	<div class="row clearfix">
		<div class="col-md-3 column">
			<img alt="140x140" src="http://lorempixel.com/140/140/" class="img-rounded" />
		</div>
		<div class="col-md-3 column">
			<div class= "col-md-3 column input-group">
      			<span class="input-group-addon">
       		 		<input type="radio" aria-label="...">       		 		       		 		
      			</span>
      			
      			<div class="col-md-12" >
      			<address> <strong>The Park At Lakeline</strong>
      			<br /> 2800 S. Lakeline Blvd.
      			<br /> Cedar Park, TX 78613
      			<br /> <abbr title="Phone">P:</abbr> (855) 848-5918
      			</address>
      			</div>
      			
      		</div>     		
		</div>
		
		<div class= "col-md-3 column input-group">
      		<span class="input-group-addon">
       		 	<input type="radio" aria-label="...">       		 		       		 		
      		</span>
      		<div class="col-md-12" >
      			<address> <strong>The Park At Lakeline</strong>
      			<br /> 2850 S. Lakeline Blvd.
      			<br /> Cedar Park, TX 78613
      			<br /> <abbr title="Phone">P:</abbr> (855) 848-5918
      			</address>
      		</div>
      	</div>
      		
	</div>
		<!-- <div class="col-md-3 column">
			 <a id="modal-226331" href="#modal-container-226331" role="button" class="btn" data-toggle="modal">Launch demo modal</a>
			
			<div class="modal fade" id="modal-container-226331" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							 <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
							<h4 class="modal-title" id="myModalLabel">
								Modal title
							</h4>
						</div>
						<div class="modal-body">
							...
						</div>
						<div class="modal-footer">
							 <button type="button" class="btn btn-default" data-dismiss="modal">Close</button> <button type="button" class="btn btn-primary">Save changes</button>
						</div>
					</div>
					
				</div>
				
			</div>
			
		</div> -->
	</div>
</div>
	
	--------------------------------------------------
	
	
<!-- 	<div class="col-md-offset-6 col-md-6">
		<img
			src="http://blog.apartmentfinder.com/wp-content/uploads/2014/01/meeting-new-people-apartments.jpg"
			height="300px" width="500px">
			</div>
		<hr class="col-md-6" />
			<div class="col-md-offset-1 col-md-4">
		<form class="form-horizontal" action="RegistrationServlet"
			method="post">
			<input type="hidden" name="action" value="Register User">

			<div class="form-group">
				<label class="col-md-4">First Name:</label> <input
					class="form-control" type="text" name="name" required><br />
				<label class="col-md-4">Last Name:</label><input
					class="form-control" type="text" name="name" required><br />
			</div>

			<div class="form-group">
				<label>Username:</label> <input class="form-control" type="text"
					name="userName" required><br />
			</div>

			<div class="form-group">
				<label>Email:</label> <input class="form-control" type="text"
					name="email" required><br />
			</div>

			<div class="form-group">
				<label>Password:</label> <input class="form-control" type="password"
					name="password" required><br />
			</div>

			<div class="form-group">
				<label>Verify Password:</label> <input class="form-control"
					type="password" name="verify_password" required><br />
			</div>

			
	</div>
	<label>&nbsp;</label>
	<input class="btn btn-primary active" type="submit" value="Register"
		id="submit">

	</form>

	<form>
		<div class="fileupload fileupload-new" data-provides="fileupload">
			<div class="fileupload-preview thumbnail"
				style="width: 200px; height: 150px;"></div>
			<div>
				<span class="btn btn-file"><span class="fileupload-new">Select
						image</span><span class="fileupload-exists">Change</span><input
					type="file" /></span> <a href="#" class="btn fileupload-exists"
					data-dismiss="fileupload">Remove</a>
			</div>
		</div>
	</form> -->

---------------------------------

	<form class="form-horizontal">
		<fieldset>

		<!-- Form Name -->
			<legend class="col-md-offset-1">Your Information</legend>

		<!-- First Name Input-->
			<div class="col-md-offset-1 control-group">
				<label class="control-label" for="firstName">First Name</label>
				<div class="controls">
					<input id="firstName" name="firstName" type="text" placeholder=""
						class="input-medium" required>
					<p class="help-block">Enter your first name</p>
				</div>
			</div>

		<!-- Last Name Input-->
			<div class="col-md-offset-1 control-group">
				<label class="control-label" for="lastName">Last Name</label>
				<div class="controls">
					<input id="lastName" name="lastName" type="text" placeholder=""
						class="input-medium" required>
					<p class="help-block">Enter your last name</p>
				</div>
			</div>

		<!-- Username Input-->
			<div class="col-md-offset-1 control-group">
				<label class="control-label" for="userName">Username</label>
				<div class="controls">
					<input id="userName" name="userName" type="text" placeholder=""
						class="input-medium" required>
					<p class="help-block">Username can contain any letters or
						numbers, without spaces</p>
				</div>
			</div>

		<!-- Password Input-->
			<div class="col-md-offset-1 control-group">
				<label class="control-label" for="password">Password</label>
				<div class="controls">
					<input id="password" name="password" type="password" placeholder=""
						class="input-medium" required>
					<p class="help-block">Password should be at least 8 characters</p>
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
			
		<!-- Profile Picture Upload-->
			<div class="col-md-offset-1 control-group">
    			<label for="exampleInputFile">Upload a Profile Picture</label>
    				<input type="file" id="exampleInputFile">		
			</div>

			<!-- Submit -->
			<div class="col-md-offset-1 control-group">
				<label class="control-label" for="register"></label>
				<div class="controls">
					<button id="register" name="register" class="btn btn-primary">Register</button>
				</div>
			</div>

		</fieldset>
	</form>

</body>
</html>
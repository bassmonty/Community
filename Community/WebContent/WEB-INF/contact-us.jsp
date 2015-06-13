<%@ include file="header.jsp"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contact us</title>
</head>
<body>
	<c:import url="navbar.jsp"></c:import>

	<link class="cssdeck" rel="stylesheet"
		href="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/2.2.2/css/bootstrap.min.css">


	<form class="well span12">
		<form class="form-horizontal">
			<div class="form-group">
				<div class="col-sm-6">
					<label>First Name</label> <input type="text" class="span3"
						placeholder="Your First Name">
				<div class="col-sm-6">
					<label>Last Name</label> <input type="text" class="span3"
						placeholder="Your Last Name">
				<div class="col-sm-6">
					<label>Email Address</label> <input type="text" class="span3"
						placeholder="Your email address">
				</div>
				</div>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-6">
					<label>Subject 
						<select id="subject" name="subject"
						class="span3">
							<option value="na" selected="">Choose One:</option>
							<option value="service">General Customer Service</option>
							<option value="suggestions">Suggestions</option>
							<option value="product">Product Support</option>
						</select>
					</label>
	
				</div>
				<div class="col-sm-6">
					<label>Message</label>
						<textarea name="message" id="message" class="input-xlarge span5"
						rows="10"></textarea>
				</div>
				</div>
			<div class="form-group">	
				<button type="submit" class="btn btn-primary pull-right">Send</button>
			</div>
			</div>
		</form>
	</form>





</body>
</html>
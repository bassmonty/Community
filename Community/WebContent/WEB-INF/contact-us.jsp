<%@ include file="header.jsp"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contact us</title>
<link class="cssdeck" rel="stylesheet"
	href="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/2.2.2/css/bootstrap.min.css">
</head>
<body>
	<c:import url="/WEB-INF/navbar.jsp"></c:import>

	<div class="row">
		<div class="col-md-4"></div>


<!-- 		<form class="well span12"> -->
			<div class="col-md-4" style="background-color: lightgray">
				<div class="form-group">
					<label>Name</label> <input type="text" placeholder="Your Name">
				</div>

				<div class="form-group">
					<label>Email Address</label> <input type="text" placeholder="Your email address">
				</div>
				<div class="form-group">
					<label>Subject </label>
						<select id="subject" name="subject">
						
							<option value="na" selected="">Choose One:</option>
							<option value="service">General Customer Service</option>
							<option value="suggestions">Suggestions</option>
							<option value="product">Product Support</option>
						</select>
					
				</div>
				<div class="form-group">
					<label>Message</label>
					<textarea name="message" id="message" rows="8" style="width:400px"></textarea>
				</div>
				<div class="form-group">
					<button type="submit" class="btn btn-primary ">Send</button>
				</div>

			</div>
		<!-- </form> -->
		<div class="col-md-4"></div>
	</div>
</body>
</html>
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
<body background="images/background-pattern-fabric.jpg">
	<c:import url="/WEB-INF/navbar.jsp"></c:import>

	<div>
		<h1 align="center">Contact Us</h1>
	</div>

	<div class="col-md-3"></div>
	
	<div class="row clearfix; col-md-8">
		<div class="col-md-9" align="left">
			<div class="alert alert-dismissable alert-info">
				<button type="button" class="close" data-dismiss="alert"
					aria-hidden="true">×</button>
				We are here to answer any questions you may have about our Community
				Network. <br /> Let us know if there's something you think we can
				do better to help grow your connections or expand your own
				connections with your neighbors. <br /> Reach out to us and we'll
				respond as soon as we can.
			</div>
		</div>
	</div>
	<div class="col-md-1"></div>

	<div class="row">
		<div class="col-md-3"></div>

		<div class="col-md-6" style="border-radius: 10px; background-color: lightgray">
			<div class="form-group">
				<label>Name</label> <input type="text" style="width: 50%"
					placeholder="Your Name">
			</div>

			<div class="form-group">
				<label>Email Address</label> <input type="text" style="width: 50%"
					placeholder="Your email address">
			</div>

			<div class="form-group">
				<label>Message</label>
				<textarea name="message" id="message" rows="8" style="width: 100%"
					placeholder="Please be as detailed as possible with your message so we can help as best as we can."></textarea>
			</div>
			<div class="form-group" align="right">
				<button type="submit" class="btn btn-primary">Send</button>
			</div>

		</div>
		
		<div class="col-md-3"></div>
	</div>
</body>
</html>
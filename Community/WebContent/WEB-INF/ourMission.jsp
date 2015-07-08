<%@ include file="/WEB-INF/header.jsp"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Our Mission</title>
</head>
<body background="images/background-pattern-fabric.jpg">

	<c:import url="/WEB-INF/navbar.jsp"></c:import>
	<div>
		<h1 align="center">Our Mission</h1>
	</div>
	<div class="col-md-2"></div>

	<div class="col-md-8"
		style="border-radius: 10px; background-color: lightgray">

		<p align="center">This website is a tool for people who want to
			get involved within their communities.</p>
		<p>Our goal is simple. We want people to be connected! Our plan
			isn't so grand as to connect everyone like the big social networks
			do, we want you to get to know the people in your immediate vicinity:
			where you live! There are many advantages to knowing your neighbors
			well!</p>
		<p>Here's what you can do now:</p>
		<ul>
			<c:if test="${sessionScope.isLoggedIn == true }">
				<li>Check out other <a href="/Community/listUsers">residents
						in your living community</a>.
				</li>
				<li>Check out <a href="/Community/listCommunities">neighboring
						communities</a> that are connecting people in the same way.
				</li>
				<li><a href="/Community/listComments">View comments</a> or <a
					href="/Community/addComment">post comments</a> for your neighbors</li>
				<li><a href="/Community/contactUs">Contact us</a> with any
					suggestions or problems. Or tell us if you'd like us to add your
					community!</li>
			</c:if>
			<c:if
				test="${ (sessionScope.isLoggedIn == false) or (empty isLoggedIn)  }">
				<li>Check out other residents in your living community.</li>
				<li>Check out neighboring communities that are connecting
					people in the same way.</li>
				<li>View comments or post comments for your neighbors</li>
				<li><a href="/Community/contactUs">Contact us</a> with any
					suggestions or problems. Or tell us if you'd like us to add your
					community!</li>
			</c:if>
		</ul>

		<p>Here's our vision for the future:</p>
		<ul>
			<li>View information about your community.</li>
			<li>Comments will be time stamped for easier communication</li>
			<li>Upload a profile picture.</li>
			<li>Residents will be able to add a list of interests to their
				profiles, creating a new way to connect and bond with their
				neighbors.</li>
			<li>Management at your living community will have a bulletin
				board to post news, events, and updates for residents.</li>
			<li>Residents will be able to organize community events through
				an events page.</li>
		</ul>
	</div>
	<div class="col-md-2"></div>
</body>
</html>
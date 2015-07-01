<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>  
           
<%@ taglib prefix="fn" 
           uri="http://java.sun.com/jsp/jstl/functions" %>

<%@ include file="/WEB-INF/header.jsp" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Profile</title>
</head>
<body>
	<c:import url="/WEB-INF/navbar.jsp"></c:import>

	Hi ${user.name}!
	<br/>
	<p>We're glad you are a part of our community!</p>
	Here's your information:<br/>
	Your ID is: ${user.ID }<br/>
	Your email is: ${user.email} <br/>
	Your UserName is: ${user.userName }<br/>
	
	<a class="btn btn-default btn-sm"
					href="editProfile?id=${user.ID }">Edit Your Info</a>
	
<!-- <div class="col-md-offset-1 control-group">
				<label class="control-label" for="email">Email</label>
				<div class="controls">
					<input id="email" name="email" type="text" placeholder=""
						class="input-medium" required> -->
<!-- 					<p class="help-block">Enter your email</p> -->
				<!-- </div>
			</div> -->

</body>
</html>
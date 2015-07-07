<%@ include file="/WEB-INF/header.jsp"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Your Community</title>
</head>
<body background="images/background-pattern-fabric.jpg">
	<c:import url="/WEB-INF/navbar.jsp"></c:import>

	<h1 align="center">${community.name}</h1>

	<div class="col-md-2"></div>
	<div class="col-md-8"
		style="border-radius: 10px; background-color: lightgray">
		<table>
			<tr>
				<td><img src="images/ParkAtLakeline/parkAtLakelineApartmentPool4.jpg" name="" /></td>
				<td><img src="image2.jpg" name="" /></td>
				<td><img src="image3.jpg" name="" /></td>
			</tr>
		</table>
	</div>
	<div class="col-md-2"></div>
</body>
</html>
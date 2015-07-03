<%@ include file="/WEB-INF/header.jsp"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List of Communities</title>
</head>
<body>
	<c:import url="/WEB-INF/navbar.jsp"></c:import>

	<h3 align="center">Community List</h3>

	<div class="bs-example" data-example-id="bordered-table">
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>ID</th>
					<th>Name</th>
					<th>Address</th>
					<th>Phone Number</th>
					<th>Website</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th scope="row">1</th>
					<td>The Park At Lakeline</td>
					<td><a
						href="https://www.google.com/maps/place/The+Park+at+Lakeline+Apartments/@30.47584,-97.81102,17z/data=!4m6!1m3!3m2!1s0x865b32a0052b4d77:0x184d309de47c255c!2sThe+Park+at+Lakeline+Apartments!3m1!1s0x865b32a0052b4d77:0x184d309de47c255c"
						target="_blank">2800 S. Lakeline Blvd. Cedar Park, TX 78613</a></td>
					<td>(855) 848-5918</td>
					<td><a href="http://www.parkatlakeline.com/" target="_blank">http://www.parkatlakeline.com/</a></td>
				</tr>
			</tbody>
		</table>
	</div>
			
			
			
			<br/>
			<br/>
			
			
			<h4 align="center" style="color: red ">These communities will be added to our network soon!</h4>
			<div class="bs-example" data-example-id="bordered-table">
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>ID</th>
					<th>Name</th>
					<th>Address</th>
					<th>Phone Number</th>
					<th>Website</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th scope="row">2</th>
					<td>Muir Lake Apartments</td>
					<td><a
						href="https://www.google.com/maps/place/Muir+Lake+Apartments/@30.4840835,-97.8095075,17z/data=!3m1!4b1!4m2!3m1!1s0x865b2d672a41004d:0xa3784d7ea3d8d2ee"
						target="_blank">12600 Avery Ranch Blvd. Cedar Park, TX 78613</a></td>
					<td>(512) 258-8900</td>
					<td><a href="http://muir-lake.com/" target="_blank">http://muir-lake.com/</a></td>
				</tr>
				<tr>
					<th scope="row">3</th>
					<td>Sycamore Springs</td>
					<td><a
						href="https://www.google.com/maps/place/Sycamore+Springs/@30.485693,-97.7710837,17z/data=!3m1!4b1!4m2!3m1!1s0x8644d2a67fe24501:0xa409d9fa9712895c"
						target="_blank">9801 W Parmer Ln. Austin, TX 78717</a></td>
					<td>(855) 867-3119</td>
					<td><a href="http://www.sycamorespringsapartments.com/"
						target="_blank">http://www.sycamorespringsapartments.com/</a></td>
				</tr>
			</tbody>
		</table>
	</div>



	<!-- <p><a href="http://apartments.naproperties.com/texas/cedar-park/lakeline-east" target="_blank">Lakeline East Apartments</a></p>
	
		<p><a href="http://www.lodgeatlakeline.com/" target="_blank">Lodge at Lakeline</a></p>
	
		<p><a href="http://apartments.naproperties.com/texas/cedar-park/lakeline-west" target="_blank">Lakeline West</a></p>

		<p><a href="http://www.indigoapts.com/" target="_blank">Indigo Apartments</a></p>
 -->


</body>
</html>
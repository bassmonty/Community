<%@ include file="/WEB-INF/header.jsp" %>

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

Here is a list of the Communites we serve:

<br/>
--------------------------------------------------------
<br/>
	<div class="bs-example" data-example-id="bordered-table">
    <table class="table table-bordered">
      <thead>
        <tr>
          <th>Community ID</th>
          <th>Community Name</th>
          <th>Community Address</th>
          <th>Community Website</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <th scope="row">1</th>
          <td>The Park At Lakeline</td>
          <td>2800 S. Lakeline Blvd. Cedar Park, TX 78613</td>
          <td><a href="http://www.parkatlakeline.com/" target="_blank">The Park At Lakeline</a></td>
        </tr>
        <tr>
          <th scope="row">2</th>
          <td>Jacob</td>
          <td>Thornton</td>
          <td>@fat</td>
        </tr>
        <tr>
          <th scope="row">3</th>
          <td>Larry</td>
          <td>the Bird</td>
          <td>@twitter</td>
        </tr>
      </tbody>
    </table>
  </div>
	
		<p><a href="http://www.parkatlakeline.com/" target="_blank">The Park At Lakeline</a></p>

		<p><a href="http://apartments.naproperties.com/texas/cedar-park/lakeline-east" target="_blank">Lakeline East Apartments</a></p>
	
		<p><a href="http://muir-lake.com/" target="_blank">Muir Lake Apartments</a></p>
	
		<p><a href="http://www.sycamorespringsapartments.com/" target="_blank">Sycamore Springs</a></p>
	
		<p><a href="http://www.lodgeatlakeline.com/" target="_blank">Lodge at Lakeline</a></p>
	
		<p><a href="http://apartments.naproperties.com/texas/cedar-park/lakeline-west" target="_blank">Lakeline West</a></p>

		<p><a href="http://www.indigoapts.com/" target="_blank">Indigo Apartments</a></p>
	</div>


</body>
</html>
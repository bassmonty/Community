
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>  
           
<%@ taglib prefix="fn" 
           uri="http://java.sun.com/jsp/jstl/functions" %>
           
<c:import url="/WEB-INF/header.jsp"></c:import>

<title>Community Network</title>
</head>
<body>
	<c:import url="/WEB-INF/navbar.jsp">
		<c:param name="isLoggedIn" value="${isLoggedIn }"/>
	</c:import>

	<c:if test="${sessionScope.isLoggedIn == true}"> 
		<p class="alert alert-success" role="alert">Welcome, ${user.name}!</p>
	</c:if>	

<%-- 	Welcome ${user.name }! --%>
	<br/>
<%-- 	Your ID is: ${user.ID }<br/>
	Your email is: ${user.email} <br/>
	Your UserName is: ${user.userName }<br/> --%>

<%-- 	Logged In User is: ${user.userName} --%>

	<p>Thanks for joining with your community! We're excited to help you meet your neighbors and continue to build your community network!</p>
</body>
</html>
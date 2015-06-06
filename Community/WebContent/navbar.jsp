<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- To show the user object we can do this -->
<%-- User is:  ${sessionScope.user } --%>




<c:if test="${isLoggedIn == true }">
<nav class="navbar navbar-inverse navbar-static-top">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="/Community/index.jsp">Community</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<!--         <li class="active"><a href="#">Link <span class="sr-only">(current)</span></a></li> -->
				<li><a href="/Community/viewCommunity.jsp">View Your Community</a></li>
				
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-expanded="false">Profile
						<span class="caret"></span>
				</a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="/Community/viewProfile">View Profile</a></li>
						<li class="divider"></li>
						<li><a href="/Community/editProfile">Edit Profile</a></li>
					</ul></li>
				
				<li><a href="/Community/messageBoard.jsp">Message Board</a>
			</ul>
			<!--       <form class="navbar-form navbar-left" role="search"> -->
			<!--         <div class="form-group"> -->
			<!--           <input type="text" class="form-control" placeholder="Search"> -->
			<!--         </div> -->
			<!--         <button type="submit" class="btn btn-default">Submit</button> -->
			<!--       </form> -->
			<ul class="nav navbar-nav navbar-right">
				<li><a href="/Community/contact-us.jsp">Contact Us</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-expanded="false">About
						<span class="caret"></span>
				</a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="/Community/listCommunities">Our Communities</a></li>
<!-- 						<li><a href="#">Our Residents</a></li> -->
<!-- 						<li><a href="#">Our Activities</a></li> -->
						<li class="divider"></li>
						<li><a href="/Community/our-mission">Our Mission</a></li>
					</ul></li>
					<li><a href="/Community/LogoutServlet">Logout</a></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid -->

</nav>
</c:if>

<c:if test="${ (isLoggedIn == false) or (empty isLoggedIn)  }">
<nav class="navbar navbar-default navbar-static-top">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="/Community/index.jsp">Community</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<!--         <li class="active"><a href="#">Link <span class="sr-only">(current)</span></a></li> -->
				<li><a href="/Community/register.jsp">Join your Community</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-expanded="false">Login
						<span class="caret"></span>
				</a>
					<ul class="dropdown-menu" role="menu">
<!-- 						<li><a href="/Community/managementLogin.jsp">Management -->
<!-- 								Login</a></li> -->
						<li><a href="/Community/residentLogin.jsp">Residents</a></li>
						<!--             <li><a href="#">Something else here</a></li> -->
						<li class="divider"></li>
						<li><a href="/Community/adminLogin.jsp">Administrator</a></li>
						<!--             <li class="divider"></li> -->
						<!--             <li><a href="#">One more separated link</a></li> -->
					</ul></li>
			</ul>
			<!--       <form class="navbar-form navbar-left" role="search"> -->
			<!--         <div class="form-group"> -->
			<!--           <input type="text" class="form-control" placeholder="Search"> -->
			<!--         </div> -->
			<!--         <button type="submit" class="btn btn-default">Submit</button> -->
			<!--       </form> -->
			<ul class="nav navbar-nav navbar-right">
				<li><a href="/Community/contact-us.jsp">Contact Us</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-expanded="false">About
						<span class="caret"></span>
				</a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="/Community/listCommunities">Our Communities</a></li>
<!-- 						<li><a href="#">Our Residents</a></li> -->
<!-- 						<li><a href="#">Our Activities</a></li> -->
						<li class="divider"></li>
						<li><a href="/Community/our-mission">Our Mission</a></li>
					</ul></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid -->

</nav>
</c:if>
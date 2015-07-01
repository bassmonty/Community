<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- To show the user object we can do this -->
<%-- User is:  ${sessionScope.user } --%>


<c:if test="${sessionScope.isLoggedIn == true }">
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
				<a class="navbar-brand" href="/Community/WEB-INF/index.jsp">CN</a>
				
			</div>

				
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">

					<li><a href="/Community/viewProfile">Profile</a></li>
					<li><a href="/Community/viewCommunity">Community</a></li>
					<li><a href="/Community/listResidents">Residents</a></li>
					<!-- <li><a href="/Community/WEB-INF/communityActivities.jsp">Our Activities</a></li> -->
					<li><a href="/Community/listComments">Comments</a>
				</ul>

				<ul class="nav navbar-nav navbar-right">
					<li><a href="/Community/contact-us.jsp">Contact Us</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-expanded="false">About
							<span class="caret"></span>
					</a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="/Community/listCommunities">Our Communities</a></li>
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

<c:if
	test="${ (sessionScope.isLoggedIn == false) or (empty isLoggedIn)  }">
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
				<a class="navbar-brand" href="/Community/index">CN</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-left">

					<li><a href="/Community/registration">Join a Community</a></li>
					<li><a href="/Community/login">Resident Login</a></li>

				</ul>

				<ul class="nav navbar-nav navbar-right">
					<li><a href="/Community/contact">Contact Us</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-expanded="false">About
							Us <span class="caret"></span>
					</a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="/Community/listCommunities">Our Communities</a></li>

							<li class="divider"></li>
							<li><a href="/Community/ourMission">Our Mission</a></li>
						</ul></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->

	</nav>
</c:if>
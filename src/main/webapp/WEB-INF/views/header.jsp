<!-- Navbar -->
<nav class="navbar navbar-default bg-light">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand"> <img
				src="/images/carLogo.png" width="120px" />
			</a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav navbar-right">

				<sec:authorize access="!isAuthenticated()">
					<li><a class="fw-bold fs-5" href="cus_login_page">Login</a></li>
					<li><a class="fw-bold fs-5" href="new">Register</a></li>
					<li><a class="fw-bold fs-5" href="about">About Us</a></li>
					<li><a class="fw-bold fs-5" href="contact">Contact Us</a></li>
					
				</sec:authorize>


				<sec:authorize access="isAuthenticated()">

				<sec:authorize access="hasRole('Users')">
				<li>
				<c:url var="get_search_url" value="search"/>
				<form action="${get_search_url}" id="myform" method="get" class="form-inline text-right" style="margin-top:6.5px;">
						<input class="form-control mr-sm-2" type="search"
							placeholder="Search" value="" name="keyword" />

						<input type="submit" value="Search" class="btn btn-info"/>

					</form>
				</li>
					 <li><a class="fw-bold fs-5" href="cars">Used Cars</a></li>
					 
					 <li><a href="new_car">Post a Car</a></li>	
					 
			
				</sec:authorize>
				
				<sec:authorize access="hasRole('Administrator')">
					 <li><a class="fw-bold fs-5" href="cars">Car Management </a></li>
					 <li><a class="fw-bold fs-5" href="users">User Management</a></li>
		
					 
				</sec:authorize>

				
			    <!-- /logout must be a POST request, as csrf is enabled.
			        This ensures that log out requires a CSRF token and that a malicious user cannot forcibly log out your users.-->
					
					<li>
					<form action="logout" method="post" style="padding:7px;">
						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" />
							<input type="submit"
							name="Logout" value="Logout" class="btn btn-primary fs-5 fw-bold"></input>
					</form>
					</li>
					<li><a class="fw-bold fs-5" href="profile"><img src="/images/avator.png" width="23px" height="23px"></a>
				</sec:authorize>
				



			</ul>
		</div>
	</div>
</nav>

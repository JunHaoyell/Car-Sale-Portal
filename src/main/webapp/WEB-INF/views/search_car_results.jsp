<%@ page contentType="text/html; charset=US-ASCII"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<!--  Enable Bootstrap -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Lato"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat"
	rel="stylesheet" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


<!--  Access the Static Resources without using spring URL -->
<link href="/css/style.css" rel="stylesheet" />
<script src="/js/custom.js"></script>
<style type="text/css">

</style>


</head>

<body>

	<%@ include file="header.jsp"%>


	<!-- First Container -->
	<div class="container_5 bg-1">
		<div>
			<h2 class="t1 text-center">Search Car Results</h2>



			</div>

			<div class="row">

				<div class="col-md-12">
				
					<c:if test="${empty search_cars}">
						<div>
							<h4 class="text-danger text-center"> No Matching Item Found. </h4>	
							<h5 class="text-danger text-center"> Please try with another keyword.</h5>	
						</div>	
					</c:if>
					
					<c:if test="${not empty search_cars}">
						

						<div class="grid-container">
						<% int i=1; %>
						<c:forEach var="car" items="${search_cars}">
						
								<div class="card">
									<img src="/user-car-img/${car.img}"  class="card-img-top" width="300px" height="200px">
									<div class="card-body">
										<h5 class="card-title">${car.price}</h5>
										<p class="card-text">
										<p>Make : ${car.make}</p>
										<p>Model: ${car.model}</p>
										<p>Registration :${car.registeration}</p>
										<p>Price:${car.price}</p>

										<p class="card-text">
											<small class="text-muted"> 
											<sec:authorize
													access="hasRole('Administrator')">
													<a href="edit?id=${car.id}">
														<button class="btn btn-info">Update</button>
													</a>
													<a href="delete?id=${car.id}">
														<button class="btn btn-danger">Delete</button>
													</a>
											</sec:authorize> 
												<a href="car_detail?id=${car.id}">
													<button class="btn btn-info">View</button></a> 
											</small>
										</p>
									</div>
								</div> 
							<% i++; %>
						</c:forEach>
						</div>

					
					</c:if>
					
				</div>
			</div>
			
			<!--  End Car Lists  -->

		</div>
	</div>


	<%@ include file="footer.jsp"%>
</body>
</html>
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
<link href="./css/style.css" rel="stylesheet" />
<script src="./js/custom.js"></script>
<link href="./css/card.css" rel="stylesheet" />

<style type="text/css">

</style>
</head>

<body>

	<%@ include file="header.jsp"%>


	<!-- First Container -->
	<div class="container_5 bg-1">
		<div>
			<h3 class="t1 text-center">Car List</h3>
			<c:if test="${not empty error_message}">
				<p>${error_message}</p>
			</c:if>

			<c:if test="${empty cars}">
				<sec:authorize access="hasRole('Administrator')">
					<span> No Cars are added yet. </span>
				</sec:authorize>
				<sec:authorize access="hasRole('Users')">
					<span> Please click on Add button to add Cars to the system.
					</span>
				</sec:authorize>
			</c:if>


			<!--  All Car Lists  -->
			<div class="row">
				<div class="col-md-6">
				

				</div>
				
				<div class="col-md-6">



				</div>
			</div>


				<div class="home">
									<c:if test="${not empty cars}">
					

						
						<% int i=1; %>
						<div class="grid-container">
						<c:forEach var="car" items="${cars}">
						
								<div class="card">
									<img src="/user-car-img/${car.img}"  class="card-img-top" width="100px" height="200px">
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
  						
  						<br><br>
							<% i++; %>
						</c:forEach>
						</div>
					
					</c:if>
				</div>
				

					
			
			
			<!--  End Car Lists  -->

		</div>
	</div>


	<%@ include file="footer.jsp"%>
	</body>
	</html>
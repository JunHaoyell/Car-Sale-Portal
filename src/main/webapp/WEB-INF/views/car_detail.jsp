<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

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
<script >
	function resetInput(){
		var input = document.getElementById("bidPrice");
		if (input.value<0){
			input.value = null;
			alert("Please Enter Valid input");
		}
	}
</script>

<style type="text/css">

</style>

</head>

<body>

	<!-- Test My JS -->
	<!-- <input type="button" class="button" onclick="sayHello();" value="Click me!">  -->

	<%@ include file="header.jsp"%>


	

	<!-- First Container -->
	<div class="container bg-1">
	
		<div class="row">
		<h3 class="t1 red text-center">Detail Car Information !</h3></div><br>
<div class="row">
		<div class="col-md-4">
		<img src="/user-car-img/${car.img}"  class="card-img-top" width="100%">
		</div>

		<div class="col-md-4">

		<form:form >
				
		<table class="table light">
		 <tr>
	      <th><label for="id" class="">ID: </label></th>
	      <td><div class="">${car.id}</div></td>
	    </tr>

		 <tr>
	      <th><label for="make" >Car Make:</label></th>
	      <td><div>${car.make}</div></td>
	    </tr>

		 <tr>
	      <th><label for="model">Car Model: </label></th>
	      <td><div>${car.model}</div></td>
	    </tr>

		 <tr>
		      <th><label for="reg" >Reg No: </label></th>
		      <td><div >${car.registeration}</div></td>
		    </tr>

		 <tr>
		      <th><label for="price">Price: </label></th>
		      <td><div >${car.price}</div></td>
		    </tr>

		 <tr>
		      <th></th>
		      <td></td>
		    </tr>
		    
		 <tr>
	    </tr>


		</table>
		
			<div class="form-group">
				<label for="price" class="control-label col-sm-4"> <img
					src="/images/avator.png" width="60px" alt="..."></label>
				<div class="col-sm-8" style="padding: 20px;">

					<form action="car_detail?id=${car.id}" method="post">
						<input type="hidden" name="id" value="${car.id}" /> <input
							type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" /> 
						<input type="number"
							placeholder="Enter Bid Price" id="bidPrice" name="bitprice" required />
							<c:if test="${not empty bidding_error}">

								<div class="alert alert-danger" >
								<c:out value="${bidding_error}" />
								</div>

							</c:if>
						<div class="form-group" style="padding: 20px;">
							<input type="submit" value="Bit Car" class="btn btn-success">
							<a href="cars" class="btn btn-danger">Go Back</a>
						</div>

					</form>
				</div>

			</div>

			<script>
				function goBack() {
					window.history.back();
				}
			</script>
		

		</form:form>


			</div>
			<div class="col-md-1"></div>

			<div class="col-md-3">
			<div class="">
				<h4 class="fs-5 fw-bold"> Current Bidding Price!</h4><br/>
			<c:forEach var="car_bidding" items="${bidinfo}">
				
				<div class="card mb-3 card bg-info" style="padding:10px;">
				
					<div class="row" >
						<div class="col-md-6">
							<img class="card-img-top"
							src="/images/avator.png" width="30px" class="rounded-circle"
							class="mr-3" alt="...">
							<p>${car_bidding.bidderName}</p>
						</div>
						<div class="col-md-6">
							<div class="card-body">
								<p class="card-head"><small class="text-muted">${car_bidding.bid_date_time}</small></p>
								<p class="card-text">Bidded Price: ${car_bidding.bidderPrice}</p>
						
							</div>
						</div>
					</div>
				</div><br>
			</c:forEach>

			</div>
			</div>

	</div>
		</div>







	<%@ include file="footer.jsp"%>

</body>
</html>

<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
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

<style type="text/css">
    
.fw-bold{
	font-weight: 800;
} .fs-5{
	font-size: 15px;
}
.bg-1{
  background-size: cover;
  background-repeat: no-repeat;
  background-image: url("/images/cont.jpg");
  overflow: hidden;
background-position:center;
margin: 0px 70px 0px 70px;
height:250px
}
.bg_11{
background-color: #0a272b;
}
.container_2{
padding: 30px 70px 50px 70px; 
	margin: 0px 70px 50px 70px;
		color: white !important;
	
	
}.container_3{
padding: 50px 70px 0px 30px; 
	margin: 50px 70px 110px 70px;
	border-radius: 15px;
}
</style>

<!--  Access the Static Resources without using spring URL -->
<link href="/css/style.css" rel="stylesheet" />
<script src="/js/custom.js"></script>

</head>

<body>

	<!-- Test My JS -->
	<!-- <input type="button" class="button" onclick="sayHello();" value="Click me!">  -->

	<%@ include file="header.jsp"%>


	<!-- First Container -->
	<div class="container_3 bg_11">
	<div class="bg-1"></div>
		<div class="container_2  fw-bold">

				<div class="row">
					<h2 class="text-center">CONTACT </h2>
				</div>
				
				<div class="row">
					<div class="col-sm-5">
						<p>Contact us and we'll get back to you within 24 hours.</p> <br>
						<p>
							<span class="glyphicon glyphicon-map-marker"></span> Gampaha, Sri Lanka
						</p>
						<p>
							<span class="glyphicon glyphicon-phone"></span> +94 123 123 2316
						</p>
						<p>
							<span class="glyphicon glyphicon-envelope"></span>
							has@123gmail.com
						</p>
					</div>
					<div class="col-sm-7 slideanim">
						<div class="row">
							<div class="col-sm-6 form-group">
								<input class="form-control" id="name" name="name"
									placeholder="Name" type="text" required>
							</div>
							<div class="col-sm-6 form-group">
								<input class="form-control" id="email" name="email"
									placeholder="Email" type="email" required>
							</div>
						</div>
						<textarea class="form-control" id="comments" name="comments"
							placeholder="Comment" rows="5"></textarea>
						<br>
						<div class="row">
							<div class="col-sm-12 form-group">
								<button class="btn btn-success" type="submit">Send</button>
							</div>
						</div>
					</div>
				

		</div>
	</div>

</div>
	<%@ include file="footer.jsp"%>

</body>
</html>

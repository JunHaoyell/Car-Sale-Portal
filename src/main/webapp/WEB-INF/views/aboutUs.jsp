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
  background-image: url("/images/ab.jpg");
  overflow: hidden;
background-position:center;
margin: 0px 70px 0px 70px;
height:200px
}
.bg_11{
background-color: white;
}
.container_2{
padding: 30px 70px 50px 70px; 
	margin: 0px 70px 50px 70px;
	
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
	<div class="container_2  ">
			<h3>WE HELP YOU GET A GREAT DEAL ON A CAR !</h3>



			<p class="lead">CarsDeals helps you get a great deal on a used
				car by giving you up-to-the-minute car pricing information so that
				you're fully armed with the knowledge you need as you shop for a
				car.</p>

			<hr class="my-4">
			<p>We also help buyers with less-than-perfect credit find special
				financing options through our network of trusted lending partners.</p>
			<p class="lead">
				<a class="btn btn-primary btn-lg" href="new" role="button">Join Us Now!</a>
			</p>
	</div>
</div>

	<%@ include file="footer.jsp"%>

</body>
</html>

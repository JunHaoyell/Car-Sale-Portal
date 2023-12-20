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
<script src="/js/custom.js"></script>

<style type="text/css">

</style>
</head>

<body>


	<%@ include file="header.jsp"%>
	

	<!-- First Container -->
	<div class="container_5 bg-1">
	
		<div class="row">
		<h3 class="t1 red text-center">User Detail Information </h3></div><br>
<div class="row">
		<div class="col-md-3"></div>
		<div class="col-md-6">


						
		<table class="table light">
		 <tr>
	      <th><label for="id" class="">ID : </label></th>
	      <td><div class="">${user.id}</div></td>
	    </tr>

		 <tr>
	      <th><label for="Name" >Name : </label></th>
	      <td><div>${user.name}</div></td>
	    </tr>

		 <tr>
	      <th><label for="UserName">User Name : </label></th>
	      <td><div>${user.userName}</div></td>
	    </tr>

		 <tr>
		      <th><label for="reg" >Password : </label></th>
		      <td><div >******</div></td>
		    </tr>

		
		 <tr>
		      <th></th>
		      <td>
		      	<a href="edit_form?id=${user.id}">
				<button class="btn btn-info">Update</button>
				</a>
		      </td>
		      <td>
				<a href="cars" class="btn btn-danger">Go Back</a>

		      </td>
		    </tr>
		    
		 <tr>
	    </tr>


		</table>




	</div>
	
			<div class="col-md-3"></div>
	
	</div>
	</div>
	






	<%@ include file="footer.jsp"%>

</body>
</html>

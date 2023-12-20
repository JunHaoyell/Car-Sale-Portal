<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
	<div class="container_5 bg-1 text-center">
		<h3 class="t1 red">Post A Car For Sale !</h3>
		<br><br>
		<div class="row">

			<div class="col-md-4"></div>

			<div class="col-md-4">


			
				
			<form:form method="POST" action="/cars" modelAttribute="car" enctype="multipart/form-data">
			
				<input type="hidden" value="${_csrf.token}"/>
					
				<form:hidden path="id" />

				
		<table class="table light">
		 <tr>
		      <th><label for="image">Choose Photo:</label></th>
		      <td><input type="file" name="image" /></td>
		    </tr>
		    
		    <tr>
		      <th><label for="make">Car Make:</label></th>
		      <td><form:input path="make" required="ture" /></td>
		    </tr>
		
		    <tr>
		      <th><label for="model">Car Model:</label></th>
		      <td><form:input path="model" required="ture" /></td>
		    </tr>
		
		    <tr>
		      <th><label for="registeration"> registeration:</label></th>
		      <td><form:input path="registeration" required="ture" /></td>
		    </tr>
		
		    <tr>
		      <th><label for="price">Car Price:</label></th>
		      <td><form:input path="price" required="ture" /></td>
		    </tr>
		
		    <tr>
		      <th></th>
		      <td></td>
		    </tr>
		
		    <tr>
		      <td></td>
		      <td>
		      <input type="submit" name="Add" value="Save" class="btn btn-success" />
		      <input type="button" class="btn btn-danger" value="Cancel" onclick="cancel()" />
				<script>
					function cancel() {
						window.location.href = "cars"
					}
				</script>
				</td>
		    </tr>
		    </table>
			</form:form>
					
					
					


			</div>


			<div class="col-md-4"></div>

		</div>

	</div>
	


	<%@ include file="footer.jsp"%>

</body>
</html>

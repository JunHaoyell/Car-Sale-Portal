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
			<h2 class="t1 text-center">User List</h2><br><br>

			<div class="row">

				<div class="col-md-12">
				
					<c:if test="${not empty userlists}">
					
					<table class="table table-bordered">

						<thead class="dark">
							<tr>
								<th>No.</th>
								<th>User ID </th>
								<th>Full Name</th>
								<th>User Name </th>
								<th>Password</th>
								<th>Actions</th>
							</tr>
						</thead>
						
						<tbody class="fw-bold bg-white">
						
						<% int i=1; %>
						<c:forEach var="user" items="${userlists}">
						
							<tr>
								<td><%=i %></td>
								<td>${user.id}</td>
								<td>${user.name}</td>
								<td>${user.userName}</td>
								<td>******</td>

								<td>
								<sec:authorize access="hasRole('Administrator')">
									<a href="edit_u?id=${user.id}">
										<button class="btn btn-info">Update</button>
									</a>
									<a href="delete_u?id=${user.id}">
										<button class="btn btn-danger">Delete</button>
									</a>
								</sec:authorize>
								
									<a href="user_detail?id=${user.id}">
									<button class="btn btn-info">View </button>
									</a>								</td>
							</tr>
							<% i++; %>
						</c:forEach>

						</tbody>
					</table>
					
					</c:if>
					
				</div>
			</div>
			
			<!--  End User Lists  -->

		</div>
	</div>


	<%@ include file="footer.jsp"%>
	</body>
	</html>
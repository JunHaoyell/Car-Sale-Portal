<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
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
<style>
.home1{
  max-width: 1300px;
  margin: auto;
  width: 100%;
  min-height: 640px;
  display: flex;
  align-items: center;
  background: url("/images/register-car-logo.png");
  background-repeat: no-repeat;
  background-size: cover;
  background-position: 400px 30px;
}

</style>
<!--  Access the Static Resources without using spring URL -->
<link href="/css/style.css" rel="stylesheet" />
<script src="/js/custom.js"></script>
</head>

<body>
	<%@ include file="header.jsp"%>
<section class="home1">
	<div class="home-text">	
				<c:if test="${register_success != null}">
					<div class="alert alert-success">
						<p>${register_success} Click <a href="cus_login_page"> Sign In</a> to use our portal...</p>
					</div>
				</c:if>
		
  <div id="card">
    <div id="card-content">
 	 <div id="card-title">
        <h2>REGISTER</h2>
        <div class="underline-title"></div>
      </div>
			<form:form action="save" method="post" modelAttribute="user" class="form" >
				<div class="form-group">
					<label for="username" style="padding-top:13px" >Your Full Name:</label>
					<form:input path="name" class="form-control" required="true"/>
				</div>
				<div class="form-border"></div>
				<div class="form-group">
					<label for="username" style="padding-top:13px" >Your Login User Name:</label>
					<form:input path="userName" class="form-control" required="true"/>
					
				</div>
				<div class="form-border"></div>
				
				<div class="form-group">
					<label for="user-password" style="padding-top:22px">&nbsp;Password
          </label>
					<form:password path="password" class="form-control" required="true"/>
					
				</div>
				<div class="form-border"></div> <br>
				
				<input id="submit-btn" type="submit" value="Register" class="btn btn-primary"/>
					
			</form:form>
    </div>
    </div>
    </div>

	

</section>

	<%@ include file="footer.jsp"%>

</body>
</html>

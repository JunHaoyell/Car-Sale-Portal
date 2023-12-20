<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<title>Login Page</title>
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

<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous"><link rel="stylesheet" href="./style.css">

<!--  Access the Static Resources without using spring URL -->
<!--  Access the Static Resources without using spring URL -->

<style type="text/css">

    body {
  background-size: cover;
  background-repeat: no-repeat;
  background-attachment: fixed;
  font-family: "Open Sans", sans-serif;
  color: #333333;
}

</style>
<!--  Access the Static Resources without using spring URL -->
<link href="/css/style.css" rel="stylesheet" />
<script src="/js/custom.js"></script>
</head>

<body>

	<%@ include file="header.jsp"%>

        		
 <section class="home" id="home">
      <div class="home-text">
<c:if test="${error_string != null}">

		<div class="alert alert-danger">
			${error_string}
		</div>

	</c:if>
         <!-- login card -->
     <div id="card">
    <div id="card-content">
      <div id="card-title">
        <h2>LOGIN</h2>
        <div class="underline-title"></div>
        <h6>Don't have an account? <a href="new"><b>Creat Your Account</b></a></h6>

      </div>
      <form action="/login" method="post" class="form">
        <label for="user-email" style="padding-top:13px">
            &nbsp;Username
          </label>
          
          <input type="hidden" name="${_csrf.parameterName}"
		value="${_csrf.token}" />
         
        <input type="text" name="username" value="" placeholder="User Name" id="user-email" class="form-content"  autocomplete="on" required />
        <div class="form-border"></div>
        <label for="user-password" style="padding-top:22px">&nbsp;Password
          </label>
        <input id="user-password" type="password" name="password" id="password" value=""  placeholder="Password" class="form-content" required />
        <div class="form-border"></div>
        <a href="new">
          <legend id="forgot-pass">Forgot password?</legend>
        </a>

        <input id="submit-btn" type="submit" name="Login" value="Login" />
       
      </form>
    </div>
  </div>
   <!--              -->
       
      </div>
    </section>


	<%@ include file="footer.jsp"%>

</body>
</html>

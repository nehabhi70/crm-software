<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Login Page</title>
		
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
		
		<link rel="stylesheet" type="text/css" href="css/style.css">
		
	</head>
<body>
	
	<jsp:include page="header-crm.jsp" />
	
	
		
		<div class="container-fluid">
			<div class="container" style="padding-top: 150px">
				<div class="row">
					<div class="col-4">
					</div>
					<div class="col-4 justify-content-center p-4">
						<div class="login_div_design bg-light">
						<c:if test="${not empty model_error }">
							<h5 style="color:red;"> ${model_error}</h5>
						</c:if>
						
						<form action="loginForm" method="post">
							<h3 class="text-center">Login Here</h3><br>  
							  <div class="mb-3">
							    <label class="form-label">Enter Your Email address</label>
							    <input type="email" class="form-control" aria-describedby="emailHelp" name="email1">
							    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
							  </div>
							  <div class="mb-3">
							    <label class="form-label">Enter Your Password</label>
							    <input type="password" class="form-control" name="pass1">
							  </div>
							  <button type="submit" class="btn btn-primary">Login</button>
							</form>
						</div>
						
					</div>
					<div class="col-4">
						
					</div>
				</div>
			</div>
		</div>
</body>
</html>

<!-- 
<
		String login_error = (String) request.getAttribute("model_error");
	%>
	
	<
							if(login_error != null)
							{
								%>
								
								<h5 style="color:red;"> login_error %></h5>
						<
							}
						%>
	
 -->
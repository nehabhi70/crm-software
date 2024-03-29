<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Add Employee</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
	
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
	
	<jsp:include page="header-admin.jsp" />
	
	
	<div class="container-fluid">
			<div class="container" style="padding-top: 20px">
			
			<c:if test="${not empty model_success}">
				<div class="row">
					<div class="alert alert-success alert-dismissible fade show" role="alert">
					  ${model_success}
					  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
					</div>
				</div>
			</c:if>
			
			<c:if test="${not empty model_error}">
				<div class="row">
					<div class="alert alert-danger alert-dismissible fade show" role="alert">
					  ${model_error}
					  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
					</div>
				</div>
			</c:if>
			
				<div class="row">
					<div class="col-3">
					</div>
					<div class="col-6 d-flex justify-content-center p-4">
						<div class="addemp_div_design bg-light">
						<h3>Register Employee</h3><br>
						<form:form action="addEmpForm" method="post" modelAttribute="modelEmpAttr">
							
							<div class="mb-3">
							    <label class="form-label">Enter Your Full Name</label>
							    <form:input path="name" cssClass="form-control" />
							    <form:errors path="name" cssClass="error_message_design"/>
							  </div>
							  <div class="mb-3">
							    <label class="form-label">Enter Your Email address</label>
							    <form:input path="email" cssClass="form-control" />
							    <form:errors path="email" cssClass="error_message_design"/>
							  </div>
							  <div class="mb-3">
							    <label class="form-label">Enter Your Password</label>
							    <form:password cssClass="form-control" path="password" />
							    <form:errors path="password" cssClass="error_message_design"/>
							  </div>
							  <div class="mb-3">
							    <label class="form-label">Enter Your Phone No.</label>
							    <form:input cssClass="form-control" path="phoneno" />
							    <form:errors path="phoneno" cssClass="error_message_design"/>
							  </div>
							  <button type="submit" class="btn btn-primary">Register</button>
							</form:form>
						</div>
						
					</div>
					<div class="col-4">
						
					</div>
				</div>
			</div>
		</div>
</body>
</html>
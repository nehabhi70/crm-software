<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Employee's List</title>
		
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
		
		<link rel="stylesheet" type="text/css" href="css/style.css">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
		
		<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
		
		<script type="text/javascript">
			function confirmEmpDelete(empEmail)
			{
				//alert("hi : "+empEmail);
				$('#deleteEmpConfirmationModal').modal('show');
				$('#deleteButton').attr('href','/deleteEmployee?empEmail='+empEmail);
			}
		</script>
	</head>
	<body>
		<jsp:include page="header-admin.jsp" />
		
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
		
		<div class="container mt-3">
		  <h2>Employees List</h2>
		  <p>Below table displays only 10 employee list</p>            
		  <table class="table table-light table-bordered table-striped">
		    <thead>
		      <tr>
		        <th>Full Name</th>
		        <th>Email</th>
		        <th>Phone No.</th>
		        <th style="text-align:center;">Update </th>
		        <th style="text-align:center;">Delete </th>
		      </tr>
		      
		    </thead>
		    
		    <tbody>
		    <c:forEach var="employee" items="${model_list_emp }">
		    	<tr>
		    		<td>${employee.getName()}</td>
		    		<td>${employee.getEmail()}</td>
		    		<td>${employee.getPhoneno()}</td>
		    		<td style="text-align:center;"><a href=""><i class="bi bi-pencil-square"></i></a></td>
		    		<td style="text-align:center;">
		    			<button class="btn btn-danger" onclick="confirmEmpDelete('${employee.getEmail()}')"><i class="bi bi-trash3-fill"></i></button>
		    		</td>
		    	</tr>
		    </c:forEach>
		      	
		    </tbody>
		  </table>
		  
		  <ul class="pagination">
		  	<c:choose>
		  		<c:when test="${model_current_page > 1 }">
			  		<li class="page-item">
			  	  		<a class="page-link" href="/emplist?page=${model_current_page-1 }">Previous</a>
			  	  	</li>
		    	</c:when>
		    	<c:when test="${model_current_page == 1 }">
			  		<li class="page-item disabled">
			  	  		<a class="page-link" href="/emplist?page=${model_current_page-1 }">Previous</a>
			  	  	</li>
		    	</c:when>
		  	</c:choose>
		  	
		    <c:forEach begin="1" end="${model_total_pages }" var="pageNumber">
		    	<c:choose>
		    		<c:when test="${model_current_page == pageNumber}">
		    			<li class="page-item active">
				  			<a class="page-link" href="/emplist?page=${pageNumber }">${pageNumber }</a>
				  		</li>
		    		</c:when>
		    		<c:when test="${model_current_page != pageNumber}">
		    			<li class="page-item">
				  			<a class="page-link" href="/emplist?page=${pageNumber }">${pageNumber }</a>
				  		</li>
		    		</c:when>
		    	</c:choose>
		    	
		    </c:forEach>
		    
		    <c:choose>
		    	<c:when test="${model_current_page < model_total_pages }">
			    	<li class="page-item">
			  			<a class="page-link" href="/emplist?page=${model_current_page+1 }">Next</a>
			  		</li>
		  		</c:when>
		  		<c:when test="${model_current_page == model_total_pages }">
			    	<li class="page-item disabled">
			  			<a class="page-link" href="/emplist?page=${model_current_page+1 }">Next</a>
			  		</li>
		  		</c:when>
		    </c:choose>
		    
		  </ul>
		  
		</div>
		
		
		
		<!-- The Modal -->
		<div class="modal" id="deleteEmpConfirmationModal">
		  <div class="modal-dialog">
		    <div class="modal-content">
		
		      <!-- Modal Header -->
		      <div class="modal-header">
		        <h4 class="modal-title">Delete Employee</h4>
		        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
		      </div>
		
		      <!-- Modal body -->
		      <div class="modal-body">
		        Are you sure want to delete this employee ?
		      </div>
		
		      <!-- Modal footer -->
		      <div class="modal-footer">
		        <button type="button" class="btn btn-default" data-bs-dismiss="modal">No</button>
		        <a type="button" class="btn btn-danger" id="deleteButton">Yes</a>
		      </div>
		
		    </div>
		  </div>
		</div>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<title>Hello, world!</title>
</head>
<body>
	<div class="container center mt-2">
		<h1 class="text-center">Welcome To ToDO App</h1>
		<c:if test="${not empty msg }"></c:if>
		<div class="alert alert-success">
		<c:out value="${msg}"></c:out>
		</div>
		<div class="row mt-4">
			<div class="col-md-2">
				<div class="list-group">
					<button type="button"
						class="list-group-item list-group-item-action active">
						Menu</button>
					<a href='<c:url value='/add'></c:url>'
						class="list-group-item list-group-item-action">Add ToDO</a> <a
						href='<c:url value='/home'></c:url>'
						class="list-group-item list-group-item-action">View ToDo</a>
				</div>
			</div>
			<div class="col-md-10">
				<c:if test="${page=='home' }">
					<h2 class="text-center">All ToDo</h2>
					
					<c:forEach items="${todos}" var="t">
					
					<div class="card">
						<div class="cars-body" >
			
							<h4> <c:out value="${t.id}"></c:out></h4>
							<h6><c:out value="${t.titleString}"></c:out></h6>
							<h6><c:out value="${t.contentString}"></c:out></h6>
							
						</div>
					</div>
					</c:forEach>
					
				</c:if>

				<c:if test="${page=='add' }">
					<h2 class="text-center">Add ToDo</h2>
					<form:form action="savetodo" method="post" modelAttribute="todo">
						<div class="form-group">
							<form:input path="titleString" cssClass="form-control"
								placeholder="add title" />
						</div>

						<div class="form-group">
							<form:textarea path="contentString" cssClass="form-control"
								placeholder="add Main content" cssStyle="height:300px" />
						</div>

						<div class="conatiner text-center">
							<button class="btn btn-outline-success">Add</button>
						</div>

					</form:form>
				</c:if>
			</div>
		</div>
	</div>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>
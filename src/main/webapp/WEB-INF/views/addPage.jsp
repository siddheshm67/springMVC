<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp" %>
</head>
<body>
<div class="container mt-3">

<div class="row">

<div class="col-md-6 offset-md-3">
<h1 class="center md-10 text-center">Fill product details</h1>
<form action="handelProduct" method="post">
	<div class="form-group"> 
		<label for="name" >Product name</label>
		<input type="text"
			class="form-control"
			name="name"
			id="name"
			placeholder="enter product name here">
	</div>
	
	<div class="form-group"> 
		<label for="name" >Product description</label>
		<textarea
			class="form-control"
			name="description"
			id="description"
			rows="5"
			placeholder="enter product description here"></textarea>
	</div>
	
	<div class="form-group"> 
		<label for="name" >Product price</label>
		<input type="text"
			class="form-control"
			name="price"
			id="price"
			placeholder="enter product price here">
	</div>
	
	<div class="container text-center">
		<a href="${pageContext.request.contextPath}/" class="btn btn-outline-danger">
		back
		</a>
		
		<button type="submit" class="btn btn-primary">add</button>
		</div>
	
	


</form>

</div>

</div>
</div>


</body>
</html>
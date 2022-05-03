<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="/WEB-INF/views/base.jsp" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<title>Insert title here</title>
</head>
<body>

<% response.sendRedirect(request.getContextPath()+"/home"); %>
			<!-- 
<div class="container mt-3">
	<div class="row">
		<div class="col-md-12">
			<h1 class="text-center">INdex PAge</h1>
			
			<table class="table">
  <thead>
    <tr> 
      <th scope="col">Serial No.</th>
      <th scope="col">Name</th>
      <th scope="col">description</th>
      <th scope="col">price</th>
      <th scope="col">Action</th>
    </tr>
  </thead>

  <tbody>

  <c:forEach  items="${products}" var="P">
   
    <tr>
      <th scope="row">${p.id}</th>
      <td>${p.name}</td>
      <td>${p.description}</td>
      <td>${p.price}</td>
    </tr>
  </c:forEach>

  </tbody>

</table>
	
	<div class="container text-center">
		<a href="add" class="btn btn-outline-success">Add New</a>
	</div>
	
		</div>
	</div>
</div>
			 -->
</body>
</html>

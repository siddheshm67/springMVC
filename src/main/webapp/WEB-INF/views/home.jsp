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
<div class="container mt-3">
	<div class="row">
		<div class="col-md-12">
			<h1 class="text-center">Welcome to CRUD App</h1>
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
      <th scope="row">${P.id}</th>
      <td><c:out value="${P.name}"></c:out></td>
      <td><c:out value="${P.description}"></c:out></td>
      <td class="font-weight-bold">&#8377; &nbsp;<c:out value="${P.price}"></c:out></td>
      <td><a href="${pageContext.request.contextPath}/delete/${P.id}"><i class="fa-solid fa-trash"></i></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <a href="${pageContext.request.contextPath}/update/${P.id}"><i class="fa-solid fa-pen-to-square"></i></a></td>
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
</body>
</html>

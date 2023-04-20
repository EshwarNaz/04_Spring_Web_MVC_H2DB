<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<a href="/">+Add New Product</a>
	<table border="1">
		<thead>
			<tr>
				<td>S.No</td>
				<td>Name</td>
				<td>Prize</td>
				<td>Quantity</td>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${Allproducts}" var="products" varStatus="index">
				<tr>
					<td>${index.count}</td>
					<td>${products.Name}</td>
					<td>${products.Prize}</td>
					<td>${products.Quantity}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>
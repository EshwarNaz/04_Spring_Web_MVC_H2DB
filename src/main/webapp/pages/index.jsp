<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2>Product Information</h2>
	<p>
		<font color="green">${msg}</font>
	</p>
	<form:form action="save" modelAttribute="product" method="post">
		<table>
			<tr>
				<td>Name :</td>
				<td><form:input path="Name" /></td>
			</tr>
			<tr>
				<td>Prize : :</td>
				<td><form:input path="Prize" /></td>
			</tr>
			<tr>
				<td>Quntity :</td>
				<td><form:input path="Quantity" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="save"></td>
			</tr>
		</table>

		<a href="/products">View Records</a>
	</form:form>

</body>
</html>
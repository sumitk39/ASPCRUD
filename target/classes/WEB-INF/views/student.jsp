<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/views/includes.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Management</title>
</head>
<body>
	<h1>Student Data</h1>
	<form:form action="student.do" method="POST" commandName="student">
		<table>
			<tr>
				<td>Student Id</td>
				<td><form:input path="studentId"/></td>
			</tr>
			<tr>
				<td>First Name</td>
				<td><form:input path="firstName"/></td>
			</tr>
			<tr>
				<td>Last Name</td>
				<td><form:input path="lastName"/></td>
			</tr>
			<tr>
				<td>Year Level</td>
				<td><form:input path="yearLevel"/></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" name="action" value="add">
					<input type="submit" name="action" value="edit">
					<input type="submit" name="action" value="delete">
					<input type="submit" name="action" value="search">
				</td>
			</tr>
		</table>
	</form:form>
	<br>
	<table border="1">
		<th>Id</th>
		<th>First Name</th>
		<th>Last Name</th>
		<th>Year Level</th>
		<c:forEach items="${studentlist}" var="student">
			<tr>
			<td>${student.studentId}</td>
			<td>${student.firstName}</td>
			<td>${student.LastName}</td>
			<td>${student.yearLevel}</td>
			</tr>
		
		</c:forEach>
	</table>
	
</body>
</html>
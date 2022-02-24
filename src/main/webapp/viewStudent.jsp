<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Students View</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<%@page import="crud.karim.*,java.util.*"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



	<%
	List<Student> list = StudentDAO.getAllRecords();
	request.setAttribute("list", list);
	%>


	<div class="container mt-3">
		<h1>Students List</h1>

		<table class="table table-dark table-hover">
			<thead>
				<tr>
					<th>Id</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Password</th>
					<th>Gender</th>
					<th>Counter</th>
					<th>Actions</th>
				</tr>
			</thead>


			<c:forEach items="${list}" var="s">
				<tr>
					<td>${s.getId()}</td>
					<td>${s.getFname()}</td>
					<td>${s.getLname()}</td>
					<td>${s.getEmail()}</td>
					<td>${s.getPass()}</td>
					<td>${s.getGender()}</td>
					<td>${s.getCountry()}</td>
					<td><a href="editStudentForm.jsp?id=${s.getId()}" class="btn btn-primary btn-sm">Edit</a></td>
					<td><a href="deleteStudent.jsp?id=${s.getId()}" class="btn btn-primary btn-sm">Delete</a></td>
				</tr>
			</c:forEach>
			
		</table>
		<br/><a href="addStudentForm.jsp" class="btn btn-primary">Add New Student</a>
	</div>

</body>
</html>
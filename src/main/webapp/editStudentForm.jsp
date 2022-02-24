<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

<title>Edit Student</title>
</head>
<body>

	<%@page import="crud.karim.*"%>

	<%
	String id = request.getParameter("id");
	Student s = StudentDAO.getRecordById(Integer.parseInt(id));
	%>


	<h1>Edit Student</h1>
	<form action="editStudent.jsp" method="post">
		<input type="hidden" name="id" value="<%=s.getId()%>" />
		<table>
			
			<tr class="mb-3 mt-3">
				<td>First Name:</td>
				<td><input type="text" name="fname" value="<%=s.getFname()%>"
					class="form-control" /></td>
			</tr>
			

			<tr class="mb-3 mt-3">
				<td>Last Name:</td>
				<td><input type="text" name="lname" value="<%=s.getLname()%>"
					class="form-control" /></td>
			</tr>

			<tr class="mb-3 mt-3">
				<td>Email:</td>
				<td><input type="email" name="email" value="<%=s.getEmail()%>"
					class="form-control" /></td>
			</tr>

			<tr class="mb-3 mt-3">
				<td>Password:</td>
				<td><input type="password" name="pass" value="<%=s.getPass()%>"
					class="form-control" /></td>
			</tr>

			<tr class="mb-3 mt-3">
				<td>Gender:</td>
				<td><label for="gender" class="form-label"></label> <select
					class="form-select" id="gender" name="gender">
						<option>Male</option>
						<option>Female</option>
				</select></td>
			</tr>
			<tr class="mb-3 mt-3">
				<td>Country:</td>
				<td><select name="country" class="form-label">
						<option>Egypt</option>
						<option>Farnce</option>
						<option>Italy</option>
						<option>German</option>
				</select></td>
			</tr>

			<tr class="mb-3 mt-3">
				<br>
				<td colspan="2"><input type="submit" value="Edit Student"
					class="btn btn-primary" /></td>
			</tr>
		</table>
	</form>










</body>
</html>
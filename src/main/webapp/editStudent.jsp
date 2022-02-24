<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Student</title>
</head>
<body>

	<%@page import="crud.karim.*"%>
	<jsp:useBean id="s" class="crud.karim.Student"></jsp:useBean>
	<jsp:setProperty property="*" name="s" />
	<%
	int i = StudentDAO.update(s);
	response.sendRedirect("viewStudent.jsp");
	%>

</body>
</html>
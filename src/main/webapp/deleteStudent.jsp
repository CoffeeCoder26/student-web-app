<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Deleting Student</title>
</head>
<body>

	<%@page import="crud.karim.*"%>
	<jsp:useBean id="s" class="crud.karim.Student"></jsp:useBean>
	<jsp:setProperty property="*" name="s" />
	<%
	StudentDAO.delete(s);
	response.sendRedirect("viewStudent.jsp");
	%>

</body>
</html>
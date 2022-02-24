<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="crud.karim.StudentDAO"%>
<jsp:useBean id="s" class="crud.karim.Student"></jsp:useBean>
<jsp:setProperty property="*" name="s" />
<%
	int i = StudentDAO.save(s);

	if (i > 0){
		response.sendRedirect("addSuccessStudent.jsp");
	}else{
		response.sendRedirect("addFailedStudent.jsp");
	}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Adding Student</title>
</head>
<body>

</body>
</html>
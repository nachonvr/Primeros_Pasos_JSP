<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Usuarios registrados</h2>
Usuario confirmado:<br><br>
	Nombre: <%=request.getParameter("nombre") %> &nbsp; <%=request.getParameter("apellidos") %>
</body>
</html>
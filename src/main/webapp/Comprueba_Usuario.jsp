<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

	String usuario = request.getParameter("usuario");
	String contra  = request.getParameter("contra");

	Class.forName("com.mysql.jdbc.Driver");
	
	try{
		Connection miConexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto_jsp","root","");	
		Statement miStatement = miConexion.createStatement();
		String instruccionSql = "SELECT usuario, contrasena FROM usuarios " +
				"WHERE usuario LIKE '" + usuario + "' AND contrasena LIKE '" + contra  + "';";
		try{
			miStatement.execute(instruccionSql);
			out.println("Registro grabado correctamente XXX");			
		}catch(Exception e){
			out.println("Registro NO grabado en la BBDD XXX");
		}		
	}catch(Exception e){
		out.println("Error de conexión con la BBDD");
	}

%>

</body>
</html>
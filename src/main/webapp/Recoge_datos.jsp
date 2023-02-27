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
	String nombre     = request.getParameter("nombre");
	String apellido   = request.getParameter("apellido");
	String usuario    = request.getParameter("usuario");
	String contra     = request.getParameter("contra");
	String pais       = request.getParameter("pais");
	String tecnologia = request.getParameter("tecnologias");

	Class.forName("com.mysql.jdbc.Driver");
	
	try{
		Connection miConexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto_jsp","root","");	
		Statement miStatement = miConexion.createStatement();
		String instruccionSql = "INSERT INTO usuarios (nombre, apellido, usuario, contrasena, pais, tecnologia) VALUES ('" + 
			nombre     + "', '" + 
			apellido   + "', '" + 
			usuario    + "', '" + 
			contra     + "', '" + 
			pais       + "', '" + 
			tecnologia + "');";
		try{
			miStatement.executeUpdate(instruccionSql);
			out.println("Registro grabado correctamente");			
		}catch(Exception e){
			out.println("Registro NO grabado en la BBDD");
		}		
	}catch(Exception e){
		out.println("Error de conexión con la BBDD");
	}

%>

</body>
</html>

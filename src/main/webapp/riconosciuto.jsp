<%@page import="it.prova.model.Persona"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Accesso eseguito!</title>
</head>
<body>
	<h2>Sei entrato nel Portale!</h2><br>
	<H3>Benvenuto:</H3> <br>
	<% Persona personaInIngresso = (Persona)request.getAttribute("personaAttribute");%>
		<h2><%= personaInIngresso.getNome() %>
		<%= personaInIngresso.getCognome()%></h2>
		<br><br>
		<a href="index.jsp">Home</a>
</body>
</html>
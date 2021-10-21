<%@page import="it.prova.model.Persona"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Utente non riconosciuto!</title>
</head>
<body>
	<h2>Login errato!</h2><br>
		<% Persona personaInIngresso = (Persona)request.getAttribute("personaAttribute");%>
		<h1>Il seguente utente:</h1> <br>
		<h2><%= personaInIngresso.getNome() %>
		<%= personaInIngresso.getCognome()%></h2>
		<br><h1>non esiste!</h1>
		<br><br>
		<a href="index.jsp">Home</a>
</body>
</html>
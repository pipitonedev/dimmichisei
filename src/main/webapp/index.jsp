<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dimmi chi sei</title>
</head>
<body>
	<h1>Come ti Chiami?</h1>
	<br>
	<form action="CheckPresenzaServlet" method="post">
	
		Nome:
		<input type="text" name="nomeInput"><br>
		
		Cognome:
		<input type="text" name="cognomeInput"><br>
		
		<input type="submit" value="Conferma"><br>
	</form>

</body>
</html>
<%-- 
    Document   : index
    Created on : 05-28-2020, 12:05:43 PM
    Author     : castr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
<body>
<h1>Registrar Persona</h1>
<form action="recibir.do" method="POST">
    Dui: <input type="text" name="txtDui" value="" /><br>
Apellidos: <input type="text" name="txtApellidos" value="" /><br>
Nombre: <input type="text" name="txtNombres" value="" /><br>

<input type="submit" value="Registrar Nueva Persona" />
    
</form>
</body>
</html>

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
    
<h1 align="center">Registrar Persona</h1>

<center><form action="recibir.do" method="POST">
<table border ="0"> 
<tr>
<td>Dui: </td><td><input type="text" name="txtDui" value="" size="10"  required="" /></td>
</tr>
<tr>
<td>Apellidos:</td><td><input type="text" name="txtApellidos" value="" size="35"  required="" /></td>
</tr>
<tr>
<td>Nombre: </td><td><input type="text" name="txtNombres" value="" size="35"  required="" /></td>
</tr>
<tr>
<td><input type="submit" value="Registrar Nueva Persona" /></td>
</tr>
</table>
</form>
</center>
</body>
</html>

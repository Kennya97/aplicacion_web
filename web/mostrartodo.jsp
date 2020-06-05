<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
<body>
<center>
<h1>TODOS LOS REGISTROS</h1>

<table border ="1">  
    
<thead>
    <tr> 
    <th>DUI</th>
    <th>NOMBRE</th>
    <th>APELLIDO</th>
    <th>ACCIONES</th>
    </tr>
</thead>
<c:forEach var="listaTotal" items="${sessionScope.personas}">
    <tr>
    <td>${listaTotal.dui}</td>
    <td>${listaTotal.apellidos}</td>
    <td>${listaTotal.nombres}</td>
<td>
<form>
<input type="submit" value="Editar" />
<input type="submit" value="Eliminar" />
</form>
</td>
</tr>
</c:forEach>
</tbody>
</table>
</center>
</body>
</html>

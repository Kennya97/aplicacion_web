<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<title>JSP Page</title>
</head>

<body>
<div class="mt-4">
<div class="card">
<div class="card-header">
<a  href="index.jsp" class="btn btn-primary">Nuevo Usuario</a> 
</div>
<div class="card-body">
<table  class="table table-hover">
      
      
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
<input class="btn btn-warning" type="submit" value="Edit" />
<input  class="btn btn-danger" type="submit" value="Delete" />
</form>
</td>
</tr>
</c:forEach>
</tbody>
</table>
</div>
</div>
</div>    
</body>
</html>

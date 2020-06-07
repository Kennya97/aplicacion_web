

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<title>JSP Page</title>
</head>
<body>
 <body>
    
<h1 align="center">Registrar Persona</h1>

<center><form action="recibir.do" method="POST">
 <div class="form-group">    
<input class="form-control " placeholder="Dui" type="text" name="txtDui" value=""  required="" />
</div>
 
<div class="form-group">
<input class="form-control" placeholder="Apellido" type="text" name="txtApellidos" value="" required="" />
</div>
        
<div class="form-group">  
<input  class="form-control" placeholder="Nombre" type="text" name="txtNombres" value=""  required="" />
</div>
        
<input type="submit" value="Registrar Nueva Persona" class="btn btn-primary"/>


</form>
</center>
</body>
</html>
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Persona;

public class Recibir extends HttpServlet {

protected void processRequest(HttpServletRequest request, HttpServletResponse response)
throws ServletException, IOException {
}

@Override
protected void doGet(HttpServletRequest request, HttpServletResponse response)
throws ServletException, IOException {
processRequest(request, response);
}

@Override
protected void doPost(HttpServletRequest request, HttpServletResponse response)
throws ServletException, IOException {
String dui = request.getParameter("txtDui");
String apellidos =request.getParameter("txtApellidos");
String nombres = request.getParameter("txtNombres");

Persona person =new Persona(); //Al crear el objeto automaticamente se conecta a la base de datos
person.setDui(dui);
person.setApellidos(apellidos);
person.setNombres(nombres);

if(person.insertarDatos() == true){ //RECUERDE QUE ERA BOLEANO
request.getRequestDispatcher("exito.jsp").forward(request, response);
}else{
request.getRequestDispatcher("noexito").forward(request, response);
}
}

@Override
public String getServletInfo() {
return "Short description";
}// </editor-fold>
}

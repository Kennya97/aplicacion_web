package modelo;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.ArrayList;

public class Persona {
 //ATRIBUTOS DE LA CLASE
String dui;
String apellidos;
String nombres;

Connection cnn;
Statement state;
ResultSet result;

//CONSTRUCTOR VACIO DE LA CLASE TIPO PUBLICO

public Persona(){
try {
          Class.forName("com.mysql.jdbc.Driver");//driver de la base de datos
          cnn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bd_recurso_humano?zeroDateTimeBehavior=convertToNull", "root", ""); //url de laBD, user, pass
}catch (ClassNotFoundException ex) {
        Logger.getLogger(Persona.class.getName()).log(Level.SEVERE, null, ex);
    } catch (SQLException ex) {
        Logger.getLogger(Persona.class.getName()).log(Level.SEVERE, null, ex);
}
}
public Persona(String dui, String apellidos, String nombres){
this.dui = dui;
this.apellidos = apellidos;
this.nombres = nombres;
}
public boolean insertarDatos(){
try{
String miQuery = "insert  into tb_persona values ('" +dui+"', '"+apellidos+"', '"+nombres+"');";
int estado = 0;
state =cnn.createStatement();
estado =state.executeUpdate(miQuery);
if(estado == 1){
return true;
}
}catch(SQLException ex){
Logger.getLogger(Persona.class.getName()).log(Level.SEVERE, null, ex);
}
return false;
}

public ArrayList<Persona> consultarRegistros(){
ArrayList<Persona> person = new ArrayList(); //Crear el array de almacenamiento de tipo Persona
try{
String miQuery = "select * from tb_persona;"; //DEFINIR LA CONSULTA
state = cnn.createStatement(); //CREAR EL BOTOn para la consulta
result = state.executeQuery(miQuery);//EJECUTAR LA CONSULTA
while(result.next()){
    
person.add(new Persona(result.getString("dui_persona"), result.getString("apellidos_persona"), result.getString("nombre_persona")));
}
}catch(SQLException ex){
Logger.getLogger(Persona.class.getName()) .log(Level.SEVERE, null, ex);
}
return person; //INDEPENDIENTEMENTE ENCUENTRO O NO ENCUENTRO O NO REGISTRADO RETORNA EL OBJETO PERSON.
}

//GENERAR LOS METODOS SET Y GET PARA LOS ATRIBUTOS
public String getDui() {
        return dui;
    }

    public void setDui(String dui) {
        this.dui = dui;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }
}

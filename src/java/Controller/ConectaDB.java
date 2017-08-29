package Controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ConectaDB {

    /**
     * Variables de control para la conexion a la base de datos MySQL
     */
    private String usuario; //Guarda Usuario Base De Datos
    private String clave; //Guarda Clave Base De Datos
    private String url; // Direccion para lña conexion a la Base De Datos MySQL
    private String host; // String de conexion de JDBC
    private String db; //Nombre De la Base De Datos
    private String driverClassName; // String Conexion JDBC
    private Connection conn = null; // Guarda Conexion En MySQL
    
    /**
     * Metodo Constructor Principal
     * Constructor que toma los datos de conexion por medio de parametros
     */
    public ConectaDB(String usuario, String clave, String url, String driverClassName) {
        this.usuario = usuario;
        this.clave = clave;
        this.url = url;
        this.driverClassName = driverClassName;
    }

    //Constructor que crea la conexion sin parametros con unos definidos en la clase
    //(meter los datos correspondientes)
    public ConectaDB() {
        //poner los datos apropiados
        this.db = "Proesthetic";
//        this.db ="proesthetic"; //Para uso de mysql de Daniel
        this.host = "jdbc:mysql://localhost:3306/";
        this.usuario = "root";
        this.clave = "87040156168";
//        this.clave = ""; //Para uso de mysql de Daniel
        this.url = host + db + "?user=" + usuario + "&password=" + clave;
        this.driverClassName = "com.mysql.jdbc.Driver";
    }

    //metodos para recuperar los datos de conexion
    public String getClave() {
        return clave;
    }

    public String getUrl() {
        return url;
    }

    public String getUsuario() {
        return usuario;
    }

    public Connection getConn() {
        return conn;
    }

    public String getDriverClassName() {
        return driverClassName;
    }

    //metodos para establecer los valores de conexion
    public void setClave(String clave) {
        this.clave = clave;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public void setUsuario(String usuario) throws SQLException {
        this.usuario = usuario;
    }

    public void setConn(Connection conn) {
        this.conn = conn;
    }

    public void setDriverClassName(String driverClassName) {
        this.driverClassName = driverClassName;
    }

//la conexion propiamente dicha
    public Connection conectar() {
        try {
            Class.forName(this.driverClassName);
            this.conn = DriverManager.getConnection(this.url, this.usuario, this.clave);
            System.out.println("Conexion");
        } catch (Exception err) {
            System.out.println("Error " + err.getMessage());
        }
        return conn;

    }
    //Cerrar la conexion

    public void cierraConexion() throws SQLException {
        this.conn.close();
    }
}

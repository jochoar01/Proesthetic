/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author sena
 */
public class Operaciones {

    
    
    
     

    public String validarUsuario(String u, String p) {
        String existe = "";
        try {
            ConectaDB c = new ConectaDB();
            Connection con = c.conectar();
            Statement stm = con.createStatement();
            String query = "SELECT * FROM Usuarios Where Usuario = '" + u + "' AND Contrasena ='" + p + "';";
            String rol = "SELECT Rol FROM Usuarios";
            System.out.println(query);
            System.out.println(rol);
            ResultSet rs = stm.executeQuery(query);
           
            if (rs.next()) {
                existe = rs.getString(4);
            } 
            stm.close();
            con.close();
             c.cierraConexion();

        } catch (SQLException s) {
            s.printStackTrace();
        }
        return existe;  
        
        
    }
    
    public String ImprimirNum(String u, String p) {
        String n = "";
        try {
            ConectaDB c = new ConectaDB();
            Connection con = c.conectar();
            Statement stm = con.createStatement();
            String query = "SELECT * FROM Usuarios Where Usuario = '" + u + "' AND Contrasena ='" + p + "';";
         
            System.out.println(query);
         
            ResultSet rs = stm.executeQuery(query);
           
            if (rs.next()) {
                n = rs.getString(4);
            } 
            stm.close();
            con.close();
            c.cierraConexion();

        } catch (Exception s) {
            s.printStackTrace();
        }
        return n;  
        
        
    }
    
    
    
    
    

}

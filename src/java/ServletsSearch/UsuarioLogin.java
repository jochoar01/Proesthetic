/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ServletsSearch;

import Controller.ConectaDB;
import Persistencias.Usuarios;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Daniel Lopez
 */
@WebServlet(name = "UsuarioLogin", urlPatterns = {"/UsuarioLogin"})
public class UsuarioLogin extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        ArrayList<Usuarios> Usuario = new ArrayList();
        HttpSession session = request.getSession();
        
        try {
            //Instanciamos las conexiones
            ConectaDB c = new ConectaDB();
            Connection con = c.conectar();
            Statement stm = con.createStatement();
            //Obtener parametros
//            String user = (String)request.getParameter("usrname");
//            String pass = (String)request.getParameter("psw");
            //Consultas
//            ResultSet rs = stm.executeQuery("SELECT * FROM `usuarios` WHERE `NombreUsuario` = '" + user + "' AND `Password` ='" + pass + "' LIMIT 0,1;");
//            while( rs.next() ) {
//                Usuarios usu = new Usuarios();
//                //Guardar en clase Usuarios
//                usu.setNombre((String)rs.getString("Nombre"));
//                usu.setRol((String)rs.getString("Rol"));
//                //Guardar los resultados en el ArrayList
//                Usuario.add(usu);
//                //Guardar datos en la session
//                session.setAttribute("Login", Usuario);
//                break;
            String pass;
            String user;

             ResultSet rs = stm.executeQuery("SELECT * FROM `usuarios` WHERE `NombreUsuario` = '" + user + "' AND `Password` ='" + pass + "' LIMIT 0,1;");
              
            }
            //Cerramos las conexiones
            stm.close();
            con.close();
            c.cierraConexion();
            
            if(Usuario.size() > 0){
                response.sendRedirect("inicio.jsp");
            }else{
                response.sendRedirect("index.jsp");
            }
        }catch(SQLException e){
            System.out.println(e.getMessage());
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

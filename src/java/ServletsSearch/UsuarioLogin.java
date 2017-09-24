/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ServletsSearch;

import Controller.ConectaDB;
import Persistencias.Clinicas;
import Persistencias.Roles;
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

        HttpSession session = request.getSession(true);

        try {
            //Instanciamos las conexiones
//            ArrayList<Roles> ListRoles = new ArrayList();
//            ArrayList<Clinicas> ListClinicas = new ArrayList();
            ConectaDB c = new ConectaDB();
            Connection con = c.conectar();
            Statement stm = con.createStatement();
            //Obtenemos parametros del formulario
            String user = (String) request.getParameter("usrname");
            String pass = (String) request.getParameter("psw");
            //Realizamos consulta para verificar si el usuario existe
            ResultSet rs = stm.executeQuery("SELECT * FROM `usuarios` WHERE `usuario` = '" + user + "' AND `Password` ='" + pass + "' LIMIT 0 , 1;");
            //Verificamos y obtenemos datos de la consulta
            if (rs.next()) {
                session.setAttribute("rol", rs.getString(6));
                session.setAttribute("nombre", rs.getString(2));
                  response.sendRedirect("inicio.jsp");
                //System.out.println(rs.getString(3));
            }
            //obtenemos datos de los roles
//            ResultSet rsRol = stm.executeQuery("SELECT * FROM `roles`;");
//            while (rsRol.next()) {
//                // Creamos contenedor de datos
//                Roles rol = new Roles();
//                // Obtenemos y guardamos los datos de la consulta
//                rol.setIdrol(rsRol.getInt(1));
//                rol.setRol(rsRol.getString(2));
//                rol.setHabilitado(rsRol.getBoolean(3));
//                //Agregamos contenedor a array en sesión
//                ListRoles.add(rol);
//            }
//            session.setAttribute("ListarRoles", ListRoles);
//            //obtenemos datos de las clinicas
//            ResultSet rsClnc = stm.executeQuery("SELECT * FROM `clinicas`;");
//            while( rsClnc.next() ) {
//                Clinicas clinic = new Clinicas();
//                //Guardar en clase Usuarios
//                clinic.setIdClinicas      ( rsClnc.getInt(1)    );
//                clinic.setNitClinicas     ( rsClnc.getString(2) );
//                clinic.setNombreClinica   ( rsClnc.getString(3) );
//                clinic.setDireccionClinica( rsClnc.getString(4) );
//                clinic.setTelefonoClinica ( rsClnc.getString(5) );
//                //Guardar los resultados en el ArrayList
//                ListClinicas.add(clinic);
//            }
//            session.setAttribute("ListaClinicas", ListClinicas);
//            //Cerramos concexiones
            stm.close();
            con.close();
            c.cierraConexion();
            
            //Vamos al inicio
          
            //Cerramos las conexiones
        } catch (SQLException e) {
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

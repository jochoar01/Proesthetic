/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Tablas;

import Controller.ConectaDB;
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
 * @author Daniels
 */
@WebServlet(name = "TablaRoles", urlPatterns = {"/TablaRoles"})
public class TablaRoles extends HttpServlet {

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
        try {
            // Instanciación de clases
            HttpSession session = request.getSession();
            ArrayList<Roles> ListRoles = new ArrayList();
            ConectaDB c = new ConectaDB();
            Connection cn = c.conectar();
            Statement stm = cn.createStatement();
            // Ejecutar busqueda de cajas
            String sql = "SELECT * FROM `roles`;";
            ResultSet rs = stm.executeQuery(sql);
                while (rs.next()) {
                    // Creamos contenedor de datos
                    Roles rol = new Roles();
                    // Obtenemos y guardamos los datos de la consulta
                    rol.setIdrol(rs.getInt(1));
                    rol.setRol(rs.getString(2));
                    rol.setHabilitado(rs.getBoolean(3));
                    //Agregamos contenedor a array en sesión
                    ListRoles.add(rol);
                }
            // Guardar datos en la sessión del servidor
            session.setAttribute("TablaRoles", ListRoles);
            //Cerramos concexiones
            stm.close();
            cn.close();
            c.cierraConexion();
            //Redireccionamos
            response.sendRedirect("Tabla-roles.jsp");
        } catch(SQLException e) {
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

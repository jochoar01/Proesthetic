/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ServletsUpdate;

import Controller.ConectaDB;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Daniels
 */
@WebServlet(name = "ActualizarSedes", urlPatterns = {"/ActualizarSedes"})
public class ActualizarSedes extends HttpServlet {

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
            // Instaciamos y realizamos preparaciones para realizar querys
            ConectaDB c = new ConectaDB();
            Connection cn = c.conectar();
            //Statement stm = cn.createStatement();

            String id      = request.getParameter("id");
            String nombre  = request.getParameter("nombre");
            String clinica = request.getParameter("clinica");
            String estado  = request.getParameter("estado");

            // Preparamos y Ejecutamos Query
            String query = "UPDATE `sedes` SET `sede`='?',`clinica`='?',`Habilitado`='?' WHERE `idsede`='?';";
            PreparedStatement preparedStmt = cn.prepareStatement(query);
            preparedStmt.setString (1, nombre);
            preparedStmt.setString (2, clinica);
            preparedStmt.setString (3, estado);
            preparedStmt.setString (4, id);
            preparedStmt.executeUpdate();
            preparedStmt.close();
            //Cerramos concexiones
            //stm.close();
            cn.close();
            c.cierraConexion();
            // Redireccionamos al listar
            response.sendRedirect("ListarSedes");
        } catch (SQLException s) {
            System.out.println(s.getMessage());
            response.sendRedirect("index.jsp");
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

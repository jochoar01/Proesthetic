/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ServletsUpdate;

import Controller.ConectaDB;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Daniel Lopez
 */
@WebServlet(name = "ActualizarClinicas", urlPatterns = {"/ActualizarClinicas"})
public class ActualizarClinicas extends HttpServlet {

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
        
        //Obtenemos los datos provenientes del formulario
        String id        = (String)request.getParameter("id");
        String nit       = (String)request.getParameter("nit");
        String nombre    = (String)request.getParameter("nombre");
        String direccion = (String)request.getParameter("direccion");
        String telefono  = (String)request.getParameter("telefono");
        String estado    = (String)request.getParameter("estado");
        
        String sql = "UPDATE `clinicas` SET `NitClinicas` = '" + nit + "', `NombreClinica` = '" + nombre + "', `DireccionClinica` = '" + direccion + "', `TelefonoClinica` = '" + telefono + "', `Habilitado` = '" + estado + "' WHERE `idClinicas` = '"+ id +"'";
        
        try {
            //Instanciamos las conexiones
            ConectaDB c = new ConectaDB();
            Connection con = c.conectar();
            Statement stm = con.createStatement();

            //Consultas
            stm.executeUpdate(sql);
            
            //Cerramos las conexiones
            stm.close();
            con.close();
            c.cierraConexion();
            
            response.sendRedirect("BusquedaClinicas");
        }
        catch(SQLException e){
            System.out.println(e.getMessage());
            response.sendRedirect("inicio.jsp");
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

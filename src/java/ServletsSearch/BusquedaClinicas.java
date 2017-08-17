/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ServletsSearch;

import Controller.ConectaDB;
import Persistencias.Clinicas;
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
@WebServlet(name = "BusquedaClinicas", urlPatterns = {"/BusquedaClinicas"})
public class BusquedaClinicas extends HttpServlet {

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
        
        ArrayList<Clinicas> Clinica = new ArrayList();
        HttpSession session = request.getSession();
        
        try {
            //Instanciamos las conexiones
            ConectaDB c = new ConectaDB();
            Connection con = c.conectar();
            Statement stm = con.createStatement();

            //Consultas
            ResultSet rs = stm.executeQuery("SELECT * FROM `clinicas` WHERE `Habilitado` = '1';");
            while( rs.next() ) {
                Clinicas clinic = new Clinicas();
                //Guardar en clase Usuarios
                clinic.setIdClinicas      ( rs.getInt(1)    );
                clinic.setNitClinicas     ( rs.getString(2) );
                clinic.setNombreClinica   ( rs.getString(3) );
                clinic.setDireccionClinica( rs.getString(4) );
                clinic.setTelefonoClinica ( rs.getString(5) );
                //Guardar los resultados en el ArrayList
                Clinica.add(clinic);
            }
            //Guardar datos en la session
            session.setAttribute("ListaClinicas", Clinica);
            
            //Cerramos las conexiones
            stm.close();
            con.close();
            c.cierraConexion();
            
            response.sendRedirect("search-clientes.jsp");
            
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

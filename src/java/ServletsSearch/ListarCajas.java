/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ServletsSearch;

import Controller.ConectaDB;
import Persistencias.Cajas;
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
@WebServlet(name = "ListarCajas", urlPatterns = {"/ListarCajas"})
public class ListarCajas extends HttpServlet {

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
        ArrayList<Cajas> ListCajas = new ArrayList();
        ConectaDB c = new ConectaDB();
        Connection cn = c.conectar();
        Statement stm = cn.createStatement();
        // Ejecutar busqueda de cajas
        String sql = "SELECT * FROM `cajas` WHERE `Habilitado` = '1';";
        ResultSet rs = stm.executeQuery(sql);
            while (rs.next()) {                
                // Creamos contenedor de datos
                Cajas caja = new Cajas();
                // Obtenemos y guardamos los datos de la consulta
                caja.setIdcajas(rs.getInt(1));
                caja.setCaja(rs.getString(2));
                caja.setCajascol1(rs.getString(3));
                caja.setHabilitado(rs.getBoolean(4));
                //Agregamos contenedor a array en sesión
                ListCajas.add(caja);
            }
        // Guardar datos en la sessión del servidor
        session.setAttribute("ListarCajas", ListCajas);
        //Cerramos concexiones
            stm.close();
            cn.close();
            c.cierraConexion();
            response.sendRedirect("search-cajas.jsp");
        } catch(SQLException e){
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

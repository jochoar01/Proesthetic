/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Tablas;

import Controller.ConectaDB;
import Persistencias.Procesos;
import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(name = "TablaProcesos", urlPatterns = {"/TablaProcesos"})
public class TablaProcesos extends HttpServlet {

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
            ArrayList<Procesos> ListProcess = new ArrayList();
            ConectaDB c = new ConectaDB();
            Connection cn = c.conectar();
            Statement stm = cn.createStatement();
            // Ejecutar busqueda de cajas
            String sql = "SELECT * FROM `procesos` WHERE `Habilitado`='true';";
            ResultSet rs = stm.executeQuery(sql);
                while (rs.next()) {
                    // Creamos contenedor de datos
                    Procesos proceso = new Procesos();
                    // Obtenemos y guardamos los datos de la consulta
                    proceso.setIdprocesos(rs.getInt(1));
                    proceso.setTrabajo(rs.getString(2));
                    proceso.setProceso(rs.getString(3));
                    proceso.setHabilitado(rs.getString(4));
                    //Agregamos contenedor a array en sesión
                    ListProcess.add(proceso);
                }
            // Guardar datos en la sessión del servidor
            session.setAttribute("TablaProcesos", ListProcess);
            //Cerramos concexiones
            stm.close();
            cn.close();
            c.cierraConexion();
            response.sendRedirect("Tabla-procesos.jsp");
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

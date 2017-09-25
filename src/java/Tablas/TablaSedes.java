/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Tablas;

import Controller.ConectaDB;
import Persistencias.Clinicas;
import Persistencias.Sedes;
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
@WebServlet(name = "TablaSedes", urlPatterns = {"/TablaSedes"})
public class TablaSedes extends HttpServlet {

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
            ArrayList<Sedes> ListSedes = new ArrayList();
            ConectaDB c = new ConectaDB();
            Connection cn = c.conectar();
            Statement stm = cn.createStatement();
            Statement stm2 = cn.createStatement();
            // Ejecutar busqueda de cajas
            String sql = "SELECT * FROM `sedes`;";
            String query = "";
            ResultSet rs = stm2.executeQuery(sql);
            ResultSet rsClinica = null; 
                while (rs.next()) {
                    // Creamos contenedor de datos
                    Sedes sede = new Sedes();
                    Clinicas clinica = new Clinicas();
                    // Obtenemos y guardamos los datos de la consulta
                    sede.setIdsede(rs.getInt(1));
                    sede.setSede(rs.getString(2));
                    sede.setHabilitado(rs.getBoolean(4));
                    //Clinica
                    clinica.setIdClinicas(rs.getInt(3));
                    query = "SELECT `NombreClinica` FROM `clinicas` WHERE `idClinicas` = '" + rs.getInt(3) + "';";
                    rsClinica = stm.executeQuery(query);
                    if (rsClinica.next()) {
                        clinica.setNombreClinica(rsClinica.getString(1));
                    }
                    sede.setClinica(clinica);
                    
                    //Agregamos contenedor a array en sesión
                    ListSedes.add(sede);
                }
            // Guardar datos en la sessión del servidor
            session.setAttribute("TablaSedes", ListSedes);
            //Cerramos concexiones
            stm2.close();
            stm.close();
            cn.close();
            c.cierraConexion();
            //Redireccionamos
            response.sendRedirect("Tabla-sedes.jsp");
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

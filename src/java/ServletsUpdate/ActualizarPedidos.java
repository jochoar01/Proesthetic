/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ServletsUpdate;

import java.io.IOException;
import java.io.PrintWriter;
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
 * @author juan
 */
@WebServlet(name = "ActualizarPedidos", urlPatterns = {"/ActualizarPedidos"})
public class ActualizarPedidos extends HttpServlet {

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
            
            Controller.ConectaDB c = new Controller.ConectaDB();
            Connection con = c.conectar();
            Statement stm = con.createStatement();

            String id = request.getParameter("Id");
            String caja = request.getParameter("Caja");
            String clinica = request.getParameter("Clinica");
            String paciente = request.getParameter("Paciente");
            String orden = request.getParameter("Orden");
            String antagonista = request.getParameter("Antagonista");
            String fecha_entrada = request.getParameter("Fecha_entrada");
            String odontologo = request.getParameter("Odontologo");
            String tipo_trabajo = request.getParameter("Tipo_trabajo");
            String fecha_entrega = request.getParameter("Fecha_entrega");
            String prueba1 = request.getParameter("Prueba1");
            String prueba2 = request.getParameter("Prueba2");
            String prueba3 = request.getParameter("Prueba3");

            String query = "UPDATE `pedidos` SET `caja`='" + caja + "', `clinica`='" + clinica + "', `paciente`='" + paciente + "', `orden`='" + orden + "', `antagonista`='" + antagonista + "', `fecha_entrada`='" + fecha_entrada + "', `odontologo`='" + odontologo + "', `tipo_trabajo`='" + tipo_trabajo + "', `fecha_entrega`='" + fecha_entrega + "', `prueba1`='" + prueba1 + "', `prueba2`='" + prueba2 + "', `prueba3`='" + prueba3 + "' WHERE `idpedidos`='" + id + "';";
            // Ejecutamos Queey
            stm.executeUpdate(query);
            
            stm.close();
            con.close();
            c.cierraConexion();

            response.sendRedirect("ListarPedidos");

        } catch (SQLException s) {
            s.printStackTrace();
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

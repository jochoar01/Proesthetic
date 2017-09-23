/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ServletsSearch;

import Controller.ConectaDB;
import Persistencias.Cajas;
import Persistencias.Odontologos;
import Persistencias.Pedidos;
import Persistencias.Procesos;
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
 * @author juan
 */
@WebServlet(name = "TablaPedidos", urlPatterns = {"/TablaPedidos"})
public class TablaPedidos extends HttpServlet {

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
            HttpSession session = request.getSession();
            ArrayList<Pedidos> ListarP = new ArrayList();

            ConectaDB c = new ConectaDB();
            Connection con = c.conectar();
            Statement stm = con.createStatement();
            
            String query = "SELECT * FROM `pedidos`";
            ResultSet rs = stm.executeQuery(query);
//            ArrayList<Pedidos> Listarb = new ArrayList();
//            String query2 ="SELECT * FROM `pedidos`;";
//            ResultSet rs2 = stm.executeQuery(query2);

            while (rs.next()) {
                Cajas cj = new Cajas();
                Sedes sd = new Sedes();
                Pedidos p = new Pedidos();
                Odontologos od = new Odontologos();
                Procesos p1 = new Procesos();
                Procesos p2 = new Procesos();
                Procesos p3 = new Procesos();
                
                p.setIdpedidos(rs.getInt(1));
                cj.setIdcajas(rs.getInt(2));
                p.setCaja(cj);
                sd.setIdsede(rs.getInt(3));
                p.setClinica(sd);
                p.setPaciente(rs.getString(4));
                p.setOrden(rs.getString(5));
                p.setAntagonista(rs.getString(6));
                p.setFechaEntrada(rs.getDate(7));
                od.setIdOdontologos(rs.getInt(8));
                p.setOdontologoid(od);
                p.setTipoTrabajo(rs.getString(9));
                p.setFechaEntrega(rs.getDate(10));
                p1.setIdprocesos(rs.getInt(11));
                p.setPrueba1(p1);
                p2.setIdprocesos(rs.getInt(12));
                p.setPrueba2(p2);
                p3.setIdprocesos(rs.getInt(13));
                p.setPrueba3(p3);
                p.setHabilitado(rs.getBoolean(14));
                ListarP.add(p);
            }
            
            session.setAttribute("Listar", ListarP);
            
            // Cerramos las conecciones
            stm.close();
            con.close();
            c.cierraConexion();

            response.sendRedirect("Tabla-pedidos.jsp");
        } catch (SQLException s) {
            System.out.println(s.getMessage());
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

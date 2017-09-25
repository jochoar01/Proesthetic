/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Tablas;

import Controller.ConectaDB;
import Persistencias.Roles;
import Persistencias.Usuarios;
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
@WebServlet(name = "TablaUsuarios", urlPatterns = {"/TablaUsuarios"})
public class TablaUsuarios extends HttpServlet {

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
            ArrayList<Usuarios> ListUsuarios = new ArrayList();
            ConectaDB c = new ConectaDB();
            Connection cn = c.conectar();
            Statement stm = cn.createStatement();
            Statement stm2 = cn.createStatement();
            String query = "";
            ResultSet rsRol = null;
            // Ejecutar busqueda de cajas
            String sql = "SELECT * FROM `usuarios`;";
            ResultSet rs = stm.executeQuery(sql);
            //Guardamos datos
                while (rs.next()) {
                    // Creamos contenedor de datos
                    Usuarios usuario = new Usuarios();
                    Roles rol = new Roles();
                    // Obtenemos y guardamos los datos de la consulta
                    usuario.setIdUsuarios(rs.getInt(1));
                    usuario.setNombreUsuario(rs.getString(2));
                    usuario.setCedula(rs.getString(3));
                    usuario.setUsuario(rs.getString(4));
                    usuario.setPassword(rs.getString(5));
                    usuario.setHabilitado(rs.getBoolean(7));
                    // Rol
                    rol.setIdrol(rs.getInt(6));
                    query = "SELECT `rol` FROM `roles` WHERE `idrol`='" + rs.getInt(6) + "';";
                    rsRol = stm2.executeQuery(query);
                    if(rsRol.next()){
                        rol.setRol(rsRol.getString(1));
                    }
                    usuario.setRolId(rol);
                    
                    //Agregamos contenedor a array en sesión
                    ListUsuarios.add(usuario);
                }
            // Guardar datos en la sessión del servidor
            session.setAttribute("TablaUsuarios", ListUsuarios);
            //Cerramos concexiones
            stm.close();
            cn.close();
            c.cierraConexion();
            response.sendRedirect("Tabla-usuarios.jsp");
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

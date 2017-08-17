package ServletsInsert;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "create_pedidos", urlPatterns = {"/create_pedidos"})
public class create_pedidos extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try {
             Controller.ConectaDB c = new Controller.ConectaDB();
            Connection con = c.conectar();
            Statement stm = con.createStatement();

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
            
            String query = "INSERT INTO `pedidos`(`caja`,`clinica`,`paciente`,`orden`,`antagonista`,`fecha_entrada`,`odontologo`,`tipo_trabajo`,`fecha_entrega`,`prueba1`,`prueba2`,`prueba3`,`Habilitado`) VALUES ('" + caja + "','" + clinica + "','" + paciente + "','" + orden + "','" + antagonista + "','" + fecha_entrada + "','" + odontologo + "','" + tipo_trabajo + "','" + fecha_entrega + "','" + prueba1 + "','" + prueba2 + "','" + prueba3 + "'," + true + ");";

            stm.execute(query);
            stm.close();
            con.close();
            c.cierraConexion();

            response.sendRedirect("ListarPedidos");

        } catch (Exception s) {
            s.printStackTrace();
        }
    }
    
    
    

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(create_pedidos.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(create_pedidos.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}

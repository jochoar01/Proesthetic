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
import javax.servlet.http.HttpSession;

@WebServlet(name = "create_roles", urlPatterns = {"/create_roles"})
public class create_roles extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            Controller.ConectaDB c = new Controller.ConectaDB();
            HttpSession session = request.getSession();

            Connection con = c.conectar();
            Statement stm = con.createStatement();
//            HttpSession session = request.getSession();

            String nrol = request.getParameter("nombre");
             
            

            
            String query = "INSERT INTO `roles`(`rol`,`Habilitado`)VALUES('"+nrol+"',"+true+");";
            stm.execute(query);
            String sQuery = query.replace("'", "`");
            String querylog = "insert into logs (fecha,rol,usuario,accion)values(now(),'" + session.getAttribute("rol") + "','" + session.getAttribute("nombre") + "','" + sQuery + "')";

            stm.execute(querylog);
            stm.close();
            con.close();
            c.cierraConexion();

           response.sendRedirect("ListarRoles");
          

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
            Logger.getLogger(create_roles.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(create_roles.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}

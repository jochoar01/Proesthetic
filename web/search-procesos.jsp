<%@page import="java.util.ArrayList"%>
<%@page import="Persistencias.Procesos"%>
<%
    ArrayList<Procesos> Listado = (ArrayList<Procesos>) session.getAttribute("Listarprocesos");
%>
<!DOCTYPE html>
<html lang="es">
    <%@include file="unitedhead.jsp" %>
    <body>
        <!-- Fixed navbar -->
        <%@include file="unitedMenu.jsp" %>
        <!-- Fixed navbar -->
        <div class="container">
            <div class="card">
                <div class="card-header">
                    <h3 class="float-left">Listado de Procesos</h3>
                    <a href="create-procesos.jsp" class="btn btn-success fa fa-plus float-right"></a>
                </div>
            </div>
            <table id="tabla" class="table table-stripped table-hover table-striped">
                <thead class="thead-inverse">
                    <tr>
                        <th>Id</th>
                        <th>Trabajo</th>
                        <th>Proceso</th>
                        <th>Estado</th>
                        <th>Editar</th>
                    </tr>
                </thead>
                <tbody>
<%
try {
    Integer i = -1;
    for (Procesos obj : Listado) {
        i += 1;
        %>
                    <tr>
                        <td><%= obj.getIdprocesos() %></td>
                        <td><%= obj.getTrabajo() %></td>
                        <td><%= obj.getProceso() %></td>
                        <td class="text-success">Activo</td>
                        <td>
                            <a href="update-procesos.jsp?site=<%= i %>" class="btn btn-warning"><i class="fa fa-pencil"></i></a>
                            <% if (session.getAttribute("rol").equals("1")) { %>
                            <a href="EliminarProcesos?id=<%= obj.getIdprocesos()%>" class="btn btn-danger fa fa-times"></a>
                            <% } %>
                        </td>
                    </tr>
        <%
    }
} catch (Exception e) {
    System.out.println(e.getMessage());
}
%>
                </tbody>
            </table>
        </div>
        <!-- Footer -->
        <%@include file="unitedFooter.jsp" %>
        <!-- jQuery first, then Tether, then Bootstrap JS. -->
        <script src="Assets/js/jquery.min.js"></script>
        <script src="Assets/js/tether.min.js"></script>
        <script src="Assets/js/bootstrap.min.js"></script>
    </body>
</html>
<%@page import="Persistencias.Sedes"%>
<%@page import="java.util.ArrayList"%>
<%
    ArrayList<Sedes> Listado = (ArrayList<Sedes>) session.getAttribute("ListarSedes");
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
                    <h3 class="float-left">Listado de Sedes</h3>
                    <a href="create-sedes.jsp" class="btn btn-success fa fa-plus float-right"></a>
                </div>
            </div>
            <table id="tabla" class="table table-stripped table-hover table-striped">
                <thead class="thead-inverse">
                    <tr>
                        <th>Id</th>
                        <th>Sede</th>
                        <th>Clínica</th>
                        <th>Estado</th>
                        <th>Editar</th>
                    </tr>
                </thead>
                <tbody>
<%
try {
    Integer i = -1;
    for (Sedes obj : Listado) {
        i += 1;
        %>
                    <tr>
                        <td><%= obj.getIdsede() %></td>
                        <td><%= obj.getSede() %></td>
                        <td><%= obj.getClinica().getNombreClinica() %></td>
                        <td class="text-success">Activo</td>
                        <td>
                            <a href="update-sedes.jsp?site=<%= i %>" class="btn btn-warning"><i class="fa fa-pencil"></i></a>
                            <% if (session.getAttribute("rol").equals("1")) { %>
                            <a href="EliminarSedes?id=<%= obj.getIdsede()%>" class="btn btn-danger fa fa-times"></a>
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

    </body>
</html>
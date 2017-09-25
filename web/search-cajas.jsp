<%@page import="java.util.ArrayList"%>
<%@page import="Persistencias.Cajas"%>
<%
    ArrayList<Cajas> Listado = (ArrayList<Cajas>) session.getAttribute("ListarCajas");
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
                    <h3 class="float-left">Listado de Cajas</h3>
                    <a href="create-cajas.jsp" class="btn btn-success fa fa-plus float-right"></a>
                </div>
            </div>
            <table id="tabla" class="table table-stripped table-hover table-striped">
                <thead class="thead-inverse">
                    <tr>
                        <th>Id</th>
                        <th>Caja</th>
                        <th>Estado</th>
                        <th>Editar</th>
                    </tr>
                </thead>
                <tbody>
<%
try {
    Integer i = -1;
    for (Cajas obj : Listado) {
        i += 1;
        %>
                    <tr>
                        <td><%= obj.getIdcajas() %></td>
                        <td><%= obj.getCaja()%></td>
                        <td class="text-success">Habilitado</td>
                        <td>
                            <a href="update-cajas.jsp?site=<%= i %>" class="btn btn-warning fa fa-pencil"></a>
                            <% if (session.getAttribute("rol").equals("1")) { %>
                            <a href="EliminarCajas?id=<%= obj.getIdcajas() %>" class="btn btn-danger fa fa-times"></a>
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
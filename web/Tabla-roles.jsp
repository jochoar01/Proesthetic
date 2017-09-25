<%@page import="Persistencias.Roles"%>
<%@page import="java.util.ArrayList"%>
<%
    ArrayList<Roles> Listado = (ArrayList<Roles>) session.getAttribute("TablaRoles");
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
                    <h3 class="float-left">Tabla de Roles</h3>
                </div>
            </div>
            <table id="tabla" class="table table-stripped table-hover table-striped">
                <thead class="thead-inverse">
                    <tr>
                        <th>Id</th>
                        <th>Rol</th>
                        <th>Estado</th>
                    </tr>
                </thead>
                <tbody>
<%
try {
    Integer i = -1;
    for (Roles obj : Listado) {
        i += 1;
        %>
                    <tr>
                        <td><%= obj.getIdrol()%></td>
                        <td><%= obj.getRol()%></td>
                        <% if(obj.getHabilitado()) { %>
                        <td class="text-success">Activo</td>
                        <% } else { %>
                        <td class="text-danger">Inactivo</td>
                        <% } %>
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
<%@page import="Persistencias.Usuarios"%>
<%@page import="java.util.ArrayList"%>
<%
    ArrayList<Usuarios> Listado = (ArrayList<Usuarios>) session.getAttribute("ListarUsuarios");
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
                    <h3 class="float-left">Listado de Usuarios</h3>
                    <a href="create-usuarios.jsp" class="btn btn-success fa fa-plus float-right"></a>
                </div>
            </div>
            <table id="tabla" class="table table-stripped table-hover table-striped">
                <thead class="thead-inverse">
                    <tr>
                        <th>Id</th>
                        <th>Usuario</th>
                        <% if (session.getAttribute("rol").equals("1")) { %>
                        <th>Contraseña</th>
                        <% } else { %>
                        <th style="display: none;">Contraseña</th>
                        <% } %>
                        <th>Rol</th>
                        <th>Empleado</th>
                        <th>Estado</th>
                        <th>Editar</th>
                    </tr>
                </thead>
                <tbody>
<%
try {
    Integer i = -1;
    for (Usuarios obj : Listado) {
        i += 1;
        %>
                    <tr>
                        <td><%= obj.getIdUsuarios()%></td>
                        <td><%= obj.getUsuario()%></td>
                        <td><%= obj.getPassword()%></td>
                        <td><%= obj.getRolId().getRol() %></td>
                        <td><%= obj.getNombreUsuario()%></td>
                        <td class="text-success">Activo</td>
                        <td>
                            <a href="update-usuarios.jsp?site=<%= i %>" class="btn btn-warning"><i class="fa fa-pencil"></i></a>
                            <% if (session.getAttribute("rol").equals("1")) { %>
                            <a href="EliminarUsuarios?id=<%= obj.getIdUsuarios()%>" class="btn btn-danger fa fa-times"></a>
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
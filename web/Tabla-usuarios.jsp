<%@page import="Persistencias.Usuarios"%>
<%@page import="java.util.ArrayList"%>
<%
    ArrayList<Usuarios> Listado = (ArrayList<Usuarios>) session.getAttribute("TablaUsuarios");
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
                    <h3 class="float-left">Tabla de Usuarios</h3>
                </div>
            </div>
            <table id="tabla" class="table table-stripped table-hover table-striped">
                <thead class="thead-inverse">
                    <tr>
                        <th>Id</th>
                        <th>Usuario</th>
                        <th>Contraseña</th>
                        <th>Rol</th>
			<th>Empleado</th>
                        <th>Estado</th>
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
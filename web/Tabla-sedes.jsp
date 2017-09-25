<%@page import="Persistencias.Sedes"%>
<%@page import="java.util.ArrayList"%>
<%
    ArrayList<Sedes> Listado = (ArrayList<Sedes>) session.getAttribute("TablaSedes");
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
                    <h3 class="float-left">Tabla de Sedes</h3>
                </div>
            </div>
            <table id="tabla" class="table table-stripped table-hover table-striped">
                <thead class="thead-inverse">
                    <tr>
                        <th>Id</th>
                        <th>Sede</th>
                        <th>Clínica</th>
                        <th>Estado</th>
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
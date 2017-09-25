<%@page import="Persistencias.Clinicas"%>
<%@page import="java.util.ArrayList"%>
<%
    ArrayList<Clinicas> ListaClinicas = (ArrayList<Clinicas>) session.getAttribute("TablaClientes");
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
                    <h3 class="float-left">Tabla Clientes / Clínicas</h3>
                </div>
            </div>
            <table id="tabla" class="table table-stripped table-hover table-striped">
                <thead class="thead-inverse">
                    <tr>
                        <th>Id</th>
                        <th>Clinica/cliente</th>
                        <th>Estado</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        int pos = -1;
                        try {
                            for (Clinicas obj : ListaClinicas) {
                    %>
                    <tr>
                        <td><%= obj.getIdClinicas()%></td>
                        <td><%= obj.getNombreClinica()%></td>
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
                            response.sendRedirect("index.jsp");
                        };
                    %>
                </tbody>
            </table>
        </div>
        <!-- Footer -->
        <%@include file="unitedFooter.jsp" %>

    </body>
</html>
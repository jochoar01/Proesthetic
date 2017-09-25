<%@page import="Persistencias.Odontologos"%>
<%@page import="java.util.ArrayList"%>
<%
    ArrayList<Odontologos> Odontologo = (ArrayList<Odontologos>) session.getAttribute("TablaOdontologos");
%>
<!DOCTYPE html>
<html lang="es">
    <%@include file="unitedhead.jsp" %>
    <body>
        <!-- Fixed navbar -->
        <%@include file="unitedMenu.jsp" %>
        <!-- Fixed navbar -->
        <div class="container-fluid">
            <div class="card top70">
                <div class="card-header">
                    <h3 class="float-left">Tabla de Odontologos</h3>
                </div>
            </div>
            <div class="table-responsive">
                <table id="tabla" class="table table-stripped table-hover table-striped">
                <thead class="thead-inverse">
                    <tr>
                        <th>Id</th>
                        <th>Nombre</th>
                        <th>Celular</th>
                        <th>Email</th>
                        <th>Estado</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        int pos = -1;
                        try {
                            for (Odontologos obj : Odontologo) {
                                pos += 1;
                    %>
                    <tr>
                        <td><%= obj.getIdOdontologos()%></td>
                        <td><%= obj.getNombreOdontologo()%></td>
                        <td><%= obj.getTelefonoOdontologo()%></td>
                        <td><%= obj.getEmailOdontologo()%></td>
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
        </div>
        <!-- Footer -->
        <%@include file="unitedFooter.jsp" %>

    </body>
</html>
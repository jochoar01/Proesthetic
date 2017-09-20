<%@page import="Persistencias.Odontologos"%>
<%@page import="java.util.ArrayList"%>
<%
    ArrayList<Odontologos> Odontologo = (ArrayList<Odontologos>) session.getAttribute("ListaOdontologos");
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
                    <h3 class="float-left">Listado de Odontólogos </h3>
                    <a href="create-odontologos.jsp" class="btn btn-success fa fa-plus float-right"></a>
                </div>
            </div>
            <table id="tabla" class="table table-stripped table-hover table-striped">
                <thead class="thead-inverse">
                    <tr>
                        <th>Id</th>
                        <th>Nombre</th>
                        <th>Celular</th>
                        <th>Email</th>
                        <th>Estado</th>
                        <th>Editar</th>
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
                        <td class="text-success">Activo</td>
                        <td>
                            <a href="show-odontologos.jsp?id=<%= pos%>" class="btn btn-primary"><i class="fa fa-eye"></i></a>
                            <a href="update-odontologos.jsp?id=<%= pos%>" class="btn btn-warning"><i class="fa fa-pencil"></i></a>
                                <% if (objUsuario.getRol().equals("SISTEMAS")) {%>
                            <a href="EliminarOdontologos?id=<%= obj.getIdOdontologos()%>" class="btn btn-danger"><i class="fa fa-times"></i></a>
                                <% } %>
                        </td>
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
        <!-- jQuery first, then Tether, then Bootstrap JS. -->
        <script src="bootstrap/js/jquery.min.js"></script>
        <script src="bootstrap/js/tether.min.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
    </body>
</html>
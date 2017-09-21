<%@page import="Persistencias.Clinicas"%>
<%@page import="java.util.ArrayList"%>
<%
    ArrayList<Clinicas> ListaClinicas = (ArrayList<Clinicas>) session.getAttribute("ListaClinicas");
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
                    <h3 class="float-left">Listado de Clientes / Clínicas</h3>
                    <a href="create-clientes.jsp" class="btn btn-success fa fa-plus float-right"></a>
                </div>
            </div>
            <table id="tabla" class="table table-stripped table-hover table-striped">
                <thead class="thead-inverse">
                    <tr>
                        <th>Id</th>
                        <th>Clinica/cliente</th>
                        <th>Estado</th>
                        <th>Editar</th>
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
                        <td class="text-success">Activo</td>
                        <td>
                            <a href="show-clientes.jsp?pos=<%= pos += 1%>" class="btn btn-primary"><i class="fa fa-eye"></i></a>
                            <a href="update-clientes.jsp?pos=<%= pos%>" class="btn btn-warning"><i class="fa fa-pencil"></i></a>
                                <% if (session.getAttribute("rol").equals("SISTEMAS")) {%>
                            <a href="EliminarClinicas?id=<%= obj.getIdClinicas()%>" class="btn btn-danger"><i class="fa fa-times"></i></a>
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
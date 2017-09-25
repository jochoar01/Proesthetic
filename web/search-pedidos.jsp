<%@page import="java.sql.SQLException"%>
<%@page import="Persistencias.Pedidos"%>
<%@page import="java.util.ArrayList"%>
<%
    ArrayList<Pedidos> Listar = (ArrayList<Pedidos>) session.getAttribute("Listar");
%>
<!DOCTYPE html>
<html lang="es">
    <%@include file="unitedhead.jsp" %>
    <body>
        <!-- Fixed navbar -->
        <%@include file="unitedMenu.jsp" %>
        <div class="container">
            <div class="card top70">
                <div class="card-header">
                    <h3 class="float-left">Búsqueda de Pedidos</h3>
                    <a href="create-pedidos.jsp" class="btn btn-success fa fa-plus float-right"></a>
                </div>
            </div>
            <table class="table table-bordered table-striped table-hover" id="myTable">
                <thead>
                    <tr>
                        <th>Id Pedido</th>
                        <th>Trabajo</th>
                        <th>Paciente</th>
                        <th>Odontologo</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        try {
                            int p = -1;
                            for (Pedidos l : Listar) {
                                p = p + 1;
                    %>
                    <tr>
                        <td><%=l.getIdpedidos() %></td>
                        <td><%=l.getTipoTrabajo()%></td>
                        <td><%=l.getPaciente()%></td>
                        <td><%=l.getOdontologo().getIdOdontologos() %></td>
                        <td>
                            <% if (session.getAttribute("rol").equals("1")
                                        || session.getAttribute("rol").equals("2")
                                        || session.getAttribute("rol").equals("3")) { %>
                            <div class="btn-group btn-xs">
                                <a href="update-pedidos.jsp?Id=<%= p%>" class="btn btn-warning fa fa-pencil"></a>
                            </div>
                            <% }%>
                            <div class="btn-group btn-xs">
                                <a href="view-pedidos.jsp?Id=<%= p%>" class="btn btn-primary fa fa-eye"></a>
                            </div>
                            <% if (session.getAttribute("rol").equals("1")) {%>
                            <div class="btn-group btn-xs">
                                <a href="EliminarPedidos?Id=<%=l.getIdpedidos()%>" class="btn btn-danger fa fa-times"></a>
                            </div>
                            <% } %>
                        </td>
                    </tr>
                    <%
                            }
                        } catch (Exception s) {
                            s.printStackTrace();
                        }
                    %>
                </tbody>
            </table>
        </div>

        <!-- Footer -->
        <%@include file="unitedFooter.jsp" %><script src="media/js/jquery-3.2.1.min.js" type="text/javascript"></script>
<script src="media/js/dataTables.bootstrap.min.js"></script>
        <script src="media/js/jquery.dataTables.min.js"></script>
       
        <script>
            $(document).ready(function(){
                $('#myTable').DataTable();
            });
        </script>
</html>
    </body>
</html>
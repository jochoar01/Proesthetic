<%@page import="java.sql.SQLException"%>
<%@page import="Persistencias.Pedidos"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Busqueda de Pedidos</title>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
        <!-- Custom CSS -->
        <link rel="stylesheet" type="text/css" href="css/Styles.css">
        <link rel="stylesheet" type="text/css" href="fonts/css/font-awesome.min.css">
    </head>
    <body>
        <!-- Fixed navbar -->
        <%@include file="unitedMenu.jsp" %>
        <%
            ArrayList<Pedidos> Listar = (ArrayList<Pedidos>) session.getAttribute("Listar");
            int p = -1;
        %>
        <div class="container">
            <div class="card top70">
                <div class="card-header">
                    <h3 class="float-left">Búsqueda de Pedidos</h3>
                    <a href="create-pedidos.jsp" class="btn btn-success fa fa-plus float-right"></a>
                </div>
            </div>
            <table class="table table-bordered table-striped table-hover">
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
                        for (Pedidos l : Listar) {
                            p = p + 1;
                    %>
                    <tr>
                        <td><%=l.getCaja()%></td>
                        <td><%=l.getTipoTrabajo()%></td>
                        <td><%=l.getPaciente()%></td>
                        <td><%=l.getOdontologo()%></td>
                        <td>
                            <div class="btn-group btn-xs">
                                <a href="update-pedidos.jsp?Id=<%= p%>" class="btn btn-warning">Editar</a>
                            </div>
                            <div class="btn-group btn-xs">
                                <a href="view-pedidos.jsp?Id=<%= p%>" class="btn btn-primary">Ver</a>
                            </div>
                                <% if(session.getAttribute("rol").equals("SISTEMAS")){ %>
                            <div class="btn-group btn-xs">
                                <a href="EliminarPedidos?Id=<%=l.getIdpedidos()%>" class="btn btn-danger">Eliminar</a>
                            </div>
                            <% } %>
                        </td>
                    </tr>
                    <%
                        }
                    }
                    catch (Exception s) {
                        s.printStackTrace();
                    }
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
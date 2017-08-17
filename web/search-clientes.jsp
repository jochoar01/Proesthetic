<%@page import="Persistencias.Clinicas"%>
<%@page import="java.util.ArrayList"%>
<%
    ArrayList<Clinicas> ListaClinicas = (ArrayList<Clinicas>)session.getAttribute("ListaClinicas");
%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Busqueda de Clientes</title>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
        <!-- Custom CSS -->
        <link rel="stylesheet" type="text/css" href="css/Styles.css">
        <link rel="stylesheet" type="text/css" href="fonts/css/font-awesome.min.css">
    </head>
    <body>
        <!-- Fixed navbar -->
        <%@include file="unitedMenu.jsp" %>
        <!-- Fixed navbar -->
        <div class="container">
            <div class="card">
                <div class="card-header">
                    <h3 class="float-left">Listado de Clientes / Cl�nicas</h3>
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
                        try{
                            for (Clinicas obj : ListaClinicas) {
                    %>
                    <tr>
                        <td><%= obj.getIdClinicas() %></td>
                        <td><%= obj.getNombreClinica()%></td>
                        <td class="text-success">Activo</td>
                        <td>
                            <a href="show-clientes.jsp?pos=<%= pos+=1 %>" class="btn btn-primary"><i class="fa fa-eye"></i></a>
                            <a href="update-clientes.jsp?pos=<%= pos %>" class="btn btn-warning"><i class="fa fa-pencil"></i></a>
                            <% if(objUsuario.getRol().equals("SISTEMAS")){ %>
                            <a href="EliminarClinicas?id=<%= obj.getIdClinicas()%>" class="btn btn-danger"><i class="fa fa-times"></i></a>
                            <% } %>
                        </td>
                    </tr>
                    <%
                            }
                        }catch(Exception e){
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
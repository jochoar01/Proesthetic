<%@page import="Persistencias.Logs"%>
<%@page import="java.util.ArrayList"%>
<%
    ArrayList<Logs> Listar = (ArrayList<Logs>) session.getAttribute("ListarLogs");
    int p = -1;
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
                    <h3 class="float-left">Listado de logs</h3>
                </div>
            </div>
            <div class="table-responsive">
                <table id="tabla" class="table table-stripped table-hover table-striped">
                    <thead class="thead-inverse">
                        <tr>
                            <th>IdLog</th>
                            <th>Fecha</th>
                            <th>Rol</th>
                            <th>Usuario</th>
                            <th>Acción</th>
                        </tr>
                    </thead>
                    <tbody>
                    <%
                        try {
                            for (Logs l : Listar) {
                                p = p + 1;
                    %> 
                        <tr>
                            <td><%=l.getIdlog()%></td>
                            <td><%=l.getFecha()%></td>
                            <td><%=l.getRol() %></td>                           
                            <td><%=l.getUsuario()%></td>
                            <td><%=l.getAccion()%></td>
                    <%
                            }
                        } catch (Exception s) {
                            s.printStackTrace();
                        }
                    %>
                    </tbody>
                    
                </table>
            </div>
        </div>
        <!-- Footer -->
        <%@include file="unitedFooter.jsp" %>

    </body>
</html>
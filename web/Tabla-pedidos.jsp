<%@page import="java.sql.SQLException"%>
<%@page import="Persistencias.Pedidos"%>
<%@page import="java.util.ArrayList"%>



<!DOCTYPE html>
<html lang="es">
    <%@include file="unitedhead.jsp" %>
    <body>
        <!-- Fixed navbar -->
        <%@include file="unitedMenu.jsp" %>
        <!-- Fixed navbar --> <%
            ArrayList<Pedidos> Listar = (ArrayList<Pedidos>) session.getAttribute("Listar");
            int p = -1;
        %>
        <div class="container-fluid">
            <div class="card top70">
                <div class="card-header">
                    <h3 class="float-left">Busqueda de Pedidos</h3>
                    <a href="create-pedidos.jsp" class="btn btn-success fa fa-plus float-right"></a>
                </div>
            </div>
            <div class="table-responsive">
                <table id="tabla" class="table table-stripped table-hover table-striped">
                    <thead class="thead-inverse">
                        <tr>
                            <th>Pedido</th>
                            <th>Caja</th>
                            <th>Clinica</th>
                         
                            <th>Paciente</th>
                            <th>Orden</th>
                            <th>antagonista</th>
                            <th>Fecha de Entrada</th>
                            <th>Doctor</th>
                            <th>Trabajo</th>
                            <th>Fecha de Entrega</th>
                            <th>Prueba 1</th>
                            <th>Prueba 2</th>
                            <th>Prueba 3</th>
                            <th>Estado</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                          <%
                              String hab,col;
                        try {
                            for (Pedidos l : Listar) {
                                p = p + 1;
                                
                                
                               if(l.getHabilitado()==true){
                                hab="Habilitado";
                                col="text-success";
                               } else{
                               
                               hab="Inhabilitado";
                               col="text-danger";
                               }


                    %> 
                        <tr>
                            <td><%=l.getIdpedidos()%></td>
                            <td><%=l.getCaja()%></td>
                            <td><%=l.getClinica()%></td>                           
                            <td><%=l.getPaciente()%></td>
                            <td><%=l.getOrden()%></td>
                            <td><%=l.getAntagonista()%></td>
                            <td><%=l.getFechaEntrada()%></td>
                            <td><%=l.getOdontologo()%></td>
                            <td><%=l.getTipoTrabajo()%></td>
                            <td><%=l.getFechaEntrega()%></td>
                            <td><%=l.getPrueba1()%></td>
                            <td><%=l.getPrueba2()%></td>
                            <td><%=l.getPrueba3()%></td>
                            <td class="<%=col%>"><%=hab%></td>
                            <td>
                                
                                <a href="update-pedidos.html" class="btn btn-warning"><i class="fa fa-pencil"></i></a>
                                <a href="#" class="btn btn-danger"><i class="fa fa-times"></i></a>
                            </td>
                     
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
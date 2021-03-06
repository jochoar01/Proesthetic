<%@page import="Persistencias.Pedidos"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="es">
    <%@include file="unitedhead.jsp" %>
    <body>
        <!-- Fixed navbar -->
        <%@include file="unitedMenu.jsp" %>
        <!-- Begin page content -->

        <%
        int pos = Integer.parseInt((String) request.getParameter("Id"));
        ArrayList<Pedidos> Listar = (ArrayList<Pedidos>) session.getAttribute("Listar");
        Pedidos obj = (Pedidos) Listar.get(pos);
        %>
        <div class="container">
            <h2>Actualización de Pedidos</h2>
            <br>
            <div class="row">
                <form method="post" action="ActualizarPedidos" class="completo">
                    <!-- End Division -->
                    <div class="form-group">
                        <label>Id:</label>
                        <input type="text" name="Id" class="form-control" placeholder="Id" value="<%= obj.getIdpedidos() %>" readonly>
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <label>Caja:</label>
                        <input type="text" name="Caja" class="form-control" placeholder="Caja" value="<%= obj.getCaja().getIdcajas() %>">
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <label>Clinica:</label>
                        <input type="text" name="Clinica" class="form-control" placeholder="Clinica" value="<%= obj.getClinica().getIdsede() %>">
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <label>Paciente:</label>
                        <input type="text" name="Paciente" class="form-control" placeholder="Paciente" value="<%= obj.getPaciente() %>">
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <label>Orden:</label>
                        <input type="text" name="Orden" class="form-control" placeholder="Orden" value="<%= obj.getOrden() %>">
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <label>Antagonista</label>
                        <input  name="Antagonista" type="text" class="form-control" value="<%=obj.getAntagonista()%>">
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <label>Fecha de entrada (YYYY-MM-DD)</label>
                        <input type="text" class="form-control" name="Fecha_entrada" value="<%=obj.getFechaEntrada()%>" readonly>
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <label>Odontologo</label>
                        <input name="Odontologo" type="text" class="form-control" value="<%=obj.getOdontologo().getIdOdontologos()%>" >
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <label>Tipo de trabajo</label>
                        <input name="Tipo_trabajo" type="text" class="form-control" value="<%=obj.getTipoTrabajo()%>">
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <label>Fecha de Entrega (YYYY-MM-DD)</label>
                        <input name="Fecha_entrega" type="text" class="form-control" value="<%=obj.getFechaEntrega()%>" readonly>
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <label>Prueba 1</label>
                        <input name="Prueba1" type="text" class="form-control" value="<%=obj.getPrueba1().getIdprocesos()%>">
                    </div>
                    <!--End Division-->
                    <div class="form-group">
                        <label>Prueba 2</label>
                        <input name="Prueba2" type="text" class="form-control" value="<%=obj.getPrueba2().getIdprocesos()%>">
                    </div>
                    <!--End Division-->
                    <div class="form-group">
                        <label>Prueba 3</label>
                        <input name="Prueba3" type="text" class="form-control" value="<%=obj.getPrueba3().getIdprocesos()%>">
                    </div>
                    <!--End Division-->
                    <div class="form-group">
                        <input type="submit" Value="Guardar" class="btn btn-success btn-lg btn-block">
                        <a href="javascript:history.go(-1);" class="btn btn-danger btn-lg btn-block">Cancelar</a>
                    </div>
                    <!-- End Division -->
                </form>
            </div>
            <!-- End Row -->
        </div>
        <!-- End Complete Grid -->
        <%@include file="unitedFooter.jsp" %>

    </body>
</html>
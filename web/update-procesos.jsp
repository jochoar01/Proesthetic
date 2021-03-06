<%@page import="java.util.ArrayList"%>
<%@page import="Persistencias.Procesos"%>
<%
    Integer pos = null;
    ArrayList<Procesos> ListaProcesos = null;
    Procesos obj = null;
    try
    {
        pos = Integer.parseInt((String)request.getParameter("site"));
        ListaProcesos = (ArrayList<Procesos>)session.getAttribute("Listarprocesos");
        obj = (Procesos)ListaProcesos.get(pos);
    }
    catch(Exception e) {
        System.out.println(e.getMessage());
        response.sendRedirect("index.jsp");
    }
%>
<!DOCTYPE html>
<html lang="es">
    <%@include file="unitedhead.jsp" %>
    <body>
        <!-- Fixed navbar -->
        <%@include file="unitedMenu.jsp" %>
        <!-- Begin page content -->
        <div class="container">
            <h2>Actualizaci�n de Procesos</h2>
            <br>
            <div class="row">
                <form method="post" action="ActualizarProcesos" class="completo">
                    <div class="form-group">
                        <label>N�mero de proceso:</label>
                        <input type="number" name="id" value="<%= obj.getIdprocesos()%>" class="form-control" readonly>
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <label>Proceso:</label>
                        <input type="text" name="nombre" class="form-control" value="<%= obj.getProceso()%>" placeholder="Nombre Proceso" autofocus>
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <label>Tipo de Trabajo</label>
                        <input type="text" name="idtrabajo" class="form-control" value="<%= obj.getTrabajo() %>" placeholder="Escriba el tipo de trabajo">
                        <!--
                        <select name="idtrabajo" class="form-control">
                            <option value="">Seleccione...</option>
                            <option value="1" selected>Corona</option>
                            <option value="2">Calza</option>
                            <option value="3">Retenedor</option>
                        </select>
                        -->
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <label>Estado</label>
                        <select name="estado" class="form-control">
                        <%
                            if (obj.getHabilitado().equals("true")) {
                                %><option value="true" selected>Habilitado</option><option value="false" >Inhabilitado</option><%
                            } else {
                                %><option value="true">Habilitado</option><option value="false" selected>Inhabilitado</option><%
                            }
                        %>
                        </select>
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <input type="submit" Value="Actualizar Proceso" class="btn btn-success btn-lg btn-block">
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
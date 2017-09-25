<%@page import="java.util.ArrayList"%>
<%@page import="Persistencias.Clinicas"%>
<%@page import="Persistencias.Sedes"%>
<%
    Integer pos = null;
    ArrayList<Sedes> ListaSedes = null;
    Sedes obj = null;
    ArrayList<Clinicas> Listado = null;
    try
    {
        pos = Integer.parseInt((String)request.getParameter("site"));
        ListaSedes = (ArrayList<Sedes>)session.getAttribute("ListarSedes");
        obj = (Sedes)ListaSedes.get(pos);
        Listado = (ArrayList<Clinicas>) session.getAttribute("ListaClinicas");
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
            <h2>Actualización de Sedes</h2>
            <br>
            <div class="row">
                <form method="post" class="completo" action="ActualizarSedes">
                    <div class="form-group">
                        <label>Id Sede</label>
                        <input type="text" name="id" class="form-control" placeholder="Número Id de Sede." value="<%= obj.getIdsede()%>" readonly>
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <label>Nombre Sede</label>
                        <input type="text" name="nombre" class="form-control" placeholder="Nombre de la Sede." value="<%= obj.getSede() %>">
                    </div>
                    <!-- End Divicion -->
                    <div class="form-group">
                        <label>Clinica / Cliente</label>
                        <select name="clinica" class="form-control" readonly>
                        <%
                        try {
                            for (Clinicas lmnt : Listado) {
                                if (obj.getClinica().getIdClinicas() == lmnt.getIdClinicas()) {
                                    %><option value="<%= lmnt.getIdClinicas()%>" selected><%= lmnt.getNombreClinica()%></option><%
                                } else {
                                    %><option value="<%= lmnt.getIdClinicas()%>"><%= lmnt.getNombreClinica()%></option><%
                                }
                            }
                        } catch (Exception e) {
                            System.out.println(e.getMessage());
                        }
                        %>
                        </select>
                    </div>
                    <!-- End Divicion -->
                    <div class="form-group">
                        <label>Estado</label>
                        <select name="estado" class="form-control">
                        <%
                        if (obj.getHabilitado()) {
                            %><option value="1" selected>Habilitado</option><option value="0" >Inhabilitado</option><%
                        } else {
                            %><option value="1">Habilitado</option><option value="0" selected>Inhabilitado</option><%
                        }
                        %>
                        </select>
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <input type="submit" Value="Actualizar Caja" class="btn btn-success btn-lg btn-block">
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
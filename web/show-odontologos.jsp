<%@page import="Persistencias.Odontologos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%
    int pos = Integer.parseInt((String)request.getParameter("id"));
    ArrayList<Odontologos> ListaClinicas = (ArrayList<Odontologos>)session.getAttribute("ListaOdontologos");
    Odontologos objOdontologo = (Odontologos)ListaClinicas.get( pos );
%>
<!DOCTYPE html>
<html lang="en">
    <%@include file="unitedhead.jsp" %>
    <body>
        <!-- Fixed navbar -->
        <%@include file="unitedMenu.jsp" %>
        <!-- Begin page content -->
        <div class="container">
            <h2>Creación de Odontologos</h2>
            <br>
            <div class="row">
                <form method="post" action="CreateOdontologos" class="completo">
                    <div class="form-group">
                        <label>Identificación:</label>
                        <input type="text" name="nombre" class="form-control" value="<%= objOdontologo.getIdOdontologos() %>" placeholder="Nombre" autofocus readonly>
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <label>Nombre:</label>
                        <input type="text" name="nombre" class="form-control" value="<%= objOdontologo.getNombreOdontologo()%>" placeholder="Nombre" readonly>
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <label>Celular:</label>
                        <input type="text" name="telefono" class="form-control" value="<%= objOdontologo.getTelefonoOdontologo()%>" placeholder="Celular" readonly>
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <label>E-mail:</label>
                        <input type="text" name="direccion" class="form-control" value="<%= objOdontologo.getEmailOdontologo()%>" placeholder="Email" readonly>
                    </div>
                    <!-- End Divicion -->
                    <div class="form-group">
                        <label>Estado</label>
                        <select name="estado" class="form-control" readonly>
                            <option value="1" selected>Habilitado</option>
                            <option value="0">Inhabilitado</option>
                        </select>
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <a href="javascript:history.go(-1);" class="btn btn-danger btn-lg btn-block">Atrás</a>
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
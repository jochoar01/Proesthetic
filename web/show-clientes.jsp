<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Persistencias.Clinicas"%>
<%@page import="java.util.ArrayList"%>
<%
    int pos = Integer.parseInt((String)request.getParameter("pos"));
    ArrayList<Clinicas> ListaClinicas = (ArrayList<Clinicas>)session.getAttribute("ListaClinicas");
    Clinicas obj = (Clinicas)ListaClinicas.get( pos );
%>
<!DOCTYPE html>
<html lang="en">
    <%@include file="unitedhead.jsp" %>
    <body>
        <!-- Fixed navbar -->
        <%@include file="unitedMenu.jsp" %>
        <!-- Begin page content -->
        <div class="container">
            <h2>Cliente (<%= obj.getNombreClinica() %>)</h2>
            <br>
            <div class="row">
                <form method="post" action="ActualizarClinicas" class="completo">
                    <div class="form-group">
                        <label>Número único de Cliente:</label>
                        <input type="number" name="id" class="form-control" value="<%= obj.getIdClinicas() %>" readonly>
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <label>Nit Clinica:</label>
                        <input type="text" name="nit" class="form-control" value="<%= obj.getNitClinicas() %>" placeholder="Nombre Clínica" readonly>
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <label>Clínica/Cliente:</label>
                        <input type="text" name="nombre" class="form-control" placeholder="Nombre Clínica" value="<%= obj.getNombreClinica() %>" readonly>
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <label>Dirección Clínica:</label>
                        <input type="text" name="nombre" class="form-control" placeholder="Nombre Clínica" value="<%= obj.getDireccionClinica() %>" readonly>
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <label>Teléfono Cíente:</label>
                        <input type="text" name="nombre" class="form-control" placeholder="Nombre Clínica" value="<%= obj.getTelefonoClinica()%>" readonly>
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <label>Estado</label>
                        <select name="estado" class="form-control" readonly>
                            <option value="1" selected>Habilitado</option>
                            <option value="0">Inhabilitado</option>
                        </select>
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <a href="javascript:history.go(-1);" class="btn btn-warning btn-lg btn-block">Atrás</a>
                    </div>
                    <!-- End Division -->
                </form>
            </div>
            <!-- End Row -->
        </div>
        <!-- End Complete Grid -->
        <%@include file="unitedFooter.jsp" %>
        <!-- jQuery first, then Tether, then Bootstrap JS. -->
        <script src="bootstrap/js/jquery.min.js"></script>
        <script src="bootstrap/js/tether.min.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
    </body>
</html>
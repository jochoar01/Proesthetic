<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Persistencias.Clinicas"%>
<%@page import="java.util.ArrayList"%>
<%
    Integer pos = null;
    ArrayList<Clinicas> ListaClinicas = null;
    Clinicas obj = null;
    try
    {
        pos = Integer.parseInt((String)request.getParameter("pos"));
        ListaClinicas = (ArrayList<Clinicas>)session.getAttribute("ListaClinicas");
        obj = (Clinicas)ListaClinicas.get( pos );
    }catch(Exception e){
        System.out.println(e.getMessage());
        response.sendRedirect("index.jsp");
    }
%>
<!DOCTYPE html>
<html lang="en">
    <%@include file="unitedhead.jsp" %>
    <body>
        <!-- Fixed navbar -->
        <%@include file="unitedMenu.jsp" %>
        <!-- Begin page content -->
        <div class="container">
            <h2>Actualización de Clientes (Clínicas)</h2>
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
                        <input type="text" name="nit" class="form-control" value="<%= obj.getNitClinicas() %>" placeholder="Nombre Clínica">
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <label>Clínica/Cliente:</label>
                        <input type="text" name="nombre" class="form-control" placeholder="Nombre Clínica" value="<%= obj.getNombreClinica() %>">
                    </div>
                    <!-- End Divicion -->
                    <div class="form-group">
                        <label>Dirección Clínica:</label>
                        <input type="text" name="direccion" class="form-control" placeholder="Nombre Clínica" value="<%= obj.getDireccionClinica() %>">
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <label>Teléfono Cíente:</label>
                        <input type="text" name="telefono" class="form-control" placeholder="Nombre Clínica" value="<%= obj.getTelefonoClinica()%>">
                    </div>
                    <!-- End Division -->
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
                        <input type="submit" Value="Actualizar Cliente/Clínica" class="btn btn-success btn-lg btn-block">
                        <a href="javascript:history.go(-1);" class="btn btn-danger btn-lg btn-block">Cancelar</a>
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
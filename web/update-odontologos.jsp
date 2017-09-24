<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Persistencias.Odontologos"%>
<%@page import="java.util.ArrayList"%>
<%
    int pos = Integer.parseInt((String)request.getParameter("id"));
    ArrayList<Odontologos> Odontologo = (ArrayList<Odontologos>)session.getAttribute("ListaOdontologos");
    Odontologos obj = (Odontologos)Odontologo.get( pos );
%>

<!DOCTYPE html>
<html lang="en">
    <%@include file="unitedhead.jsp" %>
    <body>
        <!-- Fixed navbar -->
        <%@include file="unitedMenu.jsp" %>
        <!-- Begin page content -->
        <div class="container">
            <h2>Actualización de Odontólogos</h2>
            <br>
            <div class="row">
                <form method="post" action="ActualizarOdontologo" class="completo">
                    <!-- End Division -->
                    <div class="form-group">
                        <label>Id:</label>
                        <input type="text" name="id" class="form-control" placeholder="Id" value="<%= obj.getIdOdontologos() %>" readonly>
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <label>Nombre:</label>
                        <input type="text" name="nombre" class="form-control" placeholder="Nombre" value="<%= obj.getNombreOdontologo()%>" autofocus>
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <label>Celular:</label>
                        <input type="text" name="telefono" class="form-control" placeholder="Celular" value="<%= obj.getTelefonoOdontologo()%>">
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <label>E-mail:</label>
                        <input type="text" name="direccion" class="form-control" placeholder="Email" value="<%= obj.getEmailOdontologo()%>">
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
                        <input type="submit" Value="Guardar" class="btn btn-success btn-lg btn-block">
                        <a href="#" type="submit" Value="Cancelar" class="btn btn-danger btn-lg btn-block">Cancelar</a>
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
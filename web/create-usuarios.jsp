<%@page import="Persistencias.Roles"%>
<%@page import="java.util.ArrayList"%>
<%
    ArrayList<Roles> Listado = (ArrayList<Roles>) session.getAttribute("ListarRoles");
%>
<!DOCTYPE html>
<html lang="en">
    <%@include file="unitedhead.jsp" %>
    <body>
        <!-- Fixed navbar -->
        <%@include file="unitedMenu.jsp" %>
        <!-- Begin page content -->
        <div class="container">
            <h2>Creaci�n de Usuarios</h2>
            <br>
            <div class="row">
                <form id="FormCrear" method="post" class="completo" action="create_usuarios">
                    <div class="form-group" style="display:none;">
                        <label>Id Usuario</label>
                        <input type="text" name="id" class="form-control" placeholder="Número Id del usuario" readonly>
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <label>Nombre Empleado</label>
                        <input type="text" name="nombre" class="form-control" placeholder="Nombre Empleado" autofocus>
                    </div>
                     <!-- End Division -->
                    <div class="form-group">
                        <label>Cedula</label>
                        <input type="text" name="Cedula" class="form-control" placeholder="Cedula" autofocus>
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <label>Usuario</label>
                        <input type="text" name="usuario" class="form-control" placeholder="Usuario">
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <label>Contrase�a</label>
                        <input id="contrasena" type="password" name="contrasena" class="form-control" placeholder="Contrase�a">
                    </div>
                     <!-- End Division -->
                    <!--<div class="form-group">
                        <label>Confirmar contrase�a</label>
                        <input type="password" name="contrasenaconfirm" class="form-control" placeholder="Confirmar contrase�a">
                    </div>-->
                    <!-- End Division -->
                    <div class="form-group">
                        <label>Rol de Usuario</label>
                        <select name="rol" class="form-control">
                        <%
                        try {
                            for (Roles rol : Listado) {
                                %><option value="<%= rol.getIdrol()%>"><%= rol.getRol()%></option><%
                            }
                        } catch (Exception e) {
                            System.out.println(e.getMessage());
                        }
                        %>
                        </select>
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <label>Estado</label>
                        <select name="estado" class="form-control">
                            <option value="1" selected>Habilitada</option>
                            <option value="0">Inahbilitada</option>
                        </select>
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <input type="submit" Value="Guardar Usuario" class="btn btn-success btn-lg btn-block">
                       <a href="search-usuarios.html" type="submit" Value="Cancelar" class="btn btn-danger btn-lg btn-block">Cancelar</a>
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
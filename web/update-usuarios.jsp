<%@page import="Persistencias.Roles"%>
<%
    Integer pos = null;
    ArrayList<Usuarios> ListaUsuarios = null;
    Usuarios obj = null;
    ArrayList<Roles> Listado = null;
    try
    {
        pos = Integer.parseInt((String)request.getParameter("site"));
        ListaUsuarios = (ArrayList<Usuarios>)session.getAttribute("ListarUsuarios");
        obj = (Usuarios)ListaUsuarios.get(pos);
        Listado = (ArrayList<Roles>) session.getAttribute("ListarRoles");
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
            <h2>Actualización de Usuarios</h2>
            <br>
            <div class="row">
                <form method="post" class="completo" action="ActualizarUsuarios">
                    <div class="form-group">
                        <label>Id Usuario</label>
                        <input type="number" name="id" class="form-control" placeholder="Número Id del usuario" value="<%= obj.getIdUsuarios()%>" readonly>
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <label>Nombre Empleado</label>
                        <input type="text" name="nombre" class="form-control" placeholder="Nombre Empleado" value="<%= obj.getNombreUsuario()%>" autofocus>
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <label>Cedula Empleado</label>
                        <input type="text" name="cedula" class="form-control" placeholder="Cedula Empleado" value="<%= obj.getCedula() %>">
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <label>Usuario</label>
                        <input type="text" name="usuario" class="form-control" placeholder="Usuario" value="<%= obj.getUsuario()%>">
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <label>Contraseña</label>
                        <input type="text" name="contrasena" class="form-control" placeholder="Contraseña" value="<%= obj.getPassword()%>" readonly>
                    </div>
                    <div class="form-group">
                        <label>Rol de Usuario</label>
                        <select name="rol" class="form-control">
                        <%
                        try {
                            for (Roles rol : Listado) {
                                if (obj.getRolId().getIdrol() == rol.getIdrol()) {
                                    %><option value="<%= rol.getIdrol()%>" selected><%= rol.getRol()%></option><%
                                } else {
                                    %><option value="<%= rol.getIdrol()%>"><%= rol.getRol()%></option><%
                                }
                            }
                        } catch (Exception e) {
                            System.out.println(e.getMessage());
                        }
                        %>
                        </select>
                    </div>
                    <!-- End Division -->
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
                        <input type="submit" Value="Actualizar Usuario" class="btn btn-success btn-lg btn-block">
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
<!DOCTYPE html>
<html lang="en">
    <%@include file="unitedhead.jsp" %>
    <body>
        <!-- Fixed navbar -->
        <%@include file="unitedMenu.jsp" %>
        <!-- Begin page content -->
        <div class="container">
            <h2>CreaciÃ³n de Usuarios</h2>
            <br>
            <div class="row">
                <form method="post" class="completo"  action="create_usuarios">
                    <div class="form-group" style="display:none;">
                        <label>Id Usuario</label>
                        <input type="text" name="id" class="form-control" placeholder="NÃºmero Id del usuario" readonly>
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
                        <label>Contraseña</label>
                        <input type="password" name="contrasena" class="form-control" placeholder="Contraseña">
                    </div>
                     <!-- End Division -->
                    <div class="form-group">
                        <label>Confirmar contraseña</label>
                        <input type="password" name="contrasena" class="form-control" placeholder="Confirmar contraseña">
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <label>Rol de Usuario</label>
                        <select name="rol" class="form-control">
                            <option value="1">SISTEMAS</option>
                            <option value="2">Administrador del sistema</option>
                            <option value="3">Administrador</option>
                        </select>
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <label>Estado</label>
                        <select name="estado" class="form-control">
                            <option value="1">Habilitada</option>
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
        <!-- jQuery first, then Tether, then Bootstrap JS. -->
        <script src="Assets/js/jquery.min.js"></script>
        <script src="Assets/js/tether.min.js"></script>
        <script src="Assets/js/bootstrap.min.js"></script>
    </body>
</html>
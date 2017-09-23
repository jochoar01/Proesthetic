<!DOCTYPE html>
<html lang="en">
    <%@include file="unitedhead.jsp" %>
    <body>
        <!-- Fixed navbar -->
        <%@include file="unitedMenu.jsp" %>
        <!-- Begin page content -->
        <div class="container">
            <h2>Actualización de Usuarios</h2>
            <br>
            <div class="row">
                <form method="post" class="completo">
                    <div class="form-group">
                        <label>Id Usuario</label>
                        <input type="number" name="id" class="form-control" placeholder="Número Id del usuario" value="1" readonly>
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <label>Nombre Empleado</label>
                        <input type="text" name="nombre" class="form-control" placeholder="Nombre Empleado" value="Juan Ochoa" autofocus>
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <label>Usuario</label>
                        <input type="text" name="usuario" class="form-control" placeholder="Usuario" value="jochoa">
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <label>Contraseña</label>
                        <input type="text" name="contrasena" class="form-control" placeholder="Contraseña" value="jochoas">
                    </div>
                    <div class="form-group">
                        <label>Rol de Usuario</label>
                        <select name="rol" class="form-control">
                            <option value="">Seleccine...</option>
                            <option value="1">Gerente</option>
                            <option value="2" selected>Administrador del Sistema</option>
                            <option value="3">Coordinador</option>
                        </select>
                    </div>
                    <!-- End Division -->
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
                        <input type="submit" Value="Actualizar Usuario" class="btn btn-success btn-lg btn-block">
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
        <script src="bootstrap/js/jquery.min.js"></script>
        <script src="bootstrap/js/tether.min.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
    </body>
</html>
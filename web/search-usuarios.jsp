<!DOCTYPE html>
<html lang="es">
    <%@include file="unitedhead.jsp" %>
    <body>
        <!-- Fixed navbar -->
        <%@include file="unitedMenu.jsp" %>
        <!-- Fixed navbar -->
        <div class="container">
            <div class="card">
                <div class="card-header">
                    <h3 class="float-left">Listado de Usuarios</h3>
                    <a href="create-usuarios.html" class="btn btn-success fa fa-plus float-right"></a>
                </div>
            </div>
            <table id="tabla" class="table table-stripped table-hover table-striped">
                <thead class="thead-inverse">
                    <tr>
                        <th>Id</th>
                        <th>Usuario</th>
                        <th>Contraseña</th>
                        <th>Rol</th>
						<th>Empleado</th>
                        <th>Estado</th>
                        <th>Editar</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>UsuarioUno</td>
                        <td>ContrasenaUno</td>
                        <td>Rol Usuario</td>
                        <td>Nombre Empleado</td>
                        <td class="text-success">Activo</td>
                        <td>
                            <a href="update-usuarios.html" class="btn btn-warning"><i class="fa fa-pencil"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>UsuarioDos</td>
                        <td>ContrasenaDos</td>
                        <td>Rol Usuario</td>
                        <td>Nombre Empleado</td>
                        <td class="text-success">Activo</td>
                        <td>
                            <a href="update-usuarios.html" class="btn btn-warning"><i class="fa fa-pencil"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>UsuarioTres</td>
                        <td>ContrasenaTres</td>
                        <td>Rol Usuario</td>
                        <td>Nombre Empleado</td>
                        <td class="text-success">Activo</td>
                        <td>
                            <a href="update-usuarios.html" class="btn btn-warning"><i class="fa fa-pencil"></i></a>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <!-- Footer -->
        <footer class="footer">
            <div class="container">
                <span class="text-muted">ProEsthetic SAS.</span>
                <small class="float-right"><b>Desarrollado por:</b> J.D.P.</small>
            </div>
        </footer>
        <!-- jQuery first, then Tether, then Bootstrap JS. -->
        <script src="bootstrap/js/jquery.min.js"></script>
        <script src="bootstrap/js/tether.min.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
    </body>
</html>
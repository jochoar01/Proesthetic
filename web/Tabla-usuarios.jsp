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
                    <h3 class="float-left">Tabla de Usuarios</h3>
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
                        <th>Opciones</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>juan.ochoa</td>
                        <td>jochoas</td>
                        <td>Administador del Sistema</td>
                        <td>Juan Ochoa Rivillas</td>
                        <td class="text-success">Activo</td>
                        <td>
                            <a href="update-usuarios.html" class="btn btn-warning"><i class="fa fa-pencil"></i></a>
							<a href="#" class="btn btn-danger"><i class="fa fa-times"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>polette.diaz</td>
                        <td>poletcita</td>
                        <td>Empleado</td>
                        <td>Polette Diaz Araque</td>
                        <td class="text-success">Activo</td>
                        <td>
                            <a href="update-usuarios.html" class="btn btn-warning"><i class="fa fa-pencil"></i></a>
							<a href="#" class="btn btn-danger"><i class="fa fa-times"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>daniel.lopez</td>
                        <td>jackdaniels</td>
                        <td>Administrador</td>
                        <td>Daniel López Echavarría</td>
                        <td class="text-success">Activo</td>
                        <td>
                            <a href="update-usuarios.html" class="btn btn-warning"><i class="fa fa-pencil"></i></a>
							<a href="#" class="btn btn-danger"><i class="fa fa-times"></i></a>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <!-- Footer -->
        <%@include file="unitedFooter.jsp" %>
        <!-- jQuery first, then Tether, then Bootstrap JS. -->
        <script src="bootstrap/js/jquery.min.js"></script>
        <script src="bootstrap/js/tether.min.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
    </body>
</html>
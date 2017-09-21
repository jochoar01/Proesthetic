<!DOCTYPE html>
<html lang="es">
    <%@include file="unitedhead.jsp" %>
    <body>
        <!-- Fixed navbar -->
        <%@include file="unitedMenu.jsp" %>
        <!-- Fixed navbar -->
        <div class="container-fluid">
            <div class="card top70">
                <div class="card-header">
                    <h3 class="float-left">Tabla de Odontologos</h3>
                    <a href="create-odontologos.html" class="btn btn-success fa fa-plus float-right"></a>
                </div>
            </div>
            <div class="table-responsive">
                <table id="tabla" class="table table-stripped table-hover table-striped">
                <thead class="thead-inverse">
                    <tr>
                        <th>Id</th>
                        <th>Nombre</th>
                        <th>Celular</th>
                        <th>Email</th>
                        <th>Estado</th>
                        <th>Opciones</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>Juan Ochoa</td>
                        <td>3013013011</td>
                        <td>Juan.Ochoa@proesthetic.com</td>
                        <td class="text-success">Activo</td>
                        <td>
							<a href="update-odontologos.html" class="btn btn-warning"><i class="fa fa-pencil"></i></a>
							<a href="#" class="btn btn-danger"><i class="fa fa-times"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>Polette Diaz</td>
                        <td>3013013012</td>
                        <td>Polette.Diaz@proesthetic.com</td>
                        <td class="text-success">Activo</td>
                        <td>
                            <a href="update-odontologos.html" class="btn btn-warning"><i class="fa fa-pencil"></i></a>
							<a href="#" class="btn btn-danger"><i class="fa fa-times"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>Daniel Lopez</td>
                        <td>3013013013</td>
                        <td>Daniel.Lopez@proesthetic.com</td>
                        <td class="text-success">Activo</td>
                        <td>
                            <a href="update-odontologos.html" class="btn btn-warning"><i class="fa fa-pencil"></i></a>
			    <a href="#" class="btn btn-danger"><i class="fa fa-times"></i></a>
                            <a href="update-pedidos.html" class="btn btn-primary"><i class="fa fa-eye"></i></a>
                        </td>
                    </tr>
                </tbody>
            </table>
            </div>
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
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
                    <h3 class="float-left">Tabla de Sedes</h3>
                    <a href="create-sedes.html" class="btn btn-success fa fa-plus float-right"></a>
                </div>
            </div>
            <table id="tabla" class="table table-stripped table-hover table-striped">
                <thead class="thead-inverse">
                    <tr>
                        <th>Id</th>
                        <th>Sede</th>
                        <th>Clínica</th>
                        <th>Estado</th>
                        <th>Opciones</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>Sede Antioquia</td>
                        <td>Orthoplan</td>
                        <td class="text-success">Activo</td>
                        <td>
                            <a href="update-sedes.html" class="btn btn-warning"><i class="fa fa-pencil"></i></a>
							<a href="#" class="btn btn-danger"><i class="fa fa-times"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>Sede Atlantico</td>
                        <td>Orthoplan</td>
                        <td class="text-success">Activo</td>
                        <td>
                            <a href="update-sedes.html" class="btn btn-warning"><i class="fa fa-pencil"></i></a>
							<a href="#" class="btn btn-danger"><i class="fa fa-times"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>Sede Itagüí</td>
                        <td>Prevenga</td>
                        <td class="text-success">Activo</td>
                        <td>
                            <a href="update-sedes.html" class="btn btn-warning"><i class="fa fa-pencil"></i></a>
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
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
                    <h3 class="float-left">Listado de Sedes</h3>
                    <a href="create-sedes.jsp" class="btn btn-success fa fa-plus float-right"></a>
                </div>
            </div>
            <table id="tabla" class="table table-stripped table-hover table-striped">
                <thead class="thead-inverse">
                    <tr>
                        <th>Id</th>
                        <th>Sede</th>
                        <th>Clínica</th>
                        <th>Estado</th>
                        <th>Editar</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>Sede 1</td>
                        <td>Clínica 1</td>
                        <td class="text-success">Activo</td>
                        <td>
                            <a href="update-sedes.html" class="btn btn-warning"><i class="fa fa-pencil"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>Sede 2</td>
                        <td>Clínica 2</td>
                        <td class="text-success">Activo</td>
                        <td>
                            <a href="update-sedes.html" class="btn btn-warning"><i class="fa fa-pencil"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>Sede 3</td>
                        <td>Clínica 3</td>
                        <td class="text-success">Activo</td>
                        <td>
                            <a href="update-sedes.html" class="btn btn-warning"><i class="fa fa-pencil"></i></a>
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
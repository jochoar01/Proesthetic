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
                    <h3 class="float-left">Listado de Roles</h3>
                    <a href="create-roles.jsp" class="btn btn-success fa fa-plus float-right"></a>
                </div>
            </div>
            <table id="tabla" class="table table-stripped table-hover table-striped">
                <thead class="thead-inverse">
                    <tr>
                        <th>Id</th>
                        <th>Rol</th>
                        <th>Estado</th>
                        <th>Editar</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>Gerente</td>
                        <td class="text-success">Activo</td>
                        <td>
                            <a href="update-roles.html" class="btn btn-warning"><i class="fa fa-pencil"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>Administrador</td>
                        <td class="text-success">Activo</td>
                        <td>
                            <a href="update-roles.html" class="btn btn-warning"><i class="fa fa-pencil"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>Cajero</td>
                        <td class="text-success">Activo</td>
                        <td>
                            <a href="update-roles.html" class="btn btn-warning"><i class="fa fa-pencil"></i></a>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <!-- Footer -->
        <%@include file="unitedFooter.jsp" %>
        <!-- jQuery first, then Tether, then Bootstrap JS. -->
        <script src="Assets/js/jquery.min.js"></script>
        <script src="Assets/js/tether.min.js"></script>
        <script src="Assets/js/bootstrap.min.js"></script>
    </body>
</html>
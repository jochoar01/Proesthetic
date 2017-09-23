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
                    <h3 class="float-left">Listado de Cajas</h3>
                    <a href="create-cajas.jsp" class="btn btn-success fa fa-plus float-right"></a>
                </div>
            </div>
            <table id="tabla" class="table table-stripped table-hover table-striped">
                <thead class="thead-inverse">
                    <tr>
                        <th>Id</th>
                        <th>Caja</th>
                        <th>Estado</th>
                        <th>Editar</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>Caja A1</td>
                        <td class="text-success">Activo</td>
                        <td>
                            <a href="update-cajas.html" class="btn btn-warning fa fa-pencil"></a>
                        </td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>Caja A2</td>
                        <td class="text-success">Activo</td>
                        <td>
                            <a href="update-cajas.html" class="btn btn-warning fa fa-pencil"></a>
                        </td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>Caja A3</td>
                        <td class="text-success">Activo</td>
                        <td>
                            <a href="update-cajas.html" class="btn btn-warning fa fa-pencil"></a>
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
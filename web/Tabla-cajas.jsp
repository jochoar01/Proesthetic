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
                    <h3 class="float-left">Tabla cajas</h3>
                    <a href="create-cajas.jsp" class="btn btn-success fa fa-plus float-right"></a>
                </div>
            </div>
            <table id="tabla" class="table table-stripped table-hover table-striped">
                <thead class="thead-inverse">
                    <tr>
                        <th>Id</th>
                        <th>Caja</th>
                        <th>Estado</th>
                        <th>Opciones</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>Caja A1</td>
                        <td class="text-success">Activo</td>
                        <td>
                            <a href="update-cajas.html" class="btn btn-warning"><i class="fa fa-eye"></i></a>
							<a href="#" class="btn btn-danger"><i class="fa fa-times"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>Caja A2</td>
                        <td class="text-success">Activo</td>
                        <td>
                            <a href="update-cajas.html" class="btn btn-warning"><i class="fa fa-eye"></i></a>
							<a href="#" class="btn btn-danger"><i class="fa fa-times"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>Caja A3</td>
                        <td class="text-success">Activo</td>
                        <td>
                            <a href="update-cajas.html" class="btn btn-warning"><i class="fa fa-eye"></i></a>
							<a href="#" class="btn btn-danger"><i class="fa fa-times"></i></a>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <!-- Footer -->
        <%@include file="unitedFooter.jsp" %>

    </body>
</html>
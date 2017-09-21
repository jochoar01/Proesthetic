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
                    <h3 class="float-left">Tablas</h3>
                </div>
            </div>
            <table id="tabla" class="table table-stripped table-hover table-striped">
                <thead class="thead-inverse">
                    <tr>
                        <th>ID</th>
                        <th>Nombre Tabla</th>
                        <th>Editar</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td> 1 </td>
                        <td> Pedidos </td>
                        <td>
                            <a href="Tabla-pedidos.html" class="btn btn-warning"><i class="fa fa-pencil"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td> 2 </td>
                        <td> Odontologos </td>
                        <td>
                            <a href="Tabla-odontologos.html" class="btn btn-warning"><i class="fa fa-pencil"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td> 3 </td>
                        <td> Cajas </td>
                        <td>
                            <a href="Tabla-cajas.html" class="btn btn-warning"><i class="fa fa-pencil"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td> 4 </td>
                        <td> Tipo de trabajos </td>
                        <td>
                            <a href="Tabla-tipotrabajo.html" class="btn btn-warning"><i class="fa fa-pencil"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td> 5 </td>
                        <td> Procesos </td>
                        <td>
                            <a href="Tabla-procesos.html" class="btn btn-warning"><i class="fa fa-pencil"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td> 6 </td>
                        <td> Clinicas </td>
                        <td>
                            <a href="Tabla-clientes.html" class="btn btn-warning"><i class="fa fa-pencil"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td> 7 </td>
                        <td> Sedes </td>
                        <td>
                            <a href="Tabla-sedes.html" class="btn btn-warning"><i class="fa fa-pencil"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td> 8 </td>
                        <td> Roles </td>
                        <td>
                            <a href="Tabla-roles.html" class="btn btn-warning"><i class="fa fa-pencil"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td>9</td>
                        <td>Usuarios</td>
                        <td>
                            <a href="Tabla-usuarios.html" class="btn btn-warning"><i class="fa fa-pencil"></i></a>
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
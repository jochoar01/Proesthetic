<!DOCTYPE html>
<html lang="es">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Tabla DB de Pedidos</title>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
        <!-- Custom CSS -->
        <link rel="stylesheet" type="text/css" href="css/Styles.css">
        <link rel="stylesheet" type="text/css" href="fonts/css/font-awesome.min.css">
    </head>
    <body>
        <!-- Fixed navbar -->
        <nav id="barranav" class="navbar navbar-toggleable-md navbar-inverse fixed-top bg-inverse">
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
            </button>
            <a class="navbar-brand" href="inicio.html">ProEsthetic</a>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="search-pedidos.html">Pedidos <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Configuración
                        </a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="search-cajas.html">Cajas</a>
                            <a class="dropdown-item" href="search-procesos.html">Procesos</a>
                            <a class="dropdown-item" href="search-roles.html">Roles</a>
                            <a class="dropdown-item" href="search-usuarios.html">Usuarios</a>
                            <a class="dropdown-item" href="Tablas.html">Tablas</a>
							<a class="dropdown-item" href="search-tipotrabajo.html">Tipos de Trabajos</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Facturación
                        </a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="search-facturas.html">Cuentas de Cobro</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Administración
                        </a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="search-clientes.html">Clínicas</a>
                            <a class="dropdown-item" href="search-sedes.html">Sedes</a>
                            <a class="dropdown-item" href="search-odontologos.html">Odontólogos</a>
                        </div>
                    </li>
                </ul>
            </div>
        </nav>
        <!-- Fixed navbar -->
        <div class="container-fluid">
            <div class="card top70">
                <div class="card-header">
                    <h3 class="float-left">Búsqueda de Pedidos</h3>
                    <a href="create-pedidos.html" class="btn btn-success fa fa-plus float-right"></a>
                </div>
            </div>
            <div class="table-responsive">
                <table id="tabla" class="table table-stripped table-hover table-striped">
                    <thead class="thead-inverse">
                        <tr>
                            <th>Pedido</th>
                            <th>Caja</th>
                            <th>Clinica</th>
                            <th>Sede</th>
                            <th>Paciente</th>
                            <th>Orden</th>
                            <th>antagonista</th>
                            <th>Entrada</th>
                            <th>Doctor</th>
                            <th>Trabajo</th>
                            <th>Entrega</th>
                            <th>Prueba 1</th>
                            <th>Prueba 2</th>
                            <th>Prueba 3</th>
                            <th>Estado</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Pedido 1</td>
                            <td>Caja 1</td>
                            <td>Clinica 1</td>
                            <td>Sede 1</td>
                            <td>Paciente 1</td>
                            <td>Orden 1</td>
                            <td>antagonista 1</td>
                            <td>Entrada 1</td>
                            <td>Doctor 1</td>
                            <td>Trabajo 1</td>
                            <td>Entrega 1</td>
                            <td>Prueba 1</td>
                            <td>Prueba 2</td>
                            <td>Prueba 3</td>
                            <td class="text-success">Cancelado</td>
                            <td>
                                <a href="update-pedidos.html" class="btn btn-primary"><i class="fa fa-eye"></i></a>
                                <a href="update-pedidos.html" class="btn btn-warning"><i class="fa fa-pencil"></i></a>
								<a href="#" class="btn btn-danger"><i class="fa fa-times"></i></a>
                            </td>
                        </tr>
                        <tr>
                            <td>Pedido 2</td>
                            <td>Caja 2</td>
                            <td>Clinica 2</td>
                            <td>Sede 2</td>
                            <td>Paciente 2</td>
                            <td>Orden 2</td>
                            <td>antagonista 2</td>
                            <td>Entrada 2</td>
                            <td>Doctor 2</td>
                            <td>Trabajo 2</td>
                            <td>Entrega 2</td>
                            <td>Prueba 1</td>
                            <td>Prueba 2</td>
                            <td>Prueba 3</td>
                            <td class="text-success">Cancelado</td>
                            <td>
                                <a href="update-pedidos.html" class="btn btn-primary"><i class="fa fa-eye"></i></a>
                                <a href="update-pedidos.html" class="btn btn-warning"><i class="fa fa-pencil"></i></a>
								<a href="#" class="btn btn-danger"><i class="fa fa-times"></i></a>
                            </td>
                        </tr>
                        <tr>
                            <td>Pedido 3</td>
                            <td>Caja 3</td>
                            <td>Clinica 3</td>
                            <td>Sede 3</td>
                            <td>Paciente 3</td>
                            <td>Orden 3</td>
                            <td>antagonista 3</td>
                            <td>Entrada 3</td>
                            <td>Doctor 3</td>
                            <td>Trabajo 3</td>
                            <td>Entrega 3</td>
                            <td>Prueba 1</td>
                            <td>Prueba 2</td>
                            <td>Prueba 3</td>
                            <td class="text-success">Cancelado</td>
                            <td>
                                <a href="update-pedidos.html" class="btn btn-primary"><i class="fa fa-eye"></i></a>
                                <a href="update-pedidos.html" class="btn btn-warning"><i class="fa fa-pencil"></i></a>
								<a href="#" class="btn btn-danger"><i class="fa fa-times"></i></a>
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
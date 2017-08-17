<!DOCTYPE html>
<html lang="es">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Tablas de Base de Datos</title>
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
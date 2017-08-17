<!DOCTYPE html>
<html lang="es">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Crear Facturas</title>
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
        <div class="container">
            <div class="row float-right tabla1">
                <button class="btn btn-success"><span class="fa fa-print"></span> Imprimir</button>
            </div>
            <div class="row tabla2">
                <h3>Factura Cliente - Cliente 1</h3>
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
                            <th>Odontólogo</th>
                            <th>Trabajo</th>
                            <th>Entrega</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>12</td>
                            <td>A8</td>
                            <td>Sonria</td>
                            <td>Sede Centro</td>
                            <td>Juan Ochoa</td>
                            <td>2597</td>
                            <td>Si</td>
                            <td>2017-04-18</td>
                            <td>Polette Díaz</td>
                            <td>Corona</td>
                            <td>2017-04-30</td>
                        </tr>
                        <tr>
                            <td>13</td>
                            <td>A9</td>
                            <td>Sonria</td>
                            <td>Sede Centro</td>
                            <td>Jose Ochoa</td>
                            <td>2598</td>
                            <td>Si</td>
                            <td>2017-04-18</td>
                            <td>Polette Díaz</td>
                            <td>Corona</td>
                            <td>2017-04-30</td>
                        </tr>
                        <tr>
                            <td>14</td>
                            <td>B1</td>
                            <td>Sonria</td>
                            <td>Sede Centro</td>
                            <td>Carmen Ochoa</td>
                            <td>2599</td>
                            <td>Si</td>
                            <td>2017-04-18</td>
                            <td>Polette Díaz</td>
                            <td>Corona</td>
                            <td>2017-04-30</td>
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
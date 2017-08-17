<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Busqueda de Facturas</title>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
        <!-- Custom CSS -->
        <link rel="stylesheet" type="text/css" href="css/Styles.css">
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
        <!-- Begin page content -->
        <div class="container">
            <h2>Consulta de Clientes (Clínicas)</h2>
            <br>
            <div class="row">
                <form method="post" id="searchForm" class="completo">
                    <div class="form-group">
                        <label>Clínica/Cliente:</label>
                        <select class="form-control" name="Cliente" autofocus>
                            <option value="1">Dentisalud</option>
                            <option value="2">Sonría</option>
                            <option value="3">Oral Laser</option>
                            <option value="4">Oral Centry</option>
                        </select>
                    </div>
                    <!-- End Divicion -->
                    <div class="form-group">
                        <input type="submit" Value="Consultar Cliente/Clinica" class="btn btn-success btn-lg btn-block">
                    </div>
                    <!-- End Division -->
                </form>
            </div>
            <!-- End Row -->
        </div>
        <!-- End Complete Grid -->
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
        <script type="text/javascript">
            $(document).ready(function(){
                //Eventos formulario
                $("#searchForm").submit(function(event){
                    // Stop form from submitting normally
                    event.preventDefault();
                    //Open 2nd document
                    window.location.href="create-facturas.html";
                });
            });
        </script>
    </body>
</html>
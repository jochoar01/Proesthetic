<!DOCTYPE html>
<html lang="es">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Proesthetic</title>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" type="text/css" href="Assets/css/bootstrap.min.css">
        <!-- Custom CSS -->
        <link rel="stylesheet" type="text/css" href="Assets/css/Styles.css">
    </head>
    <body>
        <!-- Fixed navbar -->
        <nav id="barranav" class="navbar navbar-toggleable-md navbar-inverse fixed-top bg-inverse">
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <a class="navbar-brand" href="#">ProEsthetic</a>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" id="myBtn" href="#">Iniciar Sessión <span class="sr-only">(current)</span></a>
                    </li>
                </ul>
            </div>
        </nav>
        <!-- Begin page content -->
        <div class="imgc">
            <img src="Imagenes/ProEstheticSimboloCopiado.jpg" width="320" height="250" class="img-circle person" alt="Random Name">
        </div>
        <!-- Modal -->
        <div class="modal fade" id="myModal" role="dialog">
            <div class="modal-dialog">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header" style="padding:35px 50px;">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4><span class="glyphicon glyphicon-lock"></span> Iniciar Sesión</h4>
                    </div>
                    <div class="modal-body" style="padding:40px 50px;">
                        <form id="searchForm" action="UsuarioLogin" method="post">
                            <div class="form-group">
                                <label for="usrname"><span class="glyphicon glyphicon-user"></span> Nombre de usuario</label>
                                <input type="text" class="form-control" name="usrname" id="usrname" placeholder="Ingresar Usuario">
                            </div>
                            <div class="form-group">
                                <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> Contraseña</label>
                                <input type="password" class="form-control" id="psw" name="psw" placeholder="Ingresar Contraseña">
                            </div>
                            <!--
                            <div class="checkbox">
                                <label>
                                <input type="checkbox" checked>Recordarme</label>
                            </div>
                            -->
                            <button type="submit" class="btn btn-success btn-block"><span class="glyphicon glyphicon-off"></span> Iniciar Sesión</button>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger btn-default pull-left" data-dismiss="modal">
                            <span class="glyphicon glyphicon-remove"></span> Cancelar</button>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="unitedFooter.jsp" %>

    </body>
</html>
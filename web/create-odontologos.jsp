<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Crear OdontÃ³logos</title>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
        <!-- Custom CSS -->
        <link rel="stylesheet" type="text/css" href="css/Styles.css">
        <link rel="stylesheet" type="text/css" href="fonts/css/font-awesome.min.css">
    </head>
    <body>
        <!-- Fixed navbar -->
        <%@include file="unitedMenu.jsp" %>
        <!-- Begin page content -->
        <div class="container">
            <h2>Creación de Odontologos</h2>
            <br>
            <div class="row">
                <form method="post" action="CreateOdontologos" class="completo">
                    <div class="form-group">
                        <label>Nombre:</label>
                        <input type="text" name="nombre" class="form-control" placeholder="Nombre" autofocus>
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <label>Celular:</label>
                        <input type="text" name="telefono" class="form-control" placeholder="Celular">
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <label>E-mail:</label>
                        <input type="text" name="direccion" class="form-control" placeholder="Email">
                    </div>
                    <!-- End Divicion -->
                    <div class="form-group">
                        <label>Estado</label>
                        <select name="estado" class="form-control">
                            <option value="1">Habilitado</option>
                            <option value="0">Inhabilitado</option>
                        </select>
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <input type="submit" Value="Guardar" class="btn btn-success btn-lg btn-block">
                        <a href="search-odontologos.html" type="submit" Value="Cancelar" class="btn btn-danger btn-lg btn-block">Cancelar</a>
                    </div>
                    <!-- End Division -->
                </form>
            </div>
            <!-- End Row -->
        </div>
        <!-- End Complete Grid -->
        <%@include file="unitedFooter.jsp" %>
        <!-- jQuery first, then Tether, then Bootstrap JS. -->
        <script src="bootstrap/js/jquery.min.js"></script>
        <script src="bootstrap/js/tether.min.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
    </body>
</html>
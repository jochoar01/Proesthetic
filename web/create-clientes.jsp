<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Crear clientes</title>
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
            <h2>Creaci�n de Clientes (Cl�nicas)</h2>
            <br>
            <div class="row">
                <form method="post" action="CreateClinicas" class="completo">
                    <div class="form-group" style="display:none;">
                        <label>Id:</label>
                        <input type="number" name="id" class="form-control" readonly>
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <label>Clinica/Cliente:</label>
                        <input type="text" name="nombre" class="form-control" placeholder="Nombre Cl�nica." autofocus>
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <label>Telefono</label>
                        <input type="text" name="telefono" class="form-control" placeholder="Telefono Cl�nica." autofocus>
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <label>Direccion:</label>
                        <input type="text" name="direccion" class="form-control" placeholder="Direccion Cl�nica." autofocus>
                    </div>
                     <!-- End Division -->
                    <!--
                    <div class="form-group">
                        <label>Nit:</label>
                        <input type="text" class="form-control" placeholder="Nit" autofocus>
                    </div>
                    -->
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
                        <input class="btn btn-success btn-lg btn-block" type="submit" Value="Crear Nuevo Cliente/Cl�nica">
                        <a class="btn btn-danger btn-lg btn-block" href="javascript:history.go(-1);">Cancelar</a>
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
        <script src="bootstrap/js/bootstrap.min.js"></script>
        <script src="bootstrap/js/tether.min.js"></script>
    </body>
</html>
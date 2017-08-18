<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Crear Pedidos</title>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap.min.css">
        <!-- Custom CSS -->
        <link rel="stylesheet" type="text/css" href="css/Styles.css">
        <link rel="stylesheet" type="text/css" href="fonts/css/font-awesome.min.css">
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>


    </head>
    <body>
        <!-- Fixed navbar -->
        <%@include file="unitedMenu.jsp" %>
        <!-- Begin page content -->
        <div class="container">
            <h2>Creacion de Pedidos</h2>
            <br>
            <div class="row">
                <form action="create_pedidos" method="post" class="completo">
                    <div class="form-group">
                        <label>Caja:</label>
                        <input name="Caja" class="form-control" autofocus>                        
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <label>Clinica:</label>
                        <input name="Clinica" class="form-control" autofocus>                     
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <label>Paciente:</label>
                        <input name="Paciente" type="text" class="form-control">
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <label>Orden:</label>
                        <input name="Orden" type="text" class="form-control">
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <label>Antagonista:</label>
                        <input name="Antagonista" type="text" class="form-control">
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <label>Fecha_entrada:</label>
                        <input name="Fecha_entrada" type="text" class="form-control">
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <label>Odontologo:</label>
                        <input name="Odontologo" type="text" class="form-control">
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <label>Tipo_trabajo:</label>
                        <input name="Tipo_trabajo" type="text" class="form-control">
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <label>Fecha_entrega:</label>
                        <input name="Fecha_entrega" type="text" class="form-control">
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <label>Prueba1:</label>
                        <input name="Prueba1" type="text" class="form-control">
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <label>Prueba2:</label>
                        <input name="Prueba2" type="text" class="form-control">
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <label>Prueba3:</label>
                        <input name="Prueba3" type="text" class="form-control">
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <input type="submit" Value="Guardar" class="btn btn-success btn-lg btn-block">                      
                    </div>
                    <!-- End Division -->
                </form>
            </div>
            <!-- End Row -->
            <!-- End Complete Grid -->
            <%@include file="unitedFooter.jsp" %>
            <!-- jQuery first, then Tether, then Bootstrap JS. -->
            <script src="bootstrap/js/jquery.min.js"></script>
            <script src="bootstrap/js/tether.min.js"></script>
            <script src="bootstrap/js/bootstrap.min.js"></script>
    </body>
</html>
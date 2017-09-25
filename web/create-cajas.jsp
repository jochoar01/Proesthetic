<!DOCTYPE html>
<html lang="en">
    <%@include file="unitedhead.jsp" %>
    <body>
        <!-- Fixed navbar -->
        <%@include file="unitedMenu.jsp" %>
        <!-- Begin page content -->
        <div class="container">
            <h2>Creacion de Cajas</h2>
            <br>
            <div class="row">
                <form method="post" class="completo" action="create_caja" >
                    <!-- End Division -->
                    <div class="form-group">
                        <label>Nombre Caja</label>
                        <input type="text" class="form-control" name="nombre" placeholder="Nombre de la Caja." autofocus>
                    </div>
                    <!-- End Division -->
              
              
                    <div class="form-group">
                        <input type="submit" Value="Guardar Caja" class="btn btn-success btn-lg btn-block">
                        <a href="search-cajas.html" type="submit" Value="Cancelar" class="btn btn-danger btn-lg btn-block">Cancelar</a>
                    </div>
                    <!-- End Division -->
                </form>
            </div>
            <!-- End Row -->
        </div>
        <!-- End Complete Grid -->
        <!-- Footer -->
        <%@include file="unitedFooter.jsp" %>

    </body>
</html>
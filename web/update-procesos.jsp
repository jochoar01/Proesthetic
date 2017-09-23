<!DOCTYPE html>
<html lang="en">
    <%@include file="unitedhead.jsp" %>
    <body>
        <!-- Fixed navbar -->
        <%@include file="unitedMenu.jsp" %>
        <!-- Begin page content -->
        <div class="container">
            <h2>Actualización de Procesos</h2>
            <br>
            <div class="row">
                <form method="post" action="#" style="width:100%;">
                    <div class="form-group">
                        <label>Número Único de proceso:</label>
                        <input type="number" name="id" value="1" class="form-control" readonly>
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <label>Proceso:</label>
                        <input type="text" name="nombre" class="form-control" value="Coronado Blanco" placeholder="Nombre Proceso" autofocus>
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <label>Tipo de Trabajo</label>
                        <select name="idtrabajo" class="form-control">
                            <option value="">Seleccione...</option>
                            <option value="1" selected>Corona</option>
                            <option value="2">Calza</option>
                            <option value="3">Retenedor</option>
                        </select>
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <label>Estado</label>
                        <select name="estado" class="form-control">
                            <option value="1" selected>Habilitado</option>
                            <option value="0">Inhabilitado</option>
                        </select>
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <input type="submit" Value="Actualizar Proceso" class="btn btn-success btn-lg btn-block">
                        <a href="search-procesos.html" type="submit" Value="Cancelar" class="btn btn-danger btn-lg btn-block">Cancelar</a>
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
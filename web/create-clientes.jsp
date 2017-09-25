<!DOCTYPE html>
<html lang="en">
    <%@include file="unitedhead.jsp" %>
    <body>
        <!-- Fixed navbar -->
        <%@include file="unitedMenu.jsp" %>
        <!-- Begin page content -->
        <div class="container">
            <h2>Creación de Clientes (Clínicas)</h2>
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
                        <input type="text" name="nombre" class="form-control" placeholder="Nombre Clínica." autofocus>
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <label>Telefono</label>
                        <input type="text" name="telefono" class="form-control" placeholder="Telefono Clínica." autofocus>
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <label>Direccion:</label>
                        <input type="text" name="direccion" class="form-control" placeholder="Direccion Clínica." autofocus>
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
                        <input class="btn btn-success btn-lg btn-block" type="submit" Value="Crear Nuevo Cliente/Clínica">
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
        <script src="Assets/js/jquery.min.js"></script>
        <script src="Assets/js/bootstrap.min.js"></script>
        <script src="Assets/js/tether.min.js"></script>
    </body>
</html>
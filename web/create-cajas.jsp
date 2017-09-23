<!DOCTYPE html>
<html lang="en">
    <%@include file="unitedhead.jsp" %>
    <body>
        <!-- Fixed navbar -->
        <%@include file="unitedMenu.jsp" %>
        <!-- Begin page content -->
        <div class="container">
            <h2>Creación de Cajas</h2>
            <br>
            <div class="row">
                <form method="post" class="completo">
                    <div class="form-group" style="display:none;">
                        <label>Id Caja</label>
                        <input type="text" class="form-control" placeholder="Número Id de Caja." readonly>
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <label>Nombre Caja</label>
                        <input type="text" class="form-control" placeholder="Nombre de la Caja." autofocus>
                    </div>
                    <!-- End Divicion -->
                    <div class="form-group">
                        <label>Estado</label>
                        <select name="estado" class="form-control">
                            <option value="1">Disponible</option>
                            <option value="0">No disponible</option>
                        </select>
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
        <!-- jQuery first, then Tether, then Bootstrap JS. -->
        <script src="bootstrap/js/jquery.min.js"></script>
        <script src="bootstrap/js/tether.min.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
    </body>
</html>
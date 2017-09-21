<!DOCTYPE html>
<html lang="en">
    <%@include file="unitedhead.jsp" %>
    <body>
        <!-- Fixed navbar -->
        <%@include file="unitedMenu.jsp" %>
        <!-- Begin page content -->
        <div class="container">
            <h2>Actualización Tipo de Trabajo</h2>
            <br>
            <div class="row">
                <form method="post" class="completo">
                    <div class="form-group">
                        <label>Id Trabajo</label>
                        <input type="text" class="form-control" placeholder="Número Id del trabajo." value="1" readonly>
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <label>Tipo de Trabajo</label>
                        <input type="text" class="form-control" placeholder="Nombre tipo de trabajo." value="Corona MP" autofocus>
                    </div>
                    <!-- End Divicion -->
                    <div class="form-group">
                        <label>Estado</label>
                        <select name="estado" class="form-control">
                            <option value="1" selected>Habilitado</option>
                            <option value="0">Inhabilitado</option>
                        </select>
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <input type="submit" Value="Actualizar Tipo de Trabajo" class="btn btn-success btn-lg btn-block">
                        <a href="search-tipotrabajo.html" type="submit" Value="Cancelar" class="btn btn-danger btn-lg btn-block">Cancelar</a>
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
    </body>
</html>
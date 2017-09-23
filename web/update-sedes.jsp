<!DOCTYPE html>
<html lang="en">
    <%@include file="unitedhead.jsp" %>
    <body>
        <!-- Fixed navbar -->
        <%@include file="unitedMenu.jsp" %>
        <!-- Begin page content -->
        <div class="container">
            <h2>Actualización de Sedes</h2>
            <br>
            <div class="row">
                <form method="post" class="completo">
                    <div class="form-group">
                        <label>Id Sede</label>
                        <input type="text" class="form-control" placeholder="Número Id de Sede." value="1" readonly>
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <label>Nombre Sede</label>
                        <input type="text" class="form-control" placeholder="Nombre de la Sede." value="Marinilla" readonly>
                    </div>
                    <!-- End Divicion -->
                    <div class="form-group">
                        <label>Clinica / Cliente</label>
                        <select name="clinica" class="form-control" readonly>
                            <option value="1">Clinica Sonrisas</option>
                            <option value="2" selected>Fundación Operación Sonrisa Colombia</option>
                            <option value="3">Proesthetic</option>
                        </select>
                    </div>
                    <!-- End Divicion -->
                    <div class="form-group">
                        <label>Estado</label>
                        <select name="estado" class="form-control">
                            <option value="1" selected>Disponible</option>
                            <option value="0">No disponible</option>
                        </select>
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <input type="submit" Value="Actualizar Caja" class="btn btn-success btn-lg btn-block">
                        <a href="search-sedes.html" type="submit" Value="Cancelar" class="btn btn-danger btn-lg btn-block">Cancelar</a>
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
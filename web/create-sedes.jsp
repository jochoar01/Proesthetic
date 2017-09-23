<!DOCTYPE html>
<html lang="en">
    <%@include file="unitedhead.jsp" %>
    <body>
        <!-- Fixed navbar -->
        <%@include file="unitedMenu.jsp" %>
        <!-- Begin page content -->
        <div class="container">
            <h2>Creación de Sedes</h2>
            <br>
            <div class="row">
                <form method="post" class="completo">
                    <div class="form-group" style="display:none;">
                        <label>Id Sede</label>
                        <input type="text" class="form-control" placeholder="Número Id de la Sede." readonly>
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <label>Nombre Sede</label>
                        <input type="text" class="form-control" placeholder="Nombre de la Sede." autofocus>
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <label>Clinica / Cliente</label>
                        <select name="clinica" class="form-control">
                            <option value="1">Proesthetic</option>
                            <option value="2">Sonría</option>
                            <option value="3">Dentisalud</option>
                        </select>
                    </div>
                    <!-- End Divicion -->
                    <div class="form-group">
                        <label>Estado</label>
                        <select name="estado" class="form-control">
                            <option value="1">Habilitada</option>
                            <option value="0">Inahbilitada</option>
                        </select>
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <input type="submit" Value="Guardar Caja" class="btn btn-success btn-lg btn-block">
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
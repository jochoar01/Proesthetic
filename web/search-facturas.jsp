<!DOCTYPE html>
<html lang="en">
    <%@include file="unitedhead.jsp" %>
    <body>
        <!-- Fixed navbar -->
        <%@include file="unitedMenu.jsp" %>
        <!-- Begin page content -->
        <div class="container">
            <h2>Consulta de Clientes (Clínicas)</h2>
            <br>
            <div class="row">
                <form method="post" id="searchForm" class="completo">
                    <div class="form-group">
                        <label>Clínica/Cliente:</label>
                        <select class="form-control" name="Cliente" autofocus>
                            <option value="1">Dentisalud</option>
                            <option value="2">Sonría</option>
                            <option value="3">Oral Laser</option>
                            <option value="4">Oral Centry</option>
                        </select>
                    </div>
                    <!-- End Divicion -->
                    <div class="form-group">
                        <input type="submit" Value="Consultar Cliente/Clinica" class="btn btn-success btn-lg btn-block">
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
        <script src="Assets/js/tether.min.js"></script>
        <script src="Assets/js/bootstrap.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function(){
                //Eventos formulario
                $("#searchForm").submit(function(event){
                    // Stop form from submitting normally
                    event.preventDefault();
                    //Open 2nd document
                    window.location.href="create-facturas.html";
                });
            });
        </script>
    </body>
</html>
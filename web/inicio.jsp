<!DOCTYPE html>
<html lang="es">
    <%@include file="unitedhead.jsp" %>
    <!-- Fixed navbar -->
    <%@include file="unitedMenu.jsp" %>
    <!-- Begin page content -->
    <div class="imgc">
        <img src="Imagenes/ProEstheticSimboloCopiado.jpg" width="320" height="250" class="img-circle person" alt="Random Name">
    </div>
    <!--
    <div class="RMenu">
        <button class="btn btn-primary" id="secre">Secretari@</button><br>
        <button class="btn btn-success" id="coord">Coordinador</button><br>
        <button class="btn btn-danger" id="admin">Administrador</button><br>
        <button class="btn btn-info" id="total">Gerente/Sistemas</button>
    </div>
    -->
    <%@include file="unitedFooter.jsp" %>
    <!-- jQuery first, then Tether, then Bootstrap JS. -->
    <script src="bootstrap/js/jquery.min.js"></script>
    <script src="bootstrap/js/tether.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <!--
    <script type="text/javascript">
        $(document).ready(function(){
            $("#secre").click(function(){
                $("#TablasMenu").show("fast");
                $("#ConfigMenu").hide("fast");
                $("#SedesMenu").hide("fast");
            });
            $("#coord").click(function(){
                $("#SedesMenu").show("fast");
                $("#TablasMenu").show("fast");
                $("#ConfigMenu").hide("fast");
            });
            $("#admin").click(function(){
                $("#TablasMenu").hide("fast");
                $("#ConfigMenu").show("fast");
                $("#SedesMenu").show("fast");
            });
            $("#total").click(function(){
                $("#TablasMenu").show("fast");
                $("#ConfigMenu").show("fast");
                $("#SedesMenu").show("fast");
            });
        });
    </script>
    -->
</body>
</html>
<%@page import="Persistencias.Cajas"%>
<%
    Integer pos = null;
    ArrayList<Cajas> ListaCajas = null;
    Cajas obj = null;
    try
    {
        pos = Integer.parseInt((String)request.getParameter("site"));
        ListaCajas = (ArrayList<Cajas>)session.getAttribute("ListarCajas");
        obj = (Cajas)ListaCajas.get(pos);
    }
    catch(Exception e) {
        System.out.println(e.getMessage());
        response.sendRedirect("index.jsp");
    }
%>
<!DOCTYPE html>
<html lang="es">
    <%@include file="unitedhead.jsp" %>
    <body>
        <!-- Fixed navbar -->
        <%@include file="unitedMenu.jsp" %>
        <!-- Begin page content -->
        <div class="container">
            <h2>Actualización de Cajas</h2>
            <br>
            <div class="row">
                <form method="post" class="completo" action="ActualizarCajas">
                    <div class="form-group">
                        <label>Id Caja</label>
                        <input type="text" name="id" class="form-control" placeholder="Número Id de Caja." value="<%= obj.getIdcajas()%>" readonly>
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <label>Nombre Caja</label>
                        <input type="text" name="nombre" class="form-control" placeholder="Nombre de la Caja." value="<%= obj.getCaja()%>" autofocus>
                    </div>
                    <!-- End Divicion -->
                    <div class="form-group">
                        <label>Estado</label>
                        <select name="estado" class="form-control">
                    <%
                        if (obj.getHabilitado()) {
                            %><option value="1" selected>Habilitado</option><option value="0" >Inhabilitado</option><%
                        } else {
                            %><option value="1">Habilitado</option><option value="0" selected>Inhabilitado</option><%
                        }
                    %>
                        </select>
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <input type="submit" Value="Actualizar Caja" class="btn btn-success btn-lg btn-block">
                        <a href="javascript:history.go(-1);" class="btn btn-danger btn-lg btn-block">Cancelar</a>
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
    </body>
</html>
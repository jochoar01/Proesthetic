<%@page import="Persistencias.Roles"%>
<%
    Integer pos = null;
    ArrayList<Roles> ListaRoles = null;
    Roles obj = null;
    try
    {
        pos = Integer.parseInt((String)request.getParameter("site"));
        ListaRoles = (ArrayList<Roles>)session.getAttribute("ListarRoles");
        obj = (Roles)ListaRoles.get(pos);
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
            <h2>Actualización de Roles</h2>
            <br>
            <div class="row">
                <form method="post" class="completo" action="ActualizarRoles">
                    <div class="form-group" style="display:none;">
                        <label>Id Rol: <%= obj.getIdrol()%></label>
                        <input type="hidden" name="id" class="form-control" placeholder="Id Rol." value="<%= obj.getIdrol()%>" readonly>
                    </div>
                    <!-- End Division -->
                    <div class="form-group">
                        <label>Nombre del Rol</label>
                        <input type="text" name="rol" class="form-control" placeholder="Nombre de Rol." value="<%= obj.getRol()%>" autofocus>
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
                        <input type="submit" Value="Actualizar Rol" class="btn btn-success btn-lg btn-block">
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
        <script src="bootstrap/js/jquery.min.js"></script>
        <script src="bootstrap/js/tether.min.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
    </body>
</html>
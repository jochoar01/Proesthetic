<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<nav id="barranav" class="navbar navbar-toggleable-md navbar-inverse fixed-top bg-inverse">
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <a class="navbar-brand" href="inicio.jsp">ProEsthetic</a>
    <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="ListarPedidos">Pedidos <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item dropdown" id="ConfigMenu">
                <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Configuración
                </a>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="ListarCajas">Cajas</a>
                    <a class="dropdown-item" href="ListarProcesos">Procesos</a>
                    <a class="dropdown-item" href="ListarRoles">Roles</a>
                    <a class="dropdown-item" href="ListarUsuarios">Usuarios</a>                    
                    <!--<a class="dropdown-item" href="search-tipotrabajo.jsp">Tipos de Trabajos</a>-->
                </div>
            </li>
            <!--<li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Facturación
                </a>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="search-facturas.jsp">Cuentas de Cobro</a>
                </div>
            </li>-->
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Administración
                </a>
                <div class="dropdown-menu">
                    <a id="SedesMenu" class="dropdown-item" href="ListarSedes">Sedes</a>
                    <a id="SedesMenu" class="dropdown-item" href="BusquedaClinicas">Clinicas <span class="sr-only">(current)</span></a>
                    <a id="SedesMenu" class="dropdown-item" href="BusquedaOdontologos">Odontologos <span class="sr-only">(current)</span></a>
                </div>
            </li>
            <% if ( session.getAttribute("rol").equals("1") ) { %>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Tablas
                </a>
                <div class="dropdown-menu">
                    <!--<a id="SedesMenu" class="dropdown-item" href="search-sedes.jsp">Sedes</a>-->
                    <a class="dropdown-item" href="ListarLogs">Logs</a>
                    <a class="dropdown-item" href="TablaCajas">Cajas</a>
                    <a class="dropdown-item" href="TablaRoles">Roles</a>
                    <a class="dropdown-item" href="TablaUsuarios">Usuarios</a>
                    <a class="dropdown-item" href="TablaProcesos">Procesos</a>
                    <a class="dropdown-item" href="TablaPedidos">Pedidos</a>
                    <a class="dropdown-item" href="TablaClientes">Clinicas</a>
                    <a class="dropdown-item" href="TablaSedes">Sedes</a>
                    <a class="dropdown-item" href="TablaOdontologos">Odontologos</a>
                </div>
            </li>
            <% }%>
            <li class="nav-item">
                <a class="nav-link" href="DestruirSesion">Cerrar Sesión</a>
            </li>
        </ul>
        <ul class="nav nav-pills float-right">
            <li class="nav-item">
                <a class="nav-link"><b>Usuario:</b> <%= session.getAttribute("nombre")%> <b>- Rol:</b> <%= session.getAttribute("rol")%></a>
            </li>
        </ul>
    </div>
</nav>
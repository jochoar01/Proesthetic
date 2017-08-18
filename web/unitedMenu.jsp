<%@page import="Persistencias.Usuarios"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

  
%>   
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
            <!--
            <li class="nav-item dropdown" id="ConfigMenu">
                <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Configuración
                </a>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="search-cajas.jsp">Cajas</a>
                    <a class="dropdown-item" href="search-procesos.jsp">Procesos</a>
                    <a class="dropdown-item" href="search-roles.jsp">Roles</a>
                    <a class="dropdown-item" href="search-usuarios.jsp">Usuarios</a>
                    <a id="TablasMenu" class="dropdown-item" href="Tablas.jsp">Tablas</a>
                    <a class="dropdown-item" href="search-tipotrabajo.jsp">Tipos de Trabajos</a>
                </div>
            </li>
            -->
            <!--
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Facturación
                </a>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="search-facturas.jsp">Cuentas de Cobro</a>
                </div>
            </li>
            -->
            <% if(session.getAttribute("rol").equals("SISTEMAS")){ %>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Administración
                </a>
                <div class="dropdown-menu">
                    <!--<a id="SedesMenu" class="dropdown-item" href="search-sedes.jsp">Sedes</a>-->
                    <a class="dropdown-item" href="BusquedaClinicas">Clínicas</a>
                    <a class="dropdown-item" href="BusquedaOdontologos">Odontólogos</a>
                </div>
            </li>
            <% } %>
            <li class="nav-item">
                <a class="nav-link" href="DestruirSesion">Cerrar Sesión</a>
            </li>
        </ul>
        <ul class="nav nav-pills float-right">
            <li class="nav-item">
                <a class="nav-link"><b>Usuario:</b> <%= session.getAttribute("nombre") %> <b>- Rol:</b> <%= session.getAttribute("rol") %></a>
            </li>
        </ul>
    </div>
</nav>
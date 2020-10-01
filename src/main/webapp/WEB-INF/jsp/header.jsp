<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://getbootstrap.com/docs/4.5/dist/css/bootstrap.min.css">
<title>Security Brindamos Soluciones Reales a su Empresa </title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Inicio</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Clientes
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="${pageContext.request.contextPath}/viewcli">Listado</a>
          <a class="dropdown-item" href="${pageContext.request.contextPath}/cliform">Agregar</a>         
        </div>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Pagos
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="${pageContext.request.contextPath}/viewpago">Listado</a>
          <a class="dropdown-item" href="${pageContext.request.contextPath}/pagoform">Agregar</a>
          <a class="dropdown-item" href="${pageContext.request.contextPath}/notiatraso">Ver</a> 
        </div>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Profesionales
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="${pageContext.request.contextPath}/viewemp">Listado</a>
          <a class="dropdown-item" href="${pageContext.request.contextPath}/empform">Agregar</a>
        </div>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Accidentabilidad
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="${pageContext.request.contextPath}/viewacci">Listado</a>
          <a class="dropdown-item" href="${pageContext.request.contextPath}/acciform">Reportar Accidentes</a>
          <a class="dropdown-item" href="${pageContext.request.contextPath}/listcli">Cálculo Accidentes</a> 
        </div>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Asesorías
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="${pageContext.request.contextPath}/viewase">Listado</a>
          <a class="dropdown-item" href="${pageContext.request.contextPath}/aseform">Solicitar Nueva Asesoría</a>
        </div>
      </li>
       <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Visitas
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="${pageContext.request.contextPath}/viewvisita">Listado</a>
          <a class="dropdown-item" href="${pageContext.request.contextPath}/visitaform">Agregar</a>
        </div>
      </li>
     <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Chequeo
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="${pageContext.request.contextPath}/viewcheq">Listado</a>
          <a class="dropdown-item" href="${pageContext.request.contextPath}/cheqform">Agregar</a>
        </div>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Capacitación
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="${pageContext.request.contextPath}/viewcapa">Listado</a>
          <a class="dropdown-item" href="${pageContext.request.contextPath}/capaform">Agregar</a>
        </div>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Mejoras
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
           <a class="dropdown-item" href="${pageContext.request.contextPath}/viewmejor">Listado</a>
          <a class="dropdown-item" href="${pageContext.request.contextPath}/mejorform">Agregar</a>
          <a class="dropdown-item" href="${pageContext.request.contextPath}/VisualizarActividad">Actividades</a>
          
        </div>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="logout">Cerrar Sesión</a>
      </li>
    </ul>
  </div>
</nav>
<br/>
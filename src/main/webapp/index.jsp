<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <meta charset="ISO-8859-1">
    <link rel="stylesheet" href="https://getbootstrap.com/docs/4.5/dist/css/bootstrap.min.css">
    <link href="jumbotron.css" rel="stylesheet">
    <title>Pagina Inicio</title>
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    

    <script>
        $( function() {
          $( "#titulo" ).draggable();
          $( "#pestanias" ).tabs();
          $( "#nota" ).selectmenu();

          $("#btncalificar").click(function(){

                var opciones = ["Buena","Regular","Aceptable","Mala"];
                var nota =  $("#nota").val();
                if (nota == ""){
                    alert ("Debe seleccionar una nota");
                }
                else{
                    alert("La calificación es: " + opciones[nota-1]);
                }
          });


        });        
    </script>
<style>
        body {
              background-image: url(file:///C:/Users/Alumno/Desktop/Modulo%205%20Maven/Evaluacion%20Final%20Mod5/modulo5dia5/WebContent/img/Geometry.jpg);
              padding-left: 10px;
              padding-right: 10px;
        }
        #titulo{
            color :black;
        }
    </style>
    <style>
        #titulo{
            width: 250px;
            background-color: rgb(210, 224, 148);
        }
        h1 {
        border-bottom: 1px solid #00F;
        text-align: center;
        }
        
        .btn-group-lg>.btn, .btn-lg {
        padding: .3rem 1rem;
        font-size: 1.25rem;
        line-height: 1.5;
        border-radius: .3rem;
        transition: color .15s ease-in-out,background-color .15s ease-in-out,border-color .15s ease-in-out,box-shadow .15s ease-in-out;
        box-sizing: border-box;
        }
        .btn-primary:hover {
        color: #fff;
        background-color: #0069d9;
        border-color: #0062cc;
        text-decoration: none;
        }
        @media (min-width: 768px)
        .container, .container-md, .container-sm {
        max-width: 720px;
        }
        .container, .container-fluid, .container-lg, .container-md, .container-sm, .container-xl {
    width: 100%;
    padding-right: 15px;
    padding-left: 15px;
    margin-right: auto;
    margin-left: auto;
        font-family: -apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,"Noto Sans",sans-serif,"Apple Color Emoji","Segoe UI Emoji","Segoe UI Symbol","Noto Color Emoji";
    font-size: 1rem;
    font-weight: 400;
    line-height: 1.5;
    color: #212529;
    text-align: left;
    }
    </style>

</head>
<body>
    
     <h1>Bienvenido a Soluciones Security</h1> 
     <br/>
     <h4>En nuestro sitio encontrará soluciones reales y efectivas a sus demandas.</h4>

    <div id="pestanias">
        <ul>
          <li><a href="#tabs-1">Servicio a Clientes</a></li>
          <li><a href="#tabs-2">Servicios a Profesionales</a></li>
          <li><a href="#tabs-3">Servicio Administrativo</a></li>
        </ul>
        <div id="tabs-1">
          <p>Déjenos su solicitud de Asesoría u Accidente y nos comunicaremos a la brevedad con Usted.. </p>
        </div>
        <div id="tabs-2">
          <p>El Servicio a Profesionales tiene acceso a una amplia automatización de servicios de gran calidad.  </p>
        </div>
        <div id="tabs-3">
          <p>El personal administrativo cuenta con una amplia red de gestión de información. </p>
        </div>
    </div>    
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
 <div class="container">
<nav class="navbar navbar-expand-lg navbar-light bg-light">
<a class="btn btn-primary btn-lg" href="acciform" role="button">Ingreso Clientes &raquo;</a>
 </nav>
</div>
<br/>
<div class="container">
<nav class="navbar navbar-expand-lg navbar-light bg-light">
<a class="btn btn-primary btn-lg" href="viewcli" role="button">Ingreso Administración &raquo;</a>
 </nav>
</div>
<br/>
<div class="container">
<nav class="navbar navbar-expand-lg navbar-light bg-light">
<a class="btn btn-primary btn-lg" href="viewvisita" role="button">Ingreso Profesionales &raquo;</a>
 </nav>
</div>
  <div class="jumbotron">
  <p>Prueba Módulo 5 Adalid Desarrollador Full Stack Java Trainee Curso 025 Madelaine Oliva / Tatiana Iturriaga 07 de Agosto de 2020</p>
  <p class="lead">
  </p>
</div>
</body>
</html>
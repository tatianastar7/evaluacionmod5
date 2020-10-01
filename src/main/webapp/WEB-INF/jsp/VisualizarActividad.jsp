<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ultimahoja</title>
    
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <link rel="stylesheet" href="http://cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css" />
    <script src="http://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
    <meta charset="ISO-8859-1">
    <link rel="stylesheet" href="https://getbootstrap.com/docs/4.5/dist/css/bootstrap.min.css">
    <link href="jumbotron.css" rel="stylesheet">
    <script>
        $(document).ready( function () {
            $('#tabladatos').DataTable();
        } );
    </script>
    <style>
        body {
              background-image: url(file:///C:/Users/Alumno/Desktop/Modulo%205%20Maven/Evaluacion%20Final%20Mod5/modulo5dia5/WebContent/img/Geometry.jpg);
              padding-left: 10px;
              padding-right: 10px;
        }
        #titulo{
            color :black;
            text-align: left;
        }
        h3{
        text-align: left;
        color :blue;
        }
        .btn-group-lg>.btn, .btn-lg {
        padding: .3rem 1rem;
        font-size: 1.25rem;
        line-height: 1.5;
        border-radius: .2rem;
        transition: color .15s ease-in-out,background-color .15s ease-in-out,border-color .15s ease-in-out,box-shadow .15s ease-in-out;
        box-sizing: border-box;
        }
    </style>
</head>
<body>
    <h3>Actividades a Realizar con Clientes</h3>
   <h6 id="titulo">La productividad, entendida como la relación que existe entre los recursos que las empresas invierten en su operación y los beneficios que obtiene de la misma, es un indicador fundamental al momento de analizar el estado de la compañía y la calidad de su gestión administrativa.
         Es por esta razón que presentamos las siguientes actividades para potenciar a nuestros clientes.</h6>
    <table id="tabladatos" class="display" style="width:100%">
        <thead>
            <tr>
               <td>Asesorias</td>
                <td>Soluciones</td>
                <td>Capacitaciones</td>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Legal</td>
                <td>Tecnologicas</td>
                <td>Prevención de riesgos</td>
            </tr>
            <tr>
               <td>Psicológica</td>
                <td>Administrativa</td>
                <td>Medio Ambientales</td>
            </tr>
            <tr>
              <td>Financiera</td>
                <td>Contables</td>
                <td>Presupuesto</td>
            </tr>
            <tr>
                <td>Seguridad</td>
                <td>Transporte</td>
                <td>Almacenamiento</td>
            </tr>
        </tbody>
    </table>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
 <div class="container">
<nav class="navbar navbar-expand-lg navbar-light bg-light">
<a class="btn btn-primary btn-lg" href="viewmejor" role="button">Listado Mejoras &raquo;</a>
</nav>   
 </div>
 <div class="jumbotron">
  <p>Prueba Módulo 5 Adalid Desarrollador Full Stack Java Trainee Curso 025 Madelaine Oliva / Tatiana Iturriaga 07 de Agosto de 2020</p>
  <p class="lead">
  </p>
</div>
</body>
</html>
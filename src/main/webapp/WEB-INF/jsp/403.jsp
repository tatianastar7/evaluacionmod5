
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<%@ include file="header.jsp" %>
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
<div class="HTTP Status 403 - Access is denied">
<form:form action="/modulo5dia5/acciform">
<table class="table table-hover">
<thead>
<tr class="table-primary"><th scope="col"><h1>Message : ${message}</h1> </th></tr>
</thead>
</table>
<br/>
</form:form>
</div>
<div class="container">

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="logout">Salir</a>
 </nav>
<br/>
</div>
<%@ include file="footer.jsp" %>

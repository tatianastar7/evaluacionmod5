 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ include file="header.jsp" %>
<h3>Ingresar una mejora </h3>
<style>
            #titulo{
            color :blue;
            text-align: left;
        }
        h3{
        text-align: center;
        }
    </style>
<div class="container">
<form:form action="savemejor" method="post" modelAttribute="mejora">
<td>Cliente:</td>
<form:select path="clienteid" items="${listaditoclientes}" itemLabel="nombre" itemValue="id"> </form:select>
<fieldset>
<div class="form-group">
  <label class="col-form-label" for="fecha">Fecha:</label>
  <form:input path="fecha" class="form-control"/>
  <form:errors path="fecha" class="form-control"/>
</div>
<div class="form-group">
  <label class="col-form-label" for="motivo">Motivo de Mejora:</label>
  <form:input path="motivo" class="form-control"/>
  <form:errors path="motivo" class="form-control"/>
</div>
<div class="form-group">
  <label class="col-form-label" for="actividades">Actividades:</label>
  <form:input path="actividades" class="form-control"/>
  <form:errors path="actividades" class="form-control"/>
</div>
<div class="form-group">
  <label class="col-form-label" for="estado">Estado:</label>
  <form:input path="estado" class="form-control"/>
  <form:errors path="estado" class="form-control"/>
</div>
</fieldset>
<input type="submit" value="Agregar Mejora" class="btn btn-primary"/>
</form:form>
</div>
<%@ include file="footer.jsp" %>
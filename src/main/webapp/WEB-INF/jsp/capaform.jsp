<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="header.jsp" %>
<h3>Agregar Capacitación</h3>
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
<form:form action="savecapa" method="post" modelAttribute="capacitacion">
<form:select path="idvisita" items="${listavisit}" itemLabel="direccion" itemValue="idvisita"> </form:select>
<fieldset>
<div class="form-group">
  <label class="col-form-label" for="fecha">Fecha:</label>
  <form:input path="fecha" class="form-control"/>
  <form:errors path="fecha" class="form-control"/>
</div>
<div class="form-group">
  <label class="col-form-label" for="hora">Hora:</label>
  <form:input path="hora" class="form-control"/>
  <form:errors path="hora" class="form-control"/>
</div>
<div class="form-group">
  <label class="col-form-label" for="numasistentes">Número de Asistentes:</label>
  <form:input path="numasistentes" class="form-control"/>
  <form:errors path="numasistentes" class="form-control"/>
</div>
</fieldset>
<input type="submit" value="Agregar Capacitación" class="btn btn-primary"/>
</form:form>
</div>
<%@ include file="footer.jsp" %>




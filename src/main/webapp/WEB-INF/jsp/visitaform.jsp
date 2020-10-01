 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ include file="header.jsp" %>

<div class="container">
<h4>Agregar detalle visita a Cliente</h4>
<br>
<form:form action="savevisita" method="post" modelAttribute="visita"  >
<td>Cliente:</td>
<form:select path="clienteid" items="${listeclientes}" itemLabel="nombre" itemValue="id"> </form:select>
<td>Empleado:</td>
 <form:select path="empleadoid" items="${listaemp}" itemLabel="nombre" itemValue="idempleado"> </form:select> 
<fieldset>
<div class="form-group">
  <label class="col-form-label" for="direccion">Dirección:</label>
  <form:input path="direccion" class="form-control"/>
  <form:errors path="direccion" class="form-control"/>
</div>
<div class="form-group">
  <label class="col-form-label" for="ciudad">Ciudad:</label>
  <form:input path="ciudad" class="form-control"/>
  <form:errors path="ciudad" class="form-control"/>
</div>
<div class="form-group">
  <label class="col-form-label" for="fecha">Fecha:</label>
  <form:input path="fecha" class="form-control"/>
  <form:errors path="fecha" class="form-control"/>
</div>
<div class="form-group">
  <label class="col-form-label" for="resumen">Resumen:</label>
  <form:input path="resumen" class="form-control"/>
  <form:errors path="resumen" class="form-control"/>
</div>
<div class="form-group">
  <label class="col-form-label" for="observaciones">Observaciones:</label>
  <form:input path="observaciones" class="form-control"/>
  <form:errors path="observaciones" class="form-control"/>
</div>
</fieldset>
<input type="submit" value="Agregar Visita" class="btn btn-primary"/>
</form:form>
</div>
<%@ include file="footer.jsp" %>

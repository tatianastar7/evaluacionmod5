<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="header.jsp" %>
<h3>Editar Capacitación</h3>
<div class="container">
<form:form action="/modulo5dia5/editsavecapa" method="post" modelAttribute="capac">
<form:hidden path="idcapacitacion"/>
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
<div class="form-group">
  <label class="col-form-label" for="idvisita">Visita:</label>
  <form:input path="idvisita" class="form-control"/>
  <form:errors path="idvisita" class="form-control"/>
</div>
</fieldset>
<input type="submit" value="Editar y Guardar" class="btn btn-primary"/>
</form:form>
</div>
<%@ include file="footer.jsp" %>




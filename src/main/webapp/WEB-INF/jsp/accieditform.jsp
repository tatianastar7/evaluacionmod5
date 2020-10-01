<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   

<%@ include file="header.jsp" %>

<div class="container">
<h3>Editar Reporte Accidente</h3>
<form:form action="/modulo5dia5/editsaveacci" method="post" modelAttribute="acci">
 <form:hidden path="idaccidente"/>
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
  <label class="col-form-label" for="suceso">Suceso:</label>
  <form:input path="suceso" class="form-control"/>
  <form:errors path="suceso" class="form-control"/>
</div>
<div class="form-group">
  <label class="col-form-label" for="lugar">Lugar:</label>
  <form:input path="lugar" class="form-control"/>
  <form:errors path="lugar" class="form-control"/>
</div>
<div class="form-group">
  <label class="col-form-label" for="clienteid">Cliente:</label>
  <form:input path="clienteid" class="form-control"/>
  <form:errors path="clienteid" class="form-control"/>
</div>
</fieldset>
<input type="submit" value="Editar y Guardar" class="btn btn-primary"/>
</form:form>
</div>
<%@ include file="footer.jsp" %>
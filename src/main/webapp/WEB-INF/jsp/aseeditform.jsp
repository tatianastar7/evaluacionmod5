<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   


<%@ include file="header.jsp" %>
<h3>Editar Asesoria</h3>
<div class="container">
<form:form action="/modulo5dia5/editsavease" method="post" modelAttribute="asesorias">
 <form:hidden path="idasesoria" />
<fieldset>
<div class="form-group">
  <label class="col-form-label" for="detalle">Detalle:</label>
  <form:input path="detalle" class="form-control"/>
  <form:errors path="detalle" class="form-control"/>
</div>
<div class="form-group">
  <label class="col-form-label" for="gestion">Gestión:</label>
  <form:input path="gestion" class="form-control"/>
  <form:errors path="gestion" class="form-control"/>
</div>
<div class="form-group">
  <label class="col-form-label" for="propuestas">Propuestas:</label>
  <form:input path="propuestas" class="form-control"/>
  <form:errors path="propuestas" class="form-control"/>
</div>
<div class="form-group">
  <label class="col-form-label" for="fecha">Fecha:</label>
  <form:input path="fecha" class="form-control"/>
  <form:errors path="fecha" class="form-control"/>
</div>
<div class="form-group">
  <label class="col-form-label" for="especial">Especial:</label>
  <form:input path="especial" class="form-control"/>
  <form:errors path="especial" class="form-control"/>
</div>
<div class="form-group">
  <label class="col-form-label" for="cliente">Cliente:</label>
  <form:input path="clienteid" class="form-control"/>
  <form:errors path="clienteid" class="form-control"/>
</div>
</fieldset>
<input type="submit" value="Editar y Guardar" class="btn btn-primary"/>
</form:form>
</div>
<%@ include file="footer.jsp" %>
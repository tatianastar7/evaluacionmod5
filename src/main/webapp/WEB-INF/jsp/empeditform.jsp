<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   

<%@ include file="header.jsp" %>
<h3>Editar Empleado</h3>
<div class="container">
<form:form action="/modulo5dia5/editsaveemp" method="post" modelAttribute="emplea"> 
<form:hidden path="idempleado" />
<fieldset>
<div class="form-group">
  <label class="col-form-label" for="nombre">Nombre:</label>
  <form:input path="nombre" class="form-control"/>
  <form:errors path="nombre" class="form-control"/>
</div>
<div class="form-group">
  <label class="col-form-label" for="especialidad">Especialidad:</label>
  <form:input path="especialidad" class="form-control"/>
  <form:errors path="especialidad" class="form-control"/>
</div>
</fieldset>
<input type="submit" value="Editar y Guardar" class="btn btn-primary"/>
</form:form>
</div>
<%@ include file="footer.jsp" %>


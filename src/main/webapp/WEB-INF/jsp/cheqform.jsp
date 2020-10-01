<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<%@ include file="header.jsp" %>

<div class="container">
<h4>Agregar Información Visita</h4>
<br/>
<form:form action="savecheq" method="post" modelAttribute="chequeo">
<form:select path="idvisita" items="${listvisita}" itemLabel="direccion" itemValue="idvisita"> </form:select>
<fieldset>
<div class="form-group">
  <label class="col-form-label" for="detalle">Detalle:</label>
  <form:input path="detalle" class="form-control"/>
  <form:errors path="detalle" class="form-control"/>
</div>
<div class="form-group">
  <label class="col-form-label" for="estado">Estado:</label>
  <form:input path="estado" class="form-control"/>
  <form:errors path="estado" class="form-control"/>
</div>
</fieldset>
<input type="submit" value="Agregar Chequeo" class="btn btn-primary"/>
</form:form>
</div>
<%@ include file="footer.jsp" %>


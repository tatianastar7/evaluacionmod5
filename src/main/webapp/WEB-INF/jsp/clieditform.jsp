<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   

<%@ include file="header.jsp" %>
<h3>Editar Cliente</h3>
<div class="container">
 <form:form action="/modulo5dia5/editsave" method="post" modelAttribute="clie"> 
<form:hidden path="id" />
<fieldset>
<div class="form-group">
  <label class="col-form-label" for="nombre">Nombre:</label> 
 <form:input path="nombre" class="form-control"/>  
  <form:errors path="nombre" class="form-control"/>
</div>
<div class="form-group">
  <label class="col-form-label" for="telefono">Tel�fono:</label>
 <form:input path="telefono" class="form-control"/> 
  <form:errors path="telefono" class="form-control"/>
</div>
<div class="form-group">
  <label class="col-form-label" for="correoelectronico">Correo Electr�nico:</label>
   <form:input path="correoelectronico" class="form-control"/>
  <form:errors path="correoelectronico" class="form-control"/>
</div>
<div class="form-group">
  <label class="col-form-label" for="rubro">Rubro:</label>
 <form:input path="rubro" class="form-control"/>
  <form:errors path="rubro" class="form-control"/>
</div>
<div class="form-group">
  <label class="col-form-label" for="direccion">Direcci�n:</label>
     <form:input path="direccion" class="form-control"/> 
  <form:errors path="direccion" class="form-control"/>
</div>
</fieldset>
<input type="submit" value="Editar y Guardar" class="btn btn-primary"/>
</form:form>
</div>
<%@ include file="footer.jsp" %>
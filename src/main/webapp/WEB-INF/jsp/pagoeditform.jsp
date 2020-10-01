<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="header.jsp" %>
<div class="container">
<form:form action="/modulo5dia5/editsavepago" method="post" modelAttribute="pag">
<form:hidden path="idpago"/>
<fieldset>
<div class="form-group">
  <label class="col-form-label" for="mesanio">MesAnio:</label>
  <form:input path="mesanio" class="form-control"/>
  <form:errors path="mesanio" class="form-control"/>
</div>
<div class="form-group">
  <label class="col-form-label" for="montoregular">Monto Regular:</label>
  <form:input path="montoregular" class="form-control"/>
  <form:errors path="montoregular" class="form-control"/>
</div>
<div class="form-group">
  <label class="col-form-label" for="montoadicionales">Monto Adicional:</label>
  <form:input path="montoadicionales" class="form-control"/>
  <form:errors path="montoadicionales" class="form-control"/>
</div>
<div class="form-group">
  <label class="col-form-label" for="idcliente">Cliente ID:</label>
	<select name="idcliente" id="idcliente" class="form-control">
		<option>Seleccione una opción</option>
		<c:forEach items="${listclient}" var="cli">
			<c:if test="${pag.getClienteid() == cli.getId()}">
				<option value="${cli.getId()}" selected="selected"><c:out value="${cli.getNombre() }"></c:out></option>
			</c:if>
			<c:if test="${pag.getClienteid() != cli.getId()}">
				<option value="${cli.getId()}"><c:out value="${cli.getNombre() }"></c:out></option>
			</c:if>
		</c:forEach>
	</select>
</div>
</fieldset>
<input type="submit" value="Editar y Guardar" class="btn btn-primary"/>
</form:form>
</div>
<%@ include file="footer.jsp" %>
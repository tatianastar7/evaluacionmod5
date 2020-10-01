 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="header.jsp" %>
<h4>Ingrese información de Pago</h4>
 <style>
            #titulo{
            color :blue;
            text-align: left;
        }
        h4{
        text-align: center;
        }
    </style>
<div class="container">
<form:form action="savepago" method="post" modelAttribute="pago">
<select name="idcliente" id="idcliente" class="form-control">
	<option>Seleccione cliente</option>
	
	<c:forEach items="${listclient}" var="cli">
		<option value="${cli.getId()}"><c:out value="${cli.getNombre() }"></c:out></option>
	</c:forEach>
</select>
<fieldset>
<div class="form-group">
  <label class="col-form-label" for="mesanio">Mes  Año:</label>
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
</fieldset>
<input type="submit" value="Agregar Pago" class="btn btn-primary"/>
</form:form>
</div>
<%@ include file="footer.jsp" %>

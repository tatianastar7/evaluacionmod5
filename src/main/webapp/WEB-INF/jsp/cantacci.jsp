<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<%@ include file="header.jsp" %>
<div class="container">
<form:form action="/modulo5dia5/listcli">
<table class="table table-hover">
<thead>
<tr class="table-primary"><th scope="col">Cantidad de Accidentes del Cliente seleccionado es:</th></tr>
</thead>
<tbody>
<tr>
	<td> <c:out value="${count}"/></td>
</tr>
</tbody>
</table>
<input type="submit" value="Volver a página anterior" class="btn btn-primary"/>
<br/>
</form:form>
</div>
<%@ include file="footer.jsp" %>

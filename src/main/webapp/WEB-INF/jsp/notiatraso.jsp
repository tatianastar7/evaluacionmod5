<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="header.jsp" %>
<div class="container">
<h4>Cobranza</h4>
<br/>
<table class="table table-hover">
<thead>
<tr class="table-primary">
	<th scope="col">ID</th>
	<th scope="col">Mes Anio</th>
	<th scope="col">Monto Regular</th>
	<th scope="col">Monto Adicional</th>
	<th scope="col">Cliente</th>
	<th scope="col">Al día</th>
	<th scope="col">Notificar Atraso</th>
</tr>
</thead>
<tbody>
<c:forEach items="${listados}" var="pa">
    <tr>
        <td> <c:out value="${pa.idpago}"/></td>
        <td> <c:out value="${pa.mesanio}"/></td>
        <td> <c:out value="${pa.montoregular}"/></td>
        <td> <c:out value="${pa.montoadicionales}"/></td>
        <td> <c:out value="${pa.cliente_id}"/></td>
        <td><input type="checkbox" name="info" id="info"  /> <label for="info">Al dia</label></td>
        <td><input type="checkbox" name="info" id="info"  /> <label for="info">Notificar Atraso</label></td>
     </tr>
</c:forEach>
</tbody>
</table>
<br/>
<div class="container">
<nav class="navbar navbar-expand-lg navbar-light bg-light">
<a class="btn btn-primary btn-lg" href="viewpago" role="button">Listado Pagos &raquo;</a>
</nav>   
 </div>

</div>
<%@ include file="footer.jsp" %>

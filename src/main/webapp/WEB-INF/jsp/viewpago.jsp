 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ include file="header.jsp" %>
<div class="container">
<h4>  Listado de Pagos</h4>
       <br>
<table class="table table-hover">
<thead>
<tr class="table-primary">
	<th scope="col">ID Pago</th>
	<th scope="col">Mes Anio</th>
	<th scope="col">Monto Regular</th>
	<th scope="col">Monto Adicional</th>
	<th scope="col">Cliente</th>
	<th scope="col">Editar</th>
	<th scope="col">Eliminar</th>
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
        <td>
        	<a href="editpago/${pa.idpago}">Editar</a>
        </td>
        <td>
        	<a href="deletepago/${pa.idpago}">Eliminar</a>
        </td>
    </tr>
</c:forEach>
</tbody>
</table>
<br/>
<a href="pagoform" type="button" class="btn btn-primary" >Agregar Nuevo Pago</a>
<br/>
</div>
<%@ include file="footer.jsp" %>










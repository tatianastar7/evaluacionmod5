<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<%@ include file="header.jsp" %>


<div class="container">
<h4>Listado de Visitas</h4>
<br/>
<table class="table table-hover">
<thead>
<tr class="table-primary">
	<th scope="col">ID Visita</th>
	<th scope="col">Dirección</th>
	<th scope="col">Ciudad</th>
	<th scope="col">Fecha</th>
	<th scope="col">Resumen</th>
	<th scope="col">Observaciones</th>
	<th scope="col">Cliente</th>
	<th scope="col">Eliminar</th>
</tr>
</thead>
<c:forEach items="${listen}" var="vi">
<tbody>
    <tr>
        <td> <c:out value="${vi.idvisita}"/></td>
        <td> <c:out value="${vi.direccion}"/></td>  
        <td> <c:out value="${vi.ciudad}"/></td>
        <td> <c:out value="${vi.fecha}"/></td>  
        <td> <c:out value="${vi.resumen}"/></td> 
        <td> <c:out value="${vi.observaciones}"/></td>  
        <td> <c:out value="${vi.clienteid}"/></td> 
        <td> 
        	<a href="deletevisita/${vi.idvisita}">Eliminar</a>
        </td>
    </tr>
</c:forEach>
</tbody>
</table>
<br/>
<a href="visitaform" type="button" class="btn btn-primary" >Agregar Nueva Visita</a>
<br/>
</div>
<%@ include file="footer.jsp" %>






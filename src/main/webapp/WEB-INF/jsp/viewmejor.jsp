<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ include file="header.jsp" %>

<div class="container">
<h4>Lista de Mejoras</h4>
<br/>
<table class="table table-hover">
<thead>
<tr class="table-primary">
	<th scope="col">ID Mejora</th>
	<th scope="col">Fecha</th>
	<th scope="col">Motivo</th>
	<th scope="col">Actividades</th>
	<th scope="col">Estado</th>
	<th scope="col">Cliente</th>
	<th scope="col">Eliminar</th>
</tr>
</thead>
<tbody>
<c:forEach items="${listaditos}" var="me">
    <tr>
        <td> <c:out value="${me.idmejora}"/></td>
        <td> <c:out value="${me.fecha}"/></td>  
        <td> <c:out value="${me.motivo}"/></td>
        <td> <c:out value="${me.actividades}"/></td>
        <td> <c:out value="${me.estado}"/></td> 
        <td> <c:out value="${me.clienteid}"/></td> 
        <td> 
        	<a href="deletemejor/${me.idmejora}">Eliminar</a>
        </td>
    </tr>
</c:forEach>
</tbody>
</table>
<br/>
<a href="mejorform" type="button" class="btn btn-primary" >Agregar Nueva Mejora</a>
<br/>
</div>
<%@ include file="footer.jsp" %>
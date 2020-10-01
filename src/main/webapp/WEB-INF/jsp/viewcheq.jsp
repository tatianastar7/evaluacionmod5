<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<%@ include file="header.jsp" %>
<div class="container">
<h4>  Listado situación visitas a clientes</h4>
       <br>
<table class="table table-hover">
<thead>
<tr class="table-primary">
	<th scope="col">ID Chequeo</th>
	<th scope="col">Detalle</th>
	<th scope="col">Estado</th>
	<th scope="col">ID Visita</th>
	<th scope="col">Visita Realizada</th>
	<th scope="col">Visita Pendiente</th>
	<th scope="col">Eliminar</th>
</tr>
</thead>
<tbody>
<c:forEach items="${listad}" var="cheq">
    <tr>
        <td> <c:out value="${cheq.idchequeo}"/></td>
        <td> <c:out value="${cheq.detalle}"/></td>  
        <td> <c:out value="${cheq.estado}"/></td>
        <td> <c:out value="${cheq.idvisita}"/></td>
        <td><input type="checkbox" name="info" id="info" /><label for="info"></label></td>
        <td><input type="checkbox" name="info" id="info" /><label for="info"></label></td> 
        <td> 
        	<a href="deletecheq/${cheq.idchequeo}">Eliminar</a>
        </td>
    </tr>
</c:forEach>
</tbody>
</table>
<br/>
<a href="cheqform" type="button" class="btn btn-primary" >Agregar Nuevo Chequeo</a>
<br/>
</div>
<%@ include file="footer.jsp" %>





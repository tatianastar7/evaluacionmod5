<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
   
<%@ include file="header.jsp" %>
<div class="container">
<h4>  Listado Accidentes</h4>
       <br>
<table class="table table-hover">
<thead>
<tr class="table-primary">
	<th scope="col">ID</th>
	<th scope="col">Fecha</th>
	<th scope="col">Hora</th>
	<th scope="col">Suceso</th>
	<th scope="col">Lugar</th>
	<th scope="col">Cliente</th>
	<th scope="col">Editar</th>
	<th scope="col">Eliminar</th>
</tr>
</thead>
<tbody>
<c:forEach items="${listas}" var="acci">
    <tr>
        <td> <c:out value="${acci.idaccidente}"/></td>
        <td> <c:out value="${acci.fecha}"/></td>  
        <td> <c:out value="${acci.hora}"/></td>
        <td> <c:out value="${acci.suceso}"/></td>  
        <td> <c:out value="${acci.lugar}"/></td> 
        <td> <c:out value="${acci.clienteid}"/></td>
        <td> 
        	<a href="editacci/${acci.idaccidente}">Editar</a>
        </td>
         <td> 
        	<a href="deleteacci/${acci.idaccidente}">Eliminar</a>
        </td>
    </tr>
</c:forEach>
</tbody>
</table>
<br/>
<a href="acciform" type="button" class="btn btn-primary" >Agregar Nuevo Accidente</a>
<br/>
</div>
<%@ include file="footer.jsp" %>
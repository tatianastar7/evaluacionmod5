
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
   
<%@ include file="header.jsp" %>

<div class="container">
<h4>Lista de Asesorias</h4>
<br/>
<table class="table table-hover">
<thead>
<tr class="table-primary">
	<th scope="col">ID</th>
	<th scope="col">Detalle</th>
	<th scope="col">Gestión</th>
	<th scope="col">Propuestas</th>
	<th scope="col">Fecha</th>
	<th scope="col">Especial</th>
	<th scope="col">Cliente</th>
	<th scope="col">Editar</th>
	<th scope="col">Eliminar</th>
</tr>
</thead>
<tbody>
<c:forEach items="${lista}" var="ase">
    <tr>
        <td> <c:out value="${ase.idasesoria}"/></td>
        <td> <c:out value="${ase.detalle}"/></td>  
        <td> <c:out value="${ase.gestion}"/></td>
        <td> <c:out value="${ase.propuestas}"/></td>  
        <td> <c:out value="${ase.fecha}"/></td> 
        <td> <c:out value="${ase.especial}"/></td>  
        <td> <c:out value="${ase.clienteid}"/></td> 
        <td> 
        	<a href="editase/${ase.idasesoria}">Editar</a>
        </td>
         <td> 
        	<a href="deletease/${ase.idasesoria}">Eliminar</a>
        </td>
    </tr>
</c:forEach>
</tbody>
</table>
<br/>
<a href="aseform" type="button" class="btn btn-primary" >Agregar Nueva Asesoria</a>
<br/>
</div>
<%@ include file="footer.jsp" %>
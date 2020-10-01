<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="header.jsp" %>
<div class="container">
<h4>  Lista de Capacitaciones</h4>
       <br>
<table class="table table-hover">
<thead>
<tr class="table-primary">
	<th scope="col">ID Capacitación</th>
	<th scope="col">Fecha</th>
	<th scope="col">Hora</th>
	<th scope="col">N° Asistentes</th>
	<th scope="col">Editar</th>
	<th scope="col">Eliminar</th>
</tr>
</thead>
<tbody>
<c:forEach items="${listavisit}" var="capa">
    <tr>
        <td> <c:out value="${capa.idcapacitacion}"/></td>
        <td> <c:out value="${capa.fecha}"/></td>  
        <td> <c:out value="${capa.hora}"/></td>
        <td> <c:out value="${capa.numasistentes}"/></td>  
        <td> 
        	<a href="editcapa/${capa.idcapacitacion}">Editar</a>
        </td>
         <td> 
        	<a href="deletecapa/${capa.idcapacitacion}">Eliminar</a>
        </td>
    </tr>
</c:forEach>
</tbody>
</table>
<br/>
<a href="capaform" type="button" class="btn btn-primary" >Agregar Nueva Capacitación</a>
<br/>
</div>
<%@ include file="footer.jsp" %>
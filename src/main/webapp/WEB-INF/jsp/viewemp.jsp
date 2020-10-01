
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
   

<%@ include file="header.jsp" %>
<div class="container">
<h4>  Lista de Profesionales</h4>
       <br>
<table class="table table-hover">
<thead>
<tr class="table-primary">
	<th scope="col">ID Empleado</th>
	<th scope="col">Nombre</th>
	<th scope="col">Especialidad</th>
	<th scope="col">Editar</th>
	<th scope="col">Eliminar</th>
</tr>
</thead>
<tbody>
<c:forEach items="${listar}" var="emp">
    <tr>
        <td> <c:out value="${emp.idempleado}"/></td>
        <td> <c:out value="${emp.nombre}"/></td>  
        <td> <c:out value="${emp.especialidad}"/></td>  
        <td> 
        	<a href="editemp/${emp.idempleado}">Editar</a>
        </td>
         <td> 
        	<a href="deleteemp/${emp.idempleado}">Eliminar</a>
        </td>
    </tr>
</c:forEach>
</tbody>
</table>
<br/>
<a href="empform" type="button" class="btn btn-primary" >Agregar Nuevo Empleado</a>
<br/>
</div>
<%@ include file="footer.jsp" %>
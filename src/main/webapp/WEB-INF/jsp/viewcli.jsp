<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<%@ include file="header.jsp" %>
<div class="container">
       <h4>  Lista de Clientes</h4>
       <br>
<table class="table table-hover">
<thead>
<tr class="table-primary">
	<th scope="col">ID</th>
	<th scope="col">Nombre</th>
	<th scope="col">Teléfono</th>
	<th scope="col">Correo electrónico</th>
	<th scope="col">Rubro</th>
	<th scope="col">Dirección</th>
	<th scope="col">Editar</th>
	<th scope="col">Eliminar</th>
	</tr>
</thead>
  <c:forEach var="cli" items="${list}">   
<tbody> 
   <tr>  
        <td> <c:out value="${cli.id}"/></td>
        <td> <c:out value="${cli.nombre}"/></td>  
        <td> <c:out value="${cli.telefono}"/></td>
        <td> <c:out value="${cli.correoelectronico}"/></td>  
        <td> <c:out value="${cli.rubro}"/></td> 
        <td> <c:out value="${cli.direccion}"/></td>
        <td> 
        	<a href="editcli/${cli.id}">Editar</a>
        </td>
         <td> 
        	<a href="deletecli/${cli.id}">Eliminar</a>
        </td>
   </tr>
   </c:forEach> 
   </tbody> 
   </table>  
   <br/> 
   <a href="cliform" type="button" class="btn btn-primary" >Agregar Nuevo Cliente</a>
   <br/>
</div>
<%@ include file="footer.jsp" %> 


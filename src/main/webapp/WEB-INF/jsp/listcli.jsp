
<%@ include file="header.jsp" %>
<div class="container">
<h4>  Accidentabilidad </h4>
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
	<th scope="col">Accidentabilidad</th>
</tr>
</thead>
<tbody>	 
   <c:forEach var="cli" items="${list}"> 
   <tr>
        <td> <c:out value="${cli.id}"/></td>
        <td> <c:out value="${cli.nombre}"/></td>  
        <td> <c:out value="${cli.telefono}"/></td>
        <td> <c:out value="${cli.correoelectronico}"/></td>  
        <td> <c:out value="${cli.rubro}"/></td> 
        <td> <c:out value="${cli.direccion}"/></td>
   	   <td><a href="cantacci/${cli.id}">Resultado</a></td>       
   </tr>
   </c:forEach>  
</tbody>
</table>  
</div>
<%@ include file="footer.jsp" %> 


    
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>     
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
    

<%@ include file="header.jsp" %>
<h4>Ingrese información Cliente</h4>
 <style>
            #titulo{
            color :blue;
            text-align: left;
        }
        h4{
        text-align: center;
        }
    </style>
<div class="container">
 <form:form action="save" method="post" modelAttribute="cliente"> 

<fieldset>
<div class="form-group">
  <label class="col-form-label" for="nombre">Nombre:</label> 
 <form:input path="nombre" class="form-control"/>  
  <form:errors path="nombre" class="form-control"/>
</div>
<div class="form-group">
  <label class="col-form-label" for="telefono">Teléfono:</label>
 <form:input path="telefono" class="form-control"/> 
  <form:errors path="telefono" class="form-control"/>
</div>
<div class="form-group">
  <label class="col-form-label" for="correoelectronico">Correo Electrónico:</label>
   <form:input path="correoelectronico" class="form-control"/>
  <form:errors path="correoelectronico" class="form-control"/>
</div>
<div class="form-group">
  <label class="col-form-label" for="rubro">Rubro:</label>
 <form:input path="rubro" class="form-control"/>
  <form:errors path="rubro" class="form-control"/>
</div>
<div class="form-group">
  <label class="col-form-label" for="direccion">Dirección:</label>
     <form:input path="direccion" class="form-control"/> 
  <form:errors path="direccion" class="form-control"/>
</div>
</fieldset>
<input type="submit" value="Agregar Cliente" class="btn btn-primary"/>
</form:form>
</div>
<%@ include file="footer.jsp" %>
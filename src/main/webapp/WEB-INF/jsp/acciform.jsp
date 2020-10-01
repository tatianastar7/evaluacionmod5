
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>   
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
    
<%@ include file="header.jsp" %>
 <h3>Ingrese información del Accidente</h3>
 <style>
            #titulo{
            color :blue;
            text-align: left;
        }
        h3{
        text-align: center;
        }
    </style>
<div class="container">

<form:form action="saveacci" method="post" modelAttribute="accidente">
 <form:select path="clienteid" items="${listaclientes}" itemLabel="nombre" itemValue="id"> </form:select>
<fieldset>
<div class="form-group">
  <label class="col-form-label" for="fecha">Fecha:</label>
  <form:input path="fecha" class="form-control"/>
  <form:errors path="fecha" class="form-control"/>
</div>
<div class="form-group">
  <label class="col-form-label" for="hora">Hora:</label>
  <form:input path="hora" class="form-control"/>
  <form:errors path="hora" class="form-control"/>
</div>
<div class="form-group">
  <label class="col-form-label" for="suceso">Suceso:</label>
  <form:input path="suceso" class="form-control"/>
  <form:errors path="suceso" class="form-control"/>
</div>
<div class="form-group">
  <label class="col-form-label" for="lugar">Lugar:</label>
  <form:input path="lugar" class="form-control"/>
  <form:errors path="lugar" class="form-control"/>
</div>
</fieldset>
<input type="submit" value="Agregar Accidente" class="btn btn-primary"/>
</form:form>
</div>
<%@ include file="footer.jsp" %>
    <%@ include file="header.jsp" %>
    <div class="container">
<c:if test="${successMsg!=null}">
 <h2><c:out value="${successMsg}"></c:out></h2>
</c:if>
<br/>
<a href="acciform" type="button" class="btn btn-primary" >Ingreso Clientes</a>
<a href="aseform" type="button" class="btn btn-primary" >Ingreso Clientes</a>
<a href="viewvisita" type="button" class="btn btn-primary" >Ingreso Profesionales</a>
<a href="viewcli" type="button" class="btn btn-primary" >Ingreso Administración</a>
<br/>
</div>
<%@ include file="footer.jsp" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<head>
		<title>Customizado Login</title>
		 <style>
        body {
            background-image: url(file:///C:/Users/Alumno/Desktop/Modulo%205%20Maven/Evaluacion%20Final%20Mod5/modulo5dia5/WebContent/img/Geometry.jpg);
        }
         </style>
	</head>
	<body>
		<h3>Login</h3>
		<%
			String error = (String) request.getAttribute("error");
			if (error != null && error.equals("true")) {
				out.println("<h4 style=\"color:red\">Credencial invalida. Porfavor Intentar Nuevamente!!</h4>");
			}
		%>
	
 		<form name='loginForm' action="<c:url value='login' />" method='POST'> 
			
 			<table> 
 				<tr> 
 					<td>Usuario:</td> 
 					<td><input type='text' name='username' value=''></td> 
 				</tr> 
 				<tr> 
 					<td>Clave:</td>
 					<td><input type='password' name='password' /></td>
 				</tr> 
 				<tr> 
  					<td><input name="submit" type="submit" value="Ingresar" /></td>
 					<td><input name="reset" type="reset" /> <input type="hidden" 
 						name="${_csrf.parameterName}" value="${_csrf.token}" /></td> 
 				</tr> 
 			</table> 
	
 		</form> 
 	</body> 
 </html> 


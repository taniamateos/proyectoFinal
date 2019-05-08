<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%-- En caso de que exista una sesion iniciada redirecciono a index.jsp. "NO tiene caso mostrar este formulario cuando hay una sesion iniciada --%>
<c:if test="${sessionScope['sessionNombre']!=null}">
    <% response.sendRedirect("index.jsp");%>
</c:if>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Iniciar sesion</title>
        <link rel="stylesheet" href="../css/estilos.css" type="text/css"></link>
    </head>
    <body>
        <h1>¡ENTRA YA!</h1>
        <h2>Aquí podrás acceder a información muy interesante sobre el IDE Eclipse</h2>
       
        <div class="formulario">
        	<h3>Iniciar sesión</h3>
        	<form action="${pageContext.request.contextPath}/servlets/Login" method="POST">
            	<p> Usuario: <input type="text" name="usuario"></p>
           		<p> Contraseña: <input type="password" class="contra" name="password"></p>
            	 <%-- Mostramos los errores, guardados en la variable de sesión --%>
        <p class="error">${sessionScope['error']}</p>
            	<p><input type="submit" id="acceder" value="Acceder"></p>
        	</form>
        	<p class="enlaces"><a href="register.jsp">Registrarse</a></p>
        </div>
    </body>
</html>
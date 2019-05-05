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
    </head>
    <body>
        <h1>Iniciar sesion</h1>
        <p><a href="register.jsp">Registrarse</a></p>
        
        <%-- Mostramos los errores, guardados en la variable de sesión --%>
        <p style="color: #ff0000">${sessionScope['error']}</p>
        
        <form action="${pageContext.request.contextPath}/servlets/Login" method="POST">
            <p> Usuario: <input type="text" name="usuario"></p>
            <p> Contraseña: <input type="password" name="password"></p>
            <p><input type="submit" value="Entrar"></p>
        </form>
    </body>
</html>
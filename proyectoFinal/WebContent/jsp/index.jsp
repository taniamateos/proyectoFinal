<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrarse</title>
    </head>
    <body>
        <h1>Bienvenido/a ${sessionScope['sessionusuario']}</h1>
        <form action="${pageContext.request.contextPath}/servlets/Logout" method="post">
            <p><input type="submit" value="Salir"></p>
        </form>
    </body>
</html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrarse</title>
        <link rel="stylesheet" href="../css/estilosPaginaPrincipal.css" type="text/css"></link>
    </head>
    <body>
    	<div class="encabezado">
        <h2>Bienvenido/a ${sessionScope['sessionusuario']}</h2>
        <form action="${pageContext.request.contextPath}/servlets/Logout" method="post">
            <p><input type="submit" value="Cerrar sesión"></p>
        </form>
    </body>
</html>
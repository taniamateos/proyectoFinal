<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrarse</title>
    </head>
    <body>
        <h1>Registrarse</h1>
        <p><a href="login.jsp">Iniciar Sesion</a></p>
        
        <%-- Mostrar los errores, guardados en la variable de sesión --%>
        <p style="color: #ff0000">${sessionScope['error']}</p>
        
        <form action="${pageContext.request.contextPath}/servlets/Register" method="post">
        	<p>Nombre: <input type="text" name="nombre"></p>
        	<p>Apellido: <input type="text" name="apellido"></p>
        	<p>Correo: <input type="text" name="correo"></p>
            <p>Usuario: <input type="text" name="usuario"></p>
            <p>Contraseña: <input type="password" name="password1"></p>
            <p>Confirma contraseña <input type="password" name="password2"></p>
            <p><input type="submit" value="Entrar"></p>
        </form>
    </body>
</html>
 
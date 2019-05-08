<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrarse</title>
        <link rel="stylesheet" href="../css/estilos.css" type="text/css"></link>
    </head>
    <body>
        <h1>¡ENTRA YA!</h1>
        <h2>Aquí podrás acceder a información muy interesante sobre el IDE Eclipse</h2>
                
        <div class="formularioDos">
       	 	<form action="${pageContext.request.contextPath}/servlets/Register" method="post">
       	 		<h3>Registrarse</h3>
        		<p>Nombre: <input type="text" name="nombre"></p>
        		<p>Apellido: <input type="text" name="apellido"></p>
        		<p>Correo: <input type="email" name="correo"></p>
           	 	<p>Usuario: <input type="text" name="usuario"></p>
          	  	<p>Contraseña: <input type="password" name="password1"></p>
            	<p>Confirma contraseña: <input type="password" class="contra" name="password2"></p>
            	<%-- Mostrar los errores, guardados en la variable de sesión --%>
        		<p class="error">${sessionScope['error']}</p>
				<p><input type="submit" value="Registrarse"></p>							
				<p class="enlaces"><a href="../jsp/login.jsp">Iniciar Sesion</a></p>
        	</form>
        </div>
    </body>
</html>
 
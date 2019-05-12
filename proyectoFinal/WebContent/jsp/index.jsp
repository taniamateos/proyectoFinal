<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:if test="${sessionScope['sessionusuario']==null}">
    <% response.sendRedirect("login.jsp");%>
</c:if>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Página Principal</title>
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="../css/estilosPaginaPrincipal.css" type="text/css"></link>
    </head>
    <body>    	
    	<div class="encabezado">
        	<h2 style="font-size:1.4em;" >Bienvenido/a ${sessionScope['sessionusuario']}</h2>
        	<form action="${pageContext.request.contextPath}/servlets/Logout" method="post">
           	 	<p><input type="submit" id="cerrarSesion" value="Cerrar sesión"></p>
        	</form>
        </div>
        <br><br><br>
        <div class="cuerpo">
        <h4>¿Qué es un IDE?</h4>
		<p>
			Un IDE (integrated development environment o entorno de desarrollo integrado), es un
			programa cuya función es ofrecer a los programadores un conjunto de herramientas para
			programar de una manera eficaz. Existen muchos que son específicos de ciertos lenguajes
			de programación, aunque la mayoría se caracteriza por la amplitud de lenguajes que se
			pueden usar en el mismo.
		</p>
		<div class="container">
				<a href="#" onclick="return false;" data-toggle="popover" data-content="Es necesario usar un IDE cuando necesitas hacer grandes proyectos, si quieres hacer algo muy simple, se podría hacer con un editor más sencillo; sin embargo, es muy recomendable emplear un IDE; porque vas a ir mucho más rápido y va a estar mucho más organizado tu proyecto." data-trigger="focus"><input type="submit" value="Saber más" name="sabermas"></a>
		</div>
		</div>
		<div class="cuerpo">
		<h4>De los IDE que se encuentran muy reclamados hoy en día, destacan los siguientes:</h4>
		
		<h5>
			<b>Netbeans</b>
		</h5>
		<ul style="width:10%;">
			<li data-target="#caracteristicasUno" data-toggle="modal">Características</li>
			<li data-target="#ventajasUno" data-toggle="modal">Ventajas</li>
			<li data-target="#desventajasUno" data-toggle="modal">Desventajas</li>
		</ul>
		
		<div id="caracteristicasUno" class="modal fade" role="dialog">
		  <div class="modal-dialog">
			<div class="modal-content">
			  <div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">Características del IDE Netbeans</h4>
			  </div>
			  <div class="modal-body">
				<ul>
					<li>Actualmente su propietario es Oracle.</li>
					<li>Contiene una eficiente gestión de almacenamiento y velocidad.</li>
					<li>Ofrece la edición de código rápido e inteligente.</li>
					<li>Buena organización de los proyectos.</li>
				</ul>
			  </div>
			</div>
		  </div>
		</div>
		
		<div id="ventajasUno" class="modal fade" role="dialog">
		  <div class="modal-dialog">
			<div class="modal-content">
			  <div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">Ventajas del IDE Netbeans</h4>
			  </div>
			  <div class="modal-body">
				<ul>
					<li>Es multilenguaje.</li>
					<li>Es compatible con todos los sistemas operativos.</li>
					<li>Es gratuito.</li>
					<li>Identifica y soluciona problemas de código comunes.</li>
					<li>Facilidad de crear aplicaciones con interfaz gráfica.</li>
				</ul>
			  </div>
			</div>
		  </div>
		</div>
		
		<div id="desventajasUno" class="modal fade" role="dialog">
		  <div class="modal-dialog">
			<div class="modal-content">
			  <div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">Desventajas del IDE Netbeans</h4>
			  </div>
			  <div class="modal-body">
				<ul>
					<li>Generación de código basura al hacer uso de las facilidades para crear la interfaz gráfica.</li>
					<li>Todas las librerías necesarias para que funcione bien nuestro programa, hacen que sea “muy pesado” y más difícil de transportar, ya que ocupa mucho más.</li>
				</ul>
			  </div>
			</div>
		  </div>
		</div>
		
		<h5>
			<b>Eclipse</b>
		</h5>
		
		<ul style="width:10%;">
			<li data-target="#caracteristicasDos" data-toggle="modal">Características</li>
			<li data-target="#ventajasDos" data-toggle="modal">Ventajas</li>
			<li data-target="#desventajasDos" data-toggle="modal">Desventajas</li>
		</ul>
		
		<div id="caracteristicasDos" class="modal fade" role="dialog">
		  <div class="modal-dialog">
			<div class="modal-content">
			  <div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">Características del IDE Eclipse</h4>
			  </div>
			  <div class="modal-body">
				<ul>
					<li>Actualmente, se considera el mejor soporte para las últimas tecnologías de Java.</li>
					<li>Completa código.</li>
					<li>Integración del Git.</li>
					<li>Integración Junit.</li>
				</ul>
			  </div>
			</div>
		  </div>
		</div>
		
		<div id="ventajasDos" class="modal fade" role="dialog">
		  <div class="modal-dialog">
			<div class="modal-content">
			  <div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">Ventajas del IDE Eclipse</h4>
			  </div>
			  <div class="modal-body">
				<ul>
					<li>Es gratuito.</li>
					<li>Es multilenguaje.</li>
					<li>Excelente soporte para plugins muy útiles, algunos de ellos serán explicados.</li>
					<li>Ofrece herramientas muy útiles para repositorios y servidores.</li>
					<li>Buena organización a la hora de realizar un proyecto.</li>
				</ul>
			  </div>
			</div>
		  </div>
		</div>
		
		<div id="desventajasDos" class="modal fade" role="dialog">
		  <div class="modal-dialog">
			<div class="modal-content">
			  <div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">Desventajas del IDE Eclipse</h4>
			  </div>
			  <div class="modal-body">
				<ul>
					<li>Es necesario incorporar muchos plugins para poder ver su funcionamiento completo.</li>
					<li>Requiere de muchos recursos.</li>
				</ul>
			  </div>
			</div>
		  </div>
		</div>
		
		
		<h5>
			<b>IntelliJ Idea</b>
		</h5>
		
		<ul style="width:10%;">
			<li data-target="#caracteristicasTres" data-toggle="modal">Características</li>
			<li data-target="#ventajasTres" data-toggle="modal">Ventajas</li>
			<li data-target="#desventajasTres" data-toggle="modal">Desventajas</li>
		</ul>
		
		<div id="caracteristicasTres" class="modal fade" role="dialog">
		  <div class="modal-dialog">
			<div class="modal-content">
			  <div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">Características del IDE IntelliJ Idea</h4>
			  </div>
			  <div class="modal-body">
				<ul>
					<li>Fue desarrollado por Jet Brains.</li>
					<li>
						Ofrece:
						<ul>
							<li>Una versión gratuita de Community Edition.</li>
							<li>Prueba gratuita de 30 días para Ultimate Edition.</li>
							<li>Una versión de pago, que se encuentra entre los 472,40 € y 614,21 € anuales.</li>
						</ul>
					</li>
					<li>Soporte para las últimas tecnologías de Java.</li>
					<li>Integración del Git.</li>
					<li>Completado automático de código.</li>
				</ul>
			  </div>
			</div>
		  </div>
		</div>
		
		<div id="ventajasTres" class="modal fade" role="dialog">
		  <div class="modal-dialog">
			<div class="modal-content">
			  <div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">Ventajas del IDE IntelliJ Idea</h4>
			  </div>
			  <div class="modal-body">
				<ul>
					<li>Soporte de frameworks.</li>
					<li>Este IDE está enfocado a proyectos complejos.</li>
					<li>Atajos de teclado.</li>
					<li>Soporte técnico (solo incluida en la versión de pago).</li>
				</ul>
			  </div>
			</div>
		  </div>
		</div>
		
		<div id="desventajasTres" class="modal fade" role="dialog">
		  <div class="modal-dialog">
			<div class="modal-content">
			  <div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">Desventajas del IDE IntelliJ Idea</h4>
			  </div>
			  <div class="modal-body">
				<ul>
					<li>Si quieres toda la funcionalidad que ofrece o una funcionalidad decente, debes tener la versión de pago.</li>
				</ul>
			  </div>
			</div>
		  </div>
		</div>
		</div>
		<div class="cuerpo">
		
		<h4>Eclipse en profundidad</h4>
		<p>Es un IDE que ha sido programado en lenguaje Java. Sin embargo, no solo se puede programar en este lenguaje, ya que es un IDE genérico; esto quiere decir que puedes desarrollar en más lenguajes. Pero no hay que olvidar, que Eclipse es muy reclamado por los desarrolladores de Java.<br><br>Es multiplataforma, es decir, que puedes usarlo con diferentes sistemas operativos. La compilación es en tiempo real. Te proporciona el auto-completado de código. Como decía anteriormente, Eclipse te permite la incorporación de Git (repositorio de control de versiones). Contiene muchas opciones de herramientas para proyectos JEE.</p>
		<p>Ventajas <button type="button" id="verVentajas">Ver</button></p>
		<ul id="ventajasEclipse">
			<li>Su uso es gratuito, gran ventaja, sobretodo para los que están aprendiendo (que no se quieren gastar dinero) y para las empresas (que ven un gasto innecesario).</li>
			<li>Eclipse ofrece una vista de errores, que hace referencia a la consola, y por tanto te ayuda a la hora de que surja alguno.</li>
			<li>Gran organización de los proyectos, te permite tener todo por carpetas y que funcione perfectamente la conexión entre ambas. </li>
			<li>Eclipse tiene una amplia gama de Plugins, que hacen cosas muy diferentes. Desde cambiar el idioma, hasta decirte la cobertura del código Java.</li>
			<li>Para los fanáticos de los editores de texto de color negro, Eclipse te deja personalizarlo a tu gusto. </li>
			<li>Ofrece herramientas para repositorios (como el Git) y servidores.</li>
		</ul>
		<p>Desventajas <button type="button" id="verDesventajas">Ver</button></p>
		<ul id="desventajasEclipse">
			<li>Hay muchos Plugins que te puedes instalar, eso es una ventaja. Pero es necesario tener muchos de ellos, para ver el total del funcionamiento de Eclipse. Y eso da lugar a pesadez.</li>
			<li>Eclipse ofrece muchos servicios, y por tanto consume muchos recursos. </li>
		</ul>
		<div class="container">
			<form>
				<a href="#" onclick="return false;"  data-toggle="popover" data-html="true" data-content="La versión actual de Eclipse es la 2019-03. Salió al público el día 20/03/2019. Es la versión 4.11.<br><br>Se prevee una futura versión llamada 2019-06, que saldrá el 19/06/2019. Será considerada la versión 4.12 de Eclispe." data-trigger="focus"><input type="submit" value="Saber más" name="sabermas"></a>
			</form>
		</div>
		
		</div>
		<div class="cuerpo">
		<h4>Plugins interesantes para el IDE Eclipse</h4>
		
		<h5><b>EGit</b></h5>
		<p>Para poder integrar el repositorio Git al IDE Eclipse, se necesita este Plugin. El Git, como mencionaba con anterioridad, es un sistema de control de versiones. Esto quiere decir, que te guarda todas las versiones que tienes del proyecto. Este plugin te permite hacer consultas al historial de versiones de manera más rápida.</p>
		<div class="container">
			<form>
				<a href="#" onclick="return false;" data-toggle="popover" data-html="true" data-content="La versión actual de EGit es la 3.10.0 (salió el 2 de mayo de 2019)" data-trigger="focus"><input type="submit" value="Saber más" name="sabermas"></a>
			</form>
		</div>
		
		<h5><b>ECobertura</b></h5>
		<p> Este Plugin es una herramienta de informes de cobertura de código Java. Te permite inciar tus aplicaciones y ver lo que está cubierto en ese momento y lo que no, desde Eclipse. Se distinguen por colores. Esto quiere decir, que comparas el código que ya tenías examinado, con el nuevo código, y te proporciona los resultados de la cobertura. Te dice que errores hay en el nuevo código. Ejemplo: variables que declaras y no usas</p>
		<div class="container">
			<form>
				<a href="#" onclick="return false;"  data-toggle="popover" data-html="true" data-content="La versión actual de ECobertura es la 1.12.1 (salió el 10 de mayo de 2018)" data-trigger="focus"><input type="submit" value="Saber más" name="sabermas"></a>
			</form>
		</div>
		
		<h5><b>SonarLint</b></h5>
		<p> Este Plugin, te ayuda a detectar y solucionar problemas de calidad a medida que escribes código. Funciona igual que un corrector ortográfico. Antes de evaluar el código, pasas esta herramienta, y te dice si los test Unitarios son correctos o no.</p>
		<div class="container">
			<form>
				<a href="#" onclick="return false;"  data-toggle="popover" data-html="true" data-content="La versión actual de SonarLint es la 4.0.2.3009 (salió el 3 de enero de 2019)" data-trigger="focus"><input type="submit" value="Saber más" name="sabermas"></a>
			</form>
		</div>
		
		<h5><b>Spring Tools</b></h5>
		<p>Te permite interpretar el código funete basado en Spring Boot y poder navegar por la aplicación sin problema.</p>
		<div class="container">
			<form>
				<a href="#" onclick="return false;"  data-toggle="popover" data-html="true" data-content="La versión actual de Spring Tools es la Spring Tools 4" data-trigger="focus"><input type="submit" value="Saber más" name="sabermas"></a>
			</form>
		</div>
		
		</div>
		<div class="cuerpo">
		
		<h4>JSTL: una herramienta muy útil para Eclipse</h4>
		
		<p>JavaServer Pages Standard Tag Library (más conocido como JSTL), es un componente de Java EE. Se usan para las páginas creadas con JSP, proporciona cuatro <span data-target="#librerias" data-toggle="modal">librerías de etiquetas</span>.</p>
		
		<div id="librerias" class="modal fade" role="dialog">
		  <div class="modal-dialog">
			<div class="modal-content">
			  <div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">Librerías de etiquetas de JSTL en Eclipse</h4>
			  </div>
			  <div class="modal-body">
				<ul>
					<li><b>Core:</b><p> iteraciones, condicionales, manipulación de URL y otras funciones generales.</p></li>
					<li><b>Xml:</b><p> para la manipulación de XML y para XML-Transformation.</p></li>
					<li><b>Sql:</b><p> para gestionar conexiones a bases de datos.</p></li>
					<li><b>Ftm:</b><p> para la internacionalización(proceso de diseñar software de manera tal que pueda adaptar a diferentes idiomas y regiones sin la necesidad de realizar cambios de ingeniería ni en el código) y formateo de las cadenas de caracteres como cifras.</p></li>
				</ul>
			  </div>
			</div>
		  </div>
	<script>
		$(document).ready(function(){
			//Controlar los popover
			$('[data-toggle="popover"]').popover({delay: { hide: 200 }, placement: 'left', trigger: 'focus'});
			$( window ).on('orientationchange', function() {
				$('[data-toggle="popover"]').popover('hide');
			});
			
			//Controlar los slideToggle
			$("#ventajasEclipse").hide();				
			$("#verVentajas").click(function(){
				$("#ventajasEclipse").slideToggle(500);
			});
			
			$("#desventajasEclipse").hide();
			$("#verDesventajas").click(function(){
				$("#desventajasEclipse").slideToggle(500);
			});
			
		});
		
	</script>
    </body>
</html>
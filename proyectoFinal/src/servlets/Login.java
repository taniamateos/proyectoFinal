package servlets;
 
import validador.Validador;

import java.io.IOException;
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.regex.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.bind.DatatypeConverter;

import dao.DaoUser;
 
public class Login extends HttpServlet {
	
	//Incluimos este método, para poder usar el Plugin de Cobertura
	public static void main(String[] args) {}
	
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	//Redirigir la página al index.jsp
        response.sendRedirect("../jsp/index.jsp");
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	//Para poder crear variableSesions de sesión
        HttpSession variableSesion = request.getSession(true);
        
        //Para poder mostrar por pantala, las excepciones
        PrintWriter out = response.getWriter();
        
        //Creamos una variableSesion de sesión, para el control de errores
        variableSesion.setAttribute("error", null);
        
        //Recogemos los datos introducidos por el usuario
        String usuario = request.getParameter("usuario");
        String password = request.getParameter("password");

        Validador v = new Validador();
        DaoUser d = new DaoUser();
        MessageDigest md = null;
		try {
			md = MessageDigest.getInstance("SHA-256");
		} catch (NoSuchAlgorithmException e1) {		
			e1.printStackTrace();
		} 
		 byte[] hashInBytes = md.digest(password.getBytes(StandardCharsets.UTF_8));
    	 StringBuilder sb = new StringBuilder();
         for (byte b : hashInBytes) {
             sb.append(String.format("%02x", b));
         }
         String contraseña=sb.toString();
        //Comprobación de que los campos no están vacíos
        if (usuario.isEmpty() || contraseña.isEmpty()) {
        	//Devuelve un mensaje de error
            variableSesion.setAttribute("error", "Existen campos vacíos");
        } else {               
            try {
            	//Conectamos con la base de datos
                d.conectar();
                
                //Si el usuario existe
                if (d.isAcountExists(usuario, contraseña)) {                 	
                	//Si este método devuelve datos, entonces si se redirigirá la página al index. Mediante los datos guardados en una variableSesion de sesión
	                String NombreUsuario = d.getNameByUsuario(usuario);	                
	                variableSesion.setAttribute("sessionNombre", NombreUsuario);
	                
	                //Guardamos el usuario en una variableSesion de sesión
	                variableSesion.setAttribute("sessionusuario", usuario);                           
                }else {
                	//Si no existe el usuario
                	variableSesion.setAttribute("error", "No existe ese usuario con esa contraseña,"+ contraseña);
                }
                
                //Si el usuario no existe, se desconecta de la base de datos
                d.desconectar();
 
            } catch (Exception e) {
            	//Si salta alguna excepción
            	out.println("Ha saltado una excepción: " +e);
            }
                    
        }
        //Si salta algún error, te redirige al login. Esto quiere decir, que no te va a mostrar ninguna otra página, hasta que todo vaya bien
    	response.sendRedirect("../jsp/login.jsp");
    }
}
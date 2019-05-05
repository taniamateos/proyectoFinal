package servlets;
 
import validador.*;

import java.util.regex.*;
import java.io.*;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.bind.DatatypeConverter;

import dao.*;
 
public class Register extends HttpServlet {
	
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	//Redirigimos al index.jsp
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
        
        //Para poder redirigir las páginas, cuando hay varios, necesitamos esta variable
        String page="";
        
        //Recogemos los datos enviados por el usuario
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String correo = request.getParameter("correo");
        String usuario = request.getParameter("usuario");
        String password = request.getParameter("password1");
        String confirm_password = request.getParameter("password2");
        
        Validador v = new Validador();
        Dao d = new Dao();      
        
        MessageDigest md = null;
		try {
			md = MessageDigest.getInstance("SHA-256");
		} catch (NoSuchAlgorithmException e1) {		
			e1.printStackTrace();
		} 
       
        //Cuando no vaya bien, nos quedamos en la página de registrarse
        page="../jsp/register.jsp";
        

        //Comprobamos que no hay ningún campo vacío
        if(nombre.isEmpty() || apellido.isEmpty() || correo.isEmpty() || usuario.isEmpty() || password.isEmpty() || confirm_password.isEmpty()){
        	//Devuelve un mensaje de error
        	variableSesion.setAttribute("error", "Existen campos vacíos");            
        } else {
                if(v.isUsernameOrPasswordValid(password)){
                    //Ahora verifico si la contraseña 1 y la contraseña 2 son iguales
                    if(password.equals(confirm_password)){
                        try {
                        	//Para encriptar la contraseña
                        	 byte[] hashInBytes = md.digest(password.getBytes(StandardCharsets.UTF_8));
                        	 StringBuilder sb = new StringBuilder();
                             for (byte b : hashInBytes) {
                                 sb.append(String.format("%02x", b));
                             }
                             String contraseña=sb.toString();
                             
                        	//Nos conectamos con la base de datos
                            d.conectar();
                            	//Comprobamos si ese usuario ya existe
                                if(d.isUsuarioRegistered(usuario)){
                                	//Devuelve el mensaje de error
                                    variableSesion.setAttribute("error", "Este usuario ya existe");
                                } else {
                                    //Llegado a este punto significa que todo esta correcto, por lo tanto registramos al nuevo usuario
                                    d.registerUser(nombre, apellido, correo, usuario, contraseña);  
                                  //Guardamos el usuario en una variableSesion de sesión
                	                variableSesion.setAttribute("sessionusuario", usuario);   
                                    //Redirigimos al index
                                    page="../jsp/index.jsp";
                                    
                                    variableSesion.setAttribute("error", null);                                    
                                }      
                                
                            d.desconectar();
                             
                        } catch (Exception e) { 
                        	//Si salta alguna excepción
                        	out.println("Ha saltado una excepción: " +e);
                    	}                      
                        
                    } else {
                    	//Si las contraseñas no son iguales
                        variableSesion.setAttribute("error", "Las contraseñas no son iguales");                        
                    }
                    
                } else {
                	//Si el formato no es válido de la contraseña
                    variableSesion.setAttribute("error", "El formato de la contraseña no es válido, no puede contener carácteres especiales");                   
                }                                          
        }
        
        //Cuando existen varias posibilidades de redirigir una página, una forma era como lo tenía en el Login. Y otra forma, es esta:
        RequestDispatcher dd=request.getRequestDispatcher(page); 
        dd.forward(request, response);
    }
 
}
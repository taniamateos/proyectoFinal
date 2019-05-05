package validador;
public class Validador {
	
	public boolean isUsernameOrPasswordValid(String cadenaIntroducida) {
	        char[] cadena = cadenaIntroducida.toLowerCase().toCharArray();
	 
	        
	        for (int i = 0; i < cadena.length; i++) {
	            //Comrpobar que no nos inyectan códigos en la base de datos
	            if (cadena[i] == ' '
	                    || cadena[i] == '='
	                    || cadena[i] == '?'
	                    || cadena[i] == '+'
	                    || cadena[i] == '*'
	                    || cadena[i] == '-'
	                    || cadena[i] == '%'
	                    || cadena[i] == '/'
	                    || cadena[i] == '.'
	                    || cadena[i] == ','
	                    || cadena[i] == ';'
	                    || cadena[i] == '!'
	                    || cadena[i] == '<'
	                    || cadena[i] == '>'
	                    || cadena[i] == ':') {
	                return false;
	            }
	 
	        }
        return true;
    
	}
}
package dao;
import java.sql.*;
 
public class Dao {
    public Connection conexion;
    public final static String userDb = "root";
    public final static String passDb = "";
    
    //Incluimos este método, para poder usar el Plugin de Cobertura
  	public static void main(String[] args) {}
  	
    //Conectar de la base de datos
    public void conectar() throws SQLException,ClassNotFoundException{
         Class.forName("com.mysql.jdbc.Driver");
         conexion=DriverManager.getConnection("jdbc:mysql://localhost:3306/datosusuarios",userDb, passDb);
    }
    
    //Desconectar de la base de datos
    public void desconectar() throws SQLException, ClassNotFoundException{
        conexion.close();
    }
    
    //Para comprobar que existe ese usuario con esa contraseña
    public boolean isAcountExists(String usuario, String password) throws SQLException{
        String sql = "SELECT * FROM datosusuarios WHERE usuario='"+usuario+"' AND clave='"+password+"'";
        PreparedStatement ps = conexion.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();        
        return rs.next();
    }
    
    //Para comprobar si un jusuario existe
    public boolean isUsuarioRegistered(String usuario) throws SQLException{
        String sql = "SELECT * FROM datosusuarios WHERE usuario='"+usuario+"'";
        PreparedStatement ps = conexion.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        return rs.next();
    }
    
    //Para registrar un usuario (insertarlo en la base de datos)
    public void registerUser(String nombre, String apellido, String correo, String usuario, String password) throws SQLException{
        String sql = "INSERT INTO datosusuarios VALUES (?,?,?,?,?)";
        PreparedStatement ps = conexion.prepareStatement(sql);
        ps.setString(1,nombre);
        ps.setString(2,apellido);
        ps.setString(3,correo);
        ps.setString(4,usuario);
        ps.setString(5,password);
        ps.executeUpdate();              
    }
}
 
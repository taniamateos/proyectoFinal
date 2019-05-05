package dao;
import java.sql.*;
 
public class DaoUser extends Dao {
    
    //Recuperamos el nombre, este método sirve para ver si con ese usuario, devuelve el nombre, es decir, que no está vacío, por lo que no existe
    public String getNameByUsuario(String usuario) throws SQLException{
        String sql = "SELECT * FROM datosusuarios WHERE usuario='"+usuario+"'";
        PreparedStatement ps = conexion.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
       
        if(rs.next()){
            return rs.getString("nombre");
        }
        
        return null;
    }
}
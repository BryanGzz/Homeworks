
package models;

import java.sql.*;
import java.util.*;

public class ComentariosDAO {
    private Connection conexion;
    
    private void abrirConexion() throws SQLException{
        String dbURL= "jdbc:derby://localHost:1527/Comments";
        
        String username= "Admin1";
        String password= "1666203";
        
        conexion= DriverManager.getConnection(dbURL, username, password);
    }
    
    private void cerrarConexion() throws SQLException{
        conexion.close();
    }
    
    public void insertar(ComentariosPOJO comentariosPojo){
        try{
          abrirConexion();
          
          String cadenaSql= "insert into COMENTARIOS values ('" + comentariosPojo.getNombre() + "', '" + comentariosPojo.getComentario() + "')"; 
          Statement stmt= conexion.createStatement();
          stmt.executeUpdate(cadenaSql);
          
          cerrarConexion();
        }catch(Exception e){
            
        }
    }
    
    public List buscar(ComentariosPOJO comentariosPojo){
 
        ResultSet resultSet;
        ArrayList beans = new ArrayList();
        
        try{
            abrirConexion();
            String sql = "select * from COMENTARIOS where NOMBRE = '" + comentariosPojo.getNombre() + " and COMENTARIO like '%" + comentariosPojo.getComentario() + "%'";
            Statement stmt = conexion.createStatement();
            resultSet = stmt.executeQuery(sql);
            
            while(resultSet.next()){
                String nombre = resultSet.getString("NOMBRE");
                String comentario = resultSet.getString("COMENTARIOS");
               
                beans.add(comentariosPojo); 
            }
            cerrarConexion();
        }catch(SQLException e){
            
        }
        return beans;
    }
}

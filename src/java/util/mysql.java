/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author LEONARDO
 */
public class mysql {
    
    public static Connection getConexion(){
        Connection con = null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/cafeteria";
            String urs = "root";
            String psw = "Leonardo99";
            con = DriverManager.getConnection(url, urs, psw);
            
                
        }catch(ClassNotFoundException e){
            System.out.println("error >> draver no instalado");
        }catch(SQLException e){
            System.out.println("error >> error en la conexion");
        }
        
        return con;
    }
            
    
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mantenimientos;

import beans.cafeteria;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import util.mysql;

/**
 *
 * @author LEONARDO
 */
public class gestionusuario {
    
    public void RegistraUser(String nombre, String apellido, String Correo, String pwd, String fecha){
        
        
        Connection cnx  = null;
        PreparedStatement pstm = null;
        try{
            cnx = mysql.getConexion();
            String sql = "INSERT INTO usuarios VALUES(0,?,?,?,?,?,0,0)";
            pstm = cnx.prepareStatement(sql);
            
            
            pstm.setString(1, nombre);
            pstm.setString(2, apellido);
            pstm.setString(3, Correo);
            pstm.setString(4, pwd);
            pstm.setString(5, fecha);
            
            pstm.executeUpdate();
            
        }catch(Exception e){
            e.printStackTrace();
        }finally{
            try{
                if (pstm != null) {
                    pstm.close();
                    if (cnx != null) {
                        cnx.close();
                    }
                }
 
            }catch(Exception e2){
                e2.printStackTrace();
            }
        }
    }
    
    public void sesion(String Correo, String pwd){
        String resultado = null;
        
        Connection cnx  = null;
        PreparedStatement pstm = null;
        try{
            cnx = mysql.getConexion();
            String sql = "SELECT * FROM usuarios where correo = ? and password = ? ";
            pstm = cnx.prepareStatement(sql);
            
           
            pstm.setString(1, Correo);
            pstm.setString(2, pwd);
           
            
            pstm.executeQuery();
           
            
        }catch(Exception e){
            e.printStackTrace();
           
        }finally{
            try{
                if (pstm != null) {
                    pstm.close();
                    if (cnx != null) {
                        cnx.close();
                    }
                }
 
            }catch(Exception e2){
                e2.printStackTrace();
            }
        }
        
       
    }
    
     public void sesionAdmin(String Correo, String pwd){
        String resultado = null;
        
        Connection cnx  = null;
        PreparedStatement pstm = null;
        try{
            cnx = mysql.getConexion();
            String sql = "SELECT * FROM admin where correo = ? and password = ? ";
            pstm = cnx.prepareStatement(sql);
            
           
            pstm.setString(1, Correo);
            pstm.setString(2, pwd);
           
            
            pstm.executeQuery();
           
            
        }catch(Exception e){
            e.printStackTrace();
        }finally{
            try{
                if (pstm != null) {
                    pstm.close();
                    if (cnx != null) {
                        cnx.close();
                    }
                }
 
            }catch(Exception e2){
                e2.printStackTrace();
            }
        }
        
       
    }
    
     
     public void registraProducto(String nombre, int precio, int stock, String categoria, String url){
        
        
        Connection cnx  = null;
        PreparedStatement pstm = null;
        try{
            cnx = mysql.getConexion();
            String sql = "INSERT INTO usuarios VALUES(0,?,?,?,?,'NA',?)";
            pstm = cnx.prepareStatement(sql);
            
            
            pstm.setString(1, nombre);
            pstm.setInt(2, precio);
            pstm.setInt(3, stock);
            pstm.setString(4, categoria);
            pstm.setString(5, url);
            
            pstm.executeUpdate();
            
        }catch(Exception e){
            e.printStackTrace();
        }finally{
            try{
                if (pstm != null) {
                    pstm.close();
                    if (cnx != null) {
                        cnx.close();
                    }
                }
 
            }catch(Exception e2){
                e2.printStackTrace();
            }
        }
    }
    
}

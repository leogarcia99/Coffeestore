/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package action;

import static com.opensymphony.xwork2.Action.SUCCESS;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import mantenimientos.gestionusuario;
import util.mysql;

/**
 *
 * @author LEONARDO
 */
public class inicia_sesion  {
    public String  correo, password;
    public String resultado = "";
    public String execute(){
        
        return SUCCESS;
    }
    
    public String inicia(){
       
        
        Connection cnx  = null;
        PreparedStatement pstm = null;
        try{
            cnx = mysql.getConexion();
            String sql = "SELECT * FROM usuarios where correo = ? and password = ? ";
            pstm = cnx.prepareStatement(sql);
            
           
            pstm.setString(1, correo);
            pstm.setString(2, password);
           
            
         ResultSet rs =  pstm.executeQuery();
         if(rs.next()){
             resultado = "success";
             
         }else{
           
            String sql1 = "SELECT * FROM admin where correo = ? and password = ? ";
            pstm = cnx.prepareStatement(sql1);
           
            pstm.setString(1, correo);
            pstm.setString(2, password);
           
            
         ResultSet rt =  pstm.executeQuery();
         
         if(rt.next()){
             resultado = "admin";
            
         }else{
             resultado = "error";
            }
           
       }
           
            
        }catch(Exception e){
            e.printStackTrace();
            resultado = "error";
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
                 resultado = "error";
            }
        }
        
         return resultado;
     }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package action;

import beans.cafeteria;
import com.opensymphony.xwork2.ActionSupport;
import mantenimientos.gestionusuario;


/**
 *
 * @author LEONARDO
 */
public class crea_cuenta {
    
    public String nombre, apellido, correo, password, confirmpassword, fecha;
    
    
     public String registra(){
         try{
             gestionusuario gt = new gestionusuario();
             gt.RegistraUser(nombre, apellido, correo, password, fecha);
             
             return "exito";
             
         }catch(Exception e){
            e.fillInStackTrace();
             return "error";
          
            
         }
         
     }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
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

    public String getConfirmpassword() {
        return confirmpassword;
    }

    public void setConfirmpassword(String confirmpassword) {
        this.confirmpassword = confirmpassword;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }
    
    
}

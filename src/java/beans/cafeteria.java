/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;



/**
 *
 * @author LEONARDO
 */
public class cafeteria{
    
    
    
    
    private String nombre, apellido, correo, pwd,confipwd, fecha;

    public cafeteria(String nombre, String apellido, String correo, String pwd, String confipwd, String fecha) {
        this.nombre = nombre;
        this.apellido = apellido;
        this.correo = correo;
        this.pwd = pwd;
        this.confipwd = confipwd;
        this.fecha = fecha;
    }

    public cafeteria() {
    }

    public cafeteria(String nombre, String apellido, String password, String confirmpassword, String fecha) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
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

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public String getConfipwd() {
        return confipwd;
    }

    public void setConfipwd(String confipwd) {
        this.confipwd = confipwd;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }
    
    
    
}

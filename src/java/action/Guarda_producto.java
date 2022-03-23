/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package action;

import static com.opensymphony.xwork2.Action.SUCCESS;
import java.io.File;
import java.io.IOException;
import java.nio.file.CopyOption;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;
import org.apache.struts2.ServletActionContext;

import util.mysql;

/**
 *
 * @author LEONARDO
 */
public class Guarda_producto {
    public String nombre, categoria,tamanio;
    public int precio, stock;
    public String Url;

    private List<principal> list = new ArrayList<principal>();
    private List<DatosPedido> listpedidos = new ArrayList<DatosPedido>();
    obtenerCarrito obten = new obtenerCarrito();
     public String registra() throws IOException{
         String resultado;
         
         

          Connection cnx  = null;
        PreparedStatement pstm = null;
        try{
            cnx = mysql.getConexion();
            String sql = "INSERT INTO productos VALUES(0,?,?,?,?,?,?)";
            pstm = cnx.prepareStatement(sql);
            
          
            pstm.setString(1, nombre);
            pstm.setInt(2, precio);
            pstm.setInt(3, stock);
            pstm.setString(4, categoria);
            pstm.setString(5, tamanio);
            pstm.setString(6, Url);
            
             int rs =  pstm.executeUpdate();
             
             if(rs>0) {
                resultado="exito";
            }else{
                  resultado="error";
             }
            
        }catch(Exception e){
            e.printStackTrace();
             resultado="error";
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
                 resultado="error";
            }
        }
         carga_p car = new carga_p();
         setList(car.listaP());
         setListpedidos(obten.listaPedidosGeneral());
         
        return resultado;
    
         
     }
     
     
     public int IDpro;
     public String Eliminap(){
          String resultado;
         

          Connection cnx  = null;
        PreparedStatement pstm = null;
        try{
            cnx = mysql.getConexion();
            String sql = "delete from productos where id_producto = ?";
            pstm = cnx.prepareStatement(sql);
            
          
            pstm.setInt(1, IDpro);
            
            
             int rs =  pstm.executeUpdate();
             
             if(rs>0) {
                resultado=SUCCESS;
            }else{
                  resultado="error";
             }
            
        }catch(Exception e){
            e.printStackTrace();
             resultado="error";
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
                 resultado="error";
            }
        }
         carga_p car = new carga_p();
         setList(car.listaP());
          setListpedidos(obten.listaPedidosGeneral());
        return resultado;
    
     }
             

    
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public int getPrecio() {
        return precio;
    }

    public void setPrecio(int precio) {
        this.precio = precio;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    /**
     * @return the list
     */
    public List<principal> getList() {
        return list;
    }

    /**
     * @param list the list to set
     */
    public void setList(List<principal> list) {
        this.list = list;
    }

    /**
     * @return the listpedidos
     */
    public List<DatosPedido> getListpedidos() {
        return listpedidos;
    }

    /**
     * @param listpedidos the listpedidos to set
     */
    public void setListpedidos(List<DatosPedido> listpedidos) {
        this.listpedidos = listpedidos;
    }

  
    
}

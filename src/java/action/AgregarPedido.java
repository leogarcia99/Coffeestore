/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package action;

import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import util.mysql;

/**
 *
 * @author LEONARDO
 */
public class AgregarPedido extends ActionSupport{
    
       public int inputidp, inputidu, inputprecio, inputcantidad;
    public String inputname, nameAction, correo, password;
    
    
    
    public int IDusuario, totalApagar;
    public String datos,COLONIA, CALLE, INDICACIONES; 
    
    private List<principal> list = new ArrayList<principal>();
     private List<DatosCarritos> listC = new ArrayList<DatosCarritos>();
    
     private List<DatosFavoritos> listFav = new ArrayList<DatosFavoritos>();
       private List<DatosPedido> listpedido = new ArrayList<DatosPedido>();
     
    @Override
     public String execute() throws SQLException{
    carga_p car = new carga_p();
    setList(car.listaP());
         
     cargarUser();
         
     obtenerCarrito Obten = new obtenerCarrito();
    
     
    setListFav(Obten.listaFav(IDusuario));
     sumaTotal();
    //
    
    String resultado="";
    
    Connection cnx  = null;
        PreparedStatement pstm = null;
        try{
            cnx = mysql.getConexion();
            String sql = "INSERT INTO pedidos VALUES(0,?,?,?,?,?,?,?,?,?,?)";
            pstm = cnx.prepareStatement(sql);
            
          
            pstm.setInt(1, IDusuario);
            pstm.setString(2, datos);
            pstm.setInt(3, totalApagar);
            pstm.setString(4, COLONIA);
            pstm.setString(5, CALLE);
            pstm.setString(6, INDICACIONES);
            pstm.setString(7, "En revicion");
            pstm.setString(8, "visible");
            pstm.setString(9, "visible");
             pstm.setString(10, "visible");
           
            
             int rs =  pstm.executeUpdate();
             
             if(rs>0) {
                resultado= SUCCESS;
                
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
        EliminaLista();
         
     setListC(Obten.listaC(IDusuario)); 
     setListpedido(Obten.listaPedidos(IDusuario));
       
    return resultado;
    
}
 public int TotalDelCarrito = 0;
 public String nombresTotales ="", preciosTotales="";
 
    public void sumaTotal(){
      for(DatosCarritos total: listC){
       nombresTotales =  total.nombre + " precio: "+total.precio+" cantidad: "+total.cantidad+ " total: "+total.total+" "+nombresTotales+"\n";
       TotalDelCarrito = TotalDelCarrito + total.total;
      }
    }
     
     
     public int ID;
     public String nombreUsuario, Apellidousuario;
 
     public void cargarUser(){
      Connection cnx  = null;
        PreparedStatement pstm = null;
        try{
            cnx = mysql.getConexion();
            String sql = "SELECT * FROM usuarios where id_usuario = ? ";
            pstm = cnx.prepareStatement(sql);
            
           
            pstm.setInt(1, IDusuario);
            
           
            
         ResultSet rs =  pstm.executeQuery();
         
       
         
         if(rs.next()){
              ID = rs.getInt("Id_usuario");
             nombreUsuario = rs.getString("nombre");
             Apellidousuario = rs.getString("apellido");
             
             
         }
            
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
     
     
     public void EliminaLista(){
           String resultado="";
    
    Connection cnx  = null;
        PreparedStatement pstm = null;
        try{
            cnx = mysql.getConexion();
            String sql = "delete from carritos where id_usuario = ?";
            pstm = cnx.prepareStatement(sql);
            pstm.setInt(1, IDusuario);
             int rs =  pstm.executeUpdate(); 
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
     

    public int getInputidp() {
        return inputidp;
    }

    public void setInputidp(int inputidp) {
        this.inputidp = inputidp;
    }

    public int getInputidu() {
        return inputidu;
    }

    public void setInputidu(int inputidu) {
        this.inputidu = inputidu;
    }

    public int getInputprecio() {
        return inputprecio;
    }

    public void setInputprecio(int inputprecio) {
        this.inputprecio = inputprecio;
    }

    public int getInputcantidad() {
        return inputcantidad;
    }

    public void setInputcantidad(int inputcantidad) {
        this.inputcantidad = inputcantidad;
    }

    public String getInputname() {
        return inputname;
    }

    public void setInputname(String inputname) {
        this.inputname = inputname;
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
     * @return the listC
     */
    public List<DatosCarritos> getListC() {
        return listC;
    }

    /**
     * @param listC the listC to set
     */
    public void setListC(List<DatosCarritos> listC) {
        this.listC = listC;
    }

    /**
     * @return the listFav
     */
    public List<DatosFavoritos> getListFav() {
        return listFav;
    }

    /**
     * @param listFav the listFav to set
     */
    public void setListFav(List<DatosFavoritos> listFav) {
        this.listFav = listFav;
    }

    /**
     * @return the listpedido
     */
    public List<DatosPedido> getListpedido() {
        return listpedido;
    }

    /**
     * @param listpedido the listpedido to set
     */
    public void setListpedido(List<DatosPedido> listpedido) {
        this.listpedido = listpedido;
    }
    
    
    
    
}

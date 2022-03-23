/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package action;

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
public class cargarProducto extends ActionSupport {

    public String correo, password, nombreUsuario, Apellidousuario;
    public int ID, numero;

    private List<principal> list = new ArrayList<principal>();

    private List<DatosCarritos> listC = new ArrayList<DatosCarritos>();

    private List<DatosFavoritos> listFav = new ArrayList<DatosFavoritos>();

    private List<DatosPedido> listpedido = new ArrayList<DatosPedido>();
    private List<DatosPedido> listpedidos = new ArrayList<DatosPedido>();
  obtenerCarrito obten = new obtenerCarrito();
    @Override
    public String execute() throws SQLException {
        String estado;
        carga_p car = new carga_p();

        //
        Connection cnx = null;
        PreparedStatement pstm = null;
        try {
            cnx = mysql.getConexion();
            String sql = "SELECT * FROM usuarios where correo = ? and password = ? ";
            pstm = cnx.prepareStatement(sql);

            pstm.setString(1, correo);
            pstm.setString(2, password);

            ResultSet rs = pstm.executeQuery();

            if (rs.next()) {
                ID = rs.getInt("Id_usuario");
                nombreUsuario = rs.getString("nombre");
                Apellidousuario = rs.getString("apellido");

                estado = SUCCESS;

                obtenerCarrito Obten = new obtenerCarrito();
                setListC(Obten.listaC(ID));

                sumaTotal();

                setListFav(Obten.listaFav(ID));

                setListpedido(Obten.listaPedidos(ID));

            } else {

                String sql1 = "SELECT * FROM admin where correo = ? and password = ? ";
                pstm = cnx.prepareStatement(sql1);

                pstm.setString(1, correo);
                pstm.setString(2, password);

                ResultSet rt = pstm.executeQuery();

                if (rt.next()) {
                    estado = "admin";

                } else {
                    estado = "error";
                }

            }

        } catch (Exception e) {
            e.printStackTrace();
            estado = "error";
        } finally {
            try {
                if (pstm != null) {
                    pstm.close();
                    if (cnx != null) {
                        cnx.close();
                    }
                }

            } catch (Exception e2) {
                e2.printStackTrace();
                estado = "error";
            }
        }

        setList(car.listaP());
      
        setListpedidos(obten.listaPedidosGeneral());
        return estado;
        //

    }

    public int TotalDelCarrito = 0;
    public String nombresTotales = "", preciosTotales = "";

    public void sumaTotal() {
        for (DatosCarritos total : listC) {
            nombresTotales = total.nombre + " precio: " + total.precio + " cantidad: " + total.cantidad + " total: " + total.total + " " + nombresTotales + "\n";
            TotalDelCarrito = TotalDelCarrito + total.total;
        }
    }

    public int ID1, precio1, stock1;
    public String nombre1, categoria1, tamanio1, Url1;

    public String ActualizaP() {

        String estado = "";
        carga_p car = new carga_p();

        //
        Connection cnx = null;
        PreparedStatement pstm = null;
        try {
            cnx = mysql.getConexion();
            String sql = "update productos set nombre = ?, precio = ?, stock = ?, categoria = ? , medida = ?, img = ? where id_producto =  ?";
            pstm = cnx.prepareStatement(sql);

            pstm.setString(1, nombre1);
            pstm.setInt(2, precio1);
            pstm.setInt(3, stock1);
            pstm.setString(4, categoria1);
            pstm.setString(5, tamanio1);
            pstm.setString(6, Url1);
            pstm.setInt(7, ID1);

            int rs = pstm.executeUpdate();

            if (rs > 0) {
                estado = SUCCESS;
            }

        } catch (Exception e) {
            e.printStackTrace();
            estado = "error";
        } finally {
            try {
                if (pstm != null) {
                    pstm.close();
                    if (cnx != null) {
                        cnx.close();
                    }
                }

            } catch (Exception e2) {
                e2.printStackTrace();
                estado = "error";
            }
        }
        setList(car.listaP());
 setListpedidos(obten.listaPedidosGeneral());
        return estado;
        //

    }
    
    public int IDpedido;
    public String actualizaEnvio(){
        String estado = "";
        carga_p car = new carga_p();

        //
        Connection cnx = null;
        PreparedStatement pstm = null;
        try {
            cnx = mysql.getConexion();
            String sql = "update pedidos set btnCancelar = 'hidden', btnenvio='hidden',  estado = 'En envio' where id_pedido =  ?";
            pstm = cnx.prepareStatement(sql);

            pstm.setInt(1, IDpedido);
           

            int rs = pstm.executeUpdate();

            if (rs > 0) {
                estado = SUCCESS;
            }

        } catch (Exception e) {
            e.printStackTrace();
            estado = "error";
        } finally {
            try {
                if (pstm != null) {
                    pstm.close();
                    if (cnx != null) {
                        cnx.close();
                    }
                }

            } catch (Exception e2) {
                e2.printStackTrace();
                estado = "error";
            }
        }
        setList(car.listaP());

        setListpedidos(obten.listaPedidosGeneral());
        return estado;
        //
    }
    
    public String Entregado(){
        String estado = "";
        carga_p car = new carga_p();

        //
        Connection cnx = null;
        PreparedStatement pstm = null;
        try {
            cnx = mysql.getConexion();
            String sql = "update pedidos set btnCancelar = 'hidden', btnenvio= 'hidden', btnentregar = 'hidden' ,estado = 'Entregado' where id_pedido =  ?";
            pstm = cnx.prepareStatement(sql);

            pstm.setInt(1, IDpedido);
           

            int rs = pstm.executeUpdate();

            if (rs > 0) {
                estado = SUCCESS;
            }

        } catch (Exception e) {
            e.printStackTrace();
            estado = "error";
        } finally {
            try {
                if (pstm != null) {
                    pstm.close();
                    if (cnx != null) {
                        cnx.close();
                    }
                }

            } catch (Exception e2) {
                e2.printStackTrace();
                estado = "error";
            }
        }
        setList(car.listaP());

        setListpedidos(obten.listaPedidosGeneral());
        return estado;
        //
    }

    public String Cancelado(){
        String estado = "";
        carga_p car = new carga_p();

        //
        Connection cnx = null;
        PreparedStatement pstm = null;
        try {
            cnx = mysql.getConexion();
            String sql = "update pedidos set btnCancelar = 'hidden', btnenvio= 'hidden', btnentregar = 'hidden' , estado = 'Cancelado' where id_pedido =  ?";
            pstm = cnx.prepareStatement(sql);

            pstm.setInt(1, IDpedido);
           

            int rs = pstm.executeUpdate();

            if (rs > 0) {
                estado = SUCCESS;
            }

        } catch (Exception e) {
            e.printStackTrace();
            estado = "error";
        } finally {
            try {
                if (pstm != null) {
                    pstm.close();
                    if (cnx != null) {
                        cnx.close();
                    }
                }

            } catch (Exception e2) {
                e2.printStackTrace();
                estado = "error";
            }
        }
        setList(car.listaP());

        setListpedidos(obten.listaPedidosGeneral());
        return estado;
        //
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

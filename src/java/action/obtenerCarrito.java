/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package action;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import util.mysql;

/**
 *
 * @author LEONARDO
 */
public class obtenerCarrito {
    public List<DatosCarritos> listaC( int IDU) {
		List<DatosCarritos> listC = new ArrayList<DatosCarritos>();
		
                Connection cnx  = null;
                 PreparedStatement pstm = null;
		try {
			cnx = mysql.getConexion();
			String sql = " select * from carritos where id_usuario ="+IDU+";";
			 pstm = cnx.prepareStatement(sql);
		         ResultSet rs = pstm.executeQuery();
			while (rs.next()) {
				DatosCarritos entity = new DatosCarritos();
                                entity.setId_carrito(rs.getInt("id_carrito"));
				entity.setId_producto(rs.getInt("id_producto"));
                                entity.setId_usuario(rs.getInt("id_usuario"));
                                entity.setNombre(rs.getString("nombre"));
                                entity.setPrecio(rs.getInt("precio"));
                                entity.setCantidad(rs.getInt("cantidad"));
                                entity.setTotal(rs.getInt("total"));
				listC.add(entity);
                                
                                
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
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
 
		return listC;
	}
    
    
    public List<DatosFavoritos> listaFav( int IDU) {
		List<DatosFavoritos> listC = new ArrayList<DatosFavoritos>();
		
                Connection cnx  = null;
                 PreparedStatement pstm = null;
		try {
			cnx = mysql.getConexion();
			String sql = " select * from favoritos where id_usuario ="+IDU+";";
			 pstm = cnx.prepareStatement(sql);
		         ResultSet rs = pstm.executeQuery();
			while (rs.next()) {
				DatosFavoritos entity = new DatosFavoritos();
                                entity.setId_fav(rs.getInt("id_fav"));
                                entity.setId_usuario(rs.getInt("id_usuario"));
				entity.setId_producto(rs.getInt("id_producto"));
                                entity.setNombre(rs.getString("nombre"));
                                entity.setPrecio(rs.getInt("precio"));
                               
				listC.add(entity);
                                
                                
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
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
 
		return listC;
	}
    
     public List<DatosPedido> listaPedidos( int IDU) {
		List<DatosPedido> listC = new ArrayList<DatosPedido>();
		
                Connection cnx  = null;
                 PreparedStatement pstm = null;
		try {
			cnx = mysql.getConexion();
			String sql = " select * from pedidos where id_usuario ="+IDU+";";
			 pstm = cnx.prepareStatement(sql);
		         ResultSet rs = pstm.executeQuery();
			while (rs.next()) {
				DatosPedido entity = new DatosPedido();
                               entity.setId_pedido(rs.getInt("id_pedido"));
                               entity.setId_usuario(rs.getInt("id_usuario"));
                               entity.setDatos(rs.getString("datos"));
                               entity.setTotal(rs.getInt("total"));
                               entity.setColonia(rs.getString("colonia"));
                               entity.setCalle(rs.getString("calle"));
                               entity.setIndicaciones(rs.getString("indicaciones"));
                               entity.setEstado(rs.getString("estado"));
                               entity.setBtnCancelar(rs.getString("btnCancelar"));
                               entity.setBtnentregar(rs.getString("btnentregar"));
                              
                               entity.setBtnenvio(rs.getString("btnenvio"));
				listC.add(entity);
                                
                                
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
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
 
		return listC;
	}
     
      public List<DatosPedido> listaPedidosGeneral() {
		List<DatosPedido> listC = new ArrayList<DatosPedido>();
		
                Connection cnx  = null;
                 PreparedStatement pstm = null;
		try {
			cnx = mysql.getConexion();
			String sql = " select * from pedidos;";
			 pstm = cnx.prepareStatement(sql);
		         ResultSet rs = pstm.executeQuery();
			while (rs.next()) {
				DatosPedido entity = new DatosPedido();
                               entity.setId_pedido(rs.getInt("id_pedido"));
                               entity.setId_usuario(rs.getInt("id_usuario"));
                               entity.setDatos(rs.getString("datos"));
                               entity.setTotal(rs.getInt("total"));
                               entity.setColonia(rs.getString("colonia"));
                               entity.setCalle(rs.getString("calle"));
                               entity.setIndicaciones(rs.getString("indicaciones"));
                               entity.setEstado(rs.getString("estado"));
                               entity.setBtnCancelar(rs.getString("btnCancelar"));
                               entity.setBtnentregar(rs.getString("btnentregar"));
                             
                               entity.setBtnenvio(rs.getString("btnenvio"));
				listC.add(entity);
                                
                                
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
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
 
		return listC;
	}
}

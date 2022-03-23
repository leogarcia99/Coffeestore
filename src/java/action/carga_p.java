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
public class carga_p{
    
    
    
    public List<principal> listaP() {
		List<principal> list = new ArrayList<principal>();
		
                Connection cnx  = null;
                 PreparedStatement pstm = null;
		try {
			cnx = mysql.getConexion();
			String sql = " select * from productos;";
			 pstm = cnx.prepareStatement(sql);
		         ResultSet rs = pstm.executeQuery();
			while (rs.next()) {
				principal entity = new principal();
                                entity.setId_producto(rs.getInt("id_producto"));
				entity.setNombre(rs.getString("nombre"));
				entity.setPrecio(rs.getInt("precio"));
				entity.setStock(rs.getInt("stock"));
                                entity.setCategoria(rs.getString("categoria"));
                                entity.setMedida(rs.getString("medida"));
                                entity.setImg(rs.getString("img"));
				list.add(entity);
                                
                                
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
 
		return list;
	}
}

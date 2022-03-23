/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package action;

/**
 *
 * @author LEONARDO
 */
public class DatosCarritos {
    
     int id_carrito;
    private int id_producto;
    private int id_usuario;
     String nombre;
     int precio;
     int cantidad;
     int total;

    public int getId_carrito() {
        return id_carrito;
    }

    public void setId_carrito(int id_carrito) {
        this.id_carrito = id_carrito;
    }

    public int getId_producto() {
        return id_producto;
    }

    public void setId_producto(int id_productoCarrito) {
        this.id_producto = id_productoCarrito;
    }

    public int getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(int id_usuarioCarrito) {
        this.id_usuario = id_usuarioCarrito;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombreCarrito) {
        this.nombre = nombreCarrito;
    }

    public int getPrecio() {
        return precio;
    }

    public void setPrecio(int precioCarrito) {
        this.precio = precioCarrito;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidadCarrito) {
        this.cantidad = cantidadCarrito;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int totalCarrito) {
        this.total = totalCarrito;
    }
    
    
    
    
    
}

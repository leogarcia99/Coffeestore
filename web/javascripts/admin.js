


function muestraEdicion(id_producto, nombre, precio, stock, categoria, medida, img){
    document.getElementById("bajaEdicion").className = "bajaEdicion";
    document.getElementById("id1").value = id_producto;
    document.getElementById("nombre1").value = nombre;
    document.getElementById("precio1").value = precio;
    document.getElementById("stock1").value = stock;
    document.getElementById("categoria1").value = categoria;
    document.getElementById("tamanio1").value = medida;
    document.getElementById("Url1").value = img;
}

function cerrar(){
      document.getElementById("bajaEdicion").className = "targetaEdicion";
}
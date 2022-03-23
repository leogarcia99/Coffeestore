<%-- 
    Document   : administrador
    Created on : 11/11/2021, 01:08:55 PM
    Author     : LEONARDO
--%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CoffeeStore</title>
       
        <link rel="stylesheet" href="../css/admin.css" type="text/css"/>
        <script src="../javascripts/admin.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
        
       
        <script src="https://kit.fontawesome.com/30bb6915e6.js" crossorigin="anonymous"></script>
    </head>
    <body class="bg-dark">
        
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark mb-5" style="position:  fixed; width: 100%">
            <div class="container-fluid">
                <a class="navbar-brand" href="#"><h2>CoffeeStore ADMIN</h2></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                  

                    <div style="width:100%; text-align: right;">
                      
                        <a class="btn btn-outline-success" href="../">Cerrar Sesion</a>
                    </div>

                </div>
            </div>
        </div>
    </nav>
        <br>
        <br>
        <br>
        <br>
        <br>
        <div class="text-white">
            
        <div class="gridd">
            <div> 
              <form action="registraP" method="post">
                  <div class="formulario">
                        <h1>Agregado de productos</h1>
                         <label> Nombre del producto</label>
                         <input type="text" name="nombre" id="nombre" class="form-control bg-dark text-white" placeholder="Nombre" required>
                          <label> Precio del producto</label>
                          <input type="number" name="precio" id="precio" class="form-control bg-dark text-white" placeholder="Precio" required>
                           <label> Stock del producto</label>
                           <input type="number" name="stock" id="stock" class="form-control bg-dark text-white" placeholder="Stock" required>
                            <label> Categoria del producto</label>
                            <select name="categoria" id="categoria" class="form-control bg-dark text-white" placeholder="Categoria" required>
                                <option>Café Arábica o Arábigo</option>
                                <option>Café Moca</option>
                                <option>Café KENYA AA</option>
                                <option>Café TARRAZÚ</option>
                                <option>Café HARRAR</option>
                                <option>Café YIRGACHEFFE</option><!-- comment -->
                                <option>Café KOPI LUWAK</option><!-- comment -->
                                <option>Café MANDHELING Y LINGTON</option><!-- comment -->
                                <option>Café BLUE MOUNTAIN</option><!-- comment -->
                                
                                
                            </select>
                              <input type="text" name="tamanio" id="stock" class="form-control bg-dark text-white" placeholder="Tamaño" required>
                            
                             <input type="text" name="Url" id="Url" class="form-control bg-dark text-white" placeholder="Url" required>
                            
                            
                             <button class="btn btn-success">Registrar Producto</button>
                  </div> 
              </form>
            </div>
            <div>
                <h1>productos agregados</h1>
                <table class="table table-dark table-hover">
                    <tr>
                        <th>#</th>
                        <th>Nombre</th>
                        <th>Precio</th>
                        <th>Stock</th>
                        <th>Categoria</th>
                        <th>Medida</th>
                        <th>Imagen</th>
                    </tr>
                    <s:iterator  value="list">
                         <tr>
                             <td>${id_producto}</td>
                             <td>${nombre}</td>
                             <td>${precio}</td>
                             <td>${stock}</td>
                             <td>${categoria}</td>
                             <td>${medida}</td>
                             <td>
                             <img src="${img}" alt="alt" width="50px"/>
                             </td>
                             <td>
                                 <form action="eliminaPro" method="post">
                                     <input type="number" value="${id_producto}" style="visibility: hidden; width: 0px; height: 0px;" name="IDpro">
                                     <button type="submit" class="btn btn-danger"> <i class="fas fa-trash-alt"></i></button>
                                 </form>
                                     <button type="button" class="btn btn-success muestrabtn"  onclick="muestraEdicion(${id_producto}, '${nombre}', ${precio}, ${stock}, '${categoria}', '${medida}', '${img}')"> <i class="fas fa-pen"></i></button>
                             </td>
                            
                         </tr>
                    </s:iterator>
             </table>
                     
            </div>
        </div>  
            <div class="targetaEdicion" id="bajaEdicion">
                 <form action="ActualizaProducto" method="post">
                  <div class="">
                        <h1>Actualizar Producto</h1>
                        <label>ID</label>
                        <input type="number" name="ID1" id="id1" class="form-control bg-dark text-white" placeholder="Id producto" required>
                         <label> Nombre del producto</label>
                         <input type="text" name="nombre1" id="nombre1" class="form-control bg-dark text-white" placeholder="Nombre" required>
                          <label> Precio del producto</label>
                          <input type="number" name="precio1" id="precio1" class="form-control bg-dark text-white" placeholder="Precio" required>
                           <label> Stock del producto</label>
                           <input type="number" name="stock1" id="stock1" class="form-control bg-dark text-white" placeholder="Stock" required>
                            <label> Categoria del producto</label>
                            <select name="categoria1" id="categoria1" class="form-control bg-dark text-white" placeholder="Categoria" required>
                                <option>Café Arábica o Arábigo</option>
                                <option>Café Moca</option>
                                <option>Café KENYA AA</option>
                                <option>Café TARRAZÚ</option>
                                <option>Café HARRAR</option>
                                <option>Café YIRGACHEFFE</option><!-- comment -->
                                <option>Café KOPI LUWAK</option><!-- comment -->
                                <option>Café MANDHELING Y LINGTON</option><!-- comment -->
                                <option>Café BLUE MOUNTAIN</option><!-- comment -->
                                
                                
                            </select>
                             <label> Tamaño</label>
                              <input type="text" name="tamanio1" id="tamanio1" class="form-control bg-dark text-white" placeholder="Tamaño" required>
                             <label> Imagen Url</label>
                             <input type="text" name="Url1" id="Url1" class="form-control bg-dark text-white" placeholder="Url" required>
                            
                            
                             <button class="btn btn-success">Actualizar</button>
                            
                  </div> 
              </form>
                 <button class="btn btn-danger" onclick="cerrar()">Cancelar</button>
            </div> 
            
            <div>
                <h1>Pedidos</h1>
                 <table class="table table-dark table-hover">
                    <tr>
                        <th>#</th>
                        <th>id Usuario</th>
                        <th>Datos</th>
                        <th>total</th>
                        <th>colonia</th>
                        <th>calle</th>
                        <th>indicaciones</th>
                        <th>estado</th>
                          
                    </tr>
                     <s:iterator value="listpedidos">
                    <tr>
                             <td>${id_pedido}</td>
                             <td>${id_usuario}</td>
                             <td>${Datos}</td>
                             <td>${total}</td>
                             <td>${colonia}</td>
                             <td>${calle}</td>
                             <td>${indicaciones}</td>
                             <td>${estado}</td>
                             <td>
                                 <form action="MarcarEnvio" method="post">
                                     <input type="number" value="${id_pedido}" style="visibility: hidden; width: 0px; height: 0px;" name="IDpedido">
                                     <button type="submit" class="btn btn-primary" style="visibility: ${btnenvio}"> Marcar En envio</button>
                                 </form>
                                 <form action="marcaCancelado" method="post">
                                      <input type="number" value="${id_pedido}" style="visibility: hidden; width: 0px; height: 0px;" name="IDpedido">
                                     <button type="submit" class="btn btn-danger muestrabtn" style="visibility: ${btnCancelar}"> Cancelar </button>
                                 </form>
                                     
                                 <form action="marcaEntregado" method="post">
                                      <input type="number" value="${id_pedido}" style="visibility: hidden; width: 0px; height: 0px;" name="IDpedido">
                                     <button type="submit" class="btn btn-success muestrabtn" style="visibility: ${btnentregar}"> Marcar Entrega </button>
                                 </form>
                                     
                                     
                             </td>
                            
                         </tr>
                </s:iterator>
                    </table>
               
            </div>
    </div>
    <footer class="bg-secondary" style="width: 100%; height: 60px;">
        <div class="container">
            <div class="row">
                <div class="col">
                    <h3 class="mt-3">Derechos de autor</h3>
                </div>
            </div>
        </div>
    </footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
</body>
</html>


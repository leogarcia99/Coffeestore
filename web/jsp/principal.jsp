<%-- 
    Document   : principal
    Created on : 4/11/2021, 12:05:06 PM
    Author     : LEONARDO
--%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/index.css" type="text/css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-W8fXfP3gkOKtndU4JGtKDvXbO53Wy8SZCQHczT5FMiiqmQfUpWbYdTil/SxwZgAN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js" integrity="sha384-skAcpIdS7UcVUC05LJ9Dxay8AXcDYfBJqt1CJ85S/CFujBsIzCIv+l9liuYLaMQ/" crossorigin="anonymous"></script>
        <script src="https://kit.fontawesome.com/30bb6915e6.js" crossorigin="anonymous"></script>
        <script src="../javascripts/principal.js"></script>
        <title>JSP Page</title>
    </head>
    <body class="bg-dark">

        <nav class="navbar navbar-expand-lg navbar-dark bg-dark mb-5" style="position:  fixed; width: 100%; z-index: 100px">
            <div class="container-fluid">
                <a class="navbar-brand" href="#"><h2>CoffeeStore</h2></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                    <div class="navbar-nav">
                        <a class="nav-link active" aria-current="page" href="#">Inicio</a>
                        <a class="nav-link active" aria-current="page" href="https://mycafeteriatopicos.wordpress.com/">blog</a>
                    </div>

                    <div style="width:100%; text-align: right;">
                        <button type="button" class="btn btn-outline-primary carritobtn"  ><i class="fas fa-shopping-cart"></i> Mi carrito</button>

                        <button type="button" class="btn btn-outline-danger favoritobtn"><i class="far fa-heart"></i> Mis Favoritos</button>
                        <button type="button" class="btn btn-outline-success userbtn" ><i class="fas fa-user"></i> ${nombreUsuario} </button>
                        <a href="../" class="btn btn-outline-success"> Salir</a>  
                    </div>

                </div>
            </div>
            <div class="targeta-carrito text-white text-center" id="carritobtn">
                <h3 class="text-white">Mi lista de deseos</h3>
                <div class="contenedor">
                    <s:iterator  value="listC">
                        <div class="listaCarrito">
                            <h5>${nombre}</h5>
                            <label> precio: $${precio}</label>
                            <label> Piezas ${cantidad}</label>
                            <label> Total $${total}</label> <br>

                            <button type="submit" class="btn btn-danger"><i class="fas fa-trash-alt"></i></button>
                        </div>
                    </s:iterator> 
                </div>

                <label class="text-white"> total a pagar ${TotalDelCarrito}</label> <br>
                <button type="submit" class="btn btn-primary btnhacerpedido">Hacer pedido</button>
            </div>
                


            <div class="targeta-favoritos"  id="favoritobtn">
                <h3 class="text-white">Mis Favoritos</h3>
                <div class="contenedor">
                    <s:iterator  value="listFav">
                        <div class="listaCarrito">
                            <h5>${nombre}</h5>
                            <label> precio: $${precio}</label>
                            <button type="submit" class="btn btn-danger"><i class="fas fa-trash-alt"></i></button>
                        </div>
                    </s:iterator> 
                </div>


            </div>


            <div class="targeta-user" id="userbtn">
                <div id="pedidosApartado">
                    <div>
                        <h2 class="text-white">${nombreUsuario}</h2>
                        <label class="text-white ">${correo}</label>
                        <hr class="text-white">
                    </div>
                    <div class="listPedidos">
                        <h3 class="text-white">Mis pedidos</h3>
                        <div class="listaMispedidos">
                            <table class="table table-dark table-hover">
                                <tr>
                                    <th>#</th>
                                    <th>Total a pagar</th>
                                    <th>Estado</th>
                                </tr>


                                <s:iterator  value="listpedido">

                                    <tr>  
                                        <td>${id_pedido}</td>
                                        <td>${total}</td>
                                        <td>${estado}</td>


                                        <td> 
                                            <form action="CancelarPedido" method="post">
                                                <input type="number" name="IDusuario" value="${id_usuario}" style="visibility: hidden; width: 0px; height: 0px">
                                                <input type="number" name="IDPEDIDO" value="${id_pedido}" style="visibility: hidden; width: 0px; height: 0px">
                                                <button type="submit" class="btn btn-danger" style="visibility: ${btnCancelar}"> Cancelar</button>
                                            </form>
                                        </td>



                                    </tr>             
                                </s:iterator> 



                            </table>

                        </div>
                    </div>

                </div>

                <div class="actualizaUsuario">
                    <h3 class="text-white">Configuracion</h3>
                    <label class="text-white">Nombre</label>
                    <input type="text" class="form-control" value="${nombreUsuario} ${Apellidousuario}">
                    <label class="text-white">Correo</label>
                    <input type="email" class="form-control" value="${correo}">
                     <label class="text-white">Contraseña</label>
                     <input type="password" class="form-control" >
                     <button type="submit" class="btn btn-outline-success"> Actualizar</button>
                </div> 

            </div>

            <div class="targeta-confirmaPedido" id="confirmabtn">

                <form action="RealizaPedido" method="post">
                    <input type="number" name="IDusuario" value="${ID}" style="visibility: hidden; width: 0px;">
                    <label  class=" text-white">Confirma Pedido</label> <br>
                    <label  class=" text-white">lista</label>
                    <textarea class="form-control" name="datos" style="width: 400px; height: 100px;">${nombresTotales}</textarea>

                    <label style="visibility: hidden">Total a pagar</label>
                    <input type="number" name="totalApagar" value="${TotalDelCarrito}" style="visibility: hidden">
                    <br>
                    <label  class=" text-white">Colonia</label>
                    <input type="text" class="form-control" naME="COLONIA" required>

                    <label  class=" text-white">Calle</label>
                    <input type="text" class="form-control" required name="CALLE">

                    <label  class="form-label text-white">Indicaciones Extras</label>
                    <input type="text" class="form-control" required name="INDICACIONES">

                    <button class="btn btn-success"> Realizar pedido</button>
                </form>
            </div>

        </nav>
        <br>
        <br>
        <br>
        <br>
        <br>
        <div>
            <div style="display: inline-flex" class="mb-5">
                <div class="container">
                    <div class="row">
                        <div class="col">
                            <img src="https://i.ibb.co/HX326Jz/logo.png" border="0" alt="imagen personas tomando cafe" width="600px">
                        </div>
                    </div>
                </div>
                <div class="container">
                    <div class="row">
                        <div class="col"> 
                            <h1 class="text-white mt-5">¡Bienvenido a Coffeestore!</h1>
                            <p class="text-white mt-3">
                                Estamos aquí para ustedes. (Si estás visitando nos de un smartphone el menú de los secciones de la página está arriba por la derecha).
                                Si tienen dudas de compras de panqués enteros, servicios en general, horarios o las medidas sanitarias durante ‘la nueva normalidad’, se pueden escribir aquí:  info@store.com 
                                Queremos construir y ser parte del mundo en el que queremos vivir.
                            </p>
                            <br>
                            <a class="btn bg-success btn-lg" href="#horario">Empezar <i class="fas fa-arrow-right"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container text-white mb-2">
                <div class="row">
                    <div class="col">
                        <h1 class="text-white mt-3" id="horario">Horarios</h1>
                        <table style="width: 90%">
                            <thead>
                                <tr>
                                    <th>Condesa</th>
                                    <th>Cuauhtémoc</th>
                                    <th>Lomas de Chapultepec</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>primera de mayo 233e</td>
                                    <td>Río Lerma 179</td>
                                    <td>Prado Norte 421 A</td>
                                </tr>
                                <tr>
                                    <td>HORARIO</td>
                                    <td>HORARIO</td>
                                    <td>HORARIO</td>
                                </tr>
                                <tr>
                                    <td>Lunes - Sabado <br> 
                                        7:30 a.m.  —  20:30 p.m. 
                                        <br>
                                        domingo
                                        <br> 8:30 a.m.  —  18:30 p.m. </td>
                                    <td> lunes — viernes <br>
                                        7:30 a.m.  —  20:30 p.m.
                                        <br>
                                        sábado y domingo
                                        <br>
                                        8:30 a.m.  —  18:30 p.m.

                                    </td>
                                    <td>
                                        lunes — viernes
                                        <br>
                                        7:30 a.m.  —  20:30 p.m.
                                        <br>
                                        sábado y domingo
                                        <br>
                                        8:30 a.m.  —  18:30 p.m.
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

            <div class="text-white Products">
                <h1>Productos</h1>
                <div class="disp">
                    <s:iterator  value="list">
                        <div class="cardd  bg-dark">


                            <div class="fav">
                                <form action="guardaFav" method="post">
                                    <button  class="btn text-white btnfav"> <i class="far fa-heart"></i></button>
                                    <input type="number"  name="inputidu" value="${ID}" style="visibility: hidden; width: 0px; height:  0px;"> 
                                    <input type="number" name="inputidp" style="visibility: hidden;  width: 0px; height:  0px;" value="${id_producto}">
                                    <input type="text"  name="inputname"  value="${nombre}" style="visibility: hidden;  width: 0px; height:  0px;">
                                    <input type="number" name="inputprecio" value="${precio}" style="visibility: hidden;  width: 0px; height:  0px;">

                                </form>
                            </div>
                            <div class="center-card">
                                <img src="${img}" id="imagen">
                                <h5 id="name">${nombre}</h5>
                            </div>
                            <div class="despliega">
                                <h6 id="precios">MXN$${precio} </h6>
                                <label>Cantidad disponible: ${stock}</label> 
                                <label id="medida">De ${medida}</label>

                            </div>
                            <div class="butons">

                                <button type="button" class="btn btn-outline-primary btnBajaTargeta btncarrito" onclick="confirmaC(${id_producto},${ID}, '${nombre}', ${precio}, ${stock});" id="btncarrito"> Agregar Al Carrito</button>  
                                <label style="visibility: hidden;" id="idProducto"> ${id_producto}</label>

                            </div>
                        </div>
                    </s:iterator>
                </div>
            </div>


        </div>

        <div class="targeta-confirma-carrito" id="targetaconfirmaCarrito">
            <div class="close">

                <button class="btn text-white" id="btnEmergenteClose" onclick="cerrarCard()"><i class="fas fa-times-circle"></i></button>
            </div>
            <form action="GuardarEnEspera" method="post">
                <input type="number" id="inputidp" name="inputidp">
                <input type="number" id="inputidu" name="inputidu"> 
                <br>
                <label class="text-white">Nombre</label>
                <input type="text" id="inputname" name="inputname" class="form-control">
                <label class="text-white">Precio</label>
                <input type="number" id="inputprecio" name="inputprecio" class="form-control">
                <label class="text-white">Cantidad</label>
                <input type="number"  name="inputcantidad" class="form-control" required id="inputcantidad">
                <br> 

                <button class="btn btn-primary w-100">Confirmar Apartado</button>
            </form>
            <button class="btn btn-danger w-100" onclick="cerrarCard()">Cancelar</button>
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

</body>
</html>

<%-- 
    Document   : crea_cuenta
    Created on : 02-oct-2021, 12:56:04
    Author     : LEONARDO
--%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-W8fXfP3gkOKtndU4JGtKDvXbO53Wy8SZCQHczT5FMiiqmQfUpWbYdTil/SxwZgAN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js" integrity="sha384-skAcpIdS7UcVUC05LJ9Dxay8AXcDYfBJqt1CJ85S/CFujBsIzCIv+l9liuYLaMQ/" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/30bb6915e6.js" crossorigin="anonymous"></script>
        <title>JSP Page</title>
    </head>
    <body class="bg-dark">
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark mb-5">
        <div class="container-fluid">
          <a class="navbar-brand" href="../"><h2>Coffestore</h2></a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav">
              <a class="nav-link active" aria-current="page" href="./jsp/index.jsp">Inicio</a>
             <a class="nav-link active" aria-current="page" href="https://mycafeteriatopicos.wordpress.com/">blog</a>
            </div>

            <div style="width:100%; text-align: right;">
                <a class="btn btn-outline-success" href="../jsp/iniciar_sesion.jsp">Iniciar sesion</a>
            
            </div>

            </div>
          </div>
        </div>
      </nav>
      <div>

     
<div style="display: inline-flex" class="mb-5">
    <div class="container">
        <div class="row">
            <div class="col">
               <img src="https://i.ibb.co/HX326Jz/logo.png" alt="imagen personas tomando cafe" width="600px">
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col"> 
                <form action="Resgistra" class="text-white" method="post">
                    <h2> Registrate ¡Es gratis!</h2>
                    
                    <table>
                        <tr>
                            <th></th>
                            <th></th>
                        </tr>
                        <tr>
                            <td>
                                <label class="">Nombre</label>
                                <input type="text" name="nombre" id="nombre" class="form-control bg-dark text-white" placeholder="Nombre" style="border-color: rgb(0, 128, 32);">
                            </td> 
                            <td>
                                <label class="">Apellido</label>
                                <input type="text" name="apellido" id="apellido" class="form-control  bg-dark text-white" placeholder="Apellido" style="border-color: rgb(0, 128, 32);">
                            </td> 
                               
                        </tr>

                        <tr>
                            <td colspan="2">
                                <label class="">Correo</label>
                                <input type="email" name="Correo" id="Correo" class="form-control  bg-dark text-white" placeholder="Correo" style="border-color: rgb(0, 128, 32);">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <label class="">Contraseña</label>
                                <input type="password" name="password" id="password" class="form-control  bg-dark text-white" placeholder="Contraseña" style="border-color: rgb(0, 128, 32);">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <label class="">Confrima contraseña</label>
                                <input type="password" name="confirmPassword" id="confirmPassword" class="form-control  bg-dark text-white" placeholder="Contraseña" style="border-color: rgb(0, 128, 32);">
                            </td>
                        </tr>

                        <tr>
                            <td colspan="2">
                                <label class="">Fecha de nacimiento</label>
                                <input type="date" name="fecha" id="fecha" class="form-control  bg-dark text-white" placeholder="Fecha nacimiento" style="border-color: rgb(0, 128, 32);">
                            </td>
                        </tr>
                        
                        <tr>
                            <td colspan="2"> 
                                <button class="btn btn-success m-1">Registrarse</button>
                            </td>
                        </tr>
                       
                    </table>


                   
                </form>
            </div>
        </div>
    </div>
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

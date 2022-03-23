<%-- 
    Document   : iniciar_sesion
    Created on : 02-oct-2021, 12:53:13
    Author     : LEONARDO
--%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="C:\Users\LEONARDO\OneDrive\Escritorio\practicas Web\Web1\css\principal.css">
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
          <a class="navbar-brand" href="../"><h2>CoffeStore</h2></a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav">
              <a class="nav-link active" aria-current="page" href="./">Inicio</a>
              <a class="nav-link active" aria-current="page" href="https://mycafeteriatopicos.wordpress.com/">nuetro blog</a>
            </div>

            <div style="width:100%; text-align: right;">
                <a class="btn btn-outline-success" href="crea_cuenta.jsp">Crear cuenta</a>
            
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
                <form action="iniciar" class="text-white" method="post">
                    <h2> Iniciar sesion</h2>
                    <label class="m-2">Correo</label>
                    <input type="email" name="correo" id="Correo" class="form-control m-2 bg-dark text-white" placeholder="Correo Electronico" style="border-color: rgb(0, 128, 32);">
                    <label class="m-2">Contraseña</label>
                    <input type="password" name="password" id="Password" class="form-control m-2 bg-dark text-white" placeholder="Contraseña" style="border-color: rgb(0, 128, 32);">

                    <button class="btn btn-success m-2" >Ingresar</button>
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

<%-- 
    Document   : index
    Created on : 15-sep-2021, 13:32:35
    Author     : LEONARDO
--%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CoffeeStore</title>
        <link rel="stylesheet" href="C:\Users\LEONARDO\OneDrive\Escritorio\practicas Web\Web1\css\principal.css">
        <link rel="stylesheet" href="../css/index.css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-W8fXfP3gkOKtndU4JGtKDvXbO53Wy8SZCQHczT5FMiiqmQfUpWbYdTil/SxwZgAN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js" integrity="sha384-skAcpIdS7UcVUC05LJ9Dxay8AXcDYfBJqt1CJ85S/CFujBsIzCIv+l9liuYLaMQ/" crossorigin="anonymous"></script>
        <script src="https://kit.fontawesome.com/30bb6915e6.js" crossorigin="anonymous"></script>
    </head>
    <body class="bg-dark">
        
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark mb-5" style="position:  fixed; width: 100%">
            <div class="container-fluid">
                <a class="navbar-brand" href="#"><h2>CoffeeStore</h2></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                    <div class="navbar-nav">
                        <a class="nav-link active" aria-current="page" href="https://mycafeteriatopicos.wordpress.com/">Nuetro Blog</a>
                        
                    </div>

                    <div style="width:100%; text-align: right;">
                        <a class="btn btn-outline-secondary" href="./jsp/crea_cuenta.jsp">Crear cuenta</a>
                        <a class="btn btn-outline-success" href="./jsp/iniciar_sesion.jsp">Iniciar sesion</a>
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

addEventListener('DOMContentLoaded', () => {
    const btn_menu  = document.querySelector('.carritobtn');
    if(btn_menu){
        btn_menu.addEventListener('click', () =>{
            const menu = document.querySelector('.targeta-carrito');
            menu.classList.toggle('star');
            
            const btn_fav = document.getElementById("favoritobtn");
            btn_fav.className="targeta-favoritos";
            
            const btn_user = document.getElementById("userbtn");
           btn_user.className="targeta-user";
        });
    }
});


addEventListener('DOMContentLoaded', () => {
    const btn_menu1  = document.querySelector('.favoritobtn');
    if(btn_menu1){
        btn_menu1.addEventListener('click', () =>{
            const menu = document.querySelector('.targeta-favoritos');
            menu.classList.toggle('star1');
            
             const btn_carr = document.getElementById("carritobtn");
            btn_carr.className="targeta-carrito";
           
             const btn_user = document.getElementById("userbtn");
           btn_user.className="targeta-user";
        });
    }
});

addEventListener('DOMContentLoaded', () => {
    const btn_menu1  = document.querySelector('.userbtn');
    if(btn_menu1){
        btn_menu1.addEventListener('click', () =>{
            const menu = document.querySelector('.targeta-user');
            menu.classList.toggle('star2');
            
             const btn_carr = document.getElementById("carritobtn");
            btn_carr.className="targeta-carrito";
            
            const btn_fav = document.getElementById("favoritobtn");
            btn_fav.className="targeta-favoritos";
            
        });
    }
});

addEventListener('DOMContentLoaded', () => {
    const btn_menu1  = document.querySelector('.btnhacerpedido');
    if(btn_menu1){
        btn_menu1.addEventListener('click', () =>{
            const menu = document.querySelector('.targeta-confirmaPedido');
            menu.classList.toggle('subir');

        });
    }
});




function confirmaC(id_p, id_u, nombre, precio, stock){
   const confirma = document.getElementById("targetaconfirmaCarrito");
    confirma.className ="baja-targeta";
   document.getElementById("inputidp").value = id_p;
   document.getElementById("inputidu").value = id_u;
   document.getElementById("inputname").value = nombre;
   document.getElementById("inputprecio").value = precio;
   document.getElementById("inputcantidad").value = 1;
   
   document.getElementById("inputcantidad").max = stock;
   
    document.getElementById("nameAction").method = tipoAction;
  
   
}

function cerrarCard(){
     const confirma = document.getElementById("targetaconfirmaCarrito");
    confirma.className ="targeta-confirma-carrito";
}



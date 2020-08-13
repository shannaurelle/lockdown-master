<?php 
    if(isset($_SESSION['active'])){
        include('shop_navbar.html');
    }
    else{
        include('login_navbar.html');
    }
   
?>
        

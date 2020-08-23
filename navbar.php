<?php 
    if(isset($_SESSION['active'])){
        if($_SESSION['access'] == 'Buyer'){
            include('shop_navbar.php');
        }
        else if ($_SESSION['access'] == 'Seller'){
            include('seller_navbar.html');
        }
        else if ($_SESSION['access'] == 'Trucker'){
            include('trucker_navbar.html');
        }
    }
    else{
        include('login_navbar.html');
    }
    
?>
        

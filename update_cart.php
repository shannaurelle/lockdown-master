<?php

$connection = mysqli_connect('localhost','root','','lockdown-storage');
if(mysqli_connect_errno()){
    printf("Connect error: %s \n",mysqli_connect_error());
}

session_start();


if(isset($_POST['quantity'])){

    define('SHOP_LIST_COUNT',count($_POST['quantity']));
    $account_id = filter_var($_POST['account_id'],FILTER_SANITIZE_NUMBER_INT);
    $total_product_volume = 0;
    $total_cart_cost = 0;

    for( $i=0 ; $i < SHOP_LIST_COUNT ; $i++ ) {

        $stmt = mysqli_stmt_init($connection);
        $product_id = filter_var($_POST['product'][$i],FILTER_SANITIZE_NUMBER_INT);
        $product_volume = filter_var($_POST['quantity'][$i],FILTER_SANITIZE_NUMBER_INT) ?? 0;
        $total_product_volume = $total_product_volume + $product_volume;
        $cart_subtotal = filter_var($_POST['total'][$i],FILTER_SANITIZE_NUMBER_FLOAT, FILTER_FLAG_ALLOW_FRACTION) ?? 0;
        $total_cart_cost = $total_cart_cost + $cart_subtotal;
    
        $sql = "UPDATE cart SET product_volume = ? WHERE product_id = ? AND cart_id = ?";
        
        if(mysqli_stmt_prepare($stmt,$sql)){
            mysqli_stmt_bind_param($stmt,'iii',$product_volume, $product_id, $account_id);
            mysqli_stmt_execute($stmt);
        }
        else{ echo "<script> alert('Preparation failed!'); </script>"; }
    
        mysqli_stmt_close($stmt);
        
    }
    
    $stmt2 = mysqli_stmt_init($connection);
    
    if(isset($_SESSION['account_id'])){
        $sql2 = "UPDATE cart_costs SET cart_subtotal = ?, cart_item_count = ? WHERE cart_id = ?";
    }
    else{
        $sql2 = "INSERT cart_costs (cart_subtotal, cart_item_count, cart_id) VALUES (?,?,?)";
    } 
    
    if(mysqli_stmt_prepare($stmt2,$sql2)){
        mysqli_stmt_bind_param($stmt2,'dii',$total_cart_cost, $total_product_volume, $account_id);
        mysqli_stmt_execute($stmt2);
    }
    echo "<script> window.location.href = 'cart.php'; </script>";
    mysqli_stmt_close($stmt2);
}
else{
    echo "<script> alert('Please shop for an item before updating it.'); 
    window.location.href = 'cart.php';
    </script>";
}

mysqli_close($connection);
exit();

?>
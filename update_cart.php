<?php

$connection = mysqli_connect('localhost','root','','lockdown-storage');
if(mysqli_connect_errno()){
    printf("Connect error: %s \n",mysqli_connect_error());
}

session_start();

define('SHOP_LIST_COUNT',count($_POST['product_id']));
$account_id = filter_var($_POST['account_id'],FILTER_SANITIZE_NUMBER_INT);
$total_product_volume = 0;
$total_cart_cost = 0;

for( $i=0 ; $i < SHOP_LIST_COUNT ; $i++ ) {

    $stmt = mysqli_stmt_init($connection);
    $product_id = filter_var($_POST['product_id'][$i],FILTER_SANITIZE_NUMBER_INT);
    $product_volume = filter_var($_POST['quantity'][$i],FILTER_SANITIZE_NUMBER_INT) ?? 0;
    $total_product_volume = $total_product_volume + $product_volume;
    $cart_subtotal = filter_var($_POST['total'][$i],FILTER_SANITIZE_NUMBER_FLOAT, FILTER_FLAG_ALLOW_FRACTION) ?? 0;
    $total_cart_cost = $total_cart_cost + $cart_subtotal;

    $prev_cart_query = mysqli_query($connection,"SELECT * FROM cart_costs WHERE cart_id='$account_id'");
    $prev_data = mysqli_fetch_assoc($prev_cart_query);
    $prev_cart_item_count = $prev_data['cart_item_count'] ?? 0;

    $sql = "UPDATE cart SET product_volume = ? WHERE product_id = ? AND cart_id = ?";
    
    if(mysqli_stmt_prepare($stmt,$sql)){
        mysqli_stmt_bind_param($stmt,'iii',$product_volume, $product_id, $account_id);
        mysqli_stmt_execute($stmt);
        
        echo "<script> alert('Cart updated!'); </script>";
    }
    else{ echo "<script> alert('Preparation failed!'); </script>"; }

    mysqli_stmt_close($stmt);
    
}

$stmt2 = mysqli_stmt_init($connection);

if(isset($prev_data['cart_item_count'])){
    $sql2 = "UPDATE cart_costs SET cart_subtotal = ?, cart_item_count = ? WHERE cart_id = ?";
}
else{
    $sql2 = "INSERT cart_costs (cart_subtotal, cart_item_count, cart_id) VALUES (?,?,?)";
} 

if(mysqli_stmt_prepare($stmt2,$sql2)){
    mysqli_stmt_bind_param($stmt2,'dii',$total_cart_cost, $total_product_volume, $account_id);
    mysqli_stmt_execute($stmt2);
    echo "<script> window.location.href = 'cart.php'; </script>";
}

mysqli_stmt_close($stmt2);

mysqli_close($connection);
exit();

?>
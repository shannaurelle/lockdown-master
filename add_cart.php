<?php

$connection = mysqli_connect('localhost','root','','lockdown-storage');
if(mysqli_connect_errno()){
    printf("Connect error: %s \n",mysqli_connect_error());
}
session_start();
$account_id = filter_var($_POST['account_id'],FILTER_SANITIZE_NUMBER_INT);
$product_id = filter_var($_POST['product_id'],FILTER_SANITIZE_NUMBER_INT);
$product_volume = ($_POST['product_volume'] <= 0) ? filter_var($_POST['product_volume'],FILTER_SANITIZE_NUMBER_INT) : 1;

$cnt_query = mysqli_query($connection,"SELECT COUNT(*) AS cart_present FROM cart_costs WHERE cart_id =$account_id");
$result = mysqli_fetch_assoc($cnt_query);
$cnt = $result['cart_present'] ?? 0;

$prod_query = mysqli_query($connection,"SELECT product_price FROM products WHERE product_id =$product_id");
$result = mysqli_fetch_assoc($cnt_query);
$product_price = $result['product_price'] ?? 0;

$subtotal_query = mysqli_query($connection,"SELECT cart_subtotal FROM cart_costs WHERE cart_id =$account_id");
$result = mysqli_fetch_assoc($cnt_query);
$cart_subtotal = $result['cart_subtotal'] + ($product_price * $product_volume) ?? 0;

$cart_query = mysqli_query($connection,"SELECT COUNT(*) AS item_check FROM cart WHERE cart_id =$account_id AND product_id=$product_id");
$result = mysqli_fetch_assoc($cart_query);
$item_check = $result['item_check'];

$stmt = mysqli_stmt_init($connection);

if($item_check == 0){
    $sql = "INSERT INTO cart (cart_id, product_id, product_volume) VALUES (?,?,?)";

    if(mysqli_stmt_prepare($stmt,$sql)){
        mysqli_stmt_bind_param($stmt,'iii',$account_id, $product_id, $product_volume);
        mysqli_stmt_execute($stmt);
        header("Location: cart.php");
    }
    else{
        echo "Preparation failed: ",mysqli_stmt_error($stmt);
    }
}
else{
    $cart_query = mysqli_query($connection,"SELECT * FROM cart WHERE cart_id ='$account_id' AND product_id='$product_id'");
    $result = mysqli_fetch_assoc($cart_query);
    $past_volume = $result['product_volume'];
    $cart_quantity = $past_volume + $product_volume;

    $sql = "UPDATE cart SET product_volume = ? WHERE cart_id = ? AND product_id = ?";

    if(mysqli_stmt_prepare($stmt,$sql)){
        mysqli_stmt_bind_param($stmt,'iii',$cart_quantity, $account_id, $product_id);
        mysqli_stmt_execute($stmt);
        header("Location: cart.php");
    }
    else{
        echo "Preparation failed: ",mysqli_stmt_error($stmt);
    }
}

$stmt2 = mysqli_stmt_init($connection);

if($cnt == 0){
    $sql = "INSERT INTO cart_costs (cart_id, cart_subtotal) VALUES ($account_id,$cart_subtotal)";
    if(mysqli_stmt_prepare($stmt2,$sql)){
        mysqli_stmt_bind_param($stmt2,'id',$account_id, $product_subtotal);
        mysqli_stmt_execute($stmt2);
        header("Location: cart.php");
    }
    else{
        echo "Preparation failed 3: ",mysqli_stmt_error($stmt);
    }
}
else{
    $sql = "UPDATE cart_costs SET cart_subtotal = $cart_subtotal WHERE cart_id = $account_id";
    if(mysqli_stmt_prepare($stmt2,$sql)){
        mysqli_stmt_bind_param($stmt2,'di',$product_subtotal,$account_id);
        mysqli_stmt_execute($stmt2);
        header("Location: cart.php");
    }
    else{
        echo "Preparation failed 4: ",mysqli_stmt_error($stmt);
    }
}


exit();

?>
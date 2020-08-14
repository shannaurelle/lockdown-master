<?php

$connection = mysqli_connect('localhost','root','','lockdown-storage');
if(mysqli_connect_errno()){
    printf("Connect error: %s \n",mysqli_connect_error());
}
$account_id = filter_var($_SESSION['account_id'],FILTER_SANITIZE_NUMBER_INT);
$product_id = filter_var($_POST['product_id'],FILTER_SANITIZE_NUMBER_INT);
$product_volume = filter_var($_POST['product_volume'],FILTER_SANITIZE_NUMBER_INT);
$cart_owner = filter_var($_SESSION['cart_owner'],FILTER_VALIDATE_STRING);

$stmt = mysqli_stmt_init($connection);

$sql = "INSERT INTO cart_items (product_id, account_id, product_volume, cart_owner,) VALUES (?,?,?,?)";

if(mysqli_stmt_prepare($stmt,$sql)){
    mysqli_stmt_bind_param($stmt,'i',$product_id);
    mysqli_stmt_execute($stmt);
    header('Location: cart.html');
}

exit();

?>
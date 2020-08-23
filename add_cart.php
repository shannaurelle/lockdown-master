<?php

$connection = mysqli_connect('localhost','root','','lockdown-storage');
if(mysqli_connect_errno()){
    printf("Connect error: %s \n",mysqli_connect_error());
}
session_start();
$account_id = filter_var($_POST['account_id'],FILTER_SANITIZE_NUMBER_INT);
$product_id = filter_var($_POST['product_id'],FILTER_SANITIZE_NUMBER_INT);
$product_volume = filter_var($_POST['product_volume'],FILTER_SANITIZE_NUMBER_INT);
$product_price = filter_var($_POST['product_price'],FILTER_SANITIZE_NUMBER_INT);

$stmt = mysqli_stmt_init($connection);

$sql = "INSERT INTO cart (cart_id, product_id, product_volume, product_price) VALUES (?,?,?,?)";

if(mysqli_stmt_prepare($stmt,$sql)){
    mysqli_stmt_bind_param($stmt,'iis',$account_id, $product_id, $product_volume);
    mysqli_stmt_execute($stmt);
    header("Location: cart.php");
}

exit();

?>
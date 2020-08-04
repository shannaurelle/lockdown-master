<?php

$con = mysqli_connect('localhost',"root","","lockdown-storage");
if(mysqli_connect_errno()){
    printf("Connect error: %s \n",mysqli_connect_error);
}

$product_id = filter_var($_POST['product_id'],FILTER_SANITIZE_NUMBER_INT);
$account_id = filter_var($_POST['account_id'],FILTER_SANITIZE_NUMBER_INT);
$stmt = mysqli_stmt_init($con);

if(mysqli_stmt_prepare($stmt,"INSERT FROM wishlist (product_id, account_id) VALUES (?,?)")){
    mysqli_stmt_bind_param($stmt,"ii",$product_id,$account_id);
    mysqli_stmt_execute($stmt);
    header("Location: wishlist.html");
}

exit();

?>
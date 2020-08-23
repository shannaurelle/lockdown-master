<?php
$connection = mysqli_connect('localhost','root','','lockdown-storage');
if(mysqli_connect_errno()){
    printf("Connect error: %s \n",mysqli_connect_error());
}
session_start();

if($_SERVER['REQUEST_METHOD'] == 'POST'){
    $transaction_id = filter_var($_POST['transaction_id'],FILTER_SANITIZE_NUMBER_INT);
    $stmt = mysqli_stmt_init($connection);
    $sql = "INSERT INTO trades (transaction_id, buyer_id, trucker_id, product_id, money, notes, pending) ";
    $sql .= "SELECT (transaction_id, buyer_id, owner_id, product_id, product_volume, money, notes, pending) FROM request";
    $sql .= "WHERE transaction_id = ? ";
    if(mysqli_stmt_prepare($stmt,$sql)){
        mysqli_stmt_bind_param($stmt,"i",$transaction_id);
        mysqli_stmt_execute($stmt);
        header('Location: trucker_requests.php');
    }
}

?>
<?php
$connection = mysqli_connect('localhost','root','','lockdown-storage');
if(mysqli_connect_errno()){
    printf("Connect error: %s \n",mysqli_connect_error());
}
session_start();

if($_SERVER['REQUEST_METHOD'] == 'GET'){

    $transaction_id = filter_var($_GET['transaction_id'],FILTER_SANITIZE_NUMBER_INT) ?? 0;
    $truck_id = filter_var($_GET['truck_id'],FILTER_SANITIZE_NUMBER_INT) ?? 0;
    $stmt = mysqli_stmt_init($connection);
    $stmt2 = mysqli_stmt_init($connection);

    $sql = "INSERT INTO trades (transaction_id, buyer_id, product_id, product_volume, location, money, notes, pending) SELECT transaction_id, buyer_id, product_id, product_volume, location, money, notes, pending FROM request WHERE transaction_id = ? ";

    $sql2 = "UPDATE request SET pending=0, trucker_id=$truck_id WHERE transaction_id = ?";

    if(mysqli_stmt_prepare($stmt,$sql)){
        mysqli_stmt_bind_param($stmt,"i",$transaction_id); 
        mysqli_stmt_execute($stmt);  
        mysqli_stmt_close($stmt);
    }else{
        echo "preparation failed!";
        header('error-pages/404.html');
    }
    if(mysqli_stmt_prepare($stmt2,$sql2)){
        mysqli_stmt_bind_param($stmt2,"i",$transaction_id);
        mysqli_stmt_execute($stmt2);
        mysqli_stmt_close($stmt2);
        header("Location: trucker_requests.php");
    }

}
mysqli_close($connection);
exit;
?>
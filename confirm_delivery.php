<?php

$connection = mysqli_connect('localhost','root','','lockdown-storage');
if(mysqli_connect_errno()){
    printf("Connect error: %s \n",mysqli_connect_error());
}

session_start();

if($_SERVER['REQUEST_METHOD'] == 'POST'){

    $transaction_id = filter_var($_POST['transaction_id'],FILTER_SANITIZE_NUMBER_INT);

    $stmt = mysqli_stmt_init($connection);

    $sql = "UPDATE trades SET pending = 0 WHERE transaction_id = ?";

    if(mysqli_stmt_prepare($stmt,$sql)){
        mysqli_stmt_bind_param($stmt,'i',$transaction_id);
        mysqli_stmt_execute($stmt);
        mysqli_stmt_close($stmt);
        header('Location: pending_trades.php');
    }
    else{
        echo "Preparation error: ".mysqli_stmt_error($stmt);
    }
}

mysqli_close($connection);
exit();

?>
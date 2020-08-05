<?php

$connection = mysqli_connect('localhost','root','','lockdown-storage');
if(mysqli_connect_errno()){
    printf("Connect error: %s \n",mysqli_connect_error());
}

$filter_type = filter_var($_POST['filter_type'], FILTER_VALIDATE_STRING) ?? '1 = 1';
$filter_ranking = filter_var($_POST['filter_ranking'], FILTER_VALIDATE_STRING) ?? 'ASC';

$statement = mysqli_stmt_init($connection);

$sql = "SELECT * FROM products ORDER BY ? ?";

if(mysqli_stmt_prepare($statement,$sql)){
    mysqli_stmt_bind_param($statement,'ss',$filter_type,$filter_ranking);
    mysqli_stmt_execute($statement);
    header('Location: cart.html');
}
exit();

?>
<?php

$connection = mysqli_connect('localhost','root','','lockdown-storage');
if(mysqli_connect_errno()){
    printf("Connect error: %s \n",mysqli_connect_error());
}

$sql_statement = "SELECT * FROM products";
$query = mysqli_query($connection,$sql_statement);

exit();

?>
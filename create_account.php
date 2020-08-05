<?php

$connection = mysqli_connect('localhost','root','','lockdown-storage');
if(mysqli_connect_errno()){
    printf("Connect error: %s \n",mysqli_connect_error());
}

$username = filter_var($_POST['username'],FILTER_VALIDATE_STRING) ?? '';
$password = filter_var($_POST['password'],FILTER_VALIDATE_STRING) ?? '';
$password = password_hash($password,PASSWORD_DEFAULT) ?? '';

$statement = mysqli_stmt_init($connection);

if(mysqli_stmt_prepare($statement,"INSERT INTO accounts (username, password) VALUES (?,?)")){
    mysqli_stmt_bind_param($statement,'ss',$username,$password);
    mysqli_stmt_execute($statement);
    
}
<?php

$connection = mysqli_connect('localhost','root','','lockdown-storage');
if(mysqli_connect_errno()){
    printf("Connect error: %s \n",mysqli_connect_error());
}
else{
    $stmt = mysqli_stmt_init($connection);

    if(mysqli_stmt_prepare($stmt,"SELECT * FROM accounts WHERE username=?")){
        mysqli_stmt_bind_param($stmt,'ss',$product_id,$account_id);
        mysqli_stmt_execute($stmt);
        $result = mysqli_stmt_get_result($stmt);
        $data = mysqli_fetch_assoc($result);
        if(password_verify($password,$data['password'])){
            header('Location: shop.html');
        }
        else{
            header('Location: error_pages/404.html');
        }
        
    }
}


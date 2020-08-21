<?php

$connection = mysqli_connect('localhost','root','','lockdown-storage');
if(mysqli_connect_errno()){
    printf("Connect error: %s \n",mysqli_connect_error());
}
else{

    $stmt = mysqli_stmt_init($connection);

    $password = filter_var($_POST['password'],FILTER_SANITIZE_STRING);
    $username = filter_var($_POST['username'],FILTER_SANITIZE_STRING);

    if(mysqli_stmt_prepare($stmt,"SELECT * FROM accounts WHERE username=?")){

        mysqli_stmt_bind_param($stmt,'s', $username);
        mysqli_stmt_execute($stmt);
        $result = mysqli_stmt_get_result($stmt);

        $data = mysqli_fetch_assoc($result);

        if(password_verify($password,$data['password'])){

            session_start();
            
            $_SESSION['active'] = $data['username'];
            $_SESSION['account_id'] = $data['account_id'];
            $_SESSION['access'] = $data['access'];

            if ($data['access'] == "Buyer") {
                header('Location: shop.php');
            }
            if ($data['access'] == "Seller") {
                header('Location: seller_products.php');
            }
            if ($data['access'] == "Trucker") {
                header('Location: trucker_main.php');
            }
        }
        else{
            echo "<script> alert('Incorrect username or password'); 
            document.location.href = 'index.html';
            </script>";
        }
        
    }

    mysqli_stmt_close($stmt);

}

mysqli_close($connection);


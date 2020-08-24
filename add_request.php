<?php
$connection = mysqli_connect('localhost','root','','lockdown-storage');
if(mysqli_connect_errno()){
    printf("Connect error: %s \n",mysqli_connect_error());
}
session_start();

if($_SERVER['REQUEST_METHOD'] == 'POST'){
    $index = filter_var($_POST['index'],FILTER_SANITIZE_NUMBER_INT) ?? 0;
    $buyer_id = filter_var($_SESSION['account_id'],FILTER_SANITIZE_NUMBER_INT) ?? 0;
    $product_id = filter_var($_POST['product'][$index],FILTER_SANITIZE_NUMBER_INT) ?? 0;
    $product_name = filter_var($_POST['product_name'][$index],FILTER_SANITIZE_NUMBER_INT) ?? 0;
    $product_volume = filter_var($_POST['quantity'][$index],FILTER_SANITIZE_NUMBER_INT) ?? 0;
    $product_price = filter_var($_POST['price'][$index],FILTER_SANITIZE_NUMBER_INT) ?? 0;
    $location = filter_var($_POST['location'][$index],FILTER_SANITIZE_STRING) ?? 0;
    $money = floatval($product_price * $product_volume);
    $stmt = mysqli_stmt_init($connection);
    $stmt2 = mysqli_stmt_init($connection);

    $sql2 = "UPDATE cart SET cart_request = 1 WHERE cart_id = ? AND product_id = ?";

    if(mysqli_stmt_prepare($stmt2,$sql2)){
        mysqli_stmt_bind_param($stmt2,"ii",$buyer_id,$product_id); 
        mysqli_stmt_execute($stmt2);  
        mysqli_stmt_close($stmt2);
    }else{
        echo "preparation failed!";
        header('Location: error-pages/404.html');
    }

    $sql = "INSERT INTO request (buyer_id, product_id, product_name, product_volume, location, money, pending) VALUES (?,?,?,?,?,?,1)";

    if(mysqli_stmt_prepare($stmt,$sql)){
        mysqli_stmt_bind_param($stmt,"iisisd",$buyer_id,$product_id,$product_name,$product_volume,$location, $money); 
        mysqli_stmt_execute($stmt);  
        mysqli_stmt_close($stmt);
        header('Location: cart.php');
    }else{
        echo "preparation failed!";
        header('Location: error-pages/404.html');
    }

}
mysqli_close($connection);
exit;
?>
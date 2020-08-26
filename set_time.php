<?php

$connection = mysqli_connect('localhost','root','','lockdown-storage');
if(mysqli_connect_errno()){
    printf("Connect error: %s \n",mysqli_connect_error());
}

session_start();

if($_SERVER['REQUEST_METHOD'] == 'POST'){

    $transaction_id = filter_var($_POST['transaction_id'],FILTER_SANITIZE_NUMBER_INT);
    $pickup_year = filter_var($_POST['pickup_year'],FILTER_SANITIZE_NUMBER_INT);
    $pickup_month = filter_var($_POST['pickup_month'],FILTER_SANITIZE_STRING);
    $pickup_month_str = '';
    if(((int)$pickup_time[0])<10){
        $pickup_month_str .= '0';
    }
    $pickup_month_str .= $pickup_month;
    $pickup_day = filter_var($_POST['pickup_day'],FILTER_SANITIZE_NUMBER_INT);
    $pickup_time = explode(filter_var($_POST['pickup_time'],FILTER_SANITIZE_STRING));
    $pickup_time_str = '';
    if(((int)$pickup_time[0])<10){
        $pickup_time_str .= '0';
    }
    $pickup_time_str .= $pickup_time[0].':';
    if(((int)$pickup_time[1])<10){
        $pickup_time_str .= '0';
    }
    $pickup_time_str .= $pickup_time[1].':'.'00';
    $pickup_datetime = $pickup_year."-".$pickup_month_str."-".$pickup_day." ".$pickup_time_str;
    
    $pickup_location = filter_var($_POST['pickup_location'],FILTER_SANITIZE_STRING);
    
    $delivery_year = filter_var($_POST['delivery_year'],FILTER_SANITIZE_NUMBER_INT);
    $delivery_month = filter_var($_POST['delivery_month'],FILTER_SANITIZE_NUMBER_INT);
    $delivery_day = filter_var($_POST['delivery_day'],FILTER_SANITIZE_NUMBER_INT);
    $delivery_datetime = $pickup_year."-".$pickup_day." ".$pickup_time;

    $stmt = mysqli_stmt_init($connection);

    $sql = "UPDATE trades SET delivery_time = ?, pickup_time = ?, pickup_pending = 0 WHERE transaction_id = ?";

    if(mysqli_stmt_prepare($con,$sql)){
        mysqli_stmt_bind_param($stmt,'ssi',$delivery_datetime,$pickup_datetime,$transaction_id);
        mysqli_stmt_execute($stmt);
        mysqli_stmt_close($stmt);
    }
    else{
        echo "Preparation error: ".mysqli_stmt_error($stmt);
    }
}

mysqli_close($connection);
exit();

?>
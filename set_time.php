<?php

$connection = mysqli_connect('localhost','root','','lockdown-storage');
if(mysqli_connect_errno()){
    printf("Connect error: %s \n",mysqli_connect_error());
}

session_start();

if($_SERVER['REQUEST_METHOD'] == 'POST'){

    $transaction_id = filter_var($_POST['transaction_id'],FILTER_SANITIZE_NUMBER_INT);
    $pickup_year = filter_var($_POST['pickup_year'],FILTER_SANITIZE_NUMBER_INT) ?? 2020;
    $pickup_month = filter_var($_POST['pickup_month'],FILTER_SANITIZE_STRING) ?? '08';
    $pickup_day = filter_var($_POST['pickup_day'],FILTER_SANITIZE_NUMBER_INT) ?? 27;
    
    $pickup_time = explode(":",filter_var($_POST['pickup_time'],FILTER_SANITIZE_STRING));
    $pickup_month_str = '';
    if(((int)$pickup_month)<10){
        $pickup_month_str .= '0';
    }
    $pickup_month_str .= $pickup_month;
    $pickup_day_str = '';
    if(((int)$pickup_day)<10){
        $pickup_day_str .= '0';
    }
    $pickup_day_str .= $pickup_day;
    $pickup_AP = filter_var($_POST['pickup_AP'],FILTER_SANITIZE_STRING);

    $pickup_hour = 0; // 12 AM / 24 PM value
    if($pickup_AP=="AM" && $pickup_time[0] > 0 && $pickup_time[0] < 12 ){
        $pickup_hour = $pickup_time[0];
    }
    else if($pickup_AP=="PM" && $pickup_time[0] == 12 ){
        $pickup_hour = $pickup_time[0];
    }
    else if($pickup_AP=="PM" && $pickup_time[0] > 0 && $pickup_time[0] < 11 ){
        $pickup_hour = $pickup_time[0] + 12;
    }

    $pickup_minutes = $pickup_time[1];

    $pickup_time_str = '';
    if(((int)$pickup_hour)<10){
        $pickup_time_str .= '0';
    }
    $pickup_time_str .= $pickup_hour.':';
    if(((int)$pickup_minutes)<10){
        $pickup_time_str .= '0';
    }
    $pickup_time_str .= $pickup_time[1].':'.'00';
    $pickup_datetime = ($pickup_year."-".$pickup_month_str."-".$pickup_day_str." ".$pickup_time_str) ?? '2020-08-27 07:00:00';
    
    $pickup_location = filter_var($_POST['pickup_location'],FILTER_SANITIZE_STRING);

    $stmt = mysqli_stmt_init($connection);

    $sql = "UPDATE trades SET pickup_time = ?, pickup_location = ?, pickup_pending = 0 WHERE transaction_id = ?";

    if(mysqli_stmt_prepare($stmt,$sql)){
        mysqli_stmt_bind_param($stmt,'ssi',$pickup_datetime,$pickup_location,$transaction_id);
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
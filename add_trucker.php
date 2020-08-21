<?php

$connection = mysqli_connect('localhost','root','','lockdown-storage');
if(mysqli_connect_errno()){
    printf("Connect error: %s \n",mysqli_connect_error());
}

session_start();

$owner_id = filter_var($_POST['owner_id'],FILTER_SANITIZE_NUMBER_INT);
$truck_operator = filter_var($_POST['truck_operator'],FILTER_SANITIZE_STRING);
$truck_origin = filter_var($_POST['truck_origin'],FILTER_SANITIZE_STRING);
$truck_model = filter_var($_POST['truck_model'],FILTER_SANITIZE_STRING);
$truck_plate_number = filter_var($_POST['truck_plate_number'],FILTER_SANITIZE_STRING);
$truck_capacity = filter_var($_POST['truck_capacity'],FILTER_SANITIZE_NUMBER_FLOAT);
$truck_service_type = filter_var($_POST['truck_service_type'],FILTER_SANITIZE_STRING);
$truck_delivery_fee = filter_var($_POST['truck_delivery_fee'],FILTER_SANITIZE_NUMBER_FLOAT);
$date_created = date('Y-m-d h:i:s');
$stmt = mysqli_stmt_init($connection);

$sql = "INSERT INTO truckers (owner_id, truck_operator, truck_origin, truck_model, truck_plate_number, 
        truck_capacity, truck_service_type, truck_delivery_fee, date_created) VALUES (?,?,?,?,?,?,?,?,?)";

if(mysqli_stmt_prepare($stmt,$sql)){
    mysqli_stmt_bind_param($stmt,'issssdsds',$owner_id, $truck_operator, $truck_origin, $truck_model, $truck_plate_number, $truck_capacity, $truck_service_type, $truck_delivery_fee, $date_created);
    mysqli_stmt_execute($stmt);
    mysqli_stmt_close($stmt);
    echo "<script> alert('Data Entry successful!'); 
        window.location.href = 'add_trucker_listing.php';
        </script>";
}else{
    echo "<script> alert('Preparation failed!'); 
        </script>";
}

mysqli_close($connection);

exit();

?>
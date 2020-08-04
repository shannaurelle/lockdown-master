<?php

$con = mysqli_connect('localhost',"root","","lockdown-storage");
if(mysqli_connect_errno()){
    printf("Connect error: %s \n",mysqli_connect_error);
}

$wishlist_id = filter_var($_POST['wishlist_id'],FILTER_SANITIZE_NUMBER_INT);
$stmt = mysqli_stmt_init($con);

if(mysqli_stmt_prepare($stmt,"DELETE FROM wishlist WHERE id=?")){
    mysqli_stmt_bind_param($stmt,"i",$wishlist_id);
    mysqli_stmt_execute($stmt);
    header("Location: wishlist.html");
}

exit()

?>
<?php
$connection = mysqli_connect('localhost','root','','lockdown-storage');
if(mysqli_connect_errno()){
    printf("Connect error: %s \n",mysqli_connect_error());
}
else {
	session_start();

	if($_SERVER['REQUEST_METHOD'] == 'POST'){
		$index = filter_var($_POST['index'],FILTER_SANITIZE_NUMBER_INT);
		$account_id = filter_var($_SESSION['account_id'],FILTER_SANITIZE_NUMBER_INT);
		$product_id = filter_var($_POST['product'][$index],FILTER_SANITIZE_NUMBER_INT);

		$stmt = mysqli_stmt_init($connection);

		if(mysqli_stmt_prepare($stmt,"DELETE FROM cart WHERE cart_id=? AND product_id=?")){
		    mysqli_stmt_bind_param($stmt,'ii',$account_id, $product_id);
		    mysqli_stmt_execute($stmt);
		    header("Location: cart.php");
		}
		else{
		    echo "Preparation failed: ",mysqli_stmt_error($stmt);
		}
	}
}
	

?>
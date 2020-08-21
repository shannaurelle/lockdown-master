<?php
    
    $product_id = filter_var($_POST['item_id'],FILTER_SANITIZE_NUMBER_INT);

    

    $response = '';

    $con=mysqli_connect("localhost", "root", "");

    if (mysqli_connect_errno()){

        echo "Failed to connect to MySQL: " . mysqli_connect_error();

    }

    else{

        session_start();

        $account_id = filter_var($_SESSION['account_id'],FILTER_SANITIZE_NUMBER_INT) ?? 0; 

        mysqli_select_db($con, 'lockdown-storage');

        if(isset($product_id)){

            $query = mysqli_query($con,"SELECT * FROM products WHERE product_id =$product_id ");
            
            $data = mysqli_fetch_array($query);

            $response .= '<form class="container-fluid row" method="post" action="add_cart.php">';

            $response .= '<input type="text" name="product_id" value="'.$product_id.'" hidden/>';

            $response .= '<input type="text" name="account_id" value="'.$account_id.'" hidden/>';

            $response .= '<div class="product-single-img col-3">';

            $response .= '<img src="assets/images/dummy_images/1.png" alt=""></div>';

            $response .= '<div class="product-single-content col-9">';

            $response .= '<h3>'.$data['product_name'].'</h3>';

            $response .= '<div class="rating-wrap fix">';

            $response .= '<span class="pull-left"> ₱'.$data['product_price'].'</span>';

            $response .= '<ul class="rating pull-right">';

            for ($i = 0; $i<$data['product_rating']/20; $i++): 

                $response .= '<li><i class="fa fa-star"></i></li>';

            endfor;

            $response .= '<li>(05 Customer Review)</li>';

            $response .= '</ul></div>';

            $response .= '<p> Description: '.$data['product_description'].' <br>';

            $response .= 'Quantity left: '.$data['product_volume'].$data['product_unit_measurement'].'<br>';

            $response .= 'Content: '.$data['product_qty_per_package'].$data['product_unit_measurement'].' per '.$data['product_packaging'].'</p>';

            $response .= '<ul class="input-style">';

            $response .= '<li><label class="form-label mr-4" for="volume">Order</li>';

            $response .= '<li class="quantity cart-plus-minus"><input class="mr-4" type="text" name="product_volume" value="1" /></li>';

            $response .= '<div class="w-100"></div>';
            
            $response .= '<li><label class="form-label" for="are you sure?"> Are you sure to add this to cart? </li>';

            $response .= '<li><input type="submit" class="submit-btn" value="Yes"></li>';

            $response .= '<li><a type="submit" data-dismiss="modal" aria-label="Close">No</a></li>';
            
            $response .= '</ul></div></form>';

        }
    }
    echo $response;
    exit;
?>   


<?php
    
    $product_id = filter_var($_POST['item_id'],FILTER_SANITIZE_NUMBER_INT);

    $buyer_id = 0;

    $response = '';

    $con=mysqli_connect("localhost", "root", "");

    if (mysqli_connect_errno()){

        echo "Failed to connect to MySQL: " . mysqli_connect_error();

    }

    else{

        session_start();

        mysqli_select_db($con, 'lockdown-storage');

        if(isset($product_id)){

            $query = mysqli_query($con,"SELECT * FROM products WHERE product_id =$product_id ");
            
            $data = mysqli_fetch_array($query);

            $response .= '<form class="container-fluid row" method="post" action="add-cart.php">';

            $response .= '<input type="text" value="'.$product_id.'" hidden/>';

            $response .= '<input type="text" value="'.$buyer_id.'" hidden/>';

            $response .= '<div class="product-single-img col-3">';

            $response .= '<img src="assets/images/product/product-details.jpg" alt=""></div>';

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

            $response .= '<p>'.$data['product_description'].'</p>';

            $response .= '<ul class="input-style form-group">';

            $response .= '<li><label class="form-label mr-4" for="volume">Volume</li>';

            $response .= '<li class="quantity cart-plus-minus"><input class="mr-4" type="text" value="1" /></li>';

            $response .= '<div class="w-100"></div>';
            
            $response .= '<li><label class="form-label" for="are you sure?"> Are you sure to add this to cart? </li>';

            $response .= '<li><a type="submit">Yes</a></li>';

            $response .= '<li><a type="submit" data-dismiss="modal" aria-label="Close">No</a></li>';
            
            $response .= '</ul></div></form>';

        }
    }
    echo $response;
    exit;
?>   


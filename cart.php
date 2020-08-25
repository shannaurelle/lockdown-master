<!doctype html>
<?php

    $con=mysqli_connect("localhost", "root", "");
    if (mysqli_connect_errno()){
        echo "Failed to connect to MySQL: " . mysqli_connect_error();
    }
    else{
        session_start();
        mysqli_select_db($con, 'lockdown-storage');
    }

    $account_id = $_SESSION['access'];
    if(!isset($account_id)){
        header('Location: error-pages/404.html');
    }

?>
<html class="no-js" lang="">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>TOM - Cart</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/png" href="assets/images/logo_lockdown_2.png">
    <!-- Place favicon.ico in the root directory -->
    <!-- all css here -->
    <!-- bootstrap v3.3.7 css -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <!-- owl.carousel.2.0.0-beta.2.4 css -->
    <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
    <!-- font-awesome v4.6.3 css -->
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <!-- flaticon.css -->
    <link rel="stylesheet" href="assets/css/flaticon.css">
    <!-- jquery-ui.css -->
    <link rel="stylesheet" href="assets/css/jquery-ui.css">
    <!-- metisMenu.min.css -->
    <link rel="stylesheet" href="assets/css/metisMenu.min.css">
    <!-- slicknav.min.css -->
    <link rel="stylesheet" href="assets/css/slicknav.min.css">
    <!-- swiper.min.css -->
    <link rel="stylesheet" href="assets/css/swiper.min.css">
    <!-- style css -->
    <link rel="stylesheet" href="assets/css/styles.css">
    <!-- responsive css -->
    <link rel="stylesheet" href="assets/css/responsive.css">
    <!-- modernizr css -->
    <script src="assets/js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body>
    <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
    <!--Start Preloader-->
    <div class="preloader-wrap">
        <div class="spinner"></div>
    </div>
    <?php include('navbar.php') ?>
    <!-- .breadcumb-area start -->
    <div class="breadcumb-area bg-img-1 black-opacity ptb-100">
    <div class="container">
    <div class="row">
    <div class="col-12">
    <div class="breadcumb-wrap text-center">
    <h2 class="text-dark">Shopping Cart</h2>
        <ul>
            <li><a href="index.html">Home</a></li>
            <li><span class="text-dark">Cart</span></li>
        </ul>
    </div>
    </div>
    </div>
    </div>
    </div>
    <!-- .breadcumb-area end -->
    <!-- cart-area start -->
    <div class="cart-area ptb-100">
    <div class="container">
    <div class="row">
    <div class="col-12">
                        <?php
                            if(isset($_SESSION['account_id'])):

                                $account_id = filter_var($_SESSION['account_id'],FILTER_SANITIZE_NUMBER_INT); 

                                $stmt = mysqli_stmt_init($con);

                                $sql = "SELECT * FROM products AS p INNER JOIN cart AS c ON p.product_id = c.product_id WHERE c.cart_id = ?";
                                
                                if(mysqli_stmt_prepare($stmt,$sql)){

                                    if(!mysqli_stmt_bind_param($stmt,'i',$account_id)){ echo "<script> alert('preparation failed!'); </script>"; }
                                    
                                    if(!mysqli_stmt_execute($stmt)){ echo "<script> alert('execution failed!'); </script>"; }
                                    
                                    $result = mysqli_stmt_get_result($stmt) ?? 0;

                                }
                                else{
                                    echo "<script> alert('preparation failed!'); </script>";
                                }

                            endif;
                        ?>
    <form method="post" action="payment_gateway.php">
        <table class="table-responsive cart-wrap">

            <?php if(isset($result)): ?>

            <thead>
                <tr>
                    <th class="images">Image</th>
                    <th class="product">Product</th>
                    <th class="ptice">Price</th>
                    <th class="quantity">Quantity</th>
                    <th class="total">Total</th>
                    <th class="total">Delivery Option</th>
                    <th class="remove">Action</th>
                </tr>
            </thead>
            <tbody>
            <input type="text" name="account_id" value=<?php echo '"'.$account_id.'"' ?> hidden/>
                <?php 
                    $subtotal = 0; 
                    $trucking_fee = 100.00;
                    $additional_fees = 0;
                    $trucking_fees = array();
                    $items = array();
                    echo "<span id='trucking_fee' hidden>$trucking_fee</span>";
                    $index = 0;
                    while($data = mysqli_fetch_assoc($result)):   
                        $stmt2 = mysqli_stmt_init($con);

                        $sql2 = "SELECT COUNT(*) AS cnt FROM truckers AS t INNER JOIN products AS p ON t.truck_origin = p.product_location WHERE p.product_id = ?";
                        
                        $cnt = 0;
                        
                        if(mysqli_stmt_prepare($stmt2,$sql2)){

                            if(!mysqli_stmt_bind_param($stmt2,'i',$data['product_id'])){ echo "<script> alert('preparation failed! 3'); </script>"; }
                            
                            if(!mysqli_stmt_execute($stmt2)){ echo "<script> alert('execution failed!'); </script>"; }
                            
                            $result2 = mysqli_stmt_get_result($stmt2) ?? 0;

                            $data2 = mysqli_fetch_assoc($result2);

                            $cnt = $cnt + $data2['cnt'];

                        }
                        else{
                            echo "<script> alert('preparation failed! 2'); </script>";
                        }

                        $stmt3 = mysqli_stmt_init($con);

                        $sql3 = "SELECT COUNT(*) AS cnt FROM cart WHERE product_id = ? AND cart_id = ? AND cart_request= ?";
                        
                        $cnt2 = 0;

                        $cart_request_true = 1;
                        
                        if(mysqli_stmt_prepare($stmt3,$sql3)){

                            if(!mysqli_stmt_bind_param($stmt3,'iii',$data['product_id'],$account_id, $cart_request_true)){ echo "<script> alert('preparation failed! 3'); </script>"; }
                            
                            if(!mysqli_stmt_execute($stmt3)){ echo "<script> alert('execution failed!'); </script>"; }
                            
                            $result3 = mysqli_stmt_get_result($stmt3) ?? 0;

                            $data3 = mysqli_fetch_assoc($result3);

                            $cnt2 = $cnt2 + $data3['cnt'];

                        }
                        else{
                            echo "<script> alert('preparation failed! 2'); </script>";
                        }
                        $fee = 10 * $data['product_volume'];
                        $additional_fees += $fee;
                        array_push($trucking_fees, $fee);
                        $item = $data['product_name'];
                        array_push($items, $item);
                ?>
                <tr>
                    <input type='number' name='account_id' value=<?php echo $_SESSION['account_id'] ?> hidden/>
                    <input type="number" name="index" value=<?php echo $index ?> hidden/>
                    <input type="number" name="product[]" value=<?php echo $data['product_id'] ?> hidden/>
                    <input type="number" name="product_name[]" value=<?php echo $data['product_name'] ?> hidden/>
                    <input type="number" name="location[]" value=<?php echo $data['product_location'] ?> hidden/>
                    <input type="number" name="price[]" value=<?php echo $data['product_price'] ?> hidden/>
                    <td class="images"><img src=<?php echo '"'.$data['product_img_path'].'"' ?> alt=""  width="200" height="200"></td>
                    <td class="product"><?php echo $data['product_name']; ?></td>
                    <td class="ptice"><?php echo 'Php '.$data['product_price']; ?></td>
                    <td class="quantity cart-plus-minus">
                        <input type="text" name="quantity[]" value=<?php echo '"'.$data['product_volume'].'"' ?> />
                    </td>
                    <td>
                        <input type="text" name="total[]" value=<?php echo '"Php '.round($data['product_volume']*$data['product_price'],2).'"' ?> hidden/>
                        <?php echo '₱ '.round($data['product_volume']*$data['product_price'],2) ?>     
                        <?php 
                            $subtotal = $subtotal + round($data['product_volume']*$data['product_price'],2);
                        ?>
                    </td>
                    <td>
                            <div class="row">
                            <div class="col"> <label> Trucker </label> </div>
                            <div class="col"> <input id='trucker' type="radio" name=<?php echo "delivery_option[$index]"?> value='Trucker' checked="checked"> </div>
                            </div>
                            <div class="row">
                            <div class="col"> <label> Pickup </label> </div>
                            <div class="col"> <input id='pickup' type="radio" name=<?php echo "delivery_option[$index]"?> value='Pickup'> </div>
                            </div>
                    </td>
                    <td class="remove">
                        <button class="btn btn-danger" type="submit" formaction="remove_cart.php"><i class="fa fa-times"></i></button>
                        <?php if($cnt == 0 and $cnt2 == 0): ?>
                            <button id="request" class="btn btn-link mt-4" type="submit" formaction="add_request.php">Request a Trucker</button>
                        <?php 
                            $subtotal = $subtotal - round($data['product_volume']*$data['product_price'],2);
                            endif; 
                            ?>
                        <?php if($cnt == 0 and $cnt2 > 0): ?>
                            <button id="request" class="btn btn-link mt-4" disabled>Trucker Request Sent!</button>
                        <?php 
                            $subtotal = $subtotal - round($data['product_volume']*$data['product_price'],2);
                            endif; 
                            ?>
                           
                            
                    </td>
                    </form>
                </tr>

                <?php 
                    $index++;
                    endwhile; 
                ?>

                <?php endif; ?>

            </tbody>
        </table>
        <div class="row mt-60">
            <div class="col-xl-4 col-lg-5 col-md-6 ">
                <div class="cartcupon-wrap">
                    <ul class="d-flex">
                        <li>
                            <button type="submit" formaction="update_cart.php">Update Cart</button>
                        </li>
                        <li><a href="shop.php">Continue Shopping</a></li>
                    </ul>
                    <div >
                    <h3 class="d-inline">Delivery Fees</h3>
                    <div class="cupon-wrap">
                        <table>
                        <?php for($i = 0; $i < $index; $i++): ?>
                        <tr><td>Trucking fee for <?php echo $items[$i].": Php ".$trucking_fees[$i];?></tr></td>
                        <?php endfor; ?> 
                        </table>
                    </div>
                    <div class="w-100"></div>
                    <div class="cupon-wrap" style="visibility:hidden">
                        <label>No trucker option available?</label>
                        <button>Find truckers</button>
                    </div>
                </div>
                </div>
            </div>
            <div class="col-xl-3 offset-xl-5 col-lg-4 offset-lg-3 col-md-6">
                <div class="cart-total text-right">
                    <h3>Cart Totals</h3>
                    <ul>
                        <?php 
                        $account_id = $_SESSION['account_id'];
                        $cart_cost_query = mysqli_query($con, "SELECT * FROM cart_costs WHERE cart_id = '$account_id'");
                        ?>
                        <?php while($data_total = mysqli_fetch_assoc($cart_cost_query)):   ?>
                        <li><span class="pull-left mr-4"> Subtotal </span>Php <span id="subtotal"> <?php echo $subtotal; ?></span></li>
                        <li><span class="pull-left mr-4"> Additional fee </span>Php <span id="additional_fee"><?php echo $additional_fees; ?></li>
                        <li><span class="pull-left mr-4"> Total </span>
                            Php <span id="total"><?php echo ($subtotal+$additional_fees); ?></span>
                        </li>
                        <?php endwhile; ?>
                    </ul>
                    <button class='btn btn-success' id='checkout_button'>Proceed to Checkout</button>
        </div>
        </div>
        </div>
    </form>
    </div>
    </div>
    </div>
    </div>
    <!-- cart-area end -->
    <?php include('footer.php') ?>
    <!-- jquery latest version -->
    <script src="assets/js/vendor/jquery-2.2.4.min.js"></script>
    <!-- bootstrap js -->
    <script src="assets/js/bootstrap.min.js"></script>
    <!-- owl.carousel.2.0.0-beta.2.4 css -->
    <script src="assets/js/owl.carousel.min.js"></script>
    <!-- mouse_scroll.js -->
    <script src="assets/js/mouse_scroll.js"></script>
    <!-- scrollup.js -->
    <script src="assets/js/scrollup.js"></script>
    <!-- slicknav.js -->
    <script src="assets/js/slicknav.js"></script>
    <!-- jquery.zoom.min.js -->
    <script src="assets/js/jquery.zoom.min.js"></script>
    <!-- swiper.min.js -->
    <script src="assets/js/swiper.min.js"></script>
    <!-- metisMenu.min.js -->
    <script src="assets/js/metisMenu.min.js"></script>
    <!-- mailchimp.js -->
    <script src="assets/js/mailchimp.js"></script>
    <!-- jquery-ui.min.js -->
    <script src="assets/js/jquery-ui.min.js"></script>
    <!-- main js -->
    <script src="assets/js/scripts.js"></script>
    <script type="text/javascript">
    $(document).ready(function(){

        var el = document.getElementById('request');

        el.addEventListener('submit', function(){
            return confirm('Are you sure? This will send a trucker request to nearby trucker an you will have to wait for one to respond');
            el.style.visibility = 'hidden';
        }, false);

        $('#trucker').change(function(){
        if (this.checked) {
            let subtotal = parseFloat(document.getElementById('subtotal').innerHTML);
            console.log(subtotal);
            let trucking_fee = parseFloat(document.getElementById('trucking_fee').innerHTML);
            console.log(trucking_fee);
            let new_total = subtotal + trucking_fee;
            console.log(new_total);
            if(new_total == NaN){ new_total = 0; }
            document.getElementById('additional_fee').innerHTML = "" + trucking_fee + "";
            document.getElementById('total').innerHTML = "" + new_total + "";
            $('#checkout_button').fadeIn('slow');
        }
        else {
           
        }                   
    });
    $('#pickup').change(function(){
        if (this.checked) {
            let subtotal = parseFloat(document.getElementById('subtotal').innerHTML);
            let new_total = subtotal;
            if(new_total == NaN){ new_total = 0; }
            document.getElementById('additional_fee').innerHTML = "" + 0 + "";
            document.getElementById('total').innerHTML = "" + new_total + "";
            $('#checkout_button').fadeIn('slow');
        }         
    });
    });
    </script>
</body>

</html>
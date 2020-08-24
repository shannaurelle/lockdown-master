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
    <h2>Shopping Cart</h2>
        <ul>
            <li><a href="index.html">Home</a></li>
            <li><span>Cart</span></li>
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
                    <th class="remove">Remove</th>
                </tr>
            </thead>
            <tbody>
            <input type="text" name="account_id" value=<?php echo '"'.$account_id.'"' ?> hidden/>
                <?php 
                    $subtotal = 0; 
                    $trucking_fee = 100.00;
                    echo "<span id='trucking_fee' hidden>$trucking_fee</span>";
                    $index = 0;
                    while($data = mysqli_fetch_assoc($result)):   ?>
                <tr>
                    <input type='number' name='account_id' value=<?php echo $_SESSION['account_id'] ?> hidden/>
                    <input type="number" name="index" value=<?php echo $index ?> hidden/>
                    <input type="number" name="product[]" value=<?php echo $data['product_id'] ?> hidden/>
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
                    <td class="remove"><button class="btn btn-danger" type="submit" formaction="remove_cart.php"><i class="fa fa-times"></i></button></td>
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
                    <h3 class="d-inline">Delivery Option</h3>
                    <p>Recommended trucker is based on your address and volume available (Cost: Php 100)<br>
                        Personal pick-up is also available (Cost: Php 0)
                    </p>
                    <div class="cupon-wrap">
                        <div class="row">
                            <div class="col"> <label> Trucker </label> </div>
                            <div class="col">  <input id='trucker' type="radio" name="delivery_option" value='Trucker'> </div>
                        </div>
                        <div class="row">
                            <div class="col"> <label> Pickup </label> </div>
                            <div class="col"> <input id='pickup' type="radio" name="delivery_option" value='Pickup'> </div>
                        </div>
                    </div>
                    <div class="w-100"></div>
                    <div class="cupon-wrap">
                        <label>No trucker option available?</label>
                        <button>Find truckers</button>
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
                        <li><span class="pull-left mr-4"> Additional fee </span><span id="additional_fee">0</li>
                        <li><span class="pull-left mr-4"> Total </span>
                            Php <span id="total"><?php echo ($subtotal); ?></span>
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
    <footer class="footer-area">
        <div class="footer-top bg-1">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-sm-6 col-12">
                        <div class="footer-widget footer-logo">
                            <img src="assets/images/logo2.png" alt="">
                            <p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from</p>
                            <ul class="socil-icon d-flex">
                                <li><a href="javascript:void(0);"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="javascript:void(0);"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="javascript:void(0);"><i class="fa fa-linkedin"></i></a></li>
                                <li><a href="javascript:void(0);"><i class="fa fa-google-plus"></i></a></li>
                                <li><a href="javascript:void(0);"><i class="fa fa-instagram"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6 col-12">
                        <div class="footer-widget footer-menu">
                            <h2>Spacial Menu</h2>
                            <ul>
                                <li><a href="account.html">My Account</a></li>
                                <li><a href="checkout.html">Checkout</a></li>
                                <li><a href="javascript:void(0)">Help</a></li>
                                <li><a href="javascript:void(0)">Support</a></li>
                                <li><a href="javascript:void(0)">FAQ</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6 col-12">
                        <div class="footer-widget footer-contact">
                            <h2>Contact us</h2>
                            <ul>
                                <li><i class="fa fa-map-marker"></i>House No. 09 , Road No.25 Dhaka,Bangladesh </li>
                                <li><i class="fa fa-phone"></i>+1(888)234-56789 <span>+1(888)234-56789</span> </li>
                                <li><i class="fa fa-envelope-o"></i>youremail@gmail.com</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6 col-12">
                        <div class="footer-widget footer-contact">
                            <h2>Join to Newsletter</h2>
                            <p>Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from</p>
                            <form class="sform">
                                <div class="form_msg">
                                    <label class="mt10"></label>
                                </div>
                                <input type="email" name="email" placeholder="Enter Your Email" required>
                                <button type="submit" name="submit" id="subscribe-btn"><i class="fa fa-long-arrow-right"></i></button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-buttom">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-12">
                        <p>&copy;2018 Your Website Name All Right Reserved</p>
                    </div>
                    <div class="col-md-6 col-12">
                        <ul class="d-flex">
                            <li><a href="index.html">Home</a></li>
                            <li><a href="blog.html">Blog</a></li>
                            <li><a href="contact.html">Contact Us</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>
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
        $('#checkout_button').hide();
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
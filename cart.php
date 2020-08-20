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
    <title>Sajuguju - Shop</title>
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
    <!-- header-area start -->
    <header class="header-area" id="sticky-header">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-6">
                    <div class="logo">
                        <a href="index.html">
                            <img src="assets/images/TOM_120x60.png" alt="">
                        </a>
                    </div>
                </div>
                <div class="col-lg-7 d-none d-lg-block">
                    <div class="mainmenu">
                        <ul id="navigation" class="d-flex">
                            <li><a href="javascript:void(0);">Home <i class="fa fa-angle-down"></i></a>
                                <ul class="submenu">
                                    <li><a href="index.html">Main Home</a></li>
                                    <li><a href="index2.html">Home 2</a></li>
                                    <li><a href="index3.html">Home 3</a></li>
                                    <li><a href="index4.html">Home 4</a></li>
                                </ul>
                            </li>
                            <li class="active"><a href="javascript:void(0);">Shop <i class="fa fa-angle-down"></i></a>
                                <ul class="megamenu row">
                                    <li class="col-xl-3 col-lg-2 col-12">
                                        <strong>Shop Pages</strong>
                                        <ul>
                                            <li><a href="shop.html">Standard Shop</a></li>
                                            <li><a href="shop.html">Small Products</a></li>
                                            <li><a href="shop.html">Large Products</a></li>
                                            <li><a href="shop.html">Shop Infinity</a></li>
                                        </ul>
                                    </li>
                                    <li class="col-lg-3 col-12 col-x-3">
                                        <strong>Products Pages</strong>
                                        <ul>
                                            <li><a href="single-product.html">Product Page V1</a></li>
                                            <li><a href="single-product.html">Product Page V2</a></li>
                                            <li><a href="single-product.html">Product Page V3</a></li>
                                            <li><a href="single-product.html">Simple Product</a></li>
                                        </ul>
                                    </li>
                                    <li class="col-lg-3 col-xl-2 col-12">
                                        <strong>Other Shop Pages</strong>
                                        <ul>
                                            <li><a href="cart.html">Shopping Cart</a></li>
                                            <li><a href="wishlist.html">Wishlist</a></li>
                                            <li><a href="account.html">My Account</a></li>
                                            <li><a href="checkout.html">Checkout</a></li>
                                        </ul>
                                    </li>
                                    <li class="col-lg-4 text-right d-none d-lg-block">
                                        <img src="assets/images/mega.png" alt="">
                                    </li>
                                </ul>
                            </li>
                            <li><a href="about.html">About</a></li>
                            <li><a href="javascript:void(0);">Blog <i class="fa fa-angle-down"></i></a>
                                <ul class="submenu">
                                    <li><a href="blog.html">Blog</a></li>
                                    <li><a href="blog-details.html">Blog Details</a>
                                    </li>
                                </ul>
                            </li>
                            <li><a href="contact.html">Contact</a></li>
                            <li><a href="javascript:void(0);">Pages <i class="fa fa-angle-down"></i></a>
                                <ul class="submenu">
                                    <li><a href="shop.html">Shop</a></li>
                                    <li><a href="shop-sidebar.html">Shop sidebar</a></li>
                                    <li><a href="single-product.html">Shop Single</a></li>
                                    <li><a href="cart.html">Shopping Cart</a></li>
                                    <li><a href="wishlist.html">Wishlist</a></li>
                                    <li><a href="checkout.html">checkout</a></li>
                                    <li><a href="account.html">Account</a></li>
                                    <li><a href="login.html">Login</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-2 col-sm-5 col-4">
                    <div class="search-wrapper">
                        <ul class="d-flex">
                            <li><a href="javascript:void(0);"><i class="fa fa-search"></i></a>
                                <ul class="search">
                                    <li>
                                        <form action="#">
                                            <input type="text" placeholder="Search...">
                                            <button><i class="fa fa-search"></i></button>
                                        </form>
                                    </li>
                                </ul>
                            </li>
                            <li><a href="javascript:void(0);"><i class="fa fa-shopping-bag"></i></a>
                                <ul class="cart-wrap">
                                    <li class="cart-items">
                                        <div class="cart-img">
                                            <img src="assets/images/cart/1.jpg" alt="">
                                        </div>
                                        <div class="cart-content">
                                            <a href="cart.html">Beautiful Chair</a>
                                            <span>QTY : 1</span>
                                            <p>$35.00</p>
                                            <i class="fa fa-times"></i>
                                        </div>
                                    </li>
                                    <li class="cart-items mb-0">
                                        <div class="cart-img">
                                            <img src="assets/images/cart/1.jpg" alt="">
                                        </div>
                                        <div class="cart-content">
                                            <a href="cart.html">Beautiful Chair</a>
                                            <span>QTY : 1</span>
                                            <p>$35.00</p>
                                            <i class="fa fa-times"></i>
                                        </div>
                                    </li>
                                    <li>Subtotol: <span class="pull-right">$70.00</span></li>
                                    <li>
                                        <button>Check Out</button>
                                    </li>
                                </ul>
                            </li>
                            <li><a href="javascript:void(0);"><i class="fa fa-user"></i></a>
                                <ul class="account-wrap">
                                    <li><a href="account.html">Account</a></li>
                                    <li><a href="login.html">Login</a></li>
                                    <li><a href="wishlist.html">wishlist</a></li>
                                    <li><a href="checkout.html">Checkout</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="d-block d-lg-none col-sm-1 clear col-2">
                    <div class="responsive-menu-wrap floatright"></div>
                </div>
            </div>
        </div>
    </header>
    <!-- header-area end -->
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

                                $sql .= "SELECT * FROM products INNER JOIN cart ON products.product_id = cart.product_id";
                               
                                $sql .= "WHERE cart.cart_id = ?";
                                
                                if(mysqli_stmt_prepare($stmt,$sql)):
                                    
                                    mysqli_stmt_bind_param($stmt,'i',$account_id);
                                    
                                    $query = mysqli_stmt_execute($stmt);
                                    
                                    $result = mysqli_stmt_get_result($query);
                                
                                endif;

                            endif;
                        ?>
    <form action="cart">
        <table class="table-responsive cart-wrap">

            <?php if(isset($_SESSION['account_id'])): ?>

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

                <?php while($data = mysqli_fetch_assoc($result)): ?>

                <tr>
                    <td class="images"><img src=<?php echo '"'.$data['product_img_path'].'"' ?> alt=""></td>
                    <td class="product"><a href="single-product.html"><?php echo $data['product_name']; ?></a></td>
                    <td class="ptice"><?php echo $data['product_price']; ?></td>
                    <td class="quantity cart-plus-minus">
                        <input type="text" value=<?php echo '"'.$data['product_volume'].'"' ?> />
                    </td>
                    <td class="remove"><i class="fa fa-times"></i></td>
                </tr>

                    <?php endwhile;?>

                    <?php endif; ?>

            </tbody>
        </table>
        <div class="row mt-60">
            <div class="col-xl-4 col-lg-5 col-md-6 ">
                <div class="cartcupon-wrap">
                    <ul class="d-flex">
                        <li>
                            <button>Update Cart</button>
                        </li>
                        <li><a href="shop.html">Continue Shopping</a></li>
                    </ul>
                    <h3 class="d-inline">Want a trucker?</h3>
                    <p>Recommended trucker is based on your address and volume available</p>
                    <div class="cupon-wrap">
                        <input id='trucker' type="checkbox" value='Yes'>
                    </div>
                    <div class="w-100"></div>
                    <div class="cupon-wrap">
                        <label>Can't find the checkbox?</label>
                        <button>Find truckers</button>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 offset-xl-5 col-lg-4 offset-lg-3 col-md-6">
                <div class="cart-total text-right">
                    <h3>Cart Totals</h3>
                    <ul>
                        <li><span class="pull-left">Subtotal </span>$380.00</li>
                        <li><span class="pull-left"> Total </span> $380.00</li>
                    </ul>
                    <a id='checkout_button' href="checkout.html">Proceed to Checkout</a>
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
            $('#checkout_button').fadeIn('slow');
        }
        else {
            $('#checkout_button').fadeOut('slow');
        }                   
    });
    });
    </script>
</body>

</html>
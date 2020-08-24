<?php

    $con=mysqli_connect("localhost", "root", "");
    if (mysqli_connect_errno()){
        echo "Failed to connect to MySQL: " . mysqli_connect_error();
    }
    else{
        session_start();
        if ($_SESSION['access'] != 'Seller') {
            header('Location: error_pages/404.html');
        }
    }
?>

<!doctype html>
<html class="no-js" lang="">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Lockdown - Add Listing</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/png" href="assets/images/logo_lockdown_2.ico">
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
    <?php include('navbar.php'); ?>
    <!-- .breadcumb-area start -->
    <div class="breadcumb-area bg-img-1 black-opacity ptb-100">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="breadcumb-wrap text-center">
                        <h2 class="text-dark mb-4 mt-0">Add Listing</h2>
                        <ul>
                            <li><a href="index.html">Home</a></li>
                            <li><a href="seller_products.php" class="text-dark">Seller Products</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row mt-4">
                <form class="mx-auto" action="<?php echo $_SERVER['PHP_SELF']; ?>">
                    <div class="input-group mb-3">
                      <input name="search" type="text" class="form-control mr-4" aria-describedby="basic-addon2">
                      <div class="input-group-append">
                        <button class="btn btn-light">Search</button>
                      </div>
                    </div>
                </form>
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="breadcumb-wrap text-center">
                        <ul>
                            <li><a href="pending_trades.php">Pending Trades</a></li>
                            <li><a href="previous_transactions.php">Past Transactions</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- .breadcumb-area end -->
    <!-- checkout-area start -->
    <div class="account-area ptb-100">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3 col-md-8 offset-md-2 col-12">
                    <div class="account-form form-style">
                      <form method="post" action="add_item_seller.php">
                        <span>* - required</span>
                        <hr>
                        <p>Product Image*</p>
                        
                        <p>Product Name*</p>
                        <input type="text">
                        <p>Product Owner*</p>
                        <input type="text">
                        <p>Product Price (in Philippine Pesos)*</p>
                        <div class="input-group mb-3">
                          <input type="number" class="form-control" placeholder="0" aria-label="0" aria-describedby="basic-addon1">
                        </div>
                        <p>Product Volume*</p>
                        <input type="number">
                        <!--<div class="row">
                            <div class="col-lg-6">
                                <input id="password" type="checkbox">
                                <label for="password">Save Password</label>
                            </div>
                            <div class="col-lg-6 text-right">
                                <a href="#">Forget Your Password?</a>
                            </div>
                        </div>-->
                        <button>SIGN IN</button>
                      </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- checkout-area end -->
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
</body>

</html>